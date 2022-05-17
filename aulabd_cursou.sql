-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aulabd
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `cursou`
--

DROP TABLE IF EXISTS `cursou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursou` (
  `nota` float DEFAULT NULL,
  `semestre` char(6) DEFAULT NULL,
  `matr_aluno` int NOT NULL,
  `cod_disciplina` char(8) NOT NULL,
  PRIMARY KEY (`matr_aluno`,`cod_disciplina`),
  KEY `cod_disciplina` (`cod_disciplina`),
  CONSTRAINT `cursou_ibfk_1` FOREIGN KEY (`matr_aluno`) REFERENCES `aluno` (`matr`),
  CONSTRAINT `cursou_ibfk_2` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplina` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursou`
--

LOCK TABLES `cursou` WRITE;
/*!40000 ALTER TABLE `cursou` DISABLE KEYS */;
INSERT INTO `cursou` VALUES (8,'2021.1',1,'RCM00008'),(8.5,'2021.1',1,'RCM00026'),(7,'2021.1',2,'RCM00006'),(7,'2021.1',2,'RCM00008'),(10,'2022.1',2,'RCM00021'),(8.5,'2021.1',2,'RCM00026'),(7,'2022.1',3,'RCM00006'),(6,'2021.1',3,'RCM00008'),(7.5,'2021.1',3,'RCM00026'),(7,'2021.1',4,'RCM00008'),(9,'2022.1',4,'RCM00021'),(6,'2022.1',5,'RCM00016'),(6,'2022.1',5,'RCM00021'),(8.5,'2021.2',120060005,'RCM00008'),(8,'2022.1',120060005,'RCM00016'),(10,'2022.1',120060005,'RCM00021'),(9.5,'2021.1',120060005,'RCM00026');
/*!40000 ALTER TABLE `cursou` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 13:54:59
