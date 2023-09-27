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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `fi_num` int NOT NULL AUTO_INCREMENT,
  `fi_name` varchar(255) DEFAULT NULL,
  `fi_ori_name` varchar(255) DEFAULT NULL,
  `fi_bo_num` int DEFAULT NULL,
  `fi_re_num` int DEFAULT NULL,
  PRIMARY KEY (`fi_num`),
  KEY `FK_review_TO_file_1_idx` (`fi_re_num`),
  KEY `FK_board_TO_file_1_idx` (`fi_bo_num`),
  CONSTRAINT `FK_board_TO_file_1` FOREIGN KEY (`fi_bo_num`) REFERENCES `board` (`bo_num`),
  CONSTRAINT `FK_review_TO_file_1` FOREIGN KEY (`fi_re_num`) REFERENCES `review` (`re_num`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (8,'/2023/09/22/a9562805-833c-456e-b142-a47ee1bee3a4_1987후드티.jpg','1987후드티.jpg',22,NULL),(9,'/2023/09/25/d623a50b-6c25-4d70-a436-5649ea837669_모자.jpg','모자.jpg',23,NULL),(10,'/2023/09/25/b615de86-478a-4363-9851-52ebb62e4594_신발.jpg','신발.jpg',24,NULL),(11,'/2023/09/26/066d3996-3d71-4ecc-8586-5b61362f59d4_검은후드.jpg','검은후드.jpg',25,NULL),(12,'/2023/09/26/8302573e-4067-46e1-8e2a-1cc6403c635b_후드집업.jpg','후드집업.jpg',26,NULL),(13,'/2023/09/26/fda73f57-5409-4aae-918a-4c784d758e98_자켓.jpg','자켓.jpg',27,NULL),(14,'/2023/09/26/3fea955c-b929-426c-baaa-1e566bf6d852_아디다스.jpg','아디다스.jpg',28,NULL),(15,'/2023/09/26/9933366a-2d49-4a17-813a-164439030855_트레이닝팬츠.jpg','트레이닝팬츠.jpg',29,NULL),(16,'/2023/09/26/04bd7f78-bba4-4b94-91d4-5c25e3d0c329_바지.jpg','바지.jpg',30,NULL),(17,'/2023/09/26/9b046930-0dfb-44b2-978f-7105cc279397_긴팔티.jpg','긴팔티.jpg',31,NULL),(18,'/2023/09/26/a8c3d17d-b807-496b-9173-4fe35fea3bde_스트링트레이닝팬츠.jpg','스트링트레이닝팬츠.jpg',32,NULL),(19,'/2023/09/26/cac386ff-1d36-4169-ab29-b0c5f8e39569_반스.jpg','반스.jpg',33,NULL),(20,'/2023/09/26/f648efd1-615a-4fe1-83e4-20d1fff04cf6_무센트.jpg','무센트.jpg',34,NULL),(21,'/2023/09/26/f6a4aa53-269e-44f1-ab79-5f770e1cef09_티롤리안로우.jpg','티롤리안로우.jpg',35,NULL),(22,'/2023/09/26/033afc8c-0840-4b83-813f-c13d400fb0c9_로이드.jpg','로이드.jpg',36,NULL),(24,'/2023/09/26/26757fac-444a-4b64-8146-bcdcae572513_수아레.jpg','수아레.jpg',38,NULL),(25,'/2023/09/26/365f7f6b-073c-47d5-988e-459b4952af0c_카라넥집업.jpg','카라넥집업.jpg',39,NULL);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
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
