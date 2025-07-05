-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_transaction_analysis
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Customer_1',60,'Female','Chennai'),(2,'Customer_2',27,'Female','Bangalore'),(3,'Customer_3',21,'Male','Kolkata'),(4,'Customer_4',37,'Male','Mumbai'),(5,'Customer_5',35,'Male','Pune'),(6,'Customer_6',34,'Male','Mumbai'),(7,'Customer_7',28,'Female','Pune'),(8,'Customer_8',26,'Male','Mumbai'),(9,'Customer_9',54,'Male','Chennai'),(10,'Customer_10',25,'Male','Hyderabad'),(11,'Customer_11',57,'Female','Chennai'),(12,'Customer_12',47,'Female','Pune'),(13,'Customer_13',22,'Female','Hyderabad'),(14,'Customer_14',21,'Female','Kolkata'),(15,'Customer_15',25,'Male','Bangalore'),(16,'Customer_16',33,'Female','Mumbai'),(17,'Customer_17',34,'Female','Kolkata'),(18,'Customer_18',52,'Male','Kolkata'),(19,'Customer_19',58,'Female','Bangalore'),(20,'Customer_20',21,'Male','Kolkata'),(21,'Customer_21',55,'Male','Bangalore'),(22,'Customer_22',32,'Male','Delhi'),(23,'Customer_23',54,'Male','Bangalore'),(24,'Customer_24',46,'Female','Pune'),(25,'Customer_25',34,'Female','Mumbai'),(26,'Customer_26',48,'Female','Hyderabad'),(27,'Customer_27',57,'Male','Hyderabad'),(28,'Customer_28',37,'Female','Mumbai'),(29,'Customer_29',20,'Male','Hyderabad'),(30,'Customer_30',30,'Male','Bangalore'),(31,'Customer_31',47,'Male','Pune'),(32,'Customer_32',41,'Female','Delhi'),(33,'Customer_33',37,'Female','Pune'),(34,'Customer_34',29,'Female','Hyderabad'),(35,'Customer_35',33,'Male','Delhi'),(36,'Customer_36',41,'Male','Mumbai'),(37,'Customer_37',26,'Female','Delhi'),(38,'Customer_38',25,'Male','Kolkata'),(39,'Customer_39',44,'Female','Chennai'),(40,'Customer_40',26,'Female','Kolkata'),(41,'Customer_41',42,'Female','Mumbai'),(42,'Customer_42',42,'Male','Hyderabad'),(43,'Customer_43',58,'Female','Hyderabad'),(44,'Customer_44',36,'Male','Delhi'),(45,'Customer_45',22,'Male','Bangalore'),(46,'Customer_46',49,'Female','Pune'),(47,'Customer_47',54,'Female','Chennai'),(48,'Customer_48',27,'Female','Bangalore'),(49,'Customer_49',44,'Female','Mumbai'),(50,'Customer_50',25,'Male','Pune');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 10:55:15
