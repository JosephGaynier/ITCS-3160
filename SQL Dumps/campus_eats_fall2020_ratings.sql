-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `driver1` int DEFAULT NULL,
  `driver2` int DEFAULT NULL,
  `driver3` int DEFAULT NULL,
  `restaurant1` int DEFAULT NULL,
  `restaurant2` int DEFAULT NULL,
  `restaurant3` int DEFAULT NULL,
  `comment` varchar(120) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,3,1,5,4,2,3,'',10),(2,3,5,2,4,2,5,'Amazing!',43),(3,3,4,3,4,4,5,'',87),(4,2,3,2,4,1,5,'Aweful :(',100),(5,4,5,2,5,3,5,'Gross!',20),(6,5,4,4,5,5,2,'',4),(7,1,5,4,2,1,4,'',74),(8,3,5,4,5,3,5,'Excellent Service!',86),(9,1,4,3,5,5,5,'',53),(10,2,5,4,1,2,5,'Waited an extra hour >:(',59),(11,1,5,2,5,4,4,'',97),(12,3,5,3,3,4,3,'',81),(13,2,3,4,5,3,5,'',55),(14,1,5,3,5,5,4,'',66),(15,1,3,3,5,3,5,'',15),(16,2,4,4,5,2,5,'',50),(17,3,5,4,4,2,5,'Tasty!',9),(18,1,5,2,5,5,5,'',77),(19,5,5,4,5,4,3,'Rigth on time!',11),(20,3,5,2,5,2,5,'',62),(21,1,3,5,2,4,5,'Such wonderful service',1);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 20:49:11
