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
-- Table structure for table `rapport`
--

DROP TABLE IF EXISTS `rapport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapport` (
  `id_rapport` int NOT NULL AUTO_INCREMENT,
  `nom_rapport` text,
  `date_redaction` date DEFAULT NULL,
  `analyse` text,
  PRIMARY KEY (`id_rapport`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapport`
--

LOCK TABLES `rapport` WRITE;
/*!40000 ALTER TABLE `rapport` DISABLE KEYS */;
INSERT INTO `rapport` VALUES (1,'Analyse de la pollution à l\'ozone troposphérique à Nevers','2004-06-03','Le taux d\'ozone troposphérique relevé à Nevers (Normandie) est de 0.08671 ppm. Cette valeur, bien qu’élevée, reste en dessous du seuil maximal de 0.1 ppm défini dans les normes de qualité de l\'air. Il n’est donc pas nécessaire de prendre des mesures immédiates, mais une vigilance renforcée est conseillée en cas de conditions météorologiques favorables à l\'accumulation de ce gaz.'),(2,'Analyse de la pollution aux hydrofluorocarbures à Schiltigheim','2002-11-24','Le taux d’hydrofluorocarbures mesuré à Schiltigheim (Centre-Val de Loire) est de 0.00093 ppm. Cette concentration s’approche de la limite supérieure fixée à 0.001 ppm. Bien que la situation reste sous contrôle, elle souligne l’importance d’une surveillance continue afin d’éviter tout dépassement susceptible d’impacter la qualité de l’air.'),(3,'Analyse de la pollution à l\'ozone troposphérique à Boulogne-Billancourt','2021-08-18','Le taux d’ozone troposphérique relevé à Boulogne-Billancourt (Île-de-France) est de 0.05813 ppm. Cette valeur se situe dans la plage normale (0.03 à 0.1 ppm) et ne présente donc pas de risque immédiat pour la population. Toutefois, une attention particulière doit être portée durant les périodes estivales où les niveaux peuvent rapidement augmenter.'),(4,'Analyse de la pollution à l\'ozone troposphérique à Issoire','2002-04-26','Le taux d’ozone troposphérique mesuré à Issoire (Nouvelle-Aquitaine) est de 0.08562 ppm. Cette concentration reste dans les limites acceptables (0.03 à 0.1 ppm), mais elle est relativement élevée. Une telle valeur peut provoquer des irritations chez les personnes sensibles, d’où l’importance de maintenir une veille environnementale renforcée.'),(5,'Analyse de la pollution aux hydrofluorocarbures à Savigny-sur-Orge','2007-07-01','Le taux d’hydrofluorocarbures enregistré à Savigny-sur-Orge (Bourgogne-Franche-Comté) est de 0.00093 ppm. Cette valeur, proche du seuil maximal de 0.001 ppm, indique une situation à surveiller de près. Bien qu’aucun danger immédiat ne soit constaté, une augmentation supplémentaire pourrait nécessiter des mesures de limitation des émissions.'),(6,'Analyse de la pollution à l\'ozone troposphérique à Boulogne-Billancourt','2013-11-21','Le taux d’ozone troposphérique relevé à Boulogne-Billancourt (Île-de-France) est de 0.08476 ppm. Cette concentration est conforme aux normes environnementales en vigueur (0.03 à 0.1 ppm), bien qu\'elle reste relativement élevée. Une surveillance régulière est recommandée pour prévenir tout dépassement futur, notamment en période de forte activité urbaine ou de conditions climatiques stables.'),(7,'Analyse de la pollution à l\'ozone troposphérique à Boulogne-Billancourt','1993-09-30','Le taux d’ozone troposphérique mesuré à Boulogne-Billancourt (Île-de-France) est de 0.09487 ppm. Cette valeur est proche de la limite maximale de 0.1 ppm, ce qui peut représenter un risque pour les populations sensibles, notamment les enfants et les personnes atteintes de troubles respiratoires. Une communication préventive et une surveillance accrue sont conseillées.'),(8,'Analyse de la pollution au dioxyde de carbone à Saint-Lô','2011-01-19','Le taux de dioxyde de carbone relevé à Saint-Lô est de 415.16399 ppm. Cette valeur se situe dans la plage normale définie (410 à 430 ppm) et ne présente donc pas de danger immédiat pour la population. Néanmoins, ce niveau reste révélateur de la contribution continue des activités humaines aux émissions de CO₂, soulignant l’importance des politiques de réduction de gaz à effet de serre.'),(9,'Analyse de la pollution au dioxyde de carbone à Toulon','1989-12-23','Le taux de dioxyde de carbone mesuré à Toulon est de 421.41360 ppm. Cette concentration, bien que dans les limites acceptables (410 à 430 ppm), reflète un niveau déjà élevé pour la fin des années 1980. Cela suggère une évolution préoccupante des émissions à long terme et justifie pleinement l’attention croissante portée aux questions climatiques à l’échelle régionale et nationale.'),(10,'Analyse de la pollution à l\'ozone troposphérique à Challans','2006-04-30','Le taux d’ozone troposphérique relevé à Challans est de 0.03915 ppm. Cette valeur est nettement en dessous du seuil maximal de 0.1 ppm, ce qui indique une bonne qualité de l’air concernant ce polluant. Aucune mesure corrective n’est nécessaire, mais le maintien de cette qualité dépend d’efforts continus en matière de réduction des émissions urbaines et industrielles.');
/*!40000 ALTER TABLE `rapport` ENABLE KEYS */;
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
