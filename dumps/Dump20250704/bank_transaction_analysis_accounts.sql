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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `account_type` varchar(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1001,1,'Chennai Branch','Current',97684.00),(1002,2,'Bangalore Branch','Savings',73624.00),(1003,3,'Kolkata Branch','Savings',38080.00),(1004,4,'Mumbai Branch','Current',80678.00),(1005,5,'Pune Branch','Savings',27342.00),(1006,6,'Mumbai Branch','Savings',84847.00),(1007,7,'Pune Branch','Current',85525.00),(1008,8,'Mumbai Branch','Current',71953.00),(1009,9,'Chennai Branch','Savings',41850.00),(1010,10,'Hyderabad Branch','Savings',71993.00),(1011,11,'Chennai Branch','Current',63354.00),(1012,12,'Pune Branch','Current',34957.00),(1013,13,'Hyderabad Branch','Savings',22363.00),(1014,14,'Kolkata Branch','Savings',22704.00),(1015,15,'Bangalore Branch','Savings',96374.00),(1016,16,'Mumbai Branch','Savings',66498.00),(1017,17,'Kolkata Branch','Savings',56438.00),(1018,18,'Kolkata Branch','Current',65519.00),(1019,19,'Bangalore Branch','Savings',63883.00),(1020,20,'Kolkata Branch','Savings',71213.00),(1021,21,'Bangalore Branch','Savings',17100.00),(1022,22,'Delhi Branch','Current',98259.00),(1023,23,'Bangalore Branch','Savings',95649.00),(1024,24,'Pune Branch','Current',94696.00),(1025,25,'Mumbai Branch','Current',22899.00),(1026,26,'Hyderabad Branch','Savings',17944.00),(1027,27,'Hyderabad Branch','Savings',62772.00),(1028,28,'Mumbai Branch','Current',54473.00),(1029,29,'Hyderabad Branch','Current',24322.00),(1030,30,'Bangalore Branch','Current',42591.00),(1031,31,'Pune Branch','Current',35112.00),(1032,32,'Delhi Branch','Current',34931.00),(1033,33,'Pune Branch','Savings',80292.00),(1034,34,'Hyderabad Branch','Savings',68800.00),(1035,35,'Delhi Branch','Savings',28373.00),(1036,36,'Mumbai Branch','Savings',65296.00),(1037,37,'Delhi Branch','Current',34050.00),(1038,38,'Kolkata Branch','Savings',46509.00),(1039,39,'Chennai Branch','Savings',70637.00),(1040,40,'Kolkata Branch','Savings',42742.00),(1041,41,'Mumbai Branch','Savings',19880.00),(1042,42,'Hyderabad Branch','Savings',68082.00),(1043,43,'Hyderabad Branch','Savings',82132.00),(1044,44,'Delhi Branch','Savings',22833.00),(1045,45,'Bangalore Branch','Savings',16630.00),(1046,46,'Pune Branch','Savings',95477.00),(1047,47,'Chennai Branch','Current',80855.00),(1048,48,'Bangalore Branch','Savings',11934.00),(1049,49,'Mumbai Branch','Savings',22224.00),(1050,50,'Pune Branch','Current',40982.00);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
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
