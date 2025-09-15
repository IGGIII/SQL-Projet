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
-- Table structure for table `ressources_humaines`
--

DROP TABLE IF EXISTS `ressources_humaines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ressources_humaines` (
  `id_employe` int NOT NULL AUTO_INCREMENT,
  `date_naissance` date DEFAULT NULL,
  `date_prise_poste` date DEFAULT NULL,
  `type_emploie` enum('Chef_Agence','Agent_Administratif','Agent_Technique') DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `diplome` text,
  `id_adresse` int DEFAULT NULL,
  `id_agence` int DEFAULT NULL,
  PRIMARY KEY (`id_employe`),
  KEY `id_adresse` (`id_adresse`),
  KEY `id_agence` (`id_agence`),
  CONSTRAINT `ressources_humaines_ibfk_1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`),
  CONSTRAINT `ressources_humaines_ibfk_2` FOREIGN KEY (`id_agence`) REFERENCES `agence_local` (`id_agence`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ressources_humaines`
--

LOCK TABLES `ressources_humaines` WRITE;
/*!40000 ALTER TABLE `ressources_humaines` DISABLE KEYS */;
INSERT INTO `ressources_humaines` VALUES (1,'1984-03-13','2004-06-02','Chef_Agence','Faure','Luc','MBA',30,1),(2,'1992-07-06','2023-06-23','Agent_Technique','Durand','Thomas','BTS Électrotechnique',2,1),(3,'1991-03-26','2024-08-27','Agent_Administratif','Roux','Luc','Licence Administration',3,1),(4,'1985-06-18','2003-08-13','Chef_Agence','Garnier','Jean','Master Management',14,2),(5,'1996-12-15','2017-04-03','Agent_Technique','Martin','Sophie','Licence Pro Maintenance',6,2),(6,'1990-09-25','2011-11-13','Agent_Administratif','Faure','Alice','Licence Administration',4,2),(7,'1985-03-24','2015-09-17','Chef_Agence','Garnier','Alice','Master Management',7,3),(8,'1982-07-03','2003-09-21','Agent_Technique','Faure','Julie','BTS Électrotechnique',22,3),(9,'1989-11-16','2020-04-03','Agent_Administratif','Durand','Jean','BTS Assistant de Gestion',8,3),(10,'1989-08-17','2013-01-15','Chef_Agence','Roux','Julie','MBA',12,4),(11,'1995-10-06','2014-04-18','Agent_Technique','Moreau','Thomas','CAP Installateur',17,4),(12,'1981-04-21','1999-07-15','Agent_Administratif','Moreau','Hugo','BTS Assistant de Gestion',10,4),(13,'1994-01-02','2013-05-04','Chef_Agence','Petit','Emma','Master Management',5,5),(14,'1984-06-20','2010-05-08','Agent_Technique','Lefebvre','Hugo','BTS Électrotechnique',19,5),(15,'1986-12-21','2009-05-06','Agent_Administratif','Lefebvre','Sophie','BTS Assistant de Gestion',13,5),(16,'1990-04-03','2015-11-24','Chef_Agence','Faure','Julie','Master Management',29,6),(17,'1985-01-19','2016-02-28','Agent_Technique','Lefebvre','Thomas','CAP Installateur',18,6),(18,'1985-05-28','2003-06-15','Agent_Administratif','Garnier','Julie','DUT GEA',11,6),(19,'1988-06-26','2022-10-10','Chef_Agence','Garcia','Julie','Master Management',15,7),(20,'1990-11-15','2024-03-31','Agent_Technique','Mercier','Nicolas','Licence Pro Maintenance',20,7),(21,'1989-03-24','2008-11-06','Agent_Administratif','Mercier','Laura','DUT GEA',21,7),(22,'1991-10-26','2014-09-27','Chef_Agence','Lefebvre','Nicolas','Master Management',40,8),(23,'1994-04-20','2013-03-22','Agent_Technique','Petit','Julie','CAP Installateur',24,8),(24,'1999-02-10','2018-06-17','Agent_Administratif','Moreau','Nicolas','BTS Assistant de Gestion',9,8),(25,'1981-05-27','2005-12-21','Chef_Agence','Petit','Alice','Master Gestion',42,9),(26,'1993-03-05','2016-02-20','Agent_Technique','Martin','Julie','BTS Électrotechnique',27,9),(27,'1988-05-08','2011-01-10','Agent_Administratif','Garcia','Luc','DUT GEA',26,9),(28,'1985-01-07','2006-05-01','Chef_Agence','Roux','Sophie','Master Gestion',16,10),(29,'1980-04-02','2001-12-17','Agent_Technique','Martin','Luc','CAP Installateur',28,10),(30,'1987-10-30','2007-06-07','Agent_Administratif','Moreau','Sophie','BTS Assistant de Gestion',1,10),(31,'1987-09-23','2007-06-28','Chef_Agence','Lefebvre','Alice','MBA',33,11),(32,'1987-07-18','2005-11-06','Agent_Technique','Durand','Luc','BTS Électrotechnique',31,11),(33,'2000-05-31','2022-01-05','Agent_Administratif','Faure','Hugo','Licence Administration',32,11),(34,'1982-05-24','2005-09-29','Chef_Agence','Garnier','Thomas','MBA',36,12),(35,'1994-07-24','2013-12-29','Agent_Technique','Durand','Alice','BTS Électrotechnique',38,12),(36,'1997-10-20','2024-09-02','Agent_Administratif','Durand','Thomas','Licence Administration',34,12),(37,'1987-03-21','2006-05-30','Chef_Agence','Mercier','Alice','Master Management',37,13),(38,'1988-06-14','2019-05-21','Agent_Technique','Moreau','Luc','CAP Installateur',35,13),(39,'1988-01-11','2006-01-09','Agent_Administratif','Mercier','Luc','DUT GEA',39,13),(40,'1982-02-27','2005-11-03','Chef_Agence','Mercier','Hugo','Master Gestion',23,14),(41,'1985-03-09','2013-11-08','Agent_Technique','Durand','Thomas','BTS Électrotechnique',25,14),(42,'1991-04-08','2014-07-14','Agent_Administratif','Garnier','Hugo','Licence Administration',41,14);
/*!40000 ALTER TABLE `ressources_humaines` ENABLE KEYS */;
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
