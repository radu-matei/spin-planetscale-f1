CREATE TABLE `standings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `season` int DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
