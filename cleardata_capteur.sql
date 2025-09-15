-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: cleardata
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
-- Table structure for table `capteur`
--

DROP TABLE IF EXISTS `capteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capteur` (
  `id_capteur` int NOT NULL AUTO_INCREMENT,
  `etat` tinyint(1) DEFAULT NULL,
  `id_adresse` int DEFAULT NULL,
  `id_employe` int DEFAULT NULL,
  `id_gaz` int DEFAULT NULL,
  PRIMARY KEY (`id_capteur`),
  KEY `id_adresse` (`id_adresse`),
  KEY `id_employe` (`id_employe`),
  KEY `id_gaz` (`id_gaz`),
  CONSTRAINT `capteur_ibfk_1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`),
  CONSTRAINT `capteur_ibfk_2` FOREIGN KEY (`id_employe`) REFERENCES `ressources_humaines` (`id_employe`),
  CONSTRAINT `capteur_ibfk_3` FOREIGN KEY (`id_gaz`) REFERENCES `propriete_gaz` (`id_gaz`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capteur`
--

LOCK TABLES `capteur` WRITE;
/*!40000 ALTER TABLE `capteur` DISABLE KEYS */;
INSERT INTO `capteur` VALUES (1,1,43,41,4),(2,1,44,20,2),(3,1,45,26,6),(4,0,46,17,2),(5,0,47,17,4),(6,1,48,2,2),(7,1,49,38,2),(8,1,50,2,6),(9,0,51,32,4),(10,1,52,2,6),(11,1,53,32,2),(12,1,54,8,5),(13,1,55,23,4),(14,1,56,8,4),(15,0,57,32,5),(16,1,58,17,6),(17,1,59,35,3),(18,0,60,11,2),(19,0,61,2,2),(20,1,62,41,3),(21,0,63,26,2),(22,0,64,23,1),(23,0,65,8,6),(24,0,66,11,1),(25,0,67,11,5),(26,0,68,11,6),(27,1,69,38,2),(28,0,70,23,6),(29,0,71,20,4),(30,1,72,23,2),(31,1,73,2,5),(32,1,74,35,1),(33,1,75,38,4),(34,0,76,35,6),(35,1,77,5,4),(36,1,78,26,6),(37,1,79,35,4),(38,1,80,26,4),(39,1,81,8,3),(40,1,82,32,2),(41,1,83,20,2),(42,1,84,26,6),(43,1,85,29,5),(44,1,86,26,4),(45,0,87,26,5),(46,0,88,8,5),(47,1,89,41,2),(48,1,90,35,4),(49,1,91,8,2),(50,0,92,11,4);
/*!40000 ALTER TABLE `capteur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-15 10:50:19
