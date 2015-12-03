-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: imss
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Urgencias',300,1),(2,'Laboratorio',100,2),(3,'Quirofano',30,2),(4,'Banco de Sangre',20,3),(5,'Patologia',50,2),(6,'Oncologia',150,2),(7,'Terapia Intensiva Adulto',150,1),(8,'Terapia Intensiva e Intermedia Neonatal y Pediatrica',150,1),(9,'Cuneros',70,4),(10,'Cirugia Ambulatoria',40,4),(11,'Chequeos medicos',30,2),(12,'Consultorios',30,2),(13,'Hemodialisis',50,2),(14,'Endoscopia',50,2),(15,'Habitaciones',300,5),(16,'Medicina de Rehabilitacion',100,3),(17,'Auditorio',350,3),(18,'Restaurante',100,3),(19,'Pediatria',100,2),(20,'Terraza',50,1);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `num_consultorio` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'2015-08-03 06:30:58',43,49,24),(2,'2015-04-03 13:14:44',23,54,12),(3,'2015-01-03 08:44:09',14,28,12),(4,'2015-01-18 21:48:55',4,84,47),(5,'2015-06-07 13:15:04',20,51,13),(6,'2016-07-23 21:08:29',28,78,14),(7,'2016-02-28 11:59:42',29,6,6),(8,'2016-03-04 03:36:17',28,64,1),(9,'2015-05-22 05:52:28',1,4,22),(10,'2014-11-21 10:38:37',5,7,35),(11,'2015-05-20 00:55:12',49,2,20),(12,'2014-10-22 21:16:00',1,34,14),(13,'2015-03-23 21:13:53',30,41,51),(14,'2016-04-13 10:23:38',23,41,24),(15,'2015-05-08 16:44:08',13,79,68),(16,'2015-12-08 19:54:34',2,94,95),(17,'2014-10-07 09:13:02',2,10,46),(18,'2015-12-23 03:46:07',47,48,40),(19,'2016-06-06 04:19:38',37,19,50),(20,'2015-02-26 18:42:39',13,49,5),(21,'2016-07-29 19:59:28',5,94,56),(22,'2014-10-08 10:34:22',21,55,91),(23,'2016-09-09 23:19:56',45,30,4),(24,'2015-04-03 09:23:59',27,67,30),(25,'2016-06-05 20:32:20',40,57,11),(26,'2015-06-18 09:15:48',41,53,86),(27,'2016-01-31 22:41:03',17,5,30),(28,'2016-03-31 11:47:49',22,55,83),(29,'2015-01-25 01:17:48',17,57,21),(30,'2015-02-01 21:49:46',17,40,56),(31,'2016-05-25 18:53:17',2,36,96),(32,'2015-10-02 11:48:57',3,19,82),(33,'2015-10-16 16:54:07',22,20,78),(34,'2015-09-16 10:29:57',16,46,11),(35,'2016-06-07 00:16:26',21,61,67),(36,'2015-01-16 11:24:03',25,19,90),(37,'2015-01-19 20:00:29',2,3,94),(38,'2015-11-08 13:05:26',34,53,53),(39,'2015-06-25 13:14:23',27,10,41),(40,'2015-12-05 04:33:03',20,24,70),(41,'2016-02-13 23:42:55',29,23,52),(42,'2016-04-18 23:32:18',2,66,36),(43,'2015-09-25 04:20:39',47,25,34),(44,'2015-10-27 18:54:48',30,5,83),(45,'2015-02-05 10:11:25',24,18,64),(46,'2016-08-25 11:39:27',25,99,20),(47,'2015-07-24 17:28:43',14,10,78),(48,'2016-04-18 12:19:30',6,16,92),(49,'2016-03-10 19:53:34',4,6,72),(50,'2016-01-19 14:05:54',48,59,57),(51,'2016-05-14 00:01:26',34,57,74),(52,'2016-08-22 13:54:53',28,82,11),(53,'2015-11-25 18:22:54',40,76,51),(54,'2016-01-20 15:11:50',27,63,55),(55,'2016-07-14 17:48:16',24,5,14),(56,'2016-01-10 01:57:45',43,10,3),(57,'2014-10-07 12:17:24',19,40,23),(58,'2014-11-24 04:17:24',28,60,49),(59,'2016-07-30 22:47:02',15,59,20),(60,'2015-08-24 22:04:20',50,68,15),(61,'2015-06-05 20:35:36',21,83,87),(62,'2015-02-13 17:54:51',11,42,61),(63,'2015-03-16 09:23:10',30,93,94),(64,'2015-01-19 16:42:52',19,47,24),(65,'2015-08-01 14:03:03',30,50,57),(66,'2015-11-18 09:23:18',16,65,11),(67,'2016-09-07 00:12:18',31,27,48),(68,'2016-03-09 05:59:36',3,51,15),(69,'2015-11-11 22:59:39',50,17,97),(70,'2015-07-14 01:50:49',32,13,8),(71,'2016-02-15 06:36:44',39,59,37),(72,'2015-12-25 16:04:50',42,89,81),(73,'2015-05-03 09:51:20',34,24,33),(74,'2015-06-20 22:42:46',48,42,76),(75,'2015-04-17 23:17:52',33,20,58),(76,'2015-12-21 12:47:43',4,49,32),(77,'2014-12-15 23:32:11',18,56,6),(78,'2015-01-04 10:30:17',10,77,49),(79,'2015-10-06 01:42:02',50,92,40),(80,'2015-04-06 19:48:02',47,53,15),(81,'2015-01-13 22:01:32',40,67,91),(82,'2016-06-29 01:24:30',17,71,23),(83,'2016-07-24 16:34:14',25,20,60),(84,'2016-06-14 14:11:29',18,94,92),(85,'2016-06-17 21:35:27',46,90,13),(86,'2016-09-01 00:22:13',29,99,43),(87,'2015-04-03 05:12:31',23,45,65),(88,'2015-09-26 22:12:47',50,66,45),(89,'2015-11-20 14:51:11',12,93,4),(90,'2015-06-26 06:12:53',18,36,61),(91,'2015-09-04 18:56:11',49,38,19),(92,'2016-07-21 00:49:26',31,81,58),(93,'2015-04-05 18:12:50',35,98,64),(94,'2016-05-29 18:02:21',23,43,48),(95,'2014-11-09 04:34:31',22,88,6),(96,'2015-11-19 12:55:30',14,80,18),(97,'2016-02-27 06:29:27',32,38,39),(98,'2015-12-23 03:22:46',23,29,23),(99,'2015-08-21 10:03:09',50,91,50),(100,'2016-02-03 20:00:00',44,78,74);
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedades` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `sintomas` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--

LOCK TABLES `enfermedades` WRITE;
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
INSERT INTO `enfermedades` VALUES (1,'In lorem. Donec','Curabitur ut odio vel est tempor bibendum. Donec felis'),(2,'vitae dolor.','aliquam, enim nec tempus scelerisque, lorem ipsum'),(3,'nec quam. Curabitur vel lectus. Cum','vel, mauris. Integer sem elit, pharetra'),(4,'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,','feugiat. Sed nec metus facilisis lorem tristique aliquet.'),(5,'sed sem egestas blandit.','lectus ante dictum'),(6,'lobortis risus. In mi pede, nonummy ut, molestie in, tempus','id risus quis diam luctus lobortis. Class aptent'),(7,'magna sed dui. Fusce aliquam, enim nec tempus scelerisque,','sapien. Nunc'),(8,'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus','in'),(9,'mi lacinia mattis. Integer eu lacus.','Donec felis orci, adipiscing non,'),(10,'consectetuer mauris id sapien. Cras dolor dolor,','semper erat, in consectetuer ipsum nunc id enim. Curabitur'),(11,'ultrices, mauris ipsum porta','auctor velit.'),(12,'natoque penatibus et magnis dis parturient montes, nascetur','vitae diam. Proin'),(13,'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.','dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus'),(14,'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,','felis, adipiscing fringilla, porttitor vulputate, posuere'),(15,'senectus et netus','taciti sociosqu'),(16,'taciti sociosqu ad litora torquent per conubia nostra, per','Aenean'),(17,'taciti sociosqu ad litora torquent per conubia nostra, per inceptos','fringilla. Donec feugiat metus sit'),(18,'at auctor ullamcorper, nisl arcu iaculis enim,','eu'),(19,'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus','dolor. Donec fringilla. Donec feugiat'),(20,'Fusce diam','magna. Praesent interdum ligula eu'),(21,'Nulla','dictum magna.'),(22,'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam','lobortis ultrices.'),(23,'elit. Aliquam auctor, velit eget laoreet','nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo'),(24,'nec tellus. Nunc lectus','orci, consectetuer'),(25,'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus','scelerisque mollis. Phasellus'),(26,'ad litora','mollis nec, cursus a,'),(27,'ultrices, mauris ipsum porta','ac ipsum. Phasellus vitae mauris sit'),(28,'ac ipsum. Phasellus vitae mauris sit','sed dui. Fusce'),(29,'Curabitur consequat, lectus sit amet luctus vulputate,','diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.'),(30,'lacus. Etiam bibendum fermentum metus. Aenean','mauris. Integer sem elit,'),(31,'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a','Phasellus dolor elit, pellentesque'),(32,'orci. Phasellus dapibus quam quis','orci sem'),(33,'non,','ipsum porta elit, a'),(34,'quis turpis vitae purus gravida sagittis. Duis','sit amet orci. Ut sagittis lobortis mauris.'),(35,'Duis ac arcu. Nunc mauris. Morbi non sapien','consectetuer rhoncus. Nullam velit dui,'),(36,'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum','vel, convallis'),(37,'iaculis odio. Nam interdum enim non nisi. Aenean','dapibus gravida. Aliquam'),(38,'Vestibulum ante ipsum primis','dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.'),(39,'Curabitur dictum. Phasellus','eget mollis lectus pede'),(40,'sed, facilisis vitae, orci. Phasellus dapibus quam quis','eget mollis lectus pede et'),(41,'per inceptos hymenaeos. Mauris ut quam vel','porttitor tellus non magna. Nam ligula'),(42,'neque','eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum'),(43,'nulla at sem molestie sodales. Mauris blandit enim consequat purus.','eget'),(44,'neque non quam. Pellentesque habitant morbi','enim consequat'),(45,'orci. Ut semper pretium neque. Morbi','Aenean euismod mauris eu'),(46,'nec enim. Nunc ut erat. Sed','euismod et, commodo at, libero. Morbi accumsan'),(47,'velit egestas','leo elementum sem,'),(48,'Morbi non sapien','eu augue porttitor interdum. Sed'),(49,'libero','nisl. Quisque fringilla euismod enim. Etiam'),(50,'ligula. Aenean gravida','Proin non massa non ante bibendum ullamcorper. Duis'),(51,'mollis dui, in','odio sagittis semper. Nam tempor diam dictum sapien. Aenean'),(52,'non justo. Proin non massa non','amet nulla. Donec non justo. Proin non massa non ante'),(53,'diam. Pellentesque habitant morbi tristique','sit amet ultricies sem magna nec quam. Curabitur vel lectus.'),(54,'mauris blandit mattis.','pellentesque, tellus sem mollis dui, in sodales elit erat'),(55,'lacinia mattis. Integer','vulputate mauris sagittis'),(56,'Donec porttitor tellus non magna. Nam','ornare'),(57,'tellus faucibus leo, in lobortis tellus justo','fringilla. Donec feugiat metus sit amet ante. Vivamus'),(58,'dapibus ligula.','dui, nec tempus'),(59,'magna. Ut tincidunt','Morbi'),(60,'Proin dolor. Nulla semper tellus id nunc interdum feugiat.','tellus. Nunc lectus pede, ultrices a, auctor'),(61,'nisl sem,','risus. Morbi metus. Vivamus euismod'),(62,'turpis non enim. Mauris quis turpis vitae purus gravida','Integer mollis. Integer tincidunt aliquam arcu. Aliquam'),(63,'tincidunt','non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc'),(64,'est, mollis non, cursus non, egestas a,','eu nulla at'),(65,'sem elit, pharetra ut, pharetra sed, hendrerit a,','est. Nunc laoreet lectus'),(66,'egestas ligula. Nullam','dui. Fusce aliquam, enim nec tempus scelerisque, lorem'),(67,'et risus.','Morbi sit'),(68,'et netus et malesuada fames ac','molestie'),(69,'metus. Aenean sed pede nec ante','Cras eget nisi dictum augue malesuada malesuada. Integer id'),(70,'cursus purus. Nullam scelerisque neque sed sem egestas blandit.','semper auctor.'),(71,'lorem lorem, luctus ut,','consectetuer euismod est'),(72,'vehicula aliquet libero. Integer in','dolor sit amet, consectetuer adipiscing elit. Curabitur'),(73,'urna. Vivamus molestie dapibus ligula. Aliquam erat','venenatis vel, faucibus id, libero. Donec consectetuer'),(74,'vitae sodales','scelerisque sed, sapien. Nunc'),(75,'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum','egestas nunc sed'),(76,'semper','lacus, varius et, euismod'),(77,'Suspendisse commodo tincidunt nibh.','sagittis felis. Donec tempor, est ac mattis semper,'),(78,'posuere cubilia Curae; Phasellus ornare.','interdum. Curabitur dictum. Phasellus'),(79,'magna nec quam. Curabitur vel lectus. Cum sociis','gravida nunc sed'),(80,'at, libero. Morbi','Donec est. Nunc ullamcorper, velit in aliquet'),(81,'vitae velit','mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.'),(82,'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,','nibh sit amet orci. Ut sagittis lobortis mauris.'),(83,'sodales purus, in molestie tortor nibh sit amet','in, tempus eu, ligula.'),(84,'faucibus id, libero. Donec consectetuer mauris id sapien. Cras','magna tellus faucibus leo, in lobortis tellus justo sit'),(85,'augue eu tellus.','Donec non justo. Proin non massa'),(86,'ut nisi a odio','amet, risus. Donec nibh enim, gravida sit amet, dapibus id,'),(87,'leo. Vivamus nibh dolor, nonummy ac, feugiat','litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut'),(88,'eget tincidunt','fringilla mi lacinia mattis. Integer eu lacus.'),(89,'mollis','eros. Proin'),(90,'at pretium','Integer mollis. Integer tincidunt aliquam'),(91,'malesuada','Sed dictum. Proin eget odio. Aliquam vulputate'),(92,'nec tellus.','quis lectus. Nullam suscipit, est ac'),(93,'rutrum magna.','neque pellentesque massa lobortis ultrices.'),(94,'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit','vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus,'),(95,'sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer','feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem'),(96,'ante','ut, pharetra sed, hendrerit'),(97,'ultricies','ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.'),(98,'libero. Morbi accumsan laoreet ipsum.','volutpat. Nulla facilisis. Suspendisse commodo tincidunt'),(99,'Morbi','Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit'),(100,'quis','vehicula');
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'HH'),(2,'AN'),(3,'SL'),(4,'Paraíba'),(5,'Gl'),(6,'Cartago'),(7,'Ist'),(8,'Kano'),(9,'Quebec'),(10,'Andalucía'),(11,'Derbyshire'),(12,'AK'),(13,'Ayd'),(14,'Maharastra'),(15,'Wie'),(16,'Kujawsko-pomorskie'),(17,'NL'),(18,'Hamburg'),(19,'Illinois'),(20,'OR'),(21,'Provence-Alpes-Côte d\'Azur'),(22,'PA'),(23,'Australian Capital Territory'),(24,'SJ'),(25,'Kujawsko-pomorskie'),(26,'KT'),(27,'MG'),(28,'AR'),(29,'Sląskie'),(30,'AL'),(31,'AZ'),(32,'PD'),(33,'Alberta'),(34,'Pará'),(35,'Connacht'),(36,'Saskatchewan'),(37,'Ontario'),(38,'Pays de la Loire'),(39,'HB'),(40,'BR'),(41,'Catalunya'),(42,'Oklahoma'),(43,'PK'),(44,'Alajuela'),(45,'BC'),(46,'KP'),(47,'LA'),(48,'Basse-Normandie'),(49,'NSW'),(50,'WB'),(51,'Catalunya'),(52,'Lombardia'),(53,'Borno'),(54,'G'),(55,'Quebec'),(56,'SS'),(57,'Maryland'),(58,'Île-de-France'),(59,'Languedoc-Roussillon'),(60,'LOM'),(61,'SI'),(62,'Wyoming'),(63,'VIC'),(64,'GA'),(65,'Ogun'),(66,'MT'),(67,'LIG'),(68,'MT'),(69,'Lagos'),(70,'SJ'),(71,'LU'),(72,'Anambra'),(73,'Bavaria'),(74,'Sląskie'),(75,'Arkansas'),(76,'Wie'),(77,'Konya'),(78,'Overijssel'),(79,'Bremen'),(80,'Paraíba'),(81,'KN'),(82,'ON'),(83,'SP'),(84,'LU'),(85,'SP'),(86,'Victoria'),(87,'WB'),(88,'Manitoba'),(89,'Andalucía'),(90,'Brussels Hoofdstedelijk Gewest'),(91,'PA'),(92,'Mersin'),(93,'MN'),(94,'CAM'),(95,'MI'),(96,'Alberta'),(97,'CA'),(98,'Uttar Pradesh'),(99,'SI'),(100,'Île-de-France'),(101,'LOM'),(102,'MA'),(103,'U'),(104,'KT'),(105,'CE'),(106,'U'),(107,'NI'),(108,'Australian Capital Territory'),(109,'KT'),(110,'DL'),(111,'AN'),(112,'Upper Austria'),(113,'Maryland'),(114,'Bremen'),(115,'Florida'),(116,'Provence-Alpes-Côte d\'Azur'),(117,'Niger'),(118,'C'),(119,'C'),(120,'Texas'),(121,'MA'),(122,'Maranhão'),(123,'AB'),(124,'IL'),(125,'Ankara'),(126,'NSW'),(127,'NI'),(128,'A'),(129,'Lorraine'),(130,'CE'),(131,'SAR'),(132,'IL'),(133,'Queensland'),(134,'Cartago'),(135,'SH'),(136,'Veneto'),(137,'HE'),(138,'Gujarat'),(139,'Cartago'),(140,'Hamburg'),(141,'VIC'),(142,'Madhya Pradesh'),(143,'KK'),(144,'Comunitat Valenciana'),(145,'NL'),(146,'Ontario'),(147,'RF'),(148,'Schleswig-Holstein'),(149,'Bursa'),(150,'Vienna'),(151,'NT'),(152,'Bahia'),(153,'CA'),(154,'Principado de Asturias'),(155,'LA'),(156,'Ontario'),(157,'KN'),(158,'Uttar Pradesh'),(159,'C'),(160,'Australian Capital Territory'),(161,'BC'),(162,'South Island'),(163,'DE'),(164,'Ankara'),(165,'CV'),(166,'Leinster'),(167,'UP'),(168,'West-Vlaanderen'),(169,'Banffshire'),(170,'Queensland'),(171,'Andalucía'),(172,'SK'),(173,'GA'),(174,'AN'),(175,'MP'),(176,'NSW'),(177,'L.'),(178,'Prince Edward Island'),(179,'N.'),(180,'San José'),(181,'Maranhão'),(182,'Berlin'),(183,'Oost-Vlaanderen'),(184,'AY'),(185,'Manitoba'),(186,'Emilia-Romagna'),(187,'BE'),(188,'AK'),(189,'SJ'),(190,'AB'),(191,'Nevada'),(192,'Connacht'),(193,'VEN'),(194,'Vienna'),(195,'LA'),(196,'Katsina'),(197,'MS'),(198,'ML'),(199,'Iowa'),(200,'CV');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internos`
--

