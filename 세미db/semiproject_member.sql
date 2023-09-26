CREATE DATABASE  IF NOT EXISTS `semiproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `semiproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: semiproject
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `me_id` varchar(15) NOT NULL,
  `me_pw` varchar(225) NOT NULL,
  `me_addr` varchar(50) NOT NULL,
  `me_addr_detail` varchar(50) NOT NULL,
  `me_email` varchar(45) NOT NULL,
  `me_point` int DEFAULT NULL,
  `me_name` varchar(20) NOT NULL,
  `me_session_id` varchar(225) DEFAULT NULL,
  `me_session_limit` datetime DEFAULT NULL,
  `me_role` varchar(45) DEFAULT 'USER',
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('admin123','$2a$10$pNXNkRqGbpQA9QFqb0w2ue/OeA1tRGe9/4WvpuweVYv7zxJ/kCUPq','서울시 강남구','kh정보교육원','admin123@naver.com',0,'관리자','8E251B3BAF0C6016B04E6FDCFF1D463C',NULL,'ADMIN'),('asd123','$2a$10$7ZHcSaNXGnMRSz9nKp8JPOixKJ1OWGMe8VW7CxUXOvfLbD2N4EB3W','서울시 강남구','테헤란로 130','asd123@naver.com',0,'홍길동',NULL,NULL,'USER'),('qwer123','$2a$10$f7EgBuviqtYYnVO8nyTC3eMnO6P160lWBw2ZLtK/sndWvM5.UEZsK','서울시 강남구','테헤란로 130','qwer123@naver.com',0,'홍길동','1BFE077D86ADF7AE0474DD73F76DAC31',NULL,'USER');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 17:37:29
