import { HandleRequest, HttpRequest, HttpResponse } from "@fermyon/spin-sdk";
import { connect } from "@planetscale/database";

const encoder = new TextEncoder();
const decoder = new TextDecoder();

export const handleRequest: HandleRequest = async function (
	_request: HttpRequest,
): Promise<HttpResponse> {
	let auth = await fsPromises.readFile("./auth.json");
	const conn = connect(JSON.parse(decoder.decode(new Uint8Array(auth))));

	const [results, races, standings] = await Promise.all([
		conn.execute("SELECT * FROM results"),
		conn.execute("SELECT * FROM races"),
		conn.execute("SELECT * FROM standings"),
	]);

	const data = {
		races: races.rows,
		results: results.rows,
		standings: standings.rows,
	};

	return {
		status: 200,
		headers: { "content-type": "application/json" },
		body: encoder.encode(JSON.stringify(data)).buffer,
	};
};
