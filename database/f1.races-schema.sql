CREATE TABLE `races` (
  `id` int NOT NULL AUTO_INCREMENT,
  `season` int DEFAULT NULL,
  `race_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
