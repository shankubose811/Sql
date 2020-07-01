-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ordermanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `accy`
--

DROP TABLE IF EXISTS `accy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accy` (
  `accy_id` int(11) NOT NULL,
  `a_name` varchar(45) NOT NULL,
  `a_price` int(11) DEFAULT NULL,
  `model_model_id` int(11) NOT NULL,
  PRIMARY KEY (`accy_id`),
  KEY `fk_accy_model1_idx` (`model_model_id`),
  CONSTRAINT `fk_accy_model1` FOREIGN KEY (`model_model_id`) REFERENCES `model` (`model_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accy`
--

LOCK TABLES `accy` WRITE;
/*!40000 ALTER TABLE `accy` DISABLE KEYS */;
INSERT INTO `accy` VALUES (11,'accy1',1,1111),(12,'accy2',1,1111),(13,'accy3',1,2222),(14,'accy4',1,3333),(15,'accy5',1,3333),(16,'accy6',1,4444),(17,'accy7',1,5555),(18,'accy8',1,5555),(19,'accy9',1,6666),(20,'accy10',1,7777),(21,'accy11',1,7777),(22,'accy12',1,8888),(23,'accy13',1,9999),(24,'accy14',1,9999),(25,'accy15',1,1234),(26,'accy16',1,1234),(27,'accy17',1,2345),(28,'accy18',1,2345),(29,'accy19',1,2345),(123,'accy1',1,1111);
/*!40000 ALTER TABLE `accy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication`
--

DROP TABLE IF EXISTS `authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication` (
  `user_id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication`
--

LOCK TABLES `authentication` WRITE;
/*!40000 ALTER TABLE `authentication` DISABLE KEYS */;
INSERT INTO `authentication` VALUES (1,'firstuser','user admin'),(2,'seconduser','user member');
/*!40000 ALTER TABLE `authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `color_id` int(11) NOT NULL,
  `c_name` varchar(45) NOT NULL,
  `c_price` varchar(45) NOT NULL,
  `model_model_id` int(11) NOT NULL,
  PRIMARY KEY (`color_id`),
  KEY `fk_color_model1_idx` (`model_model_id`),
  CONSTRAINT `fk_color_model1` FOREIGN KEY (`model_model_id`) REFERENCES `model` (`model_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1000,'Red','10',1111),(1001,'Blue','12',2222),(1002,'Green','11',2222),(1003,'Violet','12',3333),(1004,'Purple','11',4444),(1005,'Grey','14',4444),(1006,'Black','18',4444);
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `model_id` int(11) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `m_price` varchar(45) NOT NULL,
  `series_series_id` int(11) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_model_series_idx` (`series_series_id`),
  CONSTRAINT `fk_model_series` FOREIGN KEY (`series_series_id`) REFERENCES `series` (`series_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1111,'model1','10',111),(1234,'model10','100',111),(2222,'model2','20',111),(2345,'model11','110',444),(3333,'model3','30',111),(3456,'model12','120',444),(4444,'model4','40',222),(5555,'model5','50',222),(6666,'model6','60',333),(7777,'model7','70',333),(8888,'model8','80',333),(9999,'model9','90',222);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `s_name` varchar(45) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `a_name` varchar(45) NOT NULL,
  `c_name` varchar(45) NOT NULL,
  `total_price` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `s_name` varchar(45) NOT NULL,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (111,'series1'),(222,'series2'),(333,'series3'),(444,'series4');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-01  9:41:54
