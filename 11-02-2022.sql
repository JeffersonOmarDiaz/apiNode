CREATE DATABASE  IF NOT EXISTS `crm_test_villagomezc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crm_test_villagomezc`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 192.168.100.183    Database: crm_test_villagomezc
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `adress_company_table`
--

DROP TABLE IF EXISTS `adress_company_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress_company_table` (
  `id_adress_company_table` int NOT NULL AUTO_INCREMENT,
  `id_adress_contact` int DEFAULT NULL,
  `id_company_table` int DEFAULT NULL,
  `enable_adress_company_table` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_adress_company_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress_company_table`
--

LOCK TABLES `adress_company_table` WRITE;
/*!40000 ALTER TABLE `adress_company_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `adress_company_table` ENABLE KEYS */;
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
  `adress2` varchar(150) DEFAULT NULL,
  `enable_adress` varchar(20) DEFAULT 'TRUE',
  `general_adress` varchar(150) DEFAULT NULL,
  `id_type_adress` int DEFAULT NULL,
  `adress_contact_latitud` varchar(80) DEFAULT NULL,
  `adress_contact_longitud` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_adress_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress_contact`
--

LOCK TABLES `adress_contact` WRITE;
/*!40000 ALTER TABLE `adress_contact` DISABLE KEYS */;
INSERT INTO `adress_contact` VALUES (1,2,'US','Faile St 1079','New York','The Bronx','Bronx County','10459','La que se te cruza','TRUE','1079 Faile St, La que se te cruza, Bronx County, New York 10459',3,'place.geometry.viewport.cb.lo','-73.89115943029151'),(2,2,'US','Courtland Cir 98','Connecticut',' Stamford','Fairfield County','06902','Se te cruza por segunda ','TRUE','98 Courtland Cir, Se te cruza por segunda , Fairfield County, Connecticut 06902',3,'41.0551790197085','-73.5132368802915'),(3,42,'US','Greenwich St 456','New York','Manhattan','New York County','10013','Barrio aniñado','TRUE','456 Greenwich St, Barrio aniñado, New York County, New York 10013',1,'40.7222558697085','-74.0109824302915'),(4,43,'US','Commonwealth Ave 870','Massachusetts',' Boston','Norfolk County','02215','direction de carlos','TRUE','870 Commonwealth Ave, direction de carlos, Norfolk County, Massachusetts 02215',0,'42.3493876197085','-71.1156046302915'),(5,44,'US','Beverly Blvd 8700','California',' Los Angeles','Los Angeles County','90048','segunda','TRUE','8700 Beverly Blvd, segunda, Los Angeles County, California 90048',2,'34.07432686970851','-118.3816211802915'),(6,45,'US','Dublin Blvd 7884','California','Dublin','Alameda County','94568','','TRUE','7884 Dublin Blvd, , Alameda County, California 94568',1,'37.70119456970851','-121.9323981802915'),(7,46,'US','International Dr  ','Florida',' ','Orange County',' ','','TRUE','International Drive, , Orange County, Florida  ',1,'28.4250510197085','-81.47025648029151'),(8,47,'US','International Dr  ','Florida',' ','Orange County',' ','','TRUE','International Drive, , Orange County, Florida  ',1,'28.4250510197085','-81.47025648029151'),(9,48,'US','Roosevelt Ave 103','New York','Queens','Queens County','11368','','TRUE','103 Roosevelt Ave, , Queens County, New York 11368',0,'40.7483586197085','-73.8636830302915'),(10,49,'US','Evergreen Ave 1160','New York','The Bronx','Bronx County','10472','','TRUE','1160 Evergreen Ave, , Bronx County, New York 10472',1,'40.8262165197085','-73.8820651802915');
/*!40000 ALTER TABLE `adress_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adress_type`
--

DROP TABLE IF EXISTS `adress_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress_type` (
  `id_adress_contact_type` int NOT NULL AUTO_INCREMENT,
  `name_adress_contact_type` varchar(50) DEFAULT NULL,
  `enable_adress_contact_type` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_adress_contact_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress_type`
--

LOCK TABLES `adress_type` WRITE;
/*!40000 ALTER TABLE `adress_type` DISABLE KEYS */;
INSERT INTO `adress_type` VALUES (1,'Home ','TRUE'),(2,'Work','TRUE'),(3,'Other','TRUE'),(4,'D.N.U.','TRUE');
/*!40000 ALTER TABLE `adress_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_contact`
--

DROP TABLE IF EXISTS `company_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_contact` (
  `id_company_contact` int NOT NULL AUTO_INCREMENT,
  `id_contact` int DEFAULT NULL,
  `jobstatus_company_contact` varchar(50) DEFAULT NULL,
  `id_company_contact_jobcategory_type` int DEFAULT NULL,
  `id_company_contact_jobtitle_type` int DEFAULT NULL,
  `enable_company_contact` varchar(20) DEFAULT 'TRUE',
  `id_company_table` int DEFAULT NULL,
  PRIMARY KEY (`id_company_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_contact`
--

LOCK TABLES `company_contact` WRITE;
/*!40000 ALTER TABLE `company_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_contact_jobcategory_type`
--

DROP TABLE IF EXISTS `company_contact_jobcategory_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_contact_jobcategory_type` (
  `id_company_contact_jobcategory_type` int NOT NULL AUTO_INCREMENT,
  `name_company_contact_jobcategory_type` varchar(50) DEFAULT NULL,
  `enable_company_contact_jobcategory_type` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_company_contact_jobcategory_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_contact_jobcategory_type`
--

LOCK TABLES `company_contact_jobcategory_type` WRITE;
/*!40000 ALTER TABLE `company_contact_jobcategory_type` DISABLE KEYS */;
INSERT INTO `company_contact_jobcategory_type` VALUES (1,'Construction Worker','TRUE'),(2,'Doctor','TRUE'),(3,'Driver','TRUE'),(4,'Lawyer','TRUE'),(5,'Unknown','TRUE');
/*!40000 ALTER TABLE `company_contact_jobcategory_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_contact_jobtitle_type`
--

DROP TABLE IF EXISTS `company_contact_jobtitle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_contact_jobtitle_type` (
  `id_company_contact_jobtitle_type` int NOT NULL AUTO_INCREMENT,
  `name_company_contact_jobtitle_type` varchar(50) DEFAULT NULL,
  `enable_company_contact_jobtitle_type` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_company_contact_jobtitle_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_contact_jobtitle_type`
--

LOCK TABLES `company_contact_jobtitle_type` WRITE;
/*!40000 ALTER TABLE `company_contact_jobtitle_type` DISABLE KEYS */;
INSERT INTO `company_contact_jobtitle_type` VALUES (1,'Assistant','TRUE'),(2,'CEO','TRUE'),(3,'Manager','TRUE'),(4,'Programmer','TRUE'),(5,'Supervisor','TRUE'),(6,'Unknown','TRUE');
/*!40000 ALTER TABLE `company_contact_jobtitle_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_table`
--

DROP TABLE IF EXISTS `company_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_table` (
  `id_company_table` int NOT NULL AUTO_INCREMENT,
  `name_company_table` varchar(100) DEFAULT NULL,
  `enable_company_table` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_company_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_table`
--

LOCK TABLES `company_table` WRITE;
/*!40000 ALTER TABLE `company_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id_contacts` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middel_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `mothers_maiden_name` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `contact_enable` varchar(20) DEFAULT NULL,
  `id_preffix_table` int DEFAULT NULL,
  `id_suffix_table` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `id_vc_colaborators_table` int DEFAULT '0',
  PRIMARY KEY (`id_contacts`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (4,'erjerj','','jsdfjs','','jej','2022-10-05','TRUE',1,1,NULL,0),(5,'hsdh','','hsdh','','sdhsdh','2022-10-04','TRUE',1,1,NULL,0),(6,'hdh','','hdfh','','hdfhdh','2022-10-05','TRUE',4,2,NULL,0),(7,'sdgsg','','gsdg','','gsdg','2022-10-06','TRUE',1,1,NULL,0),(8,'sgedg','','erueru','','ueru','2022-10-03','TRUE',1,1,NULL,0),(9,'gsg','','sdg','','547457','2022-10-05','TRUE',1,2,NULL,0),(10,'dasdas','','dasdas','','dasdas','2022-10-04','TRUE',1,2,NULL,0),(11,'sdasdas','','dasdsa','','dasdasd','2022-10-05','TRUE',4,2,NULL,0),(12,'dss','','dssd','','sdsdds','2022-10-04','TRUE',4,2,NULL,0),(13,'sadasd','','dassad','','dasdas','2022-10-05','TRUE',4,2,NULL,0),(14,'Pedro','','Villagomez','','tgsw','2022-10-11','TRUE',4,1,NULL,0),(15,'gsdg','','gsdg','','sgd','2022-10-03','TRUE',1,3,NULL,0),(16,'ftrwet','','twet','','twet','2022-10-05','TRUE',1,3,NULL,0),(17,'sdg','','gsdg','','gsdg','2022-10-05','TRUE',1,2,NULL,0),(18,'Pedro','','Villagomez','','sdfgs','2022-10-04','TRUE',1,1,NULL,0),(19,'John','','Guevara','','gsdgsdg','2022-10-04','TRUE',1,1,NULL,0),(20,'Pedro','','Villagomez','','khgkj','2022-10-04','TRUE',4,1,NULL,0),(21,'John','','Guevara','','fsadf','2022-10-03','TRUE',1,1,NULL,0),(22,'Pedro','','Villagomez','','sadfa','2022-10-04','TRUE',4,2,NULL,0),(23,'vxdcfg','','Villagomez','','fdghdfh','2022-10-05','TRUE',4,2,NULL,0),(24,'sdgs','','sdgs','','sgdsdg','2022-10-03','TRUE',1,2,NULL,0),(25,'sdg','','sdgsdg','','sdgsdg','2022-10-04','TRUE',4,1,NULL,0),(26,'Pedro','','Villagomez','','sdfsd','2022-10-11','TRUE',1,2,NULL,0),(27,'John','','Guevara','','gsdg','2022-10-05','TRUE',4,2,NULL,0),(28,'Pedro','','Villagomez','','xdgsd','2022-10-13','TRUE',1,1,NULL,0),(29,'Pedro','','Villagomez','','dgsd','2022-10-04','TRUE',4,2,NULL,0),(30,'ewr','','Villagomez','','fasf','2022-10-04','TRUE',1,1,NULL,0),(31,'John','','Guevara','','sd','2022-10-03','TRUE',4,1,NULL,0),(32,'John','','Guevara','','vdsxgf','2022-10-03','TRUE',1,2,NULL,0),(33,'Pedro','','Villagomez','','dsf','2022-10-03','TRUE',4,2,NULL,0),(34,'wer','','werwer','','fsfd','2022-10-04','TRUE',4,2,NULL,0),(35,'Jet','','asd','','erterr','2022-10-11','TRUE',4,2,NULL,0),(36,'eterter','','terter','','tert','2022-10-05','TRUE',1,2,NULL,0),(37,'sdgsdg','','gsdg','','346346','2022-10-04','TRUE',1,2,NULL,0),(38,'DFXDFS','','SDFSDFSD','','DSFSDFDSFSDF','2022-10-05','TRUE',1,2,NULL,0),(39,'Pedro','','Villagomez','','ghfghgf','2022-10-05','TRUE',4,1,NULL,0),(40,'Pedro','Daniel','Villagomez','fsdfsdfds','fdsfsdfsdfsd','2022-10-05','TRUE',4,2,NULL,0),(41,'John','','Guevara','','sadsadsa','2022-10-05','TRUE',4,2,NULL,0),(42,'Fernando','','Gomez','','Fer','2022-10-04','TRUE',3,2,NULL,0),(43,'Carlos','','Vaca','','Carl','2022-10-08','TRUE',3,1,NULL,0),(44,'sdgsdg','','gsdg','','fhfh','2022-10-05','TRUE',1,1,NULL,0),(45,'bruno ','','diaz','','1151','2022-10-04','TRUE',4,2,NULL,0),(46,'Felix ','Mauricio','Moraga','Sandoval','Felix','2022-10-04','TRUE',1,1,NULL,0),(47,'Felix ','Mauricio','Moraga','Sandoval','Felix','2022-10-04','TRUE',1,1,NULL,0),(48,'sdfsg','','gsgsdg','','gsdgsd','2022-10-03','TRUE',4,1,NULL,0),(49,'Felix ','Rodrigo ','Moraga','Ruiz','Rodri','2022-10-26','TRUE',1,1,NULL,0),(50,'Test new api','undefined','Last 455','','485445','2022-10-05','TRUE',1,1,NULL,0),(51,'Test new api 2','undefined','Last 455','','485445','2022-10-05','TRUE',2,1,NULL,0),(52,'Test new api 2','undefined','Last 455','','485445','2022-10-05','TRUE',2,1,NULL,0),(53,'Test new api 3','undefined','Last 3','','485445','2022-10-05','TRUE',2,1,NULL,0),(54,'Test new api 4','undefined','Last 3','','485445','2022-10-05','TRUE',2,1,NULL,0),(55,'Test new api 6','Noooo','Last 3','345','485445','2022-10-05','TRUE',2,1,'2022-11-02 15:10:08',0);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_company_table`
--

DROP TABLE IF EXISTS `email_company_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_company_table` (
  `id_email_company_table` int NOT NULL AUTO_INCREMENT,
  `name_email_company_table` varchar(50) DEFAULT NULL,
  `id_company_contact_jobtitle_type` varchar(20) DEFAULT NULL,
  `id_company_table` varchar(20) DEFAULT NULL,
  `enable_email_company_table` varchar(50) DEFAULT 'TRUE',
  PRIMARY KEY (`id_email_company_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_company_table`
--

LOCK TABLES `email_company_table` WRITE;
/*!40000 ALTER TABLE `email_company_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_company_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_contact`
--

DROP TABLE IF EXISTS `email_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_contact` (
  `id_email_contact` int NOT NULL AUTO_INCREMENT,
  `id_contact` int DEFAULT NULL,
  `email_contact` varchar(50) DEFAULT NULL,
  `id_email_contact_type` int DEFAULT NULL,
  `enable_email_contact` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_email_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_contact`
--

LOCK TABLES `email_contact` WRITE;
/*!40000 ALTER TABLE `email_contact` DISABLE KEYS */;
INSERT INTO `email_contact` VALUES (1,3,'D.N.U.',1,'TRUE'),(2,1,'[object Object]',2,'TRUE'),(3,1,'[object Object]',4,'TRUE'),(4,1,'',2,'TRUE'),(5,1,'',4,'TRUE'),(6,1,'',4,'TRUE'),(7,1,'',2,'TRUE'),(8,1,'gedrger',1,'TRUE'),(9,1,'fhjdfjgfgj',2,'TRUE'),(10,1,'sdfsdf',2,'TRUE'),(11,1,'gdfg',2,'TRUE'),(12,1,'johng@andelytica.com',2,'TRUE'),(13,1,'6346',2,'TRUE'),(14,1,'gdgdfg',4,'TRUE'),(15,1,'456745',2,'TRUE'),(16,1,'547457',4,'TRUE'),(17,1,'gdfg',4,'TRUE'),(18,1,'gdgr',4,'TRUE'),(19,1,'Jet@gmail.com',2,'TRUE'),(20,1,'gdfgdfg',2,'TRUE'),(21,1,'jet@gmail.com',0,'TRUE'),(22,1,'johng@andelytica.com',2,'TRUE'),(23,39,'johng@andelytica.com',2,'TRUE'),(24,40,'johng@andelytica.com',2,'TRUE'),(25,43,'Carrlos@patito.com',3,'TRUE'),(26,44,'dfhdfh@gmail.com',4,'TRUE'),(27,45,'fdfsdf',2,'TRUE'),(28,46,'johng@andelytica.com',1,'TRUE'),(29,47,'johng@andelytica.com',1,'TRUE'),(30,48,'patito@gmail.com',1,'TRUE'),(31,49,'johng@andelytica.com',2,'TRUE');
/*!40000 ALTER TABLE `email_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_contact_type`
--

DROP TABLE IF EXISTS `email_contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_contact_type` (
  `id_email_contact_type` int NOT NULL AUTO_INCREMENT,
  `name_email_contact_type` varchar(50) DEFAULT NULL,
  `enable_email_contact_type` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_email_contact_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_contact_type`
--

LOCK TABLES `email_contact_type` WRITE;
/*!40000 ALTER TABLE `email_contact_type` DISABLE KEYS */;
INSERT INTO `email_contact_type` VALUES (1,'D.N.U.','TRUE'),(2,'HOME','TRUE'),(3,'WORK','TRUE'),(4,'OTHER','TRUE'),(5,'hi','FALSE');
/*!40000 ALTER TABLE `email_contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_company_table`
--

DROP TABLE IF EXISTS `phone_company_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_company_table` (
  `id_phone_company_table` int NOT NULL AUTO_INCREMENT,
  `phone_company_table` varchar(50) DEFAULT NULL,
  `id_company_table` int DEFAULT NULL,
  `id_phone_contact_type` int DEFAULT NULL,
  `enable_phone_company_table` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_phone_company_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_company_table`
--

LOCK TABLES `phone_company_table` WRITE;
/*!40000 ALTER TABLE `phone_company_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_company_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_contact_number`
--

DROP TABLE IF EXISTS `phone_contact_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_contact_number` (
  `id_phone_contact_number` int NOT NULL AUTO_INCREMENT,
  `id_contact` int DEFAULT NULL,
  `countryCode` varchar(50) DEFAULT NULL,
  `dialCode` varchar(50) DEFAULT NULL,
  `e164Number` varchar(50) DEFAULT NULL,
  `internationalNumber` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `enable_phone_adress` varchar(20) DEFAULT NULL,
  `national_number` varchar(50) DEFAULT NULL,
  `id_adress_contact_type` int DEFAULT NULL,
  PRIMARY KEY (`id_phone_contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_contact_number`
--

LOCK TABLES `phone_contact_number` WRITE;
/*!40000 ALTER TABLE `phone_contact_number` DISABLE KEYS */;
INSERT INTO `phone_contact_number` VALUES (1,1,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',7),(2,2,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',7),(3,3,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',5),(4,5,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',1),(5,6,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',1),(6,8,'undefined','undefined','undefined','undefined','undefined','TRUE','undefined',1),(7,9,'US','+1','+15959','+1 5959','5959','TRUE','5959',5),(8,10,'US','+1','+145424','+1 45424','45424','TRUE','45424',1),(9,11,'US','+1','+156654654','+1 56654654','56654654','TRUE','56654654',1),(10,28,'US','+1','+15442342','+1 5442342','5442342','TRUE','544-2342',7),(11,29,'US','+1','+164326','+1 64326','64326','TRUE','64326',7),(12,30,'US','+1','+16346','+1 6346','6346','TRUE','6346',7),(13,31,'US','+1','+15442342','+1 5442342','5442342','TRUE','544-2342',7),(14,32,'US','+1','+15442342','+1 5442342','5442342','TRUE','544-2342',1),(15,33,'US','+1','+15345','+1 5345','5345','TRUE','5345',1),(16,34,'US','+1','+1346346','+1 346346','346346','TRUE','346346',7),(17,35,'US','+1','+15447457','+1 5447457','5447457','TRUE','544-7457',7),(18,36,'US','+1','+1456456','+1 456456','456456','TRUE','456456',1),(19,37,'US','+1','+1346346','+1 346346','346346','TRUE','346346',7),(20,38,'US','+1','+145646','+1 45646','45646','TRUE','45646',7),(21,39,'US','+1','+15443','+1 5443','5443','TRUE','5443',5),(22,40,'US','+1','+152962625626','+1 52962625626','52962625626','TRUE','52962625626',7),(23,41,'US','+1','+154456456','+1 54456456','54456456','TRUE','54456456',7),(24,42,'CU','+53','+539238951221','+53 9238951221','+539238951221','TRUE','9238951221',7),(25,43,'US','+1','+19874','+1 9874','9874','TRUE','9874',8),(26,44,'US','+1','+1265462','+1 265462','265462','TRUE','265462',1),(27,45,'US','+1','+124425','+1 24425','24425','TRUE','24425',7),(28,46,'US','+1','+1528148269262','+1 528148269262','528148269262','TRUE','528148269262',1),(29,47,'US','+1','+1528148269262','+1 528148269262','528148269262','TRUE','528148269262',1),(30,48,'US','+1','+1546456456','+1 546456456','546456456','TRUE','546456456',7),(31,48,'US','+1','+1689679','+1 689679','689679','TRUE','689679',1),(32,49,'US','+1','+15442342','+1 5442342','5442342','TRUE','544-2342',7);
/*!40000 ALTER TABLE `phone_contact_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_contact_type`
--

DROP TABLE IF EXISTS `phone_contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_contact_type` (
  `id_phone_contact_type` int NOT NULL AUTO_INCREMENT,
  `name_phone_contact_type` varchar(50) DEFAULT NULL,
  `enable_phone_contact_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_phone_contact_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_contact_type`
--

LOCK TABLES `phone_contact_type` WRITE;
/*!40000 ALTER TABLE `phone_contact_type` DISABLE KEYS */;
INSERT INTO `phone_contact_type` VALUES (1,'Home','TRUE'),(2,'Work','TRUE'),(3,'Mobile','TRUE'),(4,'Main','TRUE'),(5,'Home Fax','TRUE'),(6,'Work Fax','TRUE'),(7,'Google Voice','TRUE'),(8,'Pager','TRUE');
/*!40000 ALTER TABLE `phone_contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preffix_table`
--

DROP TABLE IF EXISTS `preffix_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preffix_table` (
  `id_preffix_table` int NOT NULL AUTO_INCREMENT,
  `name_preffix_table` varchar(50) DEFAULT NULL,
  `enable_preffix_table` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_preffix_table`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preffix_table`
--

LOCK TABLES `preffix_table` WRITE;
/*!40000 ALTER TABLE `preffix_table` DISABLE KEYS */;
INSERT INTO `preffix_table` VALUES (1,'Mr.','TRUE'),(2,'Ms.','TRUE'),(3,'Mrs.','TRUE'),(4,'Miss.','TRUE');
/*!40000 ALTER TABLE `preffix_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suffix_table`
--

DROP TABLE IF EXISTS `suffix_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suffix_table` (
  `id_suffix_table` int NOT NULL AUTO_INCREMENT,
  `name_suffix_table` varchar(50) DEFAULT NULL,
  `enable_suffix_table` varchar(20) DEFAULT 'TRUE',
  PRIMARY KEY (`id_suffix_table`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suffix_table`
--

LOCK TABLES `suffix_table` WRITE;
/*!40000 ALTER TABLE `suffix_table` DISABLE KEYS */;
INSERT INTO `suffix_table` VALUES (1,'Medical','TRUE'),(2,'Law','TRUE'),(3,'Political','TRUE');
/*!40000 ALTER TABLE `suffix_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'crm_test_villagomezc'
--

--
-- Dumping routines for database 'crm_test_villagomezc'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_GetAdressContactsInformation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_GetAdressContactsInformation`()
BEGIN
	select id_adress_contact, country, adress1, adress2 , state_province, city,  
    county, zip_postalcode, general_adress, adress_contact_longitud, adress_contact_latitud
    from adress_contact
    where enable_adress = 'true';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_GetAllContacts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_B_GetAllContacts`()
BEGIN
    select * from contacts;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_GetBasicContactsInformationList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_B_GetBasicContactsInformationList`()
BEGIN

/*el sp sirve para extrar informacion especifica del del contacto para que esta sea mostrada en un lista, 
y posteriormente elejida por el usuario para realizar ciertas accoines */
select id_contacts, first_name, middel_name, last_name, mothers_maiden_name, id_suffix_table, nickname, id_preffix_table
from contacts where contact_enable = 'true';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_getContactById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_getContactById`(
	id int
)
BEGIN
/*Creado por JOD parar obtener toda la informaccion del contacto a buscar mediante el id del mismo*/
	select * from contacts where id_contacts =id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_GetPreffixname_TRUE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_GetPreffixname_TRUE`()
BEGIN
	select id_preffix_table, name_preffix_table
    from preffix_table
    where enable_preffix_table = 'TRUE' order by name_preffix_table ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_GetSuffixname_TRUE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_GetSuffixname_TRUE`()
BEGIN
    select id_suffix_table, name_suffix_table 
    from suffix_table  
    where enable_suffix_table = 'TRUE' order by name_suffix_table ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_get_adress_type_True` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_get_adress_type_True`()
BEGIN
	select id_adress_contact_type, name_adress_contact_type
    from adress_type  
    where enable_adress_contact_type = "TRUE"
    order by name_adress_contact_type asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_get_emails_type_True` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_B_get_emails_type_True`()
BEGIN
	select id_email_contact_type, name_email_contact_type
    from email_contact_type
    where enable_email_contact_type  = "TRUE"
    order by name_email_contact_type asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_B_get_phones_type_True` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_B_get_phones_type_True`()
BEGIN
		SELECT id_phone_contact_type, name_phone_contact_type 
        FROM phone_contact_type 
        where enable_phone_contact_type  = "TRUE"
        order by name_phone_contact_type asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_C_createPhoneContact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_C_createPhoneContact`(
	id_contact int, 
    countryCode varchar(50),
    dialCode varchar(50),
    e164number varchar(50),
    internationalNumber varchar(50),
    number_c varchar(50),
    national_number varchar(50),
    id_adress_contact_type int
)
BEGIN
	 declare lastid varchar(100);
    /*captura de errores*/
		DECLARE EXIT HANDLER for sqlexception
		  BEGIN
			-- ERROR
            set lastid = ("Error sql");
            select lastid;
		  ROLLBACK;
		END;

		DECLARE EXIT HANDLER for sqlwarning
		 BEGIN
			-- WARNING
            set lastid = ("WARNING sql");
            select lastid;
		 ROLLBACK;
		END;

	START TRANSACTION;
	INSERT INTO phone_contact_number(
			id_contact,
			countryCode,
            dialCode,
            e164Number,
            internationalNumber,
            number,
            enable_phone_adress,
            national_number,
            id_adress_contact_type
            )
            
            
            values (
				id_contact, 
				countryCode ,
				dialCode ,
				e164number ,
				internationalNumber ,
				number_c ,
                "TRUE",
				national_number ,
				id_adress_contact_type 
            
				);
                
                COMMIT;
				set lastid = last_insert_id();
				select lastid;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_C_insertAdressContact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_C_insertAdressContact`(
	id_contact int,
    country varchar(100),
    adress1 varchar(150),
    state_province varchar(100),
    city varchar(100),
    county varchar(100),
    zip_postalcode varchar(45),
    adress2 varchar(150),
    general_adress varchar(150),
    id_type_adress int,
    adress_contact_latitud varchar(80),
    adress_contact_longitud varchar(80)
)
BEGIN
		/*CREADO por JEG*/
    declare lastid varchar(100);
    /*captura de errores*/
		DECLARE EXIT HANDLER for sqlexception
		  BEGIN
			-- ERROR
            set lastid = ("Error sql");
            select lastid;
		  ROLLBACK;
		END;

		DECLARE EXIT HANDLER for sqlwarning
		 BEGIN
			-- WARNING
            set lastid = ("WARNING sql");
            select lastid;
		 ROLLBACK;
		END;
/*Creamos la variable para obtener el id del ultimo registro */
	START TRANSACTION;
    insert into adress_contact(
        id_contact,
        country,
		adress1,
		state_province, 
		city,
		county,
		zip_postalcode,
		adress2,
		general_adress,
		id_type_adress,
		adress_contact_latitud,
		adress_contact_longitud,
        enable_adress
    )
    
    values(
        id_contact,
		country,
		adress1,
		state_province, 
		city,
		county,
		zip_postalcode,
		adress2,
		general_adress,
		id_type_adress,
		adress_contact_latitud,
		adress_contact_longitud,
        'TRUE'
    );
    COMMIT;
    set lastid = last_insert_id();
    select lastid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_C_insertContact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_C_insertContact`(
		id_preffix_table int,
		firstN varchar(100),
		middleN varchar(100),
		mothersMaidenNa varchar(100),
		lastN varchar(100),
		nickN varchar(100),
		birthdaydate varchar(100),
        id_suffix_table int
	)
begin 
    /*CREado por JOD*/
    declare lastid varchar(100);
    /*captura de errores*/
		DECLARE EXIT HANDLER for sqlexception
		  BEGIN
			-- ERROR
            set lastid = ("Error sql");
            select lastid;
		  ROLLBACK;
		END;

		DECLARE EXIT HANDLER for sqlwarning
		 BEGIN
			-- WARNING
            set lastid = ("WARNING sql");
            select lastid;
		 ROLLBACK;
		END;
/*Creamos la variable para obtener el id del ultimo registro */
	START TRANSACTION;
    insert into contacts(
		id_preffix_table,
		first_name,
		middel_name,
		last_name,
		mothers_maiden_name,
		nickname,
		birthday,
		contact_enable,
        id_suffix_table,
        create_date
    )values(
		id_preffix_table,
		firstN,
		middleN,
        lastN ,
		mothersMaidenNa,
		nickN,
		CAST(birthdaydate as date),
        "TRUE",
        id_suffix_table,
        CURRENT_TIMESTAMP
    );
    COMMIT;
    set lastid = last_insert_id();
    select lastid;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_C_insert_ContactEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`baseVC`@`%` PROCEDURE `sp_C_insert_ContactEmail`(
	id_contact int,
    email_contact varchar(50),
    id_email_contact_type int
    
    
)
BEGIN
	/*CREADO por JEG*/
    declare lastid varchar(100);
    /*captura de errores*/
		DECLARE EXIT HANDLER for sqlexception
		  BEGIN
			-- ERROR
            set lastid = ("Error sql");
            select lastid;
		  ROLLBACK;
		END;

		DECLARE EXIT HANDLER for sqlwarning
		 BEGIN
			-- WARNING
            set lastid = ("WARNING sql");
            select lastid;
		 ROLLBACK;
		END;
/*Creamos la variable para obtener el id del ultimo registro */
	START TRANSACTION;
    insert into email_contact
    (
		id_contact,
		email_contact,
		id_email_contact_type
        
    )
    
    values
    (
		id_contact,
		email_contact,
		id_email_contact_type
    );
     COMMIT;
    set lastid = last_insert_id();
    select lastid;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_D_deleteContactById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_D_deleteContactById`(
	idContact int
)
BEGIN
	/*este procedimiento sirve para eliminar el contacto; pero 
    se aclAra que no se debe hacer, en este caso es solo para prueba*/
    delete from contacts where id_contacts = idContact;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 16:27:46
