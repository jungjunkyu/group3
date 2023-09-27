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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bo_num` int NOT NULL AUTO_INCREMENT,
  `bo_name` varchar(45) NOT NULL,
  `bo_price` int NOT NULL,
  `bo_contents` longtext NOT NULL,
  `bo_review` int DEFAULT '0',
  PRIMARY KEY (`bo_num`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (22,'1987후드티',54000,'후드티후드티후드티후드티',0),(23,'모자',35000,'모자모자모자모자모자모자모자모자모자모자모자모자모자모자모자모자',0),(24,'신발',89000,'신발신발씬발신발',0),(25,'검은후드',40000,'검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드검은후드',0),(26,'후드집업',38000,'후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업후드집업',0),(27,'자켓',76000,'자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓자켓',0),(28,'아디다스신발',89000,'삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선삼선',3),(29,'트레이닝팬츠',39000,'트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠트레이닝팬츠',0),(30,'바지',33000,'바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지바지',0),(31,'긴팔티',33000,'긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티긴팔티',1),(32,'스트링트레이닝팬츠',44000,'',0),(33,'반스',59000,'반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스반스',0),(34,'무센트',44900,'무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트무센트',0),(35,'티롤리안로우',69000,'티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우티롤리안로우',0),(36,'로이드',99000,'로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드로이드',0),(38,'수아레',77000,'수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레수아레',2),(39,'카라넥집업',150000,'카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업카라넥집업d',4);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27  9:25:50
