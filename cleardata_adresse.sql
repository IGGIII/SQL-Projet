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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `rue` varchar(46) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `code_postal` varchar(50) DEFAULT NULL,
  `prefecture` varchar(50) DEFAULT NULL,
  `id_agence` int DEFAULT NULL,
  `id_region` int DEFAULT NULL,
  PRIMARY KEY (`id_adresse`),
  KEY `id_agence` (`id_agence`),
  KEY `id_region` (`id_region`),
  CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`id_agence`) REFERENCES `agence_local` (`id_agence`),
  CONSTRAINT `adresse_ibfk_2` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,'Rue des Lilas 160','Gray','70770','Vesoul',2,2),(2,'Rue Nationale 185','Périgueux','24279','Périgueux',14,10),(3,'Rue des Lilas 53','Bressuire','79631','Niort',14,10),(4,'Avenue de la République 32','Cannes','06447','Nice',13,13),(5,'Rue de la Gare 270','Rambouillet','78565','Versailles',8,8),(6,'Boulevard Haussmann 89','Sens','89600','Auxerre',2,2),(7,'Chemin Vert 294','Joigny','89693','Auxerre',2,2),(8,'Rue Victor Hugo 56','Canet-en-Roussillon','66832','Perpignan',11,11),(9,'Boulevard Haussmann 185','Romorantin-Lanthenay','41135','Blois',4,4),(10,'Rue des Lilas 173','Aix-en-Provence','13789','Marseille',13,13),(11,'Rue Victor Hugo 197','Gaillac','81772','Albi',11,11),(12,'Boulevard Haussmann 266','Châteaudun','28301','Chartres',4,4),(13,'Boulevard Haussmann 226','Île-Rousse','2B605','Bastia',5,5),(14,'Boulevard Haussmann 281','Sisteron','04600','Digne-les-Bains',13,13),(15,'Avenue de la République 230','Rambouillet','78833','Versailles',8,8),(16,'Avenue de la République 105','Échirolles','38773','Grenoble',1,1),(17,'Boulevard Haussmann 191','Saint-Louis','68065','Colmar',6,6),(18,'Boulevard Haussmann 98','Vitré','35663','Rennes',3,3),(19,'Avenue de la République 6','Ploërmel','56382','Vannes',3,3),(20,'Rue Victor Hugo 164','Massy','91476','Évry',8,8),(21,'Boulevard Haussmann 19','Angers','49015','Angers',12,12),(22,'Rue Nationale 223','Vernon','27213','Évreux',9,9),(23,'Rue de la Gare 291','Senlis','60986','Beauvais',7,7),(24,'Boulevard Haussmann 200','Givet','08203','Charleville-Mézières',6,6),(25,'Avenue de la République 37','Mende','48472','Mende',11,11),(26,'Boulevard Haussmann 7','Forbach','57194','Metz',6,6),(27,'Avenue de la République 181','Romorantin-Lanthenay','41393','Blois',4,4),(28,'Rue Nationale 31','Béziers','34246','Montpellier',11,11),(29,'Rue de la Gare 95','Pontivy','56573','Vannes',3,3),(30,'Rue des Lilas 260','Évron','53358','Laval',12,12),(31,'Rue Nationale 147','Parthenay','79154','Niort',14,10),(32,'Rue des Lilas 37','Rambouillet','78734','Versailles',8,8),(33,'Rue Victor Hugo 145','Bastia','2B018','Bastia',5,5),(34,'Rue de la Gare 273','Ussel','19511','Tulle',14,10),(35,'Rue de la Gare 148','Soissons','02023','Laon',7,7),(36,'Chemin Vert 138','Villeurbanne','69659','Lyon',1,1),(37,'Rue des Lilas 247','Corte','2B284','Bastia',5,5),(38,'Rue des Lilas 138','Corte','2B085','Bastia',5,5),(39,'Rue Nationale 105','Royan','17098','La Rochelle',14,10),(40,'Rue Victor Hugo 134','Saint-Quentin','02583','Laon',7,7),(41,'Avenue de la République 224','Alençon','61876','Alençon',9,9),(42,'Boulevard Haussmann 11','Briançon','05979','Gap',13,13),(43,'Boulevard Haussmann 281','Brioude','43933','Le Puy-en-Velay',1,11),(44,'Boulevard Haussmann 223','Boulogne-Billancourt','92226','Nanterre',8,8),(45,'Chemin Vert 113','La Seyne-sur-Mer','83144','Toulon',13,4),(46,'Chemin Vert 52','Bar-le-Duc','55532','Bar-le-Duc',6,3),(47,'Rue Nationale 90','Sartène','2A088','Ajaccio',5,3),(48,'Rue de la Gare 122','Aubusson','23177','Guéret',14,10),(49,'Rue Nationale 163','Paris','75298','Paris',8,5),(50,'Rue Nationale 152','Saint-Lô','50313','Saint-Lô',9,10),(51,'Chemin Vert 282','Val-de-Reuil','27599','Évreux',9,10),(52,'Rue des Lilas 175','Chaumont','52402','Chaumont',6,10),(53,'Rue de la Gare 300','Issoire','63033','Clermont-Ferrand',1,10),(54,'Rue Nationale 74','Vesoul','70759','Vesoul',2,9),(55,'Avenue de la République 255','Flers','61364','Alençon',9,6),(56,'Rue Nationale 294','Saint-Junien','87981','Limoges',10,9),(57,'Chemin Vert 206','Le Creusot','71090','Mâcon',2,10),(58,'Chemin Vert 4','Bergerac','24314','Périgueux',10,3),(59,'Rue Victor Hugo 10','Île-Rousse','2B868','Bastia',5,7),(60,'Rue Victor Hugo 84','Soyaux','16669','Angoulême',10,6),(61,'Rue de la Gare 230','Vitry-sur-Seine','94958','Créteil',8,10),(62,'Rue des Artistes 219','Bagnères-de-Bigorre','65375','Tarbes',11,11),(63,'Boulevard Haussmann 258','Rochefort','17715','La Rochelle',10,4),(64,'Rue de la Gare 129','Orange','84206','Avignon',13,6),(65,'Rue des Artistes 127','Dinan','22382','Saint-Brieuc',3,9),(66,'Chemin Vert 145','Vesoul','70127','Vesoul',2,6),(67,'Rue Nationale 101','La Roche-sur-Yon','85326','La Roche-sur-Yon',12,6),(68,'Rue Nationale 146','Toulon','83514','Toulon',13,6),(69,'Avenue de la République 291','Challans','85434','La Roche-sur-Yon',12,7),(70,'Boulevard de la Mer 221','Sélestat','67720','Strasbourg',6,6),(71,'Rue des Artistes 275','Auch','32099','Auch',11,8),(72,'Rue du Throne 263','Rennes','35622','Rennes',3,6),(73,'Boulevard de la Mer 125','Parthenay','79712','Niort',10,10),(74,'Rue de la Gare 184','Talence','33600','Bordeaux',10,5),(75,'Rue des Artistes 22','Biarritz','64188','Pau',10,7),(76,'Boulevard Haussmann 206','Vitry-sur-Seine','94376','Créteil',8,5),(77,'Rue de la Gare 136','Savigny-sur-Orge','91794','Évry',8,2),(78,'Rue de la Gare 163','Chinon','37822','Tours',4,4),(79,'Rue du Throne 92','Pithiviers','45295','Orléans',4,5),(80,'Chemin Vert 298','Aubenas','07901','Privas',1,4),(81,'Chemin des Rossignols 72','Nevers','58818','Nevers',2,9),(82,'Avenue de la République 261','Souillac','46421','Cahors',11,10),(83,'Boulevard de la Mer 204','Guingamp','22977','Saint-Brieuc',3,8),(84,'Boulevard de la Mer 107','Château-Thierry','02865','Laon',7,4),(85,'Boulevard de la Mer 29','Digne-les-Bains','04242','Digne-les-Bains',13,11),(86,'Chemin des Rossignols 34','Schiltigheim','67031','Strasbourg',6,4),(87,'Rue des Lilas 30','Vaulx-en-Velin','69112','Lyon',1,4),(88,'Chemin Vert 90','Saint-Claude','39486','Lons-le-Saunier',2,9),(89,'Rue du Throne 73','Sisteron','04201','Digne-les-Bains',13,11),(90,'Rue de la Gare 38','Riom','63869','Clermont-Ferrand',1,5),(91,'Rue des Lilas 28','La Seyne-sur-Mer','83662','Toulon',13,9),(92,'Rue Victor Hugo 144','Lorient','56094','Vannes',3,3),(93,'Rue des Artistes 220','Menton','06390','Nice',13,13),(94,'Chemin Vert 297','Quimper','29255','Quimper',3,3),(95,'Avenue de la République 248','Saint-Lô','50128','Saint-Lô',9,9),(96,'Rue des Artistes 230','Blois','41507','Blois',4,4),(97,'Chemin Vert 173','Lisieux','14954','Caen',9,9),(98,'Avenue de la République 76','Champagnole','39749','Lons-le-Saunier',2,2),(99,'Rue Victor Hugo 35','Arles','13319','Marseille',13,13),(100,'Rue de la Gare 280','Calais','62005','Arras',7,7),(101,'Boulevard Haussmann 283','Boulogne-Billancourt','92651','Nanterre',8,8),(102,'Rue Nationale 20','Bobigny','93162','Bobigny',8,8),(103,'Rue Nationale 105','Pontoise','95635','Cergy',8,8);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
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
