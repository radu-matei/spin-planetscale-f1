# F1 Championship Stats with PlanetScale and Fermyon Cloud

This is a demonstration of building a full-stack JavaScript application that runs
on Fermyon Cloud and connects to a serverless database hosted by PlanetScale.

The demo is adapted from the [PlanetScale demo of the serverless database driver with examples for edge functions](https://f1.planetscale.com),
and uses two Spin components:

- a Spin component to serve a statically built Next.js UI
- a Spin component written in TypeScript that connects to the database running in PlanetScale

### Local development

- [Spin](https://developer.fermyon.com/spin)
- [the Spin JavaScript toolchain](https://developer.fermyon.com/spin/javascript-components)
- [NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- a free [PlanetScale](https://planetscale.com) account, and a database on the dump in `./database`
- a free [Fermyon Cloud](https://cloud.fermyon.com) account

Create an `auth.json` file using the PlanetScale credentials based on the template in `auth-template.json`.

Finally, nstall the dependencies for both the front-end and back-end, then run `spin build` and `spin up`:

```bash
$ npm install && cd api && npm install
$ spin build && spin up --follow-all

Successfully ran the build command for the Spin components.
Serving http://127.0.0.1:3000
Available Routes:
  ui: http://127.0.0.1:3000 (wildcard)
  api: http://127.0.0.1:3000/data.json
```

At this point, the application should be available at http://localhost:3000.

### Deploying to Fermyon Cloud

Now that the application is built, we can deploy it to Fermyon Cloud:

```
$ spin deploy
Uploading PlanetScale-F1 version 1.0.0+r1d22c05e...
Deploying...
Waiting for application to become ready............ ready
Available Routes:
  ui: https://planetscale-f1-re4cp0sz.fermyon.app (wildcard)
  api: https://planetscale-f1-re4cp0sz.fermyon.app/data.json
```

You can check an already deployed instance of this application at https://planetscale-f1-re4cp0sz.fermyon.app.

### Credits

This application is based on [the demo created by PlanetScale](https://github.com/planetscale/f1-championship-stats),
and is adapted to run on Spin and Fermyon Cloud.

The project is available as open source under the terms of the [Apache-2.0 license](https://github.com/planetscale/f1-championship-stats/blob/main/LICENSE).