DROP TABLE IF EXISTS `internos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internos` (
  `id_paciente` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  KEY `id_paciente` (`id_paciente`),
  KEY `id_area` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internos`
--

LOCK TABLES `internos` WRITE;
/*!40000 ALTER TABLE `internos` DISABLE KEYS */;
INSERT INTO `internos` VALUES (20,18),(92,19),(55,17),(51,20),(46,1),(12,12),(97,8),(42,12),(1,18),(43,9),(47,3),(76,15),(54,6),(80,18),(36,18),(2,12),(88,12),(89,10),(29,14),(42,2),(79,16),(77,2),(81,15),(10,16),(1,15),(94,10),(32,17),(16,11),(93,1),(34,10),(98,10),(6,8),(89,13),(59,17),(12,9),(32,10),(97,7),(12,16),(68,7),(44,17),(77,19),(9,16),(24,19),(30,16),(61,13),(92,10),(19,2),(81,20),(67,3),(36,5),(7,16),(32,6),(47,5),(24,17),(33,17),(98,3),(33,13),(38,17),(32,7),(89,20),(16,6),(65,2),(19,11),(24,17),(75,18),(30,18),(88,12),(7,10),(69,19),(23,10),(89,4),(84,8),(18,9),(50,16),(71,19),(11,4),(2,7),(79,11),(45,4),(28,19),(6,10),(85,13),(4,17),(98,19),(85,18),(32,12),(18,18),(52,20),(98,9),(4,10),(3,15),(92,14),(25,2),(93,10),(40,13),(100,3),(32,20),(64,14),(61,10),(97,13);
/*!40000 ALTER TABLE `internos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Yardley','Mauris',44,15),(2,'Lucy','in',38,7),(3,'Callum','vulputate,',41,5),(4,'Ella','Sed',47,6),(5,'Laura','pede.',33,5),(6,'Zelenia','fermentum',46,15),(7,'Ralph','senectus',48,16),(8,'Dorothy','nunc',44,18),(9,'Logan','augue',49,17),(10,'Graham','Cum',45,20),(11,'Boris','vitae',37,11),(12,'Sopoline','neque',40,17),(13,'Callie','id',38,10),(14,'Kimberley','odio',46,20),(15,'Conan','vitae',50,13),(16,'Renee','luctus',49,5),(17,'Natalie','Mauris',37,13),(18,'Germane','mollis.',36,16),(19,'Garrison','velit.',49,8),(20,'TaShya','mattis.',45,13),(21,'Kirby','Proin',50,5),(22,'Summer','Quisque',47,16),(23,'Caesar','nibh',50,18),(24,'Lael','sed',36,18),(25,'Alana','vitae',38,16),(26,'Wendy','lorem,',31,17),(27,'Charlotte','pede.',46,18),(28,'Julian','arcu.',41,17),(29,'Colleen','purus.',50,6),(30,'Ingrid','Nunc',40,18),(31,'Rinah','aliquam',42,18),(32,'Carson','urna,',44,13),(33,'Stella','dis',34,9),(34,'Garrett','nibh.',47,13),(35,'Meghan','Sed',46,15),(36,'Raja','augue',43,6),(37,'Priscilla','odio.',31,10),(38,'Linus','elit',43,15),(39,'Brody','diam.',40,10),(40,'Scarlet','luctus',36,12),(41,'Hedda','eu',35,13),(42,'Ginger','sit',43,5),(43,'Lamar','convallis',37,19),(44,'Shaine','mollis.',47,15),(45,'Basia','et',35,12),(46,'Jacob','enim.',39,20),(47,'Justina','neque',39,14),(48,'Larissa','nunc',37,13),(49,'Neil','Vivamus',31,19),(50,'Timothy','lorem',46,16),(51,'Isaac','Duis',37,2),(52,'Madeson','Praesent',41,3),(53,'Juliet','iaculis,',34,15),(54,'Quon','Etiam',31,18),(55,'Glenna','hendrerit',50,20),(56,'Solomon','tincidunt,',41,7),(57,'Cyrus','Mauris',40,2),(58,'Mona','feugiat',40,14),(59,'Sebastian','urna',38,9),(60,'Linus','Ut',33,4),(61,'Keiko','Phasellus',44,19),(62,'Aimee','Phasellus',43,11),(63,'Ross','lectus.',32,16),(64,'Leroy','habitant',36,4),(65,'Kylynn','est',47,20),(66,'Keefe','consectetuer',34,20),(67,'Judith','dolor',33,6),(68,'Rhona','sagittis',30,20),(69,'Taylor','tristique',50,7),(70,'Kelsie','libero',48,10),(71,'Candice','luctus',47,5),(72,'Galvin','cursus',42,15),(73,'Dennis','posuere',47,5),(74,'Indigo','dui.',42,6),(75,'Nayda','natoque',31,5),(76,'Kimberly','et',31,14),(77,'Price','dui,',40,7),(78,'April','hendrerit',34,19),(79,'TaShya','eros',39,9),(80,'Felicia','lacus.',43,1),(81,'McKenzie','ac',50,19),(82,'Calista','nascetur',40,17),(83,'Christian','nonummy',37,15),(84,'Cora','In',32,14),(85,'Lee','Ut',30,18),(86,'Grady','sociis',31,13),(87,'Shelley','consectetuer',50,15),(88,'Nina','elementum',40,14),(89,'Chandler','Suspendisse',42,7),(90,'Helen','nec',44,7),(91,'Mechelle','Nunc',38,2),(92,'Hunter','vulputate',46,11),(93,'Gavin','Proin',32,4),(94,'Lillian','placerat,',40,3),(95,'Todd','luctus',49,19),(96,'Myra','convallis',48,17),(97,'Cheryl','vitae',42,12),(98,'Callie','at,',43,9),(99,'Rafael','lectus,',36,2),(100,'Elton','scelerisque',30,4);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pac_enf`
--

DROP TABLE IF EXISTS `pac_enf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pac_enf` (
  `id_paciente` int(12) NOT NULL,
  `id_enfermedad` int(12) NOT NULL,
  KEY `id_paciente` (`id_paciente`,`id_enfermedad`),
  KEY `id_enfermedad` (`id_enfermedad`),
  CONSTRAINT `pac_enf_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pac_enf_ibfk_2` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pac_enf`
--

LOCK TABLES `pac_enf` WRITE;
/*!40000 ALTER TABLE `pac_enf` DISABLE KEYS */;
INSERT INTO `pac_enf` VALUES (1,96),(2,61),(3,27),(3,86),(4,42),(4,98),(5,7),(6,12),(7,79),(8,44),(8,94),(11,82),(17,6),(17,55),(18,5),(18,17),(18,96),(19,81),(20,21),(21,91),(22,64),(23,6),(24,22),(25,78),(27,11),(27,18),(27,30),(27,40),(27,91),(28,99),(29,71),(30,64),(30,98),(32,79),(33,84),(40,11),(40,16),(41,97),(42,30),(42,50),(44,54),(45,14),(49,70),(49,97),(52,98),(53,33),(54,48),(56,58),(56,83),(57,3),(57,29),(57,31),(58,83),(58,93),(61,13),(61,51),(62,25),(62,57),(62,64),(64,56),(64,58),(64,95),(65,48),(67,14),(69,52),(70,96),(71,89),(73,68),(73,99),(73,100),(75,52),(75,95),(77,43),(77,64),(77,87),(80,9),(81,1),(82,69),(82,78),(83,34),(84,43),(84,55),(86,50),(87,19),(87,22),(87,31),(88,1),(91,3),(92,22),(92,39),(93,3),(93,67),(95,44),(95,71),(96,15),(96,27),(97,70),(99,76),(100,35),(100,96);
/*!40000 ALTER TABLE `pac_enf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `nss` varchar(20) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nss` (`nss`),
  KEY `id_estado` (`id_estado`),
  KEY `id_estado_2` (`id_estado`),
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Samuel',88,'NEQ02KCC1TA',50,1),(2,'Lawrence',15,'DMS58GSR7LK',179,1),(3,'Magee',51,'OVM67YIK4XZ',192,0),(4,'Ferdinand',34,'OUP84GJR9WY',43,0),(5,'Martha',87,'FRZ83FNM9HM',8,1),(6,'Brenna',87,'NNJ54PBC9WQ',68,0),(7,'Avram',60,'PSI89ONR5FC',113,0),(8,'Cruz',94,'KIZ02UHU3MX',112,0),(9,'Lacey',56,'DUR29QVD0FO',127,1),(10,'Lamar',50,'BDC55EUP7GE',194,0),(11,'Ramona',82,'FMA23QCV8UA',42,1),(12,'Natalie',11,'MMO12YKR4RF',145,0),(13,'Glenna',82,'UII18IYV7KO',42,1),(14,'Judith',72,'AKL95EKP9HP',80,0),(15,'Raya',43,'QBD15YPS5TH',193,0),(16,'Xyla',99,'AYK58FEL3PQ',21,0),(17,'Charlotte',99,'VAQ95XNA2JR',95,0),(18,'Hilda',20,'SYU19JAL8UW',130,1),(19,'Maggy',14,'BKD30KFA3HX',143,0),(20,'Dara',25,'UGF17FLT8TZ',114,1),(21,'Harriet',67,'XJM13EAJ9TT',107,0),(22,'Vivien',2,'TPZ36FXB5MR',189,0),(23,'Lael',59,'EMH60DKW1SZ',105,1),(24,'Ava',20,'VKR41TQT5PE',118,0),(25,'Winter',16,'VGC69DDL1LW',89,0),(26,'Lillian',99,'SFR69QLK4MZ',52,1),(27,'Kessie',30,'OJS40ZMX5AE',97,1),(28,'Deacon',16,'KAL84FUO5GQ',193,0),(29,'Jillian',88,'FTI29TPG7IT',51,1),(30,'Ursa',92,'PQI27QRE1DM',124,1),(31,'Sebastian',66,'OHD98YUP4VK',154,1),(32,'Kyra',57,'GXN75UFD7GQ',172,0),(33,'Jesse',32,'DPU45QIZ5RY',68,0),(34,'Akeem',10,'LBW02LUV8KM',166,0),(35,'Camden',57,'OXB38MGJ0SQ',37,1),(36,'Tamekah',23,'HBZ33JMJ1JG',118,1),(37,'Julie',9,'TJZ35BWN6UZ',115,0),(38,'Alea',70,'CAZ43ATN0XC',107,0),(39,'Jenna',58,'IKW27ZRH5LT',172,1),(40,'Lillian',11,'VXG58ZEA9NW',188,0),(41,'Dylan',45,'VTE49ZZQ5BJ',47,0),(42,'Jeremy',8,'DNY02QQQ5OY',142,0),(43,'Germane',79,'TSB24LCS7PW',116,1),(44,'August',64,'RRF82DUK7AU',14,1),(45,'Audrey',11,'YNJ75YWL2WL',86,0),(46,'Eleanor',80,'UXI61WYM4OQ',66,1),(47,'Plato',28,'YFR89MGG8FF',7,1),(48,'Joseph',15,'RAW33PVY0YM',85,1),(49,'Cullen',74,'DFX01BDQ7ZM',39,0),(50,'Blaze',84,'ENK90TVY3YO',22,1),(51,'Vera',31,'IPP88OHM8PK',149,0),(52,'Sonya',11,'WKB02EUA1EF',17,0),(53,'August',64,'DOQ21BTO1AY',152,1),(54,'Ali',97,'PRU69QFO0BF',105,0),(55,'Germane',30,'KJN77ADT5NG',189,1),(56,'Avram',71,'TPD39SZM8RZ',173,0),(57,'Conan',20,'OHV52RZU6IH',95,0),(58,'Lareina',98,'ILL71JWC5KB',10,0),(59,'Yvette',21,'VQE45CZN3XV',138,0),(60,'Lunea',72,'EKG65WJF1KT',45,1),(61,'Salvador',31,'JGZ54MKS9FN',138,0),(62,'Pandora',19,'AIP02CTR5GY',32,0),(63,'Griffith',43,'NAR78EAD7HS',102,1),(64,'Timon',71,'FTO42ANA0WK',93,1),(65,'Graham',28,'LTF09ERW3JF',28,0),(66,'Kirestin',69,'GEG33MBD7VP',110,0),(67,'Lance',62,'URX84THT2IA',99,1),(68,'Hannah',84,'GXD06VQK5IC',196,0),(69,'Jackson',57,'SRC50YUL8DM',30,1),(70,'Serina',46,'OSJ20OQC5BT',169,1),(71,'Macey',6,'TRH61WYF5ED',182,1),(72,'Raymond',60,'HUO31DMG7AP',89,1),(73,'Amelia',49,'ORV48MNZ7EN',57,0),(74,'Noble',4,'JLX46STQ8FO',127,0),(75,'Hiroko',16,'VSC47KME8PU',180,1),(76,'Harding',80,'NZE06XWG7XP',15,1),(77,'Brent',21,'FYP65NFT0GD',26,1),(78,'Stuart',99,'ZOP62NDA5ZP',4,1),(79,'Nomlanga',38,'ULR61VMM6UI',46,1),(80,'Oliver',29,'DWA87LDT1LN',35,1),(81,'Blossom',23,'GJU42ARA7UI',164,1),(82,'Lillian',20,'BIY92GKV8BQ',143,0),(83,'Steel',63,'UXT22AIH4NG',84,0),(84,'Nelle',21,'FAC34IEP9KR',165,0),(85,'Fletcher',4,'OOK52SHR7FP',106,1),(86,'Ginger',84,'YEN97XPD6UD',62,1),(87,'Bianca',9,'ULC77EFX2EF',58,0),(88,'Blair',6,'RQP78YNX8IG',50,0),(89,'George',78,'NCM45CFA0NA',51,1),(90,'Nathan',86,'MKP66ZMK8ZA',146,1),(91,'Acton',46,'LAQ25PAK7QX',136,1),(92,'Trevor',85,'YZX57XMD6TC',200,0),(93,'Constance',57,'AEF79ZIW4YJ',68,0),(94,'Keegan',37,'RBM05DIJ1KQ',29,0),(95,'Baxter',40,'CBG57LIN7NG',160,0),(96,'Galena',70,'DPK18LHK5TV',188,0),(97,'Adrienne',68,'ZII82BRU2DN',109,1),(98,'Sigourney',19,'MZF47GRT5IX',111,0),(99,'Tanisha',42,'IFC11QAE9TO',155,1),(100,'Maggy',68,'JAC74HUI1VI',148,1);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-02 19:00:21
