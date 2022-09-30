CREATE DATABASE  IF NOT EXISTS `crm_test_villagomezc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crm_test_villagomezc`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crm_test_villagomezc
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `adress2`
--

DROP TABLE IF EXISTS `adress2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress2` (
  `id_adress2` int NOT NULL AUTO_INCREMENT,
  `type_building` varchar(80) DEFAULT NULL,
  `enable_adress2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_adress2`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress2`
--

LOCK TABLES `adress2` WRITE;
/*!40000 ALTER TABLE `adress2` DISABLE KEYS */;
INSERT INTO `adress2` VALUES (1,'Entere house','TRUE'),(2,'Floor','FALSE');
/*!40000 ALTER TABLE `adress2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adress_contact`
--

DROP TABLE IF EXISTS `adress_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress_contact` (
  `id_adress_contact` int NOT NULL AUTO_INCREMENT,
  `id_contact` int DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `adress1` varchar(150) DEFAULT NULL,
  `state_province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `zip_postalcode` varchar(45) DEFAULT NULL,
  `url_maps` varchar(250) DEFAULT NULL,
  `id_adress2` int DEFAULT NULL,
  `description_building` varchar(150) DEFAULT NULL,
  `enable_adress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_adress_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress_contact`
--

LOCK TABLES `adress_contact` WRITE;
/*!40000 ALTER TABLE `adress_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `adress_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id_contacts` int NOT NULL AUTO_INCREMENT,
  `name_prefix` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middel_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `mothers_maiden_name` varchar(100) DEFAULT NULL,
  `name_sufix` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_1` varchar(100) DEFAULT NULL,
  `email_1` varchar(100) DEFAULT NULL,
  `email_2` varchar(100) DEFAULT NULL,
  `contact_enable` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_contacts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_contacts`
--

DROP TABLE IF EXISTS `phone_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_contacts` (
  `id_phone` int NOT NULL AUTO_INCREMENT,
  `id_contact` int DEFAULT NULL,
  `phone_country` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `phone_enable` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_contacts`
--

LOCK TABLES `phone_contacts` WRITE;
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'crm_test_villagomezc'
--

--
-- Dumping routines for database 'crm_test_villagomezc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-30 16:17:08
