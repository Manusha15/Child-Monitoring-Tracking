-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: child_tracking
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `child_checkup`
--

DROP TABLE IF EXISTS `child_checkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_checkup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkup_date` varchar(255) DEFAULT NULL,
  `checkup_reason` varchar(255) DEFAULT NULL,
  `child_id` bigint DEFAULT NULL,
  `heart_rate` int DEFAULT NULL,
  `height` double DEFAULT NULL,
  `important_details` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `medicine_details` varchar(255) DEFAULT NULL,
  `next_checkup_date` varchar(255) DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_checkup`
--

LOCK TABLES `child_checkup` WRITE;
/*!40000 ALTER TABLE `child_checkup` DISABLE KEYS */;
INSERT INTO `child_checkup` VALUES (1,'2026-05-20','Newborn checkup',1,150,50,'Healthy newborn',_binary '\0','Vitamin D drops','2026-06-05',36.5,3),(2,'2026-06-05','Vaccination',1,148,52,'Normal growth',_binary '\0','BCG, OPV','2026-07-05',36.6,3.5),(3,'2026-07-05','Monthly checkup',1,140,55,'Active and feeding well',_binary '\0','Pentavalent','2026-08-05',36.7,4.2),(4,'2026-06-15','Newborn checkup',2,152,49,'Healthy',_binary '\0','Vitamin D','2026-07-01',36.5,2.9),(5,'2026-07-01','Vaccination',2,148,51,'Normal',_binary '\0','BCG','2026-08-01',36.6,3.4),(6,'2026-08-01','Monthly checkup',2,142,54,'Good growth',_binary '\0','Pentavalent','2026-09-01',36.7,4),(7,'2026-07-10','Low weight follow-up',3,155,48,'Low birth weight monitored',_binary '\0','Nutritional support','2026-07-25',36.5,2.5),(8,'2026-07-25','Follow-up',3,150,50,'Improving weight',_binary '\0','Iron drops','2026-08-25',36.6,3),(9,'2026-08-25','Vaccination',3,145,53,'Stable',_binary '\0','BCG, OPV','2026-09-25',36.7,3.6),(10,'2026-06-30','Newborn checkup',4,149,51,'Healthy',_binary '\0','Vitamin D','2026-07-15',36.5,3.2),(11,'2026-07-15','Vaccination',4,145,53,'Normal',_binary '\0','BCG','2026-08-15',36.6,3.8),(12,'2026-08-15','Monthly checkup',4,140,56,'Good growth',_binary '\0','Pentavalent','2026-09-15',36.7,4.5),(13,'2026-07-20','Newborn checkup',5,150,50,'Healthy',_binary '\0','Vitamin D','2026-08-05',36.5,3.1),(14,'2026-08-05','Vaccination',5,146,52,'Normal',_binary '\0','BCG','2026-09-05',36.6,3.7),(15,'2026-09-05','Monthly checkup',5,140,55,'Active',_binary '\0','Pentavalent','2026-10-05',36.7,4.3),(16,'2026-08-05','Newborn checkup',6,152,49,'Healthy',_binary '\0','Vitamin D','2026-08-20',36.5,3),(17,'2026-08-20','Vaccination',6,148,51,'Normal',_binary '\0','BCG','2026-09-20',36.6,3.5),(18,'2026-09-20','Monthly checkup',6,142,54,'Good growth',_binary '\0','Pentavalent','2026-10-20',36.7,4.1);
/*!40000 ALTER TABLE `child_checkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `children` (
  `child_id` bigint NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(255) DEFAULT NULL,
  `child_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `delivery_mode` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `gestation_weeks` int DEFAULT NULL,
  `gravida` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) NOT NULL,
  PRIMARY KEY (`child_id`),
  UNIQUE KEY `UK_jig4dknp4srmnfq74hw9ldidp` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
INSERT INTO `children` VALUES (1,'A+','prenila','2026-05-14','Normal','Healthy','Male',39,'g2p1',_binary '\0','precila','P001','CH-001'),(2,'B+','aarav','2026-06-10','Normal','Healthy','Male',38,'g1p0',_binary '\0','lakshmi','P002','CH-002'),(3,'O+','diya','2026-07-05','C-section','Low birth weight','Female',36,'g1p0',_binary '\0','deepa','P003','CH-003'),(4,'AB+','vihaan','2026-06-25','Normal','Healthy','Male',40,'g3p2',_binary '\0','meena','P004','CH-004'),(5,'A-','isha','2026-07-15','Normal','Healthy','Female',39,'g2p1',_binary '\0','kavya','P005','CH-005'),(6,'B-','reyan','2026-08-01','C-section','Healthy','Male',37,'g1p0',_binary '\0','sneha','P006','CH-006');
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internal_users`
--

DROP TABLE IF EXISTS `internal_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internal_users` (
  `internal_user_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `secret_key_created_at` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`internal_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_users`
--

LOCK TABLES `internal_users` WRITE;
/*!40000 ALTER TABLE `internal_users` DISABLE KEYS */;
INSERT INTO `internal_users` VALUES (1,'2026-03-17 16:56:36.555000','2026-03-20 11:58:25.311000',_binary '\0','$2a$10$Cm42CQkcee6eVL.HqZMMA.u/lbp/QEKQ/tixGd3Bwjnw0q9EG02qe',NULL,NULL,_binary '','admin',NULL,'14/5,kamaraj nager, nagercoil','9856569889','admin@gmail.com'),(2,'2026-03-17 16:57:42.956000','2026-03-19 12:19:13.659000',_binary '\0','$2a$10$n.wkaH7eO5Zmy7RM0x83XO8oeNC5BLCpd1m3nOvAlC4VnewzER4ye',NULL,NULL,_binary '','james',NULL,'12g,santhosh nager,vadaseri','9874563214','james@gmail.com');
/*!40000 ALTER TABLE `internal_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `message` text,
  `vaccination_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'2026-03-20 17:48:56.234000','2026-03-20 17:48:56.234000',_binary '\0',_binary '\0','Vaccination Reminder: prenila is scheduled for DPT-2 today (2026-03-20).',4),(2,'2026-03-20 17:48:56.264000','2026-03-20 17:48:56.264000',_binary '\0',_binary '\0','Vaccination Reminder: aarav is scheduled for IPV-2 today (2026-03-20).',8),(3,'2026-03-20 17:48:56.278000','2026-03-20 17:48:56.278000',_binary '\0',_binary '\0','Vaccination Reminder: diya is scheduled for Hib-2 today (2026-03-20).',11),(4,'2026-03-20 17:48:56.295000','2026-03-20 17:49:14.777000',_binary '',_binary '','Vaccination Reminder: vihaan is scheduled for Rotavirus-2 today (2026-03-20).',14),(5,'2026-03-20 17:48:56.311000','2026-03-20 17:49:08.901000',_binary '\0',_binary '','Vaccination Reminder: isha is scheduled for PCV-2 today (2026-03-20).',17),(6,'2026-03-20 17:48:56.325000','2026-03-20 17:49:01.690000',_binary '\0',_binary '','Vaccination Reminder: reyan is scheduled for MMR-1 today (2026-03-20).',20);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id_pk` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `aadhaar_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `delivery_within_15_days` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `husband_name` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `previous_children` int DEFAULT NULL,
  PRIMARY KEY (`patient_id_pk`),
  UNIQUE KEY `UK_5k7l7wk9ogyt1ag6vku4a4lwo` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'2026-03-20 16:12:36.329000','2026-03-20 16:13:53.583000','256948963568','1/d groundfloor, kesava thiruppa puram, vettoornimadam','2026-03-20',25,'A+','9658745698','2001-12-21',_binary '\0','precilla@gmail.com','renis',_binary '\0','precilla','P001',1),(7,'2026-03-20 16:36:18.000000','2026-03-20 17:48:14.854000','256948963569','2/d groundfloor, anna nagar, chennai','2025-07-20',26,'B+','9658745699','1999-05-15',_binary '','lakshmi@gmail.com','suresh',_binary '\0','lakshmi','P002',1),(8,'2026-03-20 16:36:18.000000','2026-03-20 16:36:18.000000','256948963570','3/d groundfloor, btm layout, bangalore','2025-08-20',23,'O+','9658745700','2002-03-10',_binary '\0','deepa@gmail.com','kiran',_binary '\0','deepa','P003',0),(9,'2026-03-20 16:36:18.000000','2026-03-20 16:36:18.000000','256948963571','4/d groundfloor, rs puram, coimbatore','2025-09-20',28,'AB+','9658745701','1997-07-25',_binary '\0','meena@gmail.com','arun',_binary '\0','meena','P004',2),(10,'2026-03-20 16:36:18.000000','2026-03-20 16:36:18.000000','256948963572','5/d groundfloor, kk nagar, madurai','2025-10-20',25,'A-','9658745702','2000-11-30',_binary '\0','kavya@gmail.com','vijay',_binary '\0','kavya','P005',1),(11,'2026-03-20 16:36:18.000000','2026-03-20 17:48:08.966000','256948963573','6/d groundfloor, jubilee hills, hyderabad','2025-11-20',27,'B-','9658745703','1998-06-21',_binary '','sneha@gmail.com','rahul',_binary '\0','sneha','P006',0);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_checkup`
--

DROP TABLE IF EXISTS `patient_checkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_checkup` (
  `checkup_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `checkup_date` date DEFAULT NULL,
  `fetal_heart_rate` int DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `important_details` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `medicine_details` varchar(255) DEFAULT NULL,
  `next_checkup_date` date DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `sugar_level` double DEFAULT NULL,
  `week_of_pregnancy` int DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`checkup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_checkup`
--

LOCK TABLES `patient_checkup` WRITE;
/*!40000 ALTER TABLE `patient_checkup` DISABLE KEYS */;
INSERT INTO `patient_checkup` VALUES (1,'2026-03-20 16:17:18.012000','2026-03-20 16:17:18.012000','118/75','2026-03-20',142,12,'Stable',_binary '\0','Iron, vitamine ','2026-04-04','P001',98,4,68.5),(2,'2026-03-20 16:18:44.747000','2026-03-20 16:18:44.747000','120/80','2026-04-04',147,12.1,'Good ',_binary '\0','Vitamin tablets','2026-04-25','P001',100,8,72),(3,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','110/70','2025-10-20',0,11.2,'Initial visit',_binary '\0','Folic acid','2025-11-20','P001',90,4,60),(4,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2025-11-20',130,11.5,'Normal',_binary '\0','Folic acid, Iron','2025-12-20','P001',92,8,61),(5,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','114/74','2025-12-20',140,11.8,'Stable',_binary '\0','Iron, Calcium','2026-01-20','P001',94,12,63),(6,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','116/76','2026-01-20',145,12,'Good growth',_binary '\0','Calcium','2026-02-20','P001',96,16,65),(7,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','118/78','2026-02-20',148,12.2,'Normal',_binary '\0','Iron','2026-03-20','P001',98,20,67),(8,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','120/80','2026-03-20',150,12.5,'Stable',_binary '\0','Iron, Protein','2026-04-03','P001',100,24,69),(9,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','108/68','2025-11-20',0,11,'Initial visit',_binary '\0','Folic acid','2025-12-20','P002',88,4,58),(10,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','110/70','2025-12-20',128,11.3,'Normal',_binary '\0','Iron','2026-01-20','P002',90,8,59),(11,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2026-01-20',135,11.6,'Stable',_binary '\0','Iron, Calcium','2026-02-20','P002',92,12,61),(12,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','114/74','2026-02-20',140,11.9,'Good',_binary '\0','Calcium','2026-03-20','P002',94,16,63),(13,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','116/76','2026-03-20',145,12.1,'Normal',_binary '\0','Iron','2026-04-03','P002',96,20,65),(14,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','110/70','2025-12-20',0,11.1,'Initial visit',_binary '\0','Folic acid','2026-01-20','P003',89,4,57),(15,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2026-01-20',132,11.4,'Normal',_binary '\0','Iron','2026-02-20','P003',91,8,59),(16,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','114/74','2026-02-20',138,11.7,'Stable',_binary '\0','Calcium','2026-03-20','P003',93,12,61),(17,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','116/76','2026-03-20',142,12,'Good',_binary '\0','Iron','2026-04-03','P003',95,16,63),(18,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2025-12-20',0,11.3,'Initial visit',_binary '\0','Folic acid','2026-01-20','P004',92,4,65),(19,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','114/74','2026-01-20',135,11.6,'Normal',_binary '\0','Iron','2026-02-20','P004',94,8,67),(20,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','116/76','2026-02-20',140,11.9,'Stable',_binary '\0','Calcium','2026-03-20','P004',96,12,69),(21,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','118/78','2026-03-20',145,12.2,'Good',_binary '\0','Iron','2026-04-03','P004',98,16,71),(22,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','110/70','2026-01-20',0,11,'Initial visit',_binary '\0','Folic acid','2026-02-20','P005',90,4,60),(23,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2026-02-20',130,11.3,'Normal',_binary '\0','Iron','2026-03-20','P005',92,8,62),(24,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','114/74','2026-03-20',135,11.6,'Stable',_binary '\0','Calcium','2026-04-20','P005',94,12,64),(25,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','110/70','2026-02-20',0,11.2,'Initial visit',_binary '\0','Folic acid','2026-03-20','P006',91,4,61),(26,'2026-03-20 16:40:56.000000','2026-03-20 16:40:56.000000','112/72','2026-03-20',128,11.5,'Normal',_binary '\0','Iron','2026-04-20','P006',93,8,63);
/*!40000 ALTER TABLE `patient_checkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccination`
--

DROP TABLE IF EXISTS `vaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccination` (
  `vaccination_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `child_id` bigint DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vaccinated_date` date DEFAULT NULL,
  `vaccine_id` bigint DEFAULT NULL,
  PRIMARY KEY (`vaccination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination`
--

LOCK TABLES `vaccination` WRITE;
/*!40000 ALTER TABLE `vaccination` DISABLE KEYS */;
INSERT INTO `vaccination` VALUES (1,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',1,_binary '\0','Birth vaccine given','2026-05-14','COMPLETED','2026-05-14',1),(2,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',1,_binary '\0','Polio at birth','2026-05-14','COMPLETED','2026-05-14',2),(3,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',1,_binary '\0','6 weeks vaccine','2026-03-19','COMPLETED','2026-03-19',4),(4,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',1,_binary '\0','Scheduled vaccination','2026-03-20','PENDING',NULL,10),(5,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',1,_binary '\0','Upcoming vaccination','2026-03-21','PENDING',NULL,15),(6,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',2,_binary '\0','Birth vaccine','2026-06-10','COMPLETED','2026-06-10',1),(7,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',2,_binary '\0','6 weeks done','2026-03-18','COMPLETED','2026-03-18',4),(8,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',2,_binary '\0','Vaccination due today','2026-03-20','PENDING',NULL,11),(9,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',2,_binary '\0','Next dose scheduled','2026-03-21','PENDING',NULL,16),(10,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',3,_binary '\0','Low weight follow-up vaccine','2026-03-17','COMPLETED','2026-03-17',5),(11,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',3,_binary '\0','Vaccination today','2026-03-20','PENDING',NULL,12),(12,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',3,_binary '\0','Follow-up vaccination','2026-03-21','PENDING',NULL,17),(13,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',4,_binary '\0','Birth vaccine completed','2026-06-25','COMPLETED','2026-06-25',1),(14,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',4,_binary '\0','Routine vaccination','2026-03-20','PENDING',NULL,13),(15,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',4,_binary '\0','Next scheduled dose','2026-03-21','PENDING',NULL,18),(16,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',5,_binary '\0','Initial vaccine done','2026-03-16','COMPLETED','2026-03-16',2),(17,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',5,_binary '\0','Vaccination due','2026-03-20','PENDING',NULL,14),(18,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',5,_binary '\0','Upcoming dose','2026-03-21','PENDING',NULL,19),(19,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',6,_binary '\0','Birth vaccine done','2026-03-15','COMPLETED','2026-03-15',3),(20,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',6,_binary '\0','Vaccination scheduled','2026-03-20','PENDING',NULL,20),(21,'2026-03-20 17:46:53.000000','2026-03-20 17:46:53.000000',6,_binary '\0','Next vaccination','2026-03-21','PENDING',NULL,21);
/*!40000 ALTER TABLE `vaccination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccine` (
  `vaccine_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `vaccine_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vaccine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine`
--

LOCK TABLES `vaccine` WRITE;
/*!40000 ALTER TABLE `vaccine` DISABLE KEYS */;
INSERT INTO `vaccine` VALUES (1,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','BCG','Prevents tuberculosis','At birth',_binary '\0',_binary '','BCG'),(2,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','OPV-0','Oral polio vaccine (zero dose)','At birth',_binary '\0',_binary '','OPV-0'),(3,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','HepB-1','Hepatitis B first dose','At birth',_binary '\0',_binary '','Hepatitis B'),(4,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','DPT-1','Diphtheria, Pertussis, Tetanus','6 weeks',_binary '\0',_binary '','DPT-1'),(5,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','IPV-1','Inactivated polio vaccine','6 weeks',_binary '\0',_binary '','IPV-1'),(6,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','HepB-2','Hepatitis B second dose','6 weeks',_binary '\0',_binary '','Hepatitis B-2'),(7,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Hib-1','Haemophilus influenzae type B','6 weeks',_binary '\0',_binary '','Hib-1'),(8,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Rota-1','Rotavirus vaccine','6 weeks',_binary '\0',_binary '','Rotavirus-1'),(9,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','PCV-1','Pneumococcal conjugate vaccine','6 weeks',_binary '\0',_binary '','PCV-1'),(10,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','DPT-2','Second dose DPT','10 weeks',_binary '\0',_binary '','DPT-2'),(11,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','IPV-2','Second dose IPV','10 weeks',_binary '\0',_binary '','IPV-2'),(12,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Hib-2','Second dose Hib','10 weeks',_binary '\0',_binary '','Hib-2'),(13,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Rota-2','Second dose Rotavirus','10 weeks',_binary '\0',_binary '','Rotavirus-2'),(14,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','PCV-2','Second dose PCV','10 weeks',_binary '\0',_binary '','PCV-2'),(15,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','DPT-3','Third dose DPT','14 weeks',_binary '\0',_binary '','DPT-3'),(16,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','IPV-3','Third dose IPV','14 weeks',_binary '\0',_binary '','IPV-3'),(17,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Hib-3','Third dose Hib','14 weeks',_binary '\0',_binary '','Hib-3'),(18,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Rota-3','Third dose Rotavirus','14 weeks',_binary '\0',_binary '','Rotavirus-3'),(19,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','PCV-3','Third dose PCV','14 weeks',_binary '\0',_binary '','PCV-3'),(20,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','MMR-1','Measles, Mumps, Rubella','9 months',_binary '\0',_binary '','MMR-1'),(21,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','MMR-2','Second dose MMR','15 months',_binary '\0',_binary '','MMR-2'),(22,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','Varicella','Chickenpox vaccine','15 months',_binary '\0',_binary '','Varicella'),(23,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','DPT-Booster-1','DPT booster dose','18 months',_binary '\0',_binary '','DPT Booster'),(24,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','OPV-Booster','Oral polio booster','18 months',_binary '\0',_binary '','OPV Booster'),(25,'2026-03-20 17:34:22.000000','2026-03-20 17:34:22.000000','DPT-Booster-2','Second DPT booster','5 years',_binary '\0',_binary '','DPT Booster 2');
/*!40000 ALTER TABLE `vaccine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-20 17:49:55
