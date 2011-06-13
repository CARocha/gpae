-- MySQL dump 10.13  Distrib 5.1.47, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: mcasnior_gpae
-- ------------------------------------------------------
-- Server version	5.1.56-community-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=286 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add departamento',10,'add_departamento'),(29,'Can change departamento',10,'change_departamento'),(30,'Can delete departamento',10,'delete_departamento'),(31,'Can add municipio',11,'add_municipio'),(32,'Can change municipio',11,'change_municipio'),(33,'Can delete municipio',11,'delete_municipio'),(34,'Can add comunidad',12,'add_comunidad'),(35,'Can change comunidad',12,'change_comunidad'),(36,'Can delete comunidad',12,'delete_comunidad'),(37,'Can add recolector',13,'add_recolector'),(38,'Can change recolector',13,'change_recolector'),(39,'Can delete recolector',13,'delete_recolector'),(40,'Can add organizaciones',14,'add_organizaciones'),(41,'Can change organizaciones',14,'change_organizaciones'),(42,'Can delete organizaciones',14,'delete_organizaciones'),(43,'Can add encuesta',15,'add_encuesta'),(44,'Can change encuesta',15,'change_encuesta'),(45,'Can delete encuesta',15,'delete_encuesta'),(46,'Can add tenencia',16,'add_tenencia'),(47,'Can change tenencia',16,'change_tenencia'),(48,'Can delete tenencia',16,'delete_tenencia'),(49,'Can add educacion',17,'add_educacion'),(50,'Can change educacion',17,'change_educacion'),(51,'Can delete educacion',17,'delete_educacion'),(52,'Can add salud',18,'add_salud'),(53,'Can change salud',18,'change_salud'),(54,'Can delete salud',18,'delete_salud'),(55,'Can add pregunta energia',19,'add_preguntaenergia'),(56,'Can change pregunta energia',19,'change_preguntaenergia'),(57,'Can delete pregunta energia',19,'delete_preguntaenergia'),(58,'Can add energia',20,'add_energia'),(59,'Can change energia',20,'change_energia'),(60,'Can delete energia',20,'delete_energia'),(61,'Can add tipo cocina',21,'add_tipococina'),(62,'Can change tipo cocina',21,'change_tipococina'),(63,'Can delete tipo cocina',21,'delete_tipococina'),(64,'Can add cocina',22,'add_cocina'),(65,'Can change cocina',22,'change_cocina'),(66,'Can delete cocina',22,'delete_cocina'),(67,'Can add fuente',23,'add_fuente'),(68,'Can change fuente',23,'change_fuente'),(69,'Can delete fuente',23,'delete_fuente'),(70,'Can add tratamiento',24,'add_tratamiento'),(71,'Can change tratamiento',24,'change_tratamiento'),(72,'Can delete tratamiento',24,'delete_tratamiento'),(73,'Can add disponibilidad',25,'add_disponibilidad'),(74,'Can change disponibilidad',25,'change_disponibilidad'),(75,'Can delete disponibilidad',25,'delete_disponibilidad'),(76,'Can add uso agua',26,'add_usoagua'),(77,'Can change uso agua',26,'change_usoagua'),(78,'Can delete uso agua',26,'delete_usoagua'),(79,'Can add agua',27,'add_agua'),(80,'Can change agua',27,'change_agua'),(81,'Can delete agua',27,'delete_agua'),(82,'Can add org gremiales',28,'add_orggremiales'),(83,'Can change org gremiales',28,'change_orggremiales'),(84,'Can delete org gremiales',28,'delete_orggremiales'),(85,'Can add beneficios obtenido',29,'add_beneficiosobtenido'),(86,'Can change beneficios obtenido',29,'change_beneficiosobtenido'),(87,'Can delete beneficios obtenido',29,'delete_beneficiosobtenido'),(88,'Can add ser miembro',30,'add_sermiembro'),(89,'Can change ser miembro',30,'change_sermiembro'),(90,'Can delete ser miembro',30,'delete_sermiembro'),(91,'Can add organizacion gremial',31,'add_organizaciongremial'),(92,'Can change organizacion gremial',31,'change_organizaciongremial'),(93,'Can delete organizacion gremial',31,'delete_organizaciongremial'),(94,'Can add org comunitarias',32,'add_orgcomunitarias'),(95,'Can change org comunitarias',32,'change_orgcomunitarias'),(96,'Can delete org comunitarias',32,'delete_orgcomunitarias'),(97,'Can add beneficio org comunitaria',33,'add_beneficioorgcomunitaria'),(98,'Can change beneficio org comunitaria',33,'change_beneficioorgcomunitaria'),(99,'Can delete beneficio org comunitaria',33,'delete_beneficioorgcomunitaria'),(100,'Can add no organizado',34,'add_noorganizado'),(101,'Can change no organizado',34,'change_noorganizado'),(102,'Can delete no organizado',34,'delete_noorganizado'),(103,'Can add organizacion comunitaria',35,'add_organizacioncomunitaria'),(104,'Can change organizacion comunitaria',35,'change_organizacioncomunitaria'),(105,'Can delete organizacion comunitaria',35,'delete_organizacioncomunitaria'),(106,'Can add uso',36,'add_uso'),(107,'Can change uso',36,'change_uso'),(108,'Can delete uso',36,'delete_uso'),(109,'Can add uso tierra',37,'add_usotierra'),(110,'Can change uso tierra',37,'change_usotierra'),(111,'Can delete uso tierra',37,'delete_usotierra'),(112,'Can add maderable',38,'add_maderable'),(113,'Can change maderable',38,'change_maderable'),(114,'Can delete maderable',38,'delete_maderable'),(115,'Can add forrajero',39,'add_forrajero'),(116,'Can change forrajero',39,'change_forrajero'),(117,'Can delete forrajero',39,'delete_forrajero'),(118,'Can add energetico',40,'add_energetico'),(119,'Can change energetico',40,'change_energetico'),(120,'Can delete energetico',40,'delete_energetico'),(121,'Can add frutal',41,'add_frutal'),(122,'Can change frutal',41,'change_frutal'),(123,'Can delete frutal',41,'delete_frutal'),(124,'Can add existencia arboles',42,'add_existenciaarboles'),(125,'Can change existencia arboles',42,'change_existenciaarboles'),(126,'Can delete existencia arboles',42,'delete_existenciaarboles'),(127,'Can add actividad',43,'add_actividad'),(128,'Can change actividad',43,'change_actividad'),(129,'Can delete actividad',43,'delete_actividad'),(130,'Can add reforestacion',44,'add_reforestacion'),(131,'Can change reforestacion',44,'change_reforestacion'),(132,'Can delete reforestacion',44,'delete_reforestacion'),(133,'Can add animales',45,'add_animales'),(134,'Can change animales',45,'change_animales'),(135,'Can delete animales',45,'delete_animales'),(136,'Can add producto animal',46,'add_productoanimal'),(137,'Can change producto animal',46,'change_productoanimal'),(138,'Can delete producto animal',46,'delete_productoanimal'),(139,'Can add animales finca',47,'add_animalesfinca'),(140,'Can change animales finca',47,'change_animalesfinca'),(141,'Can delete animales finca',47,'delete_animalesfinca'),(142,'Can add cultivos',48,'add_cultivos'),(143,'Can change cultivos',48,'change_cultivos'),(144,'Can delete cultivos',48,'delete_cultivos'),(145,'Can add excedente',49,'add_excedente'),(146,'Can change excedente',49,'change_excedente'),(147,'Can delete excedente',49,'delete_excedente'),(148,'Can add cultivos finca',50,'add_cultivosfinca'),(149,'Can change cultivos finca',50,'change_cultivosfinca'),(150,'Can delete cultivos finca',50,'delete_cultivosfinca'),(151,'Can add manejo agro',51,'add_manejoagro'),(152,'Can change manejo agro',51,'change_manejoagro'),(153,'Can delete manejo agro',51,'delete_manejoagro'),(154,'Can add opciones manejo',52,'add_opcionesmanejo'),(155,'Can change opciones manejo',52,'change_opcionesmanejo'),(156,'Can delete opciones manejo',52,'delete_opcionesmanejo'),(157,'Can add cultivos variedad',53,'add_cultivosvariedad'),(158,'Can change cultivos variedad',53,'change_cultivosvariedad'),(159,'Can delete cultivos variedad',53,'delete_cultivosvariedad'),(160,'Can add variedades',54,'add_variedades'),(161,'Can change variedades',54,'change_variedades'),(162,'Can delete variedades',54,'delete_variedades'),(163,'Can add semilla',55,'add_semilla'),(164,'Can change semilla',55,'change_semilla'),(165,'Can delete semilla',55,'delete_semilla'),(166,'Can add textura',56,'add_textura'),(167,'Can change textura',56,'change_textura'),(168,'Can delete textura',56,'delete_textura'),(169,'Can add profundidad',57,'add_profundidad'),(170,'Can change profundidad',57,'change_profundidad'),(171,'Can delete profundidad',57,'delete_profundidad'),(172,'Can add densidad',58,'add_densidad'),(173,'Can change densidad',58,'change_densidad'),(174,'Can delete densidad',58,'delete_densidad'),(175,'Can add pendiente',59,'add_pendiente'),(176,'Can change pendiente',59,'change_pendiente'),(177,'Can delete pendiente',59,'delete_pendiente'),(178,'Can add drenaje',60,'add_drenaje'),(179,'Can change drenaje',60,'change_drenaje'),(180,'Can delete drenaje',60,'delete_drenaje'),(181,'Can add suelo',61,'add_suelo'),(182,'Can change suelo',61,'change_suelo'),(183,'Can delete suelo',61,'delete_suelo'),(184,'Can add preparar',62,'add_preparar'),(185,'Can change preparar',62,'change_preparar'),(186,'Can delete preparar',62,'delete_preparar'),(187,'Can add traccion',63,'add_traccion'),(188,'Can change traccion',63,'change_traccion'),(189,'Can delete traccion',63,'delete_traccion'),(190,'Can add fertilizacion',64,'add_fertilizacion'),(191,'Can change fertilizacion',64,'change_fertilizacion'),(192,'Can delete fertilizacion',64,'delete_fertilizacion'),(193,'Can add conservacion',65,'add_conservacion'),(194,'Can change conservacion',65,'change_conservacion'),(195,'Can delete conservacion',65,'delete_conservacion'),(196,'Can add manejo suelo',66,'add_manejosuelo'),(197,'Can change manejo suelo',66,'change_manejosuelo'),(198,'Can delete manejo suelo',66,'delete_manejosuelo'),(199,'Can add rubros',67,'add_rubros'),(200,'Can change rubros',67,'change_rubros'),(201,'Can delete rubros',67,'delete_rubros'),(202,'Can add ingreso familiar',68,'add_ingresofamiliar'),(203,'Can change ingreso familiar',68,'change_ingresofamiliar'),(204,'Can delete ingreso familiar',68,'delete_ingresofamiliar'),(205,'Can add fuentes',69,'add_fuentes'),(206,'Can change fuentes',69,'change_fuentes'),(207,'Can delete fuentes',69,'delete_fuentes'),(208,'Can add tipo trabajo',70,'add_tipotrabajo'),(209,'Can change tipo trabajo',70,'change_tipotrabajo'),(210,'Can delete tipo trabajo',70,'delete_tipotrabajo'),(211,'Can add otros ingresos',71,'add_otrosingresos'),(212,'Can change otros ingresos',71,'change_otrosingresos'),(213,'Can delete otros ingresos',71,'delete_otrosingresos'),(214,'Can add piso',72,'add_piso'),(215,'Can change piso',72,'change_piso'),(216,'Can delete piso',72,'delete_piso'),(217,'Can add techo',73,'add_techo'),(218,'Can change techo',73,'change_techo'),(219,'Can delete techo',73,'delete_techo'),(220,'Can add tipo casa',74,'add_tipocasa'),(221,'Can change tipo casa',74,'change_tipocasa'),(222,'Can delete tipo casa',74,'delete_tipocasa'),(223,'Can add detalle casa',75,'add_detallecasa'),(224,'Can change detalle casa',75,'change_detallecasa'),(225,'Can delete detalle casa',75,'delete_detallecasa'),(226,'Can add equipos',76,'add_equipos'),(227,'Can change equipos',76,'change_equipos'),(228,'Can delete equipos',76,'delete_equipos'),(229,'Can add infraestructuras',77,'add_infraestructuras'),(230,'Can change infraestructuras',77,'change_infraestructuras'),(231,'Can delete infraestructuras',77,'delete_infraestructuras'),(232,'Can add propiedades',78,'add_propiedades'),(233,'Can change propiedades',78,'change_propiedades'),(234,'Can delete propiedades',78,'delete_propiedades'),(235,'Can add nombre herramienta',79,'add_nombreherramienta'),(236,'Can change nombre herramienta',79,'change_nombreherramienta'),(237,'Can delete nombre herramienta',79,'delete_nombreherramienta'),(238,'Can add herramientas',80,'add_herramientas'),(239,'Can change herramientas',80,'change_herramientas'),(240,'Can delete herramientas',80,'delete_herramientas'),(241,'Can add nombre transporte',81,'add_nombretransporte'),(242,'Can change nombre transporte',81,'change_nombretransporte'),(243,'Can delete nombre transporte',81,'delete_nombretransporte'),(244,'Can add transporte',82,'add_transporte'),(245,'Can change transporte',82,'change_transporte'),(246,'Can delete transporte',82,'delete_transporte'),(247,'Can add ahorro pregunta',83,'add_ahorropregunta'),(248,'Can change ahorro pregunta',83,'change_ahorropregunta'),(249,'Can delete ahorro pregunta',83,'delete_ahorropregunta'),(250,'Can add ahorro',84,'add_ahorro'),(251,'Can change ahorro',84,'change_ahorro'),(252,'Can delete ahorro',84,'delete_ahorro'),(253,'Can add da credito',85,'add_dacredito'),(254,'Can change da credito',85,'change_dacredito'),(255,'Can delete da credito',85,'delete_dacredito'),(256,'Can add ocupa credito',86,'add_ocupacredito'),(257,'Can change ocupa credito',86,'change_ocupacredito'),(258,'Can delete ocupa credito',86,'delete_ocupacredito'),(259,'Can add credito',87,'add_credito'),(260,'Can change credito',87,'change_credito'),(261,'Can delete credito',87,'delete_credito'),(262,'Can add alimentos',88,'add_alimentos'),(263,'Can change alimentos',88,'change_alimentos'),(264,'Can delete alimentos',88,'delete_alimentos'),(265,'Can add seguridad',89,'add_seguridad'),(266,'Can change seguridad',89,'change_seguridad'),(267,'Can delete seguridad',89,'delete_seguridad'),(268,'Can add causa',90,'add_causa'),(269,'Can change causa',90,'change_causa'),(270,'Can delete causa',90,'delete_causa'),(271,'Can add fenomeno',91,'add_fenomeno'),(272,'Can change fenomeno',91,'change_fenomeno'),(273,'Can delete fenomeno',91,'delete_fenomeno'),(274,'Can add graves',92,'add_graves'),(275,'Can change graves',92,'change_graves'),(276,'Can delete graves',92,'delete_graves'),(277,'Can add vulnerable',93,'add_vulnerable'),(278,'Can change vulnerable',93,'change_vulnerable'),(279,'Can delete vulnerable',93,'delete_vulnerable'),(280,'Can add pregunta riesgo',94,'add_preguntariesgo'),(281,'Can change pregunta riesgo',94,'change_preguntariesgo'),(282,'Can delete pregunta riesgo',94,'delete_preguntariesgo'),(283,'Can add riesgos',95,'add_riesgos'),(284,'Can change riesgos',95,'change_riesgos'),(285,'Can delete riesgos',95,'delete_riesgos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'gpae','','','carlos@simas.org.ni','sha1$f3625$495152b8d2258bf60ce95ba8800ee34aa137317b',1,1,1,'2011-06-07 17:37:36','2011-05-02 21:00:01'),(2,'vanessa','vanessa','','','sha1$94856$4bcfb77619a43538a8ac3c0656487d91a5347925',1,1,1,'2011-06-08 14:06:08','2011-06-06 15:37:56');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-06-03 16:14:44',1,13,'1','Ericka Rodríguez',1,''),(2,'2011-06-03 16:17:48',1,12,'1','El llano',1,''),(3,'2011-06-03 16:18:33',1,14,'1','Asociación Nochari',1,''),(4,'2011-06-03 16:28:03',1,15,'1','Lorenza Justina Flores',1,''),(5,'2011-06-03 16:42:12',1,15,'1','Lorenza Justina Flores',2,'Añadido/a \"Hombre mayor 30 años\" educacion. Añadido/a \"Mujeres mayor 30 años\" educacion. Añadido/a \"Joven de 18 a 30 años\" educacion. Añadido/a \"Hombre mayor 30 años\" salud. Añadido/a \"Mujeres mayor 30 años\" salud. Añadido/a \"Joven de 18 a 30 años\" salud. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Cocina object\" cocina.'),(6,'2011-06-03 16:42:40',1,26,'1','Riego',1,''),(7,'2011-06-03 16:42:50',1,26,'2','Reciclaje',1,''),(8,'2011-06-03 16:43:01',1,26,'3','Uso doméstico',1,''),(9,'2011-06-03 16:43:17',1,26,'4','Labor Agrícola',1,''),(10,'2011-06-03 16:48:30',1,30,'5','No contestó',1,''),(11,'2011-06-03 16:50:02',1,32,'7','Red de Mujeres Comercializadoras',1,''),(12,'2011-06-03 16:50:30',1,34,'4','No contestó',1,''),(13,'2011-06-03 16:55:28',1,40,'8','Papaturro',1,''),(14,'2011-06-03 16:59:27',1,46,'6','Carne de cerdo',1,''),(15,'2011-06-03 17:18:08',1,49,'1','Regala',1,''),(16,'2011-06-03 17:18:21',1,49,'2','Cambia',1,''),(17,'2011-06-03 17:18:34',1,49,'3','Lo deja perder',1,''),(18,'2011-06-03 17:18:54',1,15,'1','Lorenza Justina Flores',2,'Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial. Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Sin documento\" tenencia. Añadido/a \"Área total\" uso tierra. Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Plantaciones foretales\" reforestacion. Añadido/a \"Establecimiento de viveros\" reforestacion. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Chiltoma\" cultivos finca.'),(19,'2011-06-03 17:20:54',1,49,'4','No contestó',1,''),(20,'2011-06-03 17:22:14',1,15,'1','Lorenza Justina Flores',2,'Añadido/a \"Frijol\" cultivos finca. Modificados manejo_conv y prod_conv para \"Chiltoma\" cultivos finca.'),(21,'2011-06-03 17:31:17',1,51,'17','Compost',1,''),(22,'2011-06-03 17:32:02',1,51,'18','Lombricultura',1,''),(23,'2011-06-03 17:32:46',1,51,'19','Apicultura',1,''),(24,'2011-06-03 17:33:29',1,51,'20','Medicina Natural',1,''),(25,'2011-06-03 17:38:14',1,51,'21','Ronda corta fuego',1,''),(26,'2011-06-03 17:39:53',1,54,'1','Maíz - Maizón',1,''),(27,'2011-06-03 17:40:29',1,54,'2','Frijol - Rojo',1,''),(28,'2011-06-03 17:40:52',1,54,'3','Sorgo - Copete',1,''),(29,'2011-06-03 17:41:59',1,54,'4','Yuca - Pochota Cubana',1,''),(30,'2011-06-03 17:42:24',1,54,'5','Guineo - Cuadrado grande',1,''),(31,'2011-06-03 17:44:53',1,15,'1','Lorenza Justina Flores',2,'Añadido/a \"Guineo\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Sorgo\" cultivos finca. Añadido/a \"Yuca\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Compost\" opciones manejo. Añadido/a \"Lombricultura\" opciones manejo. Añadido/a \"Apicultura\" opciones manejo. Añadido/a \"Medicina Natural\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla nativa\" opciones manejo. Añadido/a \"Cosecha de agua\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Acequia\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Incorporación de rastrojo\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Sorgo\" semilla. Añadido/a \"Yuca\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Chiltoma\" ingreso familiar.'),(32,'2011-06-03 17:47:26',1,15,'1','Lorenza Justina Flores',2,'No ha cambiado ningún campo.'),(33,'2011-06-03 17:49:49',1,70,'1','Venta de ropa, rosquillas',1,''),(34,'2011-06-03 18:14:09',1,15,'1','Lorenza Justina Flores',2,'Añadido/a \"Huevos\" ingreso familiar. Añadido/a \"Maíz\" ingreso familiar. Añadido/a \"Yuca\" ingreso familiar. Añadido/a \"Negocios\" otros ingresos. Añadido/a \"Madera rolliza\" tipo casa. Añadido/a \"6\" detalle casa. Añadido/a \"Bomba de fumigar\" propiedades. Añadido/a \"Radio\" propiedades. Añadido/a \"Bomba de fumigar\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Bicicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Desde cuando ahorra\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"Ahorra a nombre de quien?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(35,'2011-06-04 08:18:05',1,12,'2','Los Sirones',1,''),(36,'2011-06-04 08:28:24',1,36,'9','Cultivos temporales',1,''),(37,'2011-06-04 08:30:43',1,43,'10','Producción de patio',1,''),(38,'2011-06-04 08:43:34',1,51,'22','Selección de semilla criolla',1,''),(39,'2011-06-04 08:52:24',1,54,'6','Maíz - Olotillo',1,''),(40,'2011-06-04 08:53:02',1,54,'7','Arroz - Blueonec',1,''),(41,'2011-06-04 08:53:48',1,58,'4','No contestó',1,''),(42,'2011-06-04 08:59:31',1,70,'2','Venta de carbón',1,''),(43,'2011-06-04 09:23:30',1,15,'2','Mercedes de los Angeles Espinales Mora',1,''),(44,'2011-06-04 09:24:09',1,15,'2','Mercedes de los Angeles Espinales Mora',2,'No ha cambiado ningún campo.'),(45,'2011-06-04 09:26:09',1,12,'3','Pedro Joaquín Chamorro',1,''),(46,'2011-06-04 09:36:22',1,33,'5','No contestó',1,''),(47,'2011-06-04 09:38:44',1,43,'11','Regeneración Natural',1,''),(48,'2011-06-04 09:39:29',1,43,'12','Sistema silvopastoril',1,''),(49,'2011-06-04 09:55:47',1,54,'8','Maíz - Cuarenteño',1,''),(50,'2011-06-04 09:56:19',1,54,'9','Maíz - Pujagua',1,''),(51,'2011-06-04 09:57:57',1,15,'3','Nohemy del Socorro Zeledón Alemán',1,''),(52,'2011-06-04 09:59:43',1,54,'10','Frijol - Ballo',1,''),(53,'2011-06-04 10:00:30',1,54,'11','Arroz - Tres meses',1,''),(54,'2011-06-04 10:02:35',1,54,'12','Sorgo - Millón blanco',1,''),(55,'2011-06-04 10:06:59',1,70,'3','Fines de semana',1,''),(56,'2011-06-04 10:35:38',1,76,'19','Caseta para aves',1,''),(57,'2011-06-04 10:36:27',1,77,'11','Caseta para aves',1,''),(58,'2011-06-04 10:40:02',1,15,'3','Nohemy del Socorro Zeledón Alemán',2,'Añadido/a \"Frijol\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Arroz\" semilla. Añadido/a \"Sorgo\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Aves\" ingreso familiar. Añadido/a \"Maíz\" ingreso familiar. Añadido/a \"Salarios\" otros ingresos. Añadido/a \"Madera rolliza\" tipo casa. Añadido/a \"36\" detalle casa. Añadido/a \"Radio\" propiedades. Añadido/a \"Celular\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"Bicicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(59,'2011-06-04 10:43:00',1,15,'3','Nohemy del Socorro Zeledón Alemán',2,'Modificados cantidad y precio para \"Aves\" ingreso familiar. Modificados cantidad y precio para \"Maíz\" ingreso familiar.'),(60,'2011-06-04 10:45:18',1,12,'4','Los Castillos',1,''),(61,'2011-06-04 11:17:02',1,48,'23','Grandilla',1,''),(62,'2011-06-04 11:26:54',1,54,'13','Maíz - Merzon',1,''),(63,'2011-06-04 11:27:22',1,54,'14','Frijol - Rojito',1,''),(64,'2011-06-04 11:27:49',1,54,'15','Arroz - Bloonet',1,''),(65,'2011-06-04 11:28:27',1,54,'16','Yuca - pochota',1,''),(66,'2011-06-04 11:29:10',1,54,'17','Guineo - Felipito',1,''),(67,'2011-06-04 11:30:10',1,59,'4','No contestó',1,''),(68,'2011-06-04 11:32:48',1,70,'4','Trapiche',1,''),(69,'2011-06-04 11:33:35',1,70,'5','Venta de ropa interior',1,''),(70,'2011-06-04 11:39:38',1,86,'9','Comercio',1,''),(71,'2011-06-04 11:44:08',1,15,'4','Nelly del Socorro López',1,''),(72,'2011-06-04 11:46:48',1,15,'2','Mercedes de los Angeles Espinales Mora',2,'Modificados tamano para \"24\" detalle casa.'),(73,'2011-06-04 11:53:10',1,12,'5','Los Castillos',1,''),(74,'2011-06-04 12:17:56',1,48,'24','Pipián',1,''),(75,'2011-06-04 12:30:47',1,70,'6','Pulpería',1,''),(76,'2011-06-04 12:47:43',1,40,'9','No contestó',1,''),(77,'2011-06-04 12:47:59',1,15,'5','Lucía Besmilda Pérez',1,''),(78,'2011-06-04 12:49:23',1,12,'6','Los Castillos',1,''),(79,'2011-06-04 12:49:30',1,15,'4','Nelly del Socorro López',2,'Modificado/a comunidad.'),(80,'2011-06-04 13:06:50',1,13,'2','Saúl Antonio Martínez Martínez',1,''),(81,'2011-06-04 13:08:52',1,12,'7','La Empresa',1,''),(82,'2011-06-04 13:09:15',1,14,'2','ODESAR',1,''),(83,'2011-06-04 13:17:07',1,33,'6','ASOMUPRO',1,''),(84,'2011-06-04 13:17:27',1,32,'8','ASOMUPRO',1,''),(85,'2011-06-04 13:39:42',1,54,'18','Maíz - Olote rojo',1,''),(86,'2011-06-04 13:40:08',1,54,'19','Frijol - INTA',1,''),(87,'2011-06-04 13:40:33',1,54,'20','Arroz - INTA chinandega',1,''),(88,'2011-06-04 13:41:03',1,54,'21','Quequisque - Punto rojo',1,''),(89,'2011-06-04 13:43:33',1,70,'7','Albañil',1,''),(90,'2011-06-04 13:52:35',1,92,'5','cada 3 años',1,''),(91,'2011-06-04 13:56:00',1,15,'6','Francisco Flores Solís',1,''),(92,'2011-06-04 14:10:19',1,14,'3','No contestó',1,''),(93,'2011-06-04 14:12:11',1,54,'22','Maíz - Tuza Morada',1,''),(94,'2011-06-04 14:13:45',1,54,'23','Guineo - Patriota',1,''),(95,'2011-06-04 14:14:19',1,54,'24','Plátano - Grande',1,''),(96,'2011-06-04 14:27:40',1,15,'7','María Reyna Garcia Hernández',1,''),(97,'2011-06-04 14:32:09',1,32,'9','INTA',1,''),(98,'2011-06-04 14:36:14',1,43,'13','Conservación de suelo y agua',1,''),(99,'2011-06-04 14:40:04',1,48,'25','Maracuyá',1,''),(100,'2011-06-04 14:44:44',1,54,'25','Maíz - Mejorado',1,''),(101,'2011-06-04 14:45:14',1,54,'26','Frijol - INTA Rojo',1,''),(102,'2011-06-04 15:01:43',1,15,'8','Melania Elizabeth Rivas Gónzalez',1,''),(103,'2011-06-04 15:03:39',1,13,'3','Orlando Umanzor',1,''),(104,'2011-06-04 15:06:03',1,12,'8','El Mojón',1,''),(105,'2011-06-04 15:22:43',1,45,'13','Colmenas',1,''),(106,'2011-06-04 15:31:56',1,54,'27','Maíz - NB6',1,''),(107,'2011-06-04 15:32:29',1,54,'28','Frijol - H-dar rojo',1,''),(108,'2011-06-04 15:33:00',1,54,'29','Frijol - H-dar negro',1,''),(109,'2011-06-04 15:34:14',1,54,'30','Quequisque - Rojo',1,''),(110,'2011-06-04 15:34:50',1,53,'13','Flor de jamaica',1,''),(111,'2011-06-04 15:34:59',1,54,'31','Flor de jamaica - 0',1,''),(112,'2011-06-04 15:37:35',1,70,'8','Obrero agricola',1,''),(113,'2011-06-04 15:54:39',1,65,'6','No contestó',1,''),(114,'2011-06-04 15:54:48',1,15,'9','Isidoro Pérez Mendez',1,''),(115,'2011-06-04 15:56:23',1,12,'9','Monte Alegre',1,''),(116,'2011-06-04 16:08:12',1,29,'10','No contestó',1,''),(117,'2011-06-04 16:14:05',1,48,'26','Ayote',1,''),(118,'2011-06-04 16:19:08',1,54,'32','Maíz - H5',1,''),(119,'2011-06-04 16:19:39',1,54,'33','Frijol - Estelí 90',1,''),(120,'2011-06-04 16:22:12',1,70,'9','Ganadero',1,''),(121,'2011-06-04 16:30:19',1,15,'10','Miriam del Carmen Bermúdez Gutiérrez',1,''),(122,'2011-06-04 16:37:56',1,36,'10','Área de riego',1,''),(123,'2011-06-04 16:41:38',1,43,'14','Sistema Agroforestal',1,''),(124,'2011-06-04 16:51:20',1,54,'34','Maíz - Miton',1,''),(125,'2011-06-04 16:51:58',1,54,'35','Frijol - Madero',1,''),(126,'2011-06-04 16:52:33',1,54,'36','Yuca - Morada Masaya',1,''),(127,'2011-06-04 16:53:15',1,54,'37','Plátano - Gigante',1,''),(128,'2011-06-04 16:53:37',1,54,'38','Plátano - Enano',1,''),(129,'2011-06-04 16:54:12',1,54,'39','Tomate - Río grande',1,''),(130,'2011-06-04 16:54:40',1,57,'4','No contestó',1,''),(131,'2011-06-04 16:57:03',1,70,'10','Agrícola',1,''),(132,'2011-06-04 17:12:52',1,15,'11','Agustín Aldana Martínez',1,''),(133,'2011-06-04 17:14:12',1,12,'10','Chaparral',1,''),(134,'2011-06-04 17:14:43',1,14,'4','Reyna Isabel Granados Sánchez',1,''),(135,'2011-06-04 17:18:22',1,23,'7','Agua de lluvia',1,''),(136,'2011-06-05 08:17:18',1,48,'27','Flor de Jamaica',1,''),(137,'2011-06-05 08:26:07',1,54,'40','Frijol - Masatepe',1,''),(138,'2011-06-05 08:27:51',1,54,'41','Plátano - 0',1,''),(139,'2011-06-05 08:28:22',1,54,'42','Tomate - de mesa',1,''),(140,'2011-06-05 08:43:15',1,15,'12','Carlos Mauricio Pérez',1,''),(141,'2011-06-05 08:44:32',1,12,'11','San Pedro',1,''),(142,'2011-06-05 08:49:59',1,32,'10','Comité banco de semilla y promotor social',1,''),(143,'2011-06-05 09:08:52',1,54,'43','Yuca - Roja',1,''),(144,'2011-06-05 09:11:28',1,70,'11','Agricultor/profesor',1,''),(145,'2011-06-05 09:11:55',1,72,'6','No contestó',1,''),(146,'2011-06-05 09:23:30',1,15,'13','Concepción Hernández',1,''),(147,'2011-06-05 09:25:41',1,15,'12','Carlos Mauricio Pérez',2,'Modificados infraestructura y cantidad_infra para \"Silos metalicos\" propiedades.'),(148,'2011-06-05 09:26:42',1,13,'4','Lorenza Muñoz Zamora',1,''),(149,'2011-06-05 09:28:17',1,12,'12','Susuli No 2',1,''),(150,'2011-06-05 09:35:57',1,32,'11','Educadora Programa Amor',1,''),(151,'2011-06-05 09:38:42',1,39,'9','Macualí',1,''),(152,'2011-06-05 09:50:58',1,54,'44','Frijol - Rojo claro',1,''),(153,'2011-06-05 09:54:05',1,70,'12','Educadora',1,''),(154,'2011-06-05 09:56:32',1,86,'10','No contestó',1,''),(155,'2011-06-05 10:00:48',1,15,'14','Olga del Carmen Mendoza',1,''),(156,'2011-06-05 10:02:20',1,12,'13','Susuli No 3',1,''),(157,'2011-06-05 10:07:25',1,32,'12','Promotora Producción y MA ODESAR',1,''),(158,'2011-06-05 10:17:52',1,54,'45','Sorgo - Corta blanca',1,''),(159,'2011-06-05 10:19:28',1,70,'13','Emigración a Costa Rica',1,''),(160,'2011-06-05 10:22:52',1,85,'8','No contestó',1,''),(161,'2011-06-05 10:27:30',1,15,'15','Dionisia López Mendoza',1,''),(162,'2011-06-05 10:28:03',1,13,'5','Sergio Hernández Guillen',1,''),(163,'2011-06-05 10:45:22',1,54,'46','Guineo - Olote rojo',1,''),(164,'2011-06-05 10:45:48',1,54,'47','Guineo - amarillo',1,''),(165,'2011-06-05 10:48:08',1,70,'14','No contestó',1,''),(166,'2011-06-05 11:02:46',1,15,'16','Thomás Zamora',1,''),(167,'2011-06-05 11:11:04',1,32,'13','Responsable de grupo de ODESAR',1,''),(168,'2011-06-05 11:12:19',1,39,'10','No contestó',1,''),(169,'2011-06-05 11:12:24',1,38,'12','No contestó',1,''),(170,'2011-06-05 11:15:26',1,48,'28','Chayote',1,''),(171,'2011-06-05 11:24:02',1,60,'4','No contestó',1,''),(172,'2011-06-05 11:42:57',1,15,'17','Reyna Manferrer Orozco',1,''),(173,'2011-06-05 11:44:18',1,12,'14','Susuli No 4',1,''),(174,'2011-06-05 11:46:31',1,32,'14','No contestó',1,''),(175,'2011-06-05 12:08:14',1,15,'18','Amparo García Dormuz',1,''),(176,'2011-06-05 12:09:46',1,13,'6','Marlón José García',1,''),(177,'2011-06-05 12:16:32',1,32,'15',' ODESAR (Producción)',1,''),(178,'2011-06-05 12:27:31',1,54,'48','Plátano - Pequeño',1,''),(179,'2011-06-05 12:31:14',1,15,'19','Blanca Nuvia López Escorcia',1,''),(180,'2011-06-05 12:39:49',1,15,'19','Blanca Nuvia López Escorcia',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(181,'2011-06-05 12:42:55',1,14,'5','Santos Plácida Martínez Obando',1,''),(182,'2011-06-05 13:20:08',1,54,'49','Maíz - Tuza blanca',1,''),(183,'2011-06-05 13:34:45',1,15,'20','Santos Plácida Martínez Obando',1,''),(184,'2011-06-05 13:35:18',1,13,'7','Juliana Castro',1,''),(185,'2011-06-05 13:36:52',1,12,'15','Rita Arriba',1,''),(186,'2011-06-05 13:37:22',1,14,'6','Juan Francisco Martínez',1,''),(187,'2011-06-05 13:43:29',1,15,'21','Juan Francisco Martínez',1,''),(188,'2011-06-05 14:00:40',1,54,'50','Frijol - Maravilla',1,''),(189,'2011-06-05 14:01:38',1,54,'51','Plátano - Chaparro',1,''),(190,'2011-06-05 14:02:09',1,54,'52','Tomate - Linea 7',1,''),(191,'2011-06-05 14:06:17',1,70,'15','Cortes',1,''),(192,'2011-06-05 14:25:36',1,15,'21','Juan Francisco Martínez',2,'Añadido/a \"Regeneración Natural\" reforestacion. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Vacas paridas\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Aguacate\" cultivos finca. Añadido/a \"Café\" cultivos finca. Añadido/a \"Cebolla\" cultivos finca. Añadido/a \"Chiltoma\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Guineo\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Malanga\" cultivos finca. Añadido/a \"Mango\" cultivos finca. Añadido/a \"Naranja\" cultivos finca. Añadido/a \"Plátano\" cultivos finca. Añadido/a \"Quequisque\" cultivos finca. Añadido/a \"Tomate\" cultivos finca. Añadido/a \"Yuca\" cultivos finca. Añadido/a \"Pipián\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Compost\" opciones manejo. Añadido/a \"Lombricultura\" opciones manejo. Añadido/a \"Apicultura\" opciones manejo. Añadido/a \"Medicina Natural\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Cosecha de agua\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Acequia\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Incorporación de rastrojo\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Tomate\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Aguacate\" ingreso familiar. Añadido/a \"café\" ingreso familiar. Añadido/a \"Huevos\" ingreso familiar. Añadido/a \"Leche\" ingreso familiar. Añadido/a \"Tomate\" ingreso familiar. Añadido/a \"Salarios\" otros ingresos. Añadido/a \"Negocios\" otros ingresos. Añadido/a \"Tabla\" tipo casa. Añadido/a \"4\" detalle casa. Añadido/a \"Silos metalicos\" propiedades. Añadido/a \"Plancha\" propiedades. Añadido/a \"Radio\" propiedades. Añadido/a \"TV\" propiedades. Añadido/a \"DVD\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Desde cuando ahorra\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"Ahorra a nombre de quien?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(193,'2011-06-05 14:26:20',1,13,'8','Ileana Castro ',1,''),(194,'2011-06-05 14:27:36',1,12,'16','San Francisco',1,''),(195,'2011-06-05 14:27:53',1,14,'7','Rosa Danelia Montoya',1,''),(196,'2011-06-05 14:29:39',1,15,'22','Rosa Danelia Montoya',1,''),(197,'2011-06-05 14:31:18',1,32,'16','Grupo Agroecológico',1,''),(198,'2011-06-05 14:48:48',1,54,'53','Frijol - Sangre de toro',1,''),(199,'2011-06-05 14:49:13',1,54,'54','Sorgo - Maicillo',1,''),(200,'2011-06-05 14:49:34',1,54,'55','Yuca - Blanca',1,''),(201,'2011-06-05 14:50:14',1,54,'56','Chiltoma - 3 cantos',1,''),(202,'2011-06-05 14:50:48',1,54,'57','Malanga - Roja',1,''),(203,'2011-06-05 14:53:01',1,70,'16','Agricultura',1,''),(204,'2011-06-05 14:53:33',1,70,'17','Trabajo social',1,''),(205,'2011-06-05 15:05:24',1,15,'22','Rosa Danelia Montoya',2,'Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial. Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Propia por herencia\" tenencia. Añadido/a \"Área total\" uso tierra. Añadido/a \"Tacotales\" uso tierra. Añadido/a \"Cultivos anuales\" uso tierra. Añadido/a \"Cultivos temporales\" uso tierra. Añadido/a \"Áreas de pasto abierto\" uso tierra. Añadido/a \"Áreas de pastos con árboles\" uso tierra. Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Producción de patio\" reforestacion. Añadido/a \"Vacas paridas\" animales finca. Añadido/a \"Vacas horras\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Chiltoma\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Guineo\" cultivos finca. Añadido/a \"Jocote\" cultivos finca. Añadido/a \"Limón\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Malanga\" cultivos finca. Añadido/a \"Mango\" cultivos finca. Añadido/a \"Millón\" cultivos finca. Añadido/a \"Plátano\" cultivos finca. Añadido/a \"Quequisque\" cultivos finca. Añadido/a \"Yuca\" cultivos finca. Añadido/a \"Maracuyá\" cultivos finca. Añadido/a \"Grandilla\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Compost\" opciones manejo. Añadido/a \"Lombricultura\" opciones manejo. Añadido/a \"Apicultura\" opciones manejo. Añadido/a \"Medicina Natural\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Cosecha de agua\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Acequia\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Incorporación de rastrojo\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Sorgo\" semilla. Añadido/a \"Yuca\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Plátano\" semilla. Añadido/a \"Chiltoma\" semilla. Añadido/a \"Quequisque\" semilla. Añadido/a \"Malanga\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Cuajada\" ingreso familiar. Añadido/a \"Frijol\" ingreso familiar. Añadido/a \"Huevos\" ingreso familiar. Añadido/a \"Salarios\" otros ingresos. Añadido/a \"Negocios\" otros ingresos. Añadido/a \"Tabla\" tipo casa. Añadido/a \"10\" detalle casa. Añadido/a \"Bomba de fumigar\" propiedades. Añadido/a \"Plancha\" propiedades. Añadido/a \"Radio\" propiedades. Añadido/a \"TV\" propiedades. Añadido/a \"DVD\" propiedades. Añadido/a \"Muebles\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Desde cuando ahorra\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"Ahorra a nombre de quien?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(206,'2011-06-05 15:05:46',1,15,'22','Rosa Danelia Montoya',2,'No ha cambiado ningún campo.'),(207,'2011-06-05 15:10:45',1,14,'8','Justino Martínez',1,''),(208,'2011-06-05 15:30:50',1,54,'58','Guineo - cuadrado',1,''),(209,'2011-06-05 15:34:13',1,15,'23','Justino Martínez López',1,''),(210,'2011-06-05 15:53:09',1,15,'23','Justino Martínez López',2,'Añadido/a \"Salarios\" otros ingresos. Añadido/a \"Madera rolliza\" tipo casa. Añadido/a \"6\" detalle casa. Añadido/a \"Bomba de fumigar\" propiedades. Añadido/a \"Silos metalicos\" propiedades. Añadido/a \"Plancha\" propiedades. Añadido/a \"Radio\" propiedades. Añadido/a \"TV\" propiedades. Añadido/a \"Celular\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Machete\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"No\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(211,'2011-06-06 08:23:51',1,12,'17','Cerro El padre',1,''),(212,'2011-06-06 08:24:24',1,14,'9','Celso Gómez',1,''),(213,'2011-06-06 08:50:26',1,54,'59','Maíz - H55',1,''),(214,'2011-06-06 08:50:59',1,54,'60','Frijol - Moro',1,''),(215,'2011-06-06 08:51:34',1,54,'61','Guineo - Blanco',1,''),(216,'2011-06-06 08:52:02',1,54,'62','Chiltoma - Pepper',1,''),(217,'2011-06-06 08:52:21',1,54,'63','Cebolla - Blanca',1,''),(218,'2011-06-06 09:14:28',1,15,'24','Ramona del Carmen Mejía',1,''),(219,'2011-06-06 09:20:53',1,14,'10','Erlinda González',1,''),(220,'2011-06-06 09:49:47',1,54,'64','Guineo - Caribe',1,''),(221,'2011-06-06 09:54:02',1,70,'18','Cortes de café',1,''),(222,'2011-06-06 09:54:37',1,70,'19','Comerciante de ropa',1,''),(223,'2011-06-06 10:08:07',1,15,'25','Erlinda González',1,''),(224,'2011-06-06 10:08:53',1,13,'9','Hilda Jarquín Jarquín',1,''),(225,'2011-06-06 10:10:39',1,12,'18','Samulalí No 1',1,''),(226,'2011-06-06 10:10:57',1,14,'11','FUNDEG',1,''),(227,'2011-06-06 10:24:39',1,54,'65','Maíz - JV 16',1,''),(228,'2011-06-06 10:24:57',1,54,'66','Frijol - Nicaragua',1,''),(229,'2011-06-06 10:42:53',1,15,'26','Manuel Gaitán González',1,''),(230,'2011-06-06 10:58:38',1,54,'67','Frijol - Dor',1,''),(231,'2011-06-06 10:59:08',1,54,'68','Frijol - Rojo ceda',1,''),(232,'2011-06-06 10:59:30',1,54,'69','Yuca - Colorada',1,''),(233,'2011-06-06 11:00:09',1,54,'70','Guineo - Filipino',1,''),(234,'2011-06-06 11:14:20',1,15,'27','Jaime García Montenegro',1,''),(235,'2011-06-06 11:35:37',1,54,'71','Frijol - Santa Elena',1,''),(236,'2011-06-06 11:36:11',1,54,'72','Frijol - HV blor',1,''),(237,'2011-06-06 11:53:30',1,15,'28','Mercedes Gaitán Herrera',1,''),(238,'2011-06-06 11:54:58',1,15,'26','Manuel Gaitán González',2,'Modificados cultivo para \"Guineo\" semilla.'),(239,'2011-06-06 11:56:08',1,13,'10','Sin recolector',1,''),(240,'2011-06-06 11:57:59',1,12,'19','Samulalí',1,''),(241,'2011-06-06 12:13:26',1,54,'73','Maíz - Venzuela',1,''),(242,'2011-06-06 12:15:37',1,70,'20','Profesor',1,''),(243,'2011-06-06 12:29:00',1,15,'29','Victorino Gaitán',1,''),(244,'2011-06-06 12:29:24',1,13,'11','Mercedes Torrez',1,''),(245,'2011-06-06 12:46:25',1,54,'74','Frijol - V.Blanco',1,''),(246,'2011-06-06 12:50:00',1,70,'21','Remesas',1,''),(247,'2011-06-06 13:08:55',1,15,'30','Dora Dilia López',1,''),(248,'2011-06-06 13:10:31',1,14,'12','UCOS',1,''),(249,'2011-06-06 13:14:36',1,15,'31','Amado López',1,''),(250,'2011-06-06 13:16:54',1,15,'31','Amado López',2,'Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Cocina object\" cocina. Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial.'),(251,'2011-06-06 13:58:58',1,54,'75','Frijol - Moncheño',1,''),(252,'2011-06-06 14:18:00',1,15,'32','Amado López',1,''),(253,'2011-06-06 14:23:23',1,15,'32','Amado López',2,'Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Regeneración Natural\" reforestacion. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Siembra de árboles en cafetales\" reforestacion. Añadido/a \"Establecimiento de viveros\" reforestacion. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Aguacate\" cultivos finca. Añadido/a \"Cacao\" cultivos finca. Añadido/a \"Café\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Guineo\" cultivos finca. Añadido/a \"Millón\" cultivos finca. Añadido/a \"Naranja\" cultivos finca.'),(254,'2011-06-06 14:25:48',1,15,'32','Amado López',2,'Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Frijol\" semilla.'),(255,'2011-06-06 14:39:10',1,15,'32','Amado López',2,'Añadido/a \"Guineo\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Aguacate\" ingreso familiar. Añadido/a \"café\" ingreso familiar. Añadido/a \"Guineo\" ingreso familiar. Añadido/a \"Limón\" ingreso familiar. Añadido/a \"Naranja\" ingreso familiar. Añadido/a \"Ladrillo o Bloque\" tipo casa. Añadido/a \"54\" detalle casa. Añadido/a \"Bomba de motor\" propiedades. Añadido/a \"Silos metalicos\" propiedades. Añadido/a \"Arado\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Desde cuando ahorra\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(256,'2011-06-06 14:48:37',1,15,'31','Amado López',3,''),(257,'2011-06-06 15:00:38',1,15,'32','Amado López',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(258,'2011-06-06 15:01:20',1,13,'12','Perla Zeledón',1,''),(259,'2011-06-06 15:18:48',1,54,'76','Frijol - INTA canelo',1,''),(260,'2011-06-06 15:19:28',1,54,'77','Frijol - H5',1,''),(261,'2011-06-06 15:19:58',1,54,'78','Sorgo - Rojo',1,''),(262,'2011-06-06 15:20:49',1,54,'79','Plátano - Criollo',1,''),(263,'2011-06-06 15:28:50',1,15,'33','Rosa Sanchez',1,''),(264,'2011-06-06 15:37:30',1,15,'33','Rosa Sanchez',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(265,'2011-06-06 15:37:56',1,3,'2','vanessa',1,''),(266,'2011-06-06 15:38:14',1,3,'2','vanessa',2,'Modificado/a first_name, is_staff y is_superuser.'),(267,'2011-06-06 16:03:07',1,33,'6','ASOMUPRO',3,''),(268,'2011-06-06 16:11:38',1,15,'12','Carlos Mauricio Pérez',2,'Modificados area para \"Guineo\" cultivos finca. Modificados area para \"Pepino\" cultivos finca. Modificados area para \"Plátano\" cultivos finca. Modificados area para \"Tomate\" cultivos finca. Modificados area para \"Yuca\" cultivos finca. Modificados area para \"Ayote\" cultivos finca. Modificados area para \"Pipián\" cultivos finca. Modificados area para \"Flor de Jamaica\" cultivos finca.'),(269,'2011-06-06 16:20:05',1,15,'14','Olga del Carmen Mendoza',2,'Modificados area para \"Guineo\" cultivos finca. Modificados area para \"Plátano\" cultivos finca.'),(270,'2011-06-06 16:22:07',1,15,'15','Dionisia López Mendoza',2,'Modificados ingreso para \"Remesas\" otros ingresos.'),(271,'2011-06-06 16:23:08',1,12,'15','Pita Arriba',2,'Modificado/a nombre.'),(272,'2011-06-06 16:24:39',1,15,'16','Thomás Zamora',2,'No ha cambiado ningún campo.'),(273,'2011-06-06 16:25:57',1,15,'17','Reyna Manferrer Orozco',2,'No ha cambiado ningún campo.'),(274,'2011-06-06 16:27:27',1,15,'19','Blanca Nuvia López Escorcia',2,'No ha cambiado ningún campo.'),(275,'2011-06-06 16:29:49',1,15,'20','Santos Plácida Martínez Obando',2,'Modificados area para \"Chayote\" cultivos finca. Modificados area para \"Grandilla\" cultivos finca.'),(276,'2011-06-06 16:38:14',1,15,'22','Rosa Danelia Montoya',2,'Modificados area para \"Guineo\" cultivos finca. Modificados area para \"Jocote\" cultivos finca. Modificados area para \"Limón\" cultivos finca. Modificados area para \"Maíz\" cultivos finca. Modificados area para \"Malanga\" cultivos finca. Modificados area para \"Mango\" cultivos finca. Modificados area para \"Plátano\" cultivos finca. Modificados area para \"Quequisque\" cultivos finca. Modificados area para \"Yuca\" cultivos finca. Modificados area para \"Maracuyá\" cultivos finca. Modificados area para \"Grandilla\" cultivos finca.'),(277,'2011-06-06 16:42:20',1,15,'23','Justino Martínez López',2,'Modificados area para \"Café\" cultivos finca. Modificados area para \"Cebolla\" cultivos finca. Modificados area para \"Chiltoma\" cultivos finca. Modificados area para \"Frijol\" cultivos finca. Modificados area para \"Guineo\" cultivos finca. Modificados area para \"Maíz\" cultivos finca. Modificados area para \"Plátano\" cultivos finca. Modificados area para \"Pipián\" cultivos finca. Modificados area para \"Maracuyá\" cultivos finca.'),(278,'2011-06-06 16:43:03',1,15,'24','Ramona del Carmen Mejía',2,'No ha cambiado ningún campo.'),(279,'2011-06-06 16:48:41',2,91,'14','Fenómenos naturales - Inundación',1,''),(280,'2011-06-06 16:57:47',1,15,'33','Rosa Sánchez',2,'Modificado/a nombre.'),(281,'2011-06-06 17:00:14',2,15,'34','Pedro González',1,''),(282,'2011-06-06 17:25:43',1,13,'13','José Luis Martínez Manzanares',1,''),(283,'2011-06-06 17:27:09',1,12,'20','La Esperanza-Pavona Abajo',1,''),(284,'2011-06-06 17:27:48',1,14,'13','Miriam Lisseth Falcón Guerrero',1,''),(285,'2011-06-06 17:28:55',2,13,'14','Santo Angel Hernández Rodriguez',1,''),(286,'2011-06-06 17:31:22',2,12,'21','Ocote Abajo',1,''),(287,'2011-06-06 17:32:27',2,14,'14','PCAC',1,''),(288,'2011-06-06 17:34:53',1,40,'10','Guaba',1,''),(289,'2011-06-06 17:35:15',1,41,'14','Grape Fruit',1,''),(290,'2011-06-06 17:37:23',1,15,'35','Miriam Lisseth Falcón Guerrero',1,''),(291,'2011-06-06 17:37:48',2,33,'7','PCAC',1,''),(292,'2011-06-06 17:38:00',2,32,'17','PCAC',1,''),(293,'2011-06-06 17:42:14',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Añadido/a \"Café\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Guineo\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Mango\" cultivos finca. Añadido/a \"Naranja\" cultivos finca. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Compost\" opciones manejo. Añadido/a \"Apicultura\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo.'),(294,'2011-06-06 17:46:11',1,54,'80','Maíz - Izalco',1,''),(295,'2011-06-06 17:46:47',1,54,'81','Frijol - H',1,''),(296,'2011-06-06 17:47:33',1,53,'14','Café',1,''),(297,'2011-06-06 17:47:40',1,54,'82','Café - Catimar',1,''),(298,'2011-06-06 17:48:32',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Café\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo.'),(299,'2011-06-06 17:51:12',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Añadido/a \"café\" ingreso familiar. Añadido/a \"Guineo\" ingreso familiar.'),(300,'2011-06-06 17:52:18',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Añadido/a \"Ladrillo o Bloque\" tipo casa. Añadido/a \"70\" detalle casa.'),(301,'2011-06-06 18:28:40',2,15,'36','Margarito Hernández Alvarez',1,''),(302,'2011-06-06 18:59:02',2,15,'37','Marlón Antonio Chavarria Luquez ',1,''),(303,'2011-06-07 08:04:11',2,15,'37','Marlón Antonio Chavarria Luquez ',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(304,'2011-06-07 08:21:56',2,54,'83','Maíz - Acriollado',1,''),(305,'2011-06-07 08:22:37',1,79,'10','Azadón',1,''),(306,'2011-06-07 08:24:16',1,79,'11','Cobín',1,''),(307,'2011-06-07 08:24:36',1,79,'12','Martillo',1,''),(308,'2011-06-07 08:35:50',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Azadón\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Cobín\" herramientas. Añadido/a \"Martillo\" herramientas. Añadido/a \"Bicicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"No\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(309,'2011-06-07 08:36:33',2,15,'38','Francisca Valiente Barrera',1,''),(310,'2011-06-07 08:37:45',1,12,'22','Castillo Norte-Pavona Abajo',1,''),(311,'2011-06-07 08:38:17',1,14,'15','Carlos Fidel Flores Arancibia',1,''),(312,'2011-06-07 08:42:15',1,32,'18','Presidente de sección del Instituto Abisinia',1,''),(313,'2011-06-07 08:43:04',1,38,'13','Macuelizo',1,''),(314,'2011-06-07 08:57:34',1,54,'84','Maíz - Catacama',1,''),(315,'2011-06-07 08:58:17',1,54,'85','Frijol - H1 INTA',1,''),(316,'2011-06-07 08:58:44',1,54,'86','Guineo - Mismo hijo',1,''),(317,'2011-06-07 08:59:20',1,54,'87','Malanga - Mismo hijo',1,''),(318,'2011-06-07 09:05:25',1,70,'22','Jornalero',1,''),(319,'2011-06-07 09:10:34',1,15,'39','Carlos Fidel Flores Arancibia',1,''),(320,'2011-06-07 09:15:27',1,15,'39','Carlos Fidel Flores Arancibia',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(321,'2011-06-07 09:16:09',1,13,'15','José Jesús Zeledón López',1,''),(322,'2011-06-07 09:17:03',1,12,'23','Abisinia',1,''),(323,'2011-06-07 09:17:39',1,14,'16','TDH/BMZ LA CUCULMECA',1,''),(324,'2011-06-07 09:19:40',1,15,'40','Geovany Talavera Cruz',1,''),(325,'2011-06-07 09:20:10',2,15,'41','Braulio López Alvarez',1,''),(326,'2011-06-07 09:24:16',1,32,'19','Coop. COMULJUT',1,''),(327,'2011-06-07 09:35:20',1,54,'88','Frijol - H-46',1,''),(328,'2011-06-07 09:35:57',2,12,'24','Ocote Arriba',1,''),(329,'2011-06-07 09:36:01',1,54,'89','Plátano - Cuerno T',1,''),(330,'2011-06-07 09:36:52',1,63,'5','Espeque',1,''),(331,'2011-06-07 09:46:46',1,10,'99','Cobertura Nacional',3,''),(332,'2011-06-07 09:46:48',1,15,'40','Geovany Talavera Cruz',2,'Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial. Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Propia por herencia\" tenencia. Añadido/a \"Área total\" uso tierra. Añadido/a \"Cultivos perennes\" uso tierra. Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Regeneración Natural\" reforestacion. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Café\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Acequia\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Incorporación de rastrojo\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Plátano\" semilla. Añadido/a \"Café\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Cacao\" ingreso familiar. Añadido/a \"Guineo\" ingreso familiar. Añadido/a \"Huevos\" ingreso familiar. Añadido/a \"Ladrillo o Bloque\" tipo casa. Añadido/a \"80\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Motocicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(333,'2011-06-07 09:55:42',1,14,'16','TDH/BMZ LA CUCULMECA',2,'Modificado/a departamento.'),(334,'2011-06-07 09:55:54',1,14,'14','PCAC',2,'Modificado/a departamento.'),(335,'2011-06-07 09:56:06',1,14,'12','UCOS',2,'Modificado/a departamento.'),(336,'2011-06-07 09:56:29',1,14,'11','FUDEG',2,'Modificado/a nombre y departamento.'),(337,'2011-06-07 09:56:43',1,14,'2','ODESAR',2,'Modificado/a departamento.'),(338,'2011-06-07 09:56:53',1,14,'1','Asociación Nochari',2,'Modificado/a departamento.'),(339,'2011-06-07 09:58:36',2,54,'90','Frijol - Acriollada',1,''),(340,'2011-06-07 09:58:46',1,15,'40','Geovany Talavera Cruz',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(341,'2011-06-07 09:59:50',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Modificado/a organizacion.'),(342,'2011-06-07 10:00:04',2,54,'91','Frijol - Acriollada',1,''),(343,'2011-06-07 10:00:13',1,15,'39','Carlos Fidel Flores Arancibia',2,'Modificado/a organizacion.'),(344,'2011-06-07 10:01:13',2,54,'92','Sorgo - Acriollada',1,''),(345,'2011-06-07 10:04:04',1,15,'12','Carlos Mauricio Pérez',2,'Modificado/a organizacion.'),(346,'2011-06-07 10:04:23',1,14,'11','FDEGL',2,'Modificado/a nombre.'),(347,'2011-06-07 10:05:14',1,15,'12','Carlos Mauricio Pérez',2,'No ha cambiado ningún campo.'),(348,'2011-06-07 10:06:02',1,15,'24','Ramona del Carmen Mejía',2,'Modificado/a organizacion.'),(349,'2011-06-07 10:06:52',1,15,'23','Justino Martínez López',2,'Modificado/a organizacion.'),(350,'2011-06-07 10:07:40',1,15,'22','Rosa Danelia Montoya',2,'Modificado/a organizacion.'),(351,'2011-06-07 10:08:20',1,15,'21','Juan Francisco Martínez',2,'Modificado/a organizacion.'),(352,'2011-06-07 10:08:50',1,15,'20','Santos Plácida Martínez Obando',2,'Modificado/a organizacion.'),(353,'2011-06-07 10:10:03',1,15,'25','Erlinda González',2,'Modificado/a organizacion.'),(354,'2011-06-07 10:11:22',1,13,'16','Jorge Luis López Herrera',1,''),(355,'2011-06-07 10:12:11',2,15,'42','Lorenzo Cruz Flores',1,''),(356,'2011-06-07 10:12:22',1,12,'25','Pila del Horno',1,''),(357,'2011-06-07 10:13:36',1,14,'17','LA CUCULMECA/ ENTRAIDE',1,''),(358,'2011-06-07 10:15:22',2,15,'37','Marlón Antonio Chavarria Luquez ',2,'Modificado/a finca.'),(359,'2011-06-07 10:17:59',2,12,'26','Ocote',1,''),(360,'2011-06-07 10:18:14',1,32,'20','Junta directiva CFR',1,''),(361,'2011-06-07 10:20:56',1,14,'16','La Cuculmeca',2,'Modificado/a nombre.'),(362,'2011-06-07 10:30:08',1,14,'12','UCOS',2,'Modificado/a departamento.'),(363,'2011-06-07 10:39:02',1,54,'93','Maíz - MB6 Híbrido',1,''),(364,'2011-06-07 10:39:35',1,54,'94','Frijol - Estelí 150',1,''),(365,'2011-06-07 10:40:41',1,15,'43','Gregorio López García',1,''),(366,'2011-06-07 11:02:20',2,15,'44','José Napoleón Valiente ',1,''),(367,'2011-06-07 11:03:03',1,15,'43','Gregorio López García',2,'Añadido/a \"Frijol\" ingreso familiar. Añadido/a \"Huevos\" ingreso familiar. Añadido/a \"Maíz\" ingreso familiar. Añadido/a \"Ternero de desarrollo\" ingreso familiar. Añadido/a \"Vaca\" ingreso familiar. Añadido/a \"Madera rolliza\" tipo casa. Añadido/a \"8\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"Bicicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(368,'2011-06-07 11:03:41',2,13,'17','Erick David Barrera Mejia',1,''),(369,'2011-06-07 11:07:07',1,13,'18','Fausto Castro Duarte',1,''),(370,'2011-06-07 11:07:48',1,12,'27','Jocomico',1,''),(371,'2011-06-07 11:41:14',2,70,'23','Costurera',1,''),(372,'2011-06-07 11:42:25',1,15,'45','Máximo Hernández García',1,''),(373,'2011-06-07 11:43:40',1,13,'19','Elphidia Duarte',1,''),(374,'2011-06-07 12:01:45',1,38,'14','Talalate',1,''),(375,'2011-06-07 12:01:59',1,38,'15','Quebracho',1,''),(376,'2011-06-07 12:03:04',1,41,'15','Nancite',1,''),(377,'2011-06-07 12:10:10',2,15,'46','Mirian del Carmen Montenegro',1,''),(378,'2011-06-07 12:13:09',1,54,'95','Maíz - NB5',1,''),(379,'2011-06-07 12:14:28',1,54,'96','Frijol - INTA-Canelo',1,''),(380,'2011-06-07 12:14:59',1,54,'97','Frijol - Chile rosa',1,''),(381,'2011-06-07 12:15:30',1,54,'98','Sorgo - Aneno',1,''),(382,'2011-06-07 12:15:52',1,54,'99','Sorgo - Ligero-tortillero',1,''),(383,'2011-06-07 12:16:10',1,56,'4','Franco',1,''),(384,'2011-06-07 12:26:53',1,15,'47','Francisco Vidal Torrez',1,''),(385,'2011-06-07 12:29:51',1,14,'18','FUDEG',1,''),(386,'2011-06-07 12:29:57',1,15,'27','Jaime García Montenegro',2,'Modificado/a organizacion.'),(387,'2011-06-07 12:30:31',1,15,'29','Victorino Gaitán',2,'Modificado/a organizacion.'),(388,'2011-06-07 12:36:10',1,15,'26','Manuel Gaitán González',2,'No ha cambiado ningún campo.'),(389,'2011-06-07 12:37:13',1,15,'27','Jaime García Montenegro',2,'Modificado/a organizacion.'),(390,'2011-06-07 12:37:40',1,15,'29','Victorino Gaitán',2,'Modificado/a organizacion.'),(391,'2011-06-07 12:39:16',1,15,'33','Rosa Sánchez',2,'No ha cambiado ningún campo.'),(392,'2011-06-07 12:51:30',1,15,'35','Miriam Lisseth Falcón Guerrero',2,'Modificado/a organizacion.'),(393,'2011-06-07 13:19:32',1,15,'39','Carlos Fidel Flores Arancibia',2,'Modificado/a organizacion.'),(394,'2011-06-07 13:24:21',1,15,'48','José Adrián López Palacios',1,''),(395,'2011-06-07 13:31:23',1,15,'48','José Adrián López Palacios',2,'Añadido/a \"Hombre mayor 30 años\" educacion. Añadido/a \"Mujeres mayor 30 años\" educacion. Añadido/a \"Niños menos de 6 años\" educacion. Añadido/a \"Hombre mayor 30 años\" salud. Añadido/a \"Mujeres mayor 30 años\" salud. Añadido/a \"Niños menos de 6 años\" salud. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Cocina object\" cocina. Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial. Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Propia por herencia\" tenencia. Añadido/a \"Área total\" uso tierra. Añadido/a \"Bosque\" uso tierra. Añadido/a \"Tacotales\" uso tierra. Añadido/a \"Cultivos anuales\" uso tierra. Añadido/a \"Áreas de pasto abierto\" uso tierra. Añadido/a \"ExistenciaArboles object\" existencia arboles.'),(396,'2011-06-07 13:48:20',1,15,'48','José Adrián López Palacios',2,'Añadido/a \"Regeneración Natural\" reforestacion. Añadido/a \"Producción de patio\" reforestacion. Añadido/a \"Vacas paridas\" animales finca. Añadido/a \"Vaquillas\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Aguacate\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Limón\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Mango\" cultivos finca. Añadido/a \"Ayote\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo. Añadido/a \"Fungicida natural\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo.'),(397,'2011-06-07 14:37:36',1,15,'48','José Adrián López Palacios',2,'Añadido/a \"Frijol\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Aguacate\" ingreso familiar. Añadido/a \"Frijol\" ingreso familiar. Añadido/a \"Ladrillo o Bloque\" tipo casa. Añadido/a \"10\" detalle casa.'),(398,'2011-06-07 14:37:47',2,15,'49','Mario Gaytan',1,''),(399,'2011-06-07 14:38:46',2,13,'20','Denis José Rosales Vanega',1,''),(400,'2011-06-07 14:50:02',1,15,'48','José Adrián López Palacios',2,'Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Carretilla\" herramientas. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Desde cuando ahorra\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"Ahorra a nombre de quien?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(401,'2011-06-07 14:50:40',1,13,'21','Arlen S. Castro',1,''),(402,'2011-06-07 14:52:18',1,12,'28','Paso Ancho',1,''),(403,'2011-06-07 14:57:35',1,38,'16','Mamasquillo',1,''),(404,'2011-06-07 15:05:33',1,54,'100','Maíz - Planta Baja',1,''),(405,'2011-06-07 15:06:37',1,54,'101','Frijol - Estelí chile matón',1,''),(406,'2011-06-07 15:07:24',1,54,'102','Chiltoma - Rellena',1,''),(407,'2011-06-07 15:13:20',2,70,'24','Venta de Molienda de caña',1,''),(408,'2011-06-07 15:23:05',1,15,'50','Jesús Torrez Duarte',1,''),(409,'2011-06-07 15:24:12',1,13,'22','Jorge L',1,''),(410,'2011-06-07 15:31:20',1,39,'11','Jiñocuao',1,''),(411,'2011-06-07 15:31:32',1,39,'12','Copal',1,''),(412,'2011-06-07 15:34:45',1,33,'7','PCAC',3,''),(413,'2011-06-07 15:39:51',1,54,'103','Maíz - Colombiano',1,''),(414,'2011-06-07 15:41:19',1,54,'104','Frijol - Estelí',1,''),(415,'2011-06-07 15:42:35',2,15,'51','Facunda Ohoa',1,''),(416,'2011-06-07 15:45:06',2,14,'19','Vicente Palacio Palacio ',1,''),(417,'2011-06-07 15:51:27',1,15,'52','Pablo Absalón Chavarría López',1,''),(418,'2011-06-07 15:58:48',1,15,'52','Pablo Absalón Chavarría López',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(419,'2011-06-07 16:00:35',1,13,'23','Donald Ramón Úbeda Pineda',1,''),(420,'2011-06-07 16:04:35',1,12,'29','La tejera',1,''),(421,'2011-06-07 16:21:22',2,15,'53','Vicente Palacio Palacio ',1,''),(422,'2011-06-07 16:28:33',1,70,'25','Compra venta de ganado',1,''),(423,'2011-06-07 16:35:49',2,54,'105','Yuca - Acriollada',1,''),(424,'2011-06-07 16:36:31',2,54,'106','Quequisque - Criollo',1,''),(425,'2011-06-07 16:40:14',1,15,'54','Francisco Úbeda Méndez',1,''),(426,'2011-06-07 16:51:33',2,15,'55','Arcadia Rodriguez Urbina',1,''),(427,'2011-06-07 16:57:58',1,15,'56','Juan Ramón Herrera',1,''),(428,'2011-06-07 17:04:12',1,15,'56','Juan Ramón Herrera',2,'Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad.'),(429,'2011-06-07 17:07:56',1,26,'5','No contestó',1,''),(430,'2011-06-07 17:12:05',2,54,'107','Arroz - Acriollada',1,''),(431,'2011-06-07 17:15:22',2,70,'26','Alquiler de Tierra',1,''),(432,'2011-06-07 17:26:08',2,15,'57','Luz Marina Orellana Flores',1,''),(433,'2011-06-07 17:26:47',2,13,'24','Mercedes',1,''),(434,'2011-06-07 17:27:14',1,15,'58','Gustavo Úbeda Cruz',1,''),(435,'2011-06-07 17:30:13',1,13,'25','Leyda Lastenia Úbeda Molina',1,''),(436,'2011-06-07 17:38:59',1,54,'108','Frijol - Tico',1,''),(437,'2011-06-07 17:53:22',1,15,'59','María Julia Méndez Gutiérrez',1,''),(438,'2011-06-07 17:57:47',1,15,'1','Lorenza Justina Flores',2,'Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable. Eliminado/a \"Vulnerable object\" vulnerable.'),(439,'2011-06-07 17:59:01',2,15,'60','Juana Antonia Rizo Orozco',1,''),(440,'2011-06-07 17:59:51',2,13,'26','David Gaytan',1,''),(441,'2011-06-07 18:01:30',1,15,'61','Francisco Úbeda Cruz',1,''),(442,'2011-06-07 18:33:17',2,15,'62','David Gaytan',1,''),(443,'2011-06-08 07:50:31',1,15,'61','Francisco Úbeda Cruz',2,'Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Propia con escritura pública\" tenencia. Añadido/a \"Cultivos temporales\" uso tierra. Añadido/a \"Áreas de pastos con árboles\" uso tierra.'),(444,'2011-06-08 08:10:34',1,15,'61','Francisco Úbeda Cruz',2,'Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Vacas paridas\" animales finca. Añadido/a \"Vaquillas\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aguacate\" cultivos finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Acequia\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Ladrillo o Bloque\" tipo casa. Añadido/a \"13\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Carretilla\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"Camioneta o carro\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"No\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(445,'2011-06-08 08:20:20',1,70,'27','Mano de obra',1,''),(446,'2011-06-08 08:30:55',1,15,'63','Alfonso de Jesús Molina Herrera',1,''),(447,'2011-06-08 08:33:00',1,12,'30','Tamarindo',1,''),(448,'2011-06-08 08:54:02',1,15,'64','Yeril Valle Valle',1,''),(449,'2011-06-08 08:54:37',1,13,'27','Francisco Meza',1,''),(450,'2011-06-08 08:58:38',1,32,'21','Comité Fondo Revolvente',1,''),(451,'2011-06-08 08:59:54',1,41,'16','No contestó',1,''),(452,'2011-06-08 09:15:13',1,15,'65','Judin Enoc Reyes Picado',1,''),(453,'2011-06-08 10:13:29',2,13,'28','Marlón Enrrique Herrera Cruz',1,''),(454,'2011-06-08 12:09:47',1,12,'31','Agua zarca',1,''),(455,'2011-06-08 12:22:59',1,15,'66','Lorenzo Rizo',1,''),(456,'2011-06-08 12:46:21',2,15,'67','Rosario Hernández',1,''),(457,'2011-06-08 12:46:26',1,15,'66','Lorenzo Rizo',2,'Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Adobe\" tipo casa. Añadido/a \"30\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"Bicicleta\" transporte. Añadido/a \"Motocicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"No\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(458,'2011-06-08 15:12:02',1,12,'32','Yagualica',1,''),(459,'2011-06-08 15:12:19',1,15,'68','Mario José Villagra Hernández',1,''),(460,'2011-06-08 15:22:10',1,24,'5','No contestó',1,''),(461,'2011-06-08 15:23:25',1,32,'22','Presidente de Junta directiva',1,''),(462,'2011-06-08 15:26:36',1,38,'17','Palo de Arco',1,''),(463,'2011-06-08 15:26:56',1,38,'18','Moro',1,''),(464,'2011-06-08 15:27:58',1,40,'11','Vainilla',1,''),(465,'2011-06-08 15:28:25',1,40,'12','Chaperno',1,''),(466,'2011-06-08 15:28:44',1,40,'13','Guayaba',1,''),(467,'2011-06-08 15:28:55',1,40,'14','Mamosquillo',1,''),(468,'2011-06-08 15:38:25',1,54,'109','Frijol - INTA R',1,''),(469,'2011-06-08 15:38:45',1,54,'110','Frijol - INTA H',1,''),(470,'2011-06-08 15:54:38',1,15,'68','Mario José Villagra Hernández',2,'Añadido/a \"Hombre mayor 30 años\" educacion. Añadido/a \"Mujeres mayor 30 años\" educacion. Añadido/a \"Hombres de 7 a 18 años\" educacion. Añadido/a \"Niños menos de 6 años\" educacion. Añadido/a \"Niñas menos de 6 años\" educacion. Añadido/a \"Hombre mayor 30 años\" salud. Añadido/a \"Mujeres mayor 30 años\" salud. Añadido/a \"Hombres de 7 a 18 años\" salud. Añadido/a \"Niños menos de 6 años\" salud. Añadido/a \"Niñas menos de 6 años\" salud. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Energia object\" energia. Añadido/a \"Cocina object\" cocina. Añadido/a \"Agua object\" agua. Añadido/a \"OrganizacionGremial object\" organizacion gremial. Añadido/a \"OrganizacionComunitaria object\" organizacion comunitaria. Añadido/a \"Propia con escritura pública\" tenencia. Añadido/a \"Bosque\" uso tierra. Añadido/a \"Tacotales\" uso tierra. Añadido/a \"Cultivos anuales\" uso tierra. Añadido/a \"Áreas de pasto abierto\" uso tierra. Añadido/a \"ExistenciaArboles object\" existencia arboles. Añadido/a \"Vacas horras\" animales finca. Añadido/a \"Vaquillas\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Bestias\" animales finca. Añadido/a \"Frijol\" cultivos finca. Añadido/a \"Maíz\" cultivos finca. Añadido/a \"Millón\" cultivos finca. Añadido/a \"Biofertilizantes\" opciones manejo. Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Barrera muerta\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Frijol\" semilla. Añadido/a \"Frijol\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Frijol\" ingreso familiar. Añadido/a \"Millón\" ingreso familiar. Añadido/a \"Negocios\" otros ingresos. Añadido/a \"Adobe\" tipo casa. Añadido/a \"96\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Barra\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Tiene ahorro en joyeria/prendas?\" ahorro. Añadido/a \"Posee una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(471,'2011-06-08 16:47:35',1,13,'29','Gonzalo Arias Mendoza',1,''),(472,'2011-06-08 16:50:56',1,12,'33','El sol',1,''),(473,'2011-06-08 16:51:35',1,14,'20','Asociación Tierra y vida',1,''),(474,'2011-06-08 17:13:29',1,15,'69','Elva Leonor Mendoza Ordeñana',1,''),(475,'2011-06-08 17:37:48',1,15,'69','Elva Leonor Mendoza Ordeñana',2,'Añadido/a \"Regeneración Natural\" reforestacion. Añadido/a \"Protección de fuente de agua\" reforestacion. Añadido/a \"Establecimiento de cercas viva\" reforestacion. Añadido/a \"Sistema silvopastoril\" reforestacion. Añadido/a \"Conservación de suelo y agua\" reforestacion. Añadido/a \"Vacas paridas\" animales finca. Añadido/a \"Vacas horras\" animales finca. Añadido/a \"Vaquillas\" animales finca. Añadido/a \"Ternero de desarrollo\" animales finca. Añadido/a \"Novillo\" animales finca. Añadido/a \"Pelibuey\" animales finca. Añadido/a \"Cerdos\" animales finca. Añadido/a \"Aves de corral\" animales finca. Añadido/a \"Bueyes\" animales finca. Añadido/a \"Bestias\" animales finca. Añadido/a \"Arroz\" cultivos finca. Añadido/a \"Yuca\" cultivos finca. Añadido/a \"Estiercoleras\" opciones manejo. Añadido/a \"Insecticida natural\" opciones manejo.'),(476,'2011-06-09 09:05:59',1,54,'111','Arroz - Nilo',1,''),(477,'2011-06-09 10:38:12',1,15,'69','Elva Leonor Mendoza Ordeñana',2,'Añadido/a \"Conservaciones de semilla\" opciones manejo. Añadido/a \"Selección de semilla criolla\" opciones manejo. Añadido/a \"Cosecha de agua\" opciones manejo. Añadido/a \"Cerca viva\" opciones manejo. Añadido/a \"Cortina rompe viento\" opciones manejo. Añadido/a \"Abonos verdes\" opciones manejo. Añadido/a \"Curva a nivel\" opciones manejo. Añadido/a \"Barrera viva\" opciones manejo. Añadido/a \"Ronda corta fuego\" opciones manejo. Añadido/a \"Cultivo asociado\" opciones manejo. Añadido/a \"Incorporación de rastrojo\" opciones manejo. Añadido/a \"Maíz\" semilla. Añadido/a \"Maíz\" semilla. Añadido/a \"Arroz\" semilla.'),(478,'2011-06-09 14:51:51',1,54,'112','Sorgo - Pinolero',1,''),(479,'2011-06-09 14:57:55',1,76,'20','Sistema Beneficiarios',1,''),(480,'2011-06-09 15:11:28',1,15,'69','Elva Leonor Mendoza Ordeñana',2,'Añadido/a \"Yuca\" semilla. Añadido/a \"Guineo\" semilla. Añadido/a \"Sorgo\" semilla. Añadido/a \"Suelo object\" suelo. Añadido/a \"ManejoSuelo object\" manejo suelo. Añadido/a \"Leche\" ingreso familiar. Añadido/a \"Salarios\" otros ingresos. Añadido/a \"Minifalda\" tipo casa. Añadido/a \"20\" detalle casa. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Propiedades object\" propiedades. Añadido/a \"Machete\" herramientas. Añadido/a \"Coba\" herramientas. Añadido/a \"Piocha\" herramientas. Añadido/a \"Pala\" herramientas. Añadido/a \"Rastrillo\" herramientas. Añadido/a \"Herramienta para poda\" herramientas. Añadido/a \"Hacha\" herramientas. Añadido/a \"Carretilla\" herramientas. Añadido/a \"Caballos o mulas\" transporte. Añadido/a \"Carreta de bueyes o caballos\" transporte. Añadido/a \"Bicicleta\" transporte. Añadido/a \"Motocicleta\" transporte. Añadido/a \"¿Tiene ahorro en efectivo?\" ahorro. Añadido/a \"¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?\" ahorro. Añadido/a \"Si\" credito. Añadido/a \"Aceite\" seguridad. Añadido/a \"Arroz\" seguridad. Añadido/a \"Avena\" seguridad. Añadido/a \"Azúcar\" seguridad. Añadido/a \"Café\" seguridad. Añadido/a \"Carne de cerdo\" seguridad. Añadido/a \"Carne de res\" seguridad. Añadido/a \"Crema\" seguridad. Añadido/a \"Cuajada\" seguridad. Añadido/a \"Frijol\" seguridad. Añadido/a \"Frutas\" seguridad. Añadido/a \"Guineo\" seguridad. Añadido/a \"Huevos\" seguridad. Añadido/a \"Leche\" seguridad. Añadido/a \"Maíz\" seguridad. Añadido/a \"Malanga\" seguridad. Añadido/a \"Miel\" seguridad. Añadido/a \"Millón\" seguridad. Añadido/a \"Papa\" seguridad. Añadido/a \"Plátano\" seguridad. Añadido/a \"Pollo\" seguridad. Añadido/a \"Quequisque\" seguridad. Añadido/a \"Queso\" seguridad. Añadido/a \"Sorgo\" seguridad. Añadido/a \"Soya\" seguridad. Añadido/a \"Verdura\" seguridad. Añadido/a \"Yuca\" seguridad. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Vulnerable object\" vulnerable. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos. Añadido/a \"Riesgos object\" riesgos.'),(481,'2011-06-09 15:12:16',1,13,'30','Reynerio Mongalo Jarquín',1,''),(482,'2011-06-09 15:15:08',1,12,'34','El Calishuate',1,''),(483,'2011-06-09 15:35:31',1,54,'113','Maíz - Blanco',1,''),(484,'2011-06-09 15:36:46',1,54,'114','Frijol - Rojo criollo',1,''),(485,'2011-06-09 15:37:29',1,54,'115','Tomate - Manzano',1,''),(486,'2011-06-09 15:39:55',1,70,'28','Venta de producto finca',1,''),(487,'2011-06-09 15:54:45',1,15,'70','Feliciana del Carmen López Delgado',1,''),(488,'2011-06-09 15:56:11',1,12,'35','La unión',1,''),(489,'2011-06-09 16:00:23',1,32,'23','Comisión de Producción de GB',1,''),(490,'2011-06-09 16:02:28',1,40,'15','Madroño',1,''),(491,'2011-06-09 16:02:46',1,40,'16','Guachipilin',1,''),(492,'2011-06-09 16:03:24',1,40,'17','Chocuaguo',1,''),(493,'2011-06-09 16:04:03',1,41,'17','Mandarina',1,''),(494,'2011-06-09 16:37:00',1,54,'116','Frijol - Rojo Nacional',1,''),(495,'2011-06-09 16:38:24',1,54,'117','Arroz - Carbonet',1,''),(496,'2011-06-09 16:38:55',1,54,'118','Arroz - Nilo Amarillo',1,''),(497,'2011-06-09 16:39:26',1,54,'119','Sorgo - Tortillero',1,''),(498,'2011-06-09 16:44:58',1,73,'6','No contestó',1,''),(499,'2011-06-09 16:55:37',1,15,'71','Domingo Salomón Páramo Guido',1,''),(500,'2011-06-09 16:56:24',1,13,'31','Juan Carlos Mora Vargas',1,''),(501,'2011-06-09 17:03:01',1,32,'24','Comité de Padres de Familia',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'departamento','lugar','departamento'),(11,'municipio','lugar','municipio'),(12,'comunidad','lugar','comunidad'),(13,'recolector','grupo_gpae','recolector'),(14,'organizaciones','grupo_gpae','organizaciones'),(15,'encuesta','grupo_gpae','encuesta'),(16,'tenencia','grupo_gpae','tenencia'),(17,'educacion','indicador01','educacion'),(18,'salud','indicador01','salud'),(19,'pregunta energia','indicador01','preguntaenergia'),(20,'energia','indicador01','energia'),(21,'tipo cocina','indicador01','tipococina'),(22,'cocina','indicador01','cocina'),(23,'fuente','indicador01','fuente'),(24,'tratamiento','indicador01','tratamiento'),(25,'disponibilidad','indicador01','disponibilidad'),(26,'uso agua','indicador01','usoagua'),(27,'agua','indicador01','agua'),(28,'org gremiales','indicador02','orggremiales'),(29,'beneficios obtenido','indicador02','beneficiosobtenido'),(30,'ser miembro','indicador02','sermiembro'),(31,'organizacion gremial','indicador02','organizaciongremial'),(32,'org comunitarias','indicador02','orgcomunitarias'),(33,'beneficio org comunitaria','indicador02','beneficioorgcomunitaria'),(34,'no organizado','indicador02','noorganizado'),(35,'organizacion comunitaria','indicador02','organizacioncomunitaria'),(36,'uso','indicador05','uso'),(37,'uso tierra','indicador05','usotierra'),(38,'maderable','indicador06','maderable'),(39,'forrajero','indicador06','forrajero'),(40,'energetico','indicador06','energetico'),(41,'frutal','indicador06','frutal'),(42,'existencia arboles','indicador06','existenciaarboles'),(43,'actividad','indicador07','actividad'),(44,'reforestacion','indicador07','reforestacion'),(45,'animales','indicador08','animales'),(46,'producto animal','indicador08','productoanimal'),(47,'animales finca','indicador08','animalesfinca'),(48,'cultivos','indicador09','cultivos'),(49,'excedente','indicador09','excedente'),(50,'cultivos finca','indicador09','cultivosfinca'),(51,'manejo agro','indicador10','manejoagro'),(52,'opciones manejo','indicador10','opcionesmanejo'),(53,'cultivos variedad','indicador11','cultivosvariedad'),(54,'variedades','indicador11','variedades'),(55,'semilla','indicador11','semilla'),(56,'textura','indicador12','textura'),(57,'profundidad','indicador12','profundidad'),(58,'densidad','indicador12','densidad'),(59,'pendiente','indicador12','pendiente'),(60,'drenaje','indicador12','drenaje'),(61,'suelo','indicador12','suelo'),(62,'preparar','indicador12','preparar'),(63,'traccion','indicador12','traccion'),(64,'fertilizacion','indicador12','fertilizacion'),(65,'conservacion','indicador12','conservacion'),(66,'manejo suelo','indicador12','manejosuelo'),(67,'rubros','indicador13','rubros'),(68,'ingreso familiar','indicador13','ingresofamiliar'),(69,'fuentes','indicador14','fuentes'),(70,'tipo trabajo','indicador14','tipotrabajo'),(71,'otros ingresos','indicador14','otrosingresos'),(72,'piso','indicador15','piso'),(73,'techo','indicador15','techo'),(74,'tipo casa','indicador15','tipocasa'),(75,'detalle casa','indicador15','detallecasa'),(76,'equipos','indicador15','equipos'),(77,'infraestructuras','indicador15','infraestructuras'),(78,'propiedades','indicador15','propiedades'),(79,'nombre herramienta','indicador15','nombreherramienta'),(80,'herramientas','indicador15','herramientas'),(81,'nombre transporte','indicador15','nombretransporte'),(82,'transporte','indicador15','transporte'),(83,'ahorro pregunta','indicador16','ahorropregunta'),(84,'ahorro','indicador16','ahorro'),(85,'da credito','indicador17','dacredito'),(86,'ocupa credito','indicador17','ocupacredito'),(87,'credito','indicador17','credito'),(88,'alimentos','indicador18','alimentos'),(89,'seguridad','indicador18','seguridad'),(90,'causa','indicador19','causa'),(91,'fenomeno','indicador19','fenomeno'),(92,'graves','indicador19','graves'),(93,'vulnerable','indicador19','vulnerable'),(94,'pregunta riesgo','indicador20','preguntariesgo'),(95,'riesgos','indicador20','riesgos');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6c9b5fd5d61cea5ec09723915dee614e','MGNlMmEzZTk4NTZjOGRkYTg5YzdiNjk2NDg3ZDJhYzM5NWI5MDNlNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-05-16 21:13:35'),('e1f1b5374ee1aba1ef2a6d7cbe69a008','MGNlMmEzZTk4NTZjOGRkYTg5YzdiNjk2NDg3ZDJhYzM5NWI5MDNlNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-05-16 21:27:24'),('7681662c17348d72d36d1c63091323bc','MmUwNjAwNTU2MzUxNjZiMDE1MzhhNWY3MDJlYTRlZGJjNTQ5MzY5MjqAAn1xAS4=\n','2011-06-20 18:59:21'),('686bee59057c08d3b9378447a12f8840','OWM3M2RhOTRhNTViOWZiNjMzNTJjNDZhOWU0YjExNTEyYjYxNDVlZTqAAn1xAShVBmR1ZW5pb3EC\nWAAAAABVCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMXEFVQxkZXBhcnRhbWVudG9xBk5V\nDG9yZ2FuaXphY2lvbnEHWA0AAABPcmdhbml6YWNpw7NucQhVBmFjdGl2b3EJiFUFc29jaW9xClgA\nAAAAVQVkZXNkZXELWAAAAABVCW11bmljaXBpb3EMTnUu\n','2011-06-20 23:42:17'),('7ac0983ea05de316231316b4881c60bb','YzYwZTRiNDk3MDg4YWE1Y2I1ZmQwMGE2MGEwNzNlNGIwNjc4NzRjMTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQ1fYXV0aF91c2VyX2lkigEBVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBh\ncnRhbWVudG9OVQxvcmdhbml6YWNpb25YAAAAAFUGYWN0aXZviFUFc29jaW9YAAAAAFUSX2F1dGhf\ndXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZFUF\nZGVzZGVYAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-22 08:28:26'),('5fea433dd6cc1df452ab3589919d9719','YzUwMGY4Y2VkNzVkZjk2Yjc3ZjE2MTczOGUyMGRkNTZhMzE5ZDg2ODqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVBmR1ZW5pb1gAAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBh\ncnRhbWVudG9jZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDY21vbml0b3Jl\nby5sdWdhci5tb2RlbHMKRGVwYXJ0YW1lbnRvCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2lt\ncGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUGbm9tYnJlcQhYCAAAAEppbm90ZWdhVQZfc3Rh\ndGVxCWNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxCimBcQt9cQwoVQZhZGRpbmdx\nDYlVAmRicQ5VB2RlZmF1bHRxD3ViVQJpZHEQigEKVQlleHRlbnNpb25xEWNkZWNpbWFsCkRlY2lt\nYWwKcRJVBzkyMjIuNDCFUnETVQRzbHVncRRYCAAAAGppbm90ZWdhdWJVDG9yZ2FuaXphY2lvblgC\nAAAAMTZxFVUGYWN0aXZviFUFZGVzZGVYAAAAAFUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28u\nY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZFUFc29jaW9YAAAAAFUJbXVuaWNpcGlv\naANjbW9uaXRvcmVvLmx1Z2FyLm1vZGVscwpNdW5pY2lwaW8KcRZdaAWHUnEXfXEYKFUHbGF0aXR1\nZHEZaBJVCDEzLjA5MTY1hVJxGmgRaBJVBDAuMDCFUnEbaAloCimBcRx9cR0oaA2JaA5oD3ViVQ9k\nZXBhcnRhbWVudG9faWRxHooBCmgQigILBGgIWAgAAABKaW5vdGVnYWgUWAgAAABqaW5vdGVnYVUI\nbG9uZ2l0dWRxH2gSVQktODYuMDAxMjGFUnEgdWJ1Lg==\n','2011-06-21 12:47:30'),('eecc41c6a362fd5d5bd0039140a9c058','ZjA5ZDZhMjZkNWNmYTI4NzZhOTQ1ZDQzNmFmNzgyOWE4N2YzNTBmYzqAAn1xAShVBmR1ZW5pb3EC\nWAAAAABVCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMXEFVQxkZXBhcnRhbWVudG9xBk5V\nBmFjdGl2b3EHiFUFZGVzZGVxCFgAAAAAVQVzb2Npb3EJWAAAAABVCW11bmljaXBpb3EKTnUu\n','2011-06-20 11:16:44'),('6635921c8f154293f887c858e4dca922','NjU1ZTdmYzcyMzk2YzZiODIxMmE2M2M1OTEzYmJlZGJmOGI1NGEyZDqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVBmR1ZW5pb1gAAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBh\ncnRhbWVudG9OVQxvcmdhbml6YWNpb25YAAAAAFUGYWN0aXZviFUFZGVzZGVYAAAAAFUSX2F1dGhf\ndXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZFUF\nc29jaW9YAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-21 17:59:34'),('07c23f87232e614b9108a5cb09e0c496','MDllZDYzYTJlNjEzMTBmOWYyNzgyNDM5MmU0MWJkMjE1YzYxZTkwZTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBhcnRhbWVudG9OVQxvcmdhbml6\nYWNpb25YAAAAAFUGYWN0aXZviFUFc29jaW9YAAAAAFUFZGVzZGVYAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-21 18:29:38'),('4c24eaa5a592058bb93f28948d7c6ea1','OTdmOGVlNDBlMDkxMzg5NjlkNjk1MTFlZjk1ZjIzMTA3ZjdmYTdiYTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBhcnRhbWVudG9jZGphbmdvLmRi\nLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDY21vbml0b3Jlby5sdWdhci5tb2RlbHMKRGVw\nYXJ0YW1lbnRvCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkK\ncQWHUnEGfXEHKFUGbm9tYnJlcQhYCgAAAENoaW5hbmRlZ2FVBl9zdGF0ZXEJY2RqYW5nby5kYi5t\nb2RlbHMuYmFzZQpNb2RlbFN0YXRlCnEKKYFxC31xDChVBmFkZGluZ3ENiVUCZGJxDlUHZGVmYXVs\ndHEPdWJVAmlkcRCKAR5VCWV4dGVuc2lvbnERY2RlY2ltYWwKRGVjaW1hbApxElUHNDgyMi40NoVS\ncRNVBHNsdWdxFFgKAAAAY2hpbmFuZGVnYXViVQxvcmdhbml6YWNpb25YAAAAAFUGYWN0aXZviFUF\nc29jaW9YAAAAAFUFZGVzZGVYAAAAAFUJbXVuaWNpcGlvaANjbW9uaXRvcmVvLmx1Z2FyLm1vZGVs\ncwpNdW5pY2lwaW8KcRVdaAWHUnEWfXEXKFUHbGF0aXR1ZHEYaBJVCDEyLjY2MjI4hVJxGWgRaBJV\nBDAuMDCFUnEaaAloCimBcRt9cRwoaA2JaA5oD3ViVQ9kZXBhcnRhbWVudG9faWRxHYoBHmgQigLR\nC2gIWAgAAABFbCBWaWVqb2gUWAgAAABFbC12aWVqb1UIbG9uZ2l0dWRxHmgSVQktODcuMTY1NDGF\nUnEfdWJ1Lg==\n','2011-06-21 18:35:32'),('38af25543716dc2bcae2fcfac397209f','MDBkMGNlYzdjMTMwYTc1ODNkNmMyNmE0ZTMyMDNmYjI5YmE2ODY5ODqAAn1xAShVBmR1ZW5pb3EC\nWAAAAABVCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMXEFVQxkZXBhcnRhbWVudG9xBmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQdjbW9uaXRvcmVvLmx1Z2FyLm1v\nZGVscwpEZXBhcnRhbWVudG8KcQhdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3Nf\nZmFjdG9yeQpxCYdScQp9cQsoVQZub21icmVxDFgIAAAASmlub3RlZ2FVBl9zdGF0ZXENY2RqYW5n\nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRlCnEOKYFxD31xEChVBmFkZGluZ3ERiVUCZGJxElUH\nZGVmYXVsdHETdWJVAmlkcRSKAQpVCWV4dGVuc2lvbnEVY2RlY2ltYWwKRGVjaW1hbApxFlUHOTIy\nMi40MIVScRdVBHNsdWdxGFgIAAAAamlub3RlZ2F1YlUMb3JnYW5pemFjaW9ucRlYAgAAADE2cRpV\nBmFjdGl2b3EbiFUFc29jaW9xHFgAAAAAVQVkZXNkZXEdWAAAAABVCW11bmljaXBpb3EeaAdjbW9u\naXRvcmVvLmx1Z2FyLm1vZGVscwpNdW5pY2lwaW8KcR9daAmHUnEgfXEhKFUHbGF0aXR1ZHEiaBZV\nCDEzLjA5MTY1hVJxI2gVaBZVBDAuMDCFUnEkaA1oDimBcSV9cSYoaBGJaBJoE3ViVQ9kZXBhcnRh\nbWVudG9faWRxJ4oBCmgUigILBGgMWAgAAABKaW5vdGVnYWgYWAgAAABqaW5vdGVnYVUIbG9uZ2l0\ndWRxKGgWVQktODYuMDAxMjGFUnEpdWJ1Lg==\n','2011-06-21 12:48:08'),('72fe084af0109f66518fb70dbdd1121e','N2ZkNDNlYTcwMDNmNTE5YjQ4ZDU0ZTJhNTkyOGY0YzgzY2QyYjNiZDqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQ1fYXV0aF91c2VyX2lkigECVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBh\ncnRhbWVudG9jZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDY21vbml0b3Jl\nby5sdWdhci5tb2RlbHMKRGVwYXJ0YW1lbnRvCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2lt\ncGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUGbm9tYnJlcQhYCQAAAE1hdGFnYWxwYVUGX3N0\nYXRlcQljZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcQopgXELfXEMKFUGYWRkaW5n\ncQ2JVQJkYnEOVQdkZWZhdWx0cQ91YlUCaWRxEIoBKFUJZXh0ZW5zaW9ucRFjZGVjaW1hbApEZWNp\nbWFsCnESVQc2ODAzLjg2hVJxE1UEc2x1Z3EUWAkAAABtYXRhZ2FscGF1YlUMb3JnYW5pemFjaW9u\nWAIAAAAxMXEVVQZhY3Rpdm+IVQVzb2Npb1gAAAAAVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5n\nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQVkZXNkZVgAAAAAVQltdW5pY2lw\naW9oA2Ntb25pdG9yZW8ubHVnYXIubW9kZWxzCk11bmljaXBpbwpxFl1oBYdScRd9cRgoVQdsYXRp\ndHVkcRloElUIMTIuOTI3MDmFUnEaaBFoElUEMC4wMIVScRtoCWgKKYFxHH1xHShoDYloDmgPdWJV\nD2RlcGFydGFtZW50b19pZHEeigEoaBCKAr4PaAhYCQAAAE1hdGFnYWxwYWgUWAkAAABtYXRhZ2Fs\ncGFVCGxvbmdpdHVkcR9oElUJLTg1LjkxNzQ3hVJxIHVidS4=\n','2011-06-21 11:48:04'),('e120c40c367c12e9df4445f2c8f8bc3b','MGNlMmEzZTk4NTZjOGRkYTg5YzdiNjk2NDg3ZDJhYzM5NWI5MDNlNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-06-21 11:42:58'),('d2c79128f66f4e9409e0b3462dc6fa1f','NDQ5YTk5OWM2Mzk4NTZlNTBmZWI4MTI0MDhmOWJmNGY5ZTc4MmVjMzqAAn1xAShVBmR1ZW5pb3EC\nWAAAAABVCWNvbXVuaWRhZHEDTlUFZmVjaGFxBFgEAAAAMjAxMXEFVQxkZXBhcnRhbWVudG9xBk5V\nDG9yZ2FuaXphY2lvbnEHWAAAAABVBmFjdGl2b3EIiFUFc29jaW9xCVgAAAAAVQVkZXNkZXEKWAAA\nAABVCW11bmljaXBpb3ELTnUu\n','2011-06-23 11:56:54'),('7b7c3a6393522effdc8e72b7bf0c1175','MGQ3YjBmZWFkZjIyZjcxZTM4ODc0NWQ5OGRkMmI5MDRlMTFmN2M5ODqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVBmR1ZW5pb1gAAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBh\ncnRhbWVudG9OVQxvcmdhbml6YWNpb25YAAAAAFUGYWN0aXZviFUFc29jaW9YAAAAAFUSX2F1dGhf\ndXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZFUF\nZGVzZGVYAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-22 17:56:48'),('95a399594f6640e5a8ad2092a43701dd','MDllZDYzYTJlNjEzMTBmOWYyNzgyNDM5MmU0MWJkMjE1YzYxZTkwZTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBhcnRhbWVudG9OVQxvcmdhbml6\nYWNpb25YAAAAAFUGYWN0aXZviFUFc29jaW9YAAAAAFUFZGVzZGVYAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-23 12:11:52'),('1cd53feb10364d88f1934ca8e5d833c6','ODQ2ZTJlNGM4ZDQyZDllNTZkNDc5NWU2MThmYmIwYjQ2NzhlYTE5YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2011-06-23 12:37:49'),('2ad691fb69e6aae4773f693f4fef41b6','MDllZDYzYTJlNjEzMTBmOWYyNzgyNDM5MmU0MWJkMjE1YzYxZTkwZTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBhcnRhbWVudG9OVQxvcmdhbml6\nYWNpb25YAAAAAFUGYWN0aXZviFUFc29jaW9YAAAAAFUFZGVzZGVYAAAAAFUJbXVuaWNpcGlvTnUu\n','2011-06-22 08:36:52'),('b9bb016dfeb21d12e54624da1042df51','M2VlYmNhY2VmYjcyNTFmMWMyZDViNTYwYTY2NWE5YWQwZWVhYmE3ZTqAAn1xAShVBmR1ZW5pb1gA\nAAAAVQljb211bmlkYWROVQVmZWNoYVgEAAAAMjAxMXECVQxkZXBhcnRhbWVudG9OVQxvcmdhbml6\nYWNpb25YDQAAAE9yZ2FuaXphY2nDs25xA1UGYWN0aXZviFUFc29jaW9YAAAAAFUFZGVzZGVYAAAA\nAFUJbXVuaWNpcGlvTnUu\n','2011-06-21 16:28:48'),('7cf97c34af82d2d18bb2fbb664fe2ce8','ODQ2ZTJlNGM4ZDQyZDllNTZkNDc5NWU2MThmYmIwYjQ2NzhlYTE5YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2011-06-21 17:59:18'),('77fc7da5ac1bec06394834d34c95b5d7','Zjc4OWE1MzhjZjZmY2U3MTZhMmJhYTgyMDgxNjVlMzkwNzVjMmIyMjqAAn1xAShVBmR1ZW5pb3EC\nWAAAAABVCWNvbXVuaWRhZHEDY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpx\nBGNtb25pdG9yZW8ubHVnYXIubW9kZWxzCkNvbXVuaWRhZApxBV1jZGphbmdvLmRiLm1vZGVscy5i\nYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnEGh1JxB31xCChVBm5vbWJyZXEJWAYAAABFbCBzb2xV\nBl9zdGF0ZXEKY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRlCnELKYFxDH1xDShVBmFk\nZGluZ3EOiVUCZGJxD1UHZGVmYXVsdHEQdWJVAmlkcRGKASFVDG11bmljaXBpb19pZHESigJvHXVi\nVQVmZWNoYXETWAQAAAAyMDExcRRVDGRlcGFydGFtZW50b3EVaARjbW9uaXRvcmVvLmx1Z2FyLm1v\nZGVscwpEZXBhcnRhbWVudG8KcRZdaAaHUnEXfXEYKGgJWAYAAABDYXJhem9oCmgLKYFxGX1xGiho\nDoloD2gQdWJoEYoBS1UJZXh0ZW5zaW9ucRtjZGVjaW1hbApEZWNpbWFsCnEcVQcxMDgxLjQwhVJx\nHVUEc2x1Z3EeWAYAAABjYXJhem91YlUMb3JnYW5pemFjaW9ucR9YAAAAAFUGYWN0aXZvcSCIVQVz\nb2Npb3EhWAAAAABVBWRlc2RlcSJYAAAAAFUJbXVuaWNpcGlvcSNoBGNtb25pdG9yZW8ubHVnYXIu\nbW9kZWxzCk11bmljaXBpbwpxJF1oBodScSV9cSYoVQdsYXRpdHVkcSdoHFUIMTEuODAyNzKFUnEo\naBtoHFUEMC4wMIVScSloCmgLKYFxKn1xKyhoDoloD2gQdWJVD2RlcGFydGFtZW50b19pZHEsigFL\naBGKAm8daAlYDAAAAFNhbnRhIFRlcmVzYWgeWAwAAABTYW50YS10ZXJlemFVCGxvbmdpdHVkcS1o\nHFUJLTg2LjE2MjgxhVJxLnVidS4=\n','2011-06-22 17:10:32');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_gpae_encuesta`
--

DROP TABLE IF EXISTS `grupo_gpae_encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_gpae_encuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `recolector_id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `cedula` varchar(200) DEFAULT NULL,
  `finca` varchar(200) NOT NULL,
  `comunidad_id` int(11) NOT NULL,
  `sexo` int(11) NOT NULL,
  `organizacion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_gpae_encuesta_9a9fcc10` (`recolector_id`),
  KEY `grupo_gpae_encuesta_62329ccf` (`comunidad_id`),
  KEY `grupo_gpae_encuesta_48753264` (`organizacion_id`),
  KEY `grupo_gpae_encuesta_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_gpae_encuesta`
--

LOCK TABLES `grupo_gpae_encuesta` WRITE;
/*!40000 ALTER TABLE `grupo_gpae_encuesta` DISABLE KEYS */;
INSERT INTO `grupo_gpae_encuesta` VALUES (1,'2011-05-01',1,'Lorenza Justina Flores','202-070148-0001A','El Guiscoyol',1,2,1,1),(2,'2011-05-01',1,'Mercedes de los Angeles Espinales Mora','044-060971-0004F','Mercedes de los Angeles Espinales Mora',2,2,1,1),(3,'2011-05-01',1,'Nohemy del Socorro Zeledón Alemán','202-150673-0005 T','El Guanacaste',3,2,1,1),(4,'2011-05-01',1,'Nelly del Socorro López','202-270771-0005W','Nelly del Socorr López',6,2,1,1),(5,'2011-05-01',1,'Lucía Besmilda Pérez','408-270650-0001N','El Regalo',5,2,1,1),(6,'2011-05-01',2,'Francisco Flores Solís','441-171257-0007H','Los 3 hermanos',7,1,2,1),(7,'2011-05-01',2,'María Reyna Garcia Hernández','452-100481-0001U','El Esfuerzo',7,2,3,1),(8,'2011-05-05',2,'Melania Elizabeth Rivas Gónzalez','452-300583-0006P','Las Laja',7,2,3,1),(9,'2011-05-17',3,'Isidoro Pérez Mendez','444-290779-0000B','Las Peñas',8,2,2,1),(10,'2011-05-18',3,'Miriam del Carmen Bermúdez Gutiérrez','003-180265-0000B','El Guanacaste',9,2,2,1),(11,'2011-05-17',3,'Agustín Aldana Martínez','0000-080468-0000U','El sauce',9,1,2,1),(12,'2011-05-01',3,'Carlos Mauricio Pérez','444-140178-000N','Santa Elena',10,1,3,1),(13,'2011-05-01',3,'Concepción Hernández','0000-021249-0011L','La Esperanza',11,1,2,1),(14,'2011-05-19',4,'Olga del Carmen Mendoza','446-230468-0001P','El Jardín',12,2,2,1),(15,'2011-05-18',4,'Dionisia López Mendoza','446-241180-0000V','La Palma',13,2,2,1),(16,'2011-05-19',5,'Thomás Zamora','441-211256-0004T','La Ceiba',13,1,2,1),(17,'2011-05-19',5,'Reyna Manferrer Orozco','446-050274-0000D','El Tesoro',12,2,2,1),(18,'2011-05-19',5,'Amparo García Dormuz','441-301047-0005H','Linda Vista',14,2,2,1),(19,'2011-05-25',6,'Blanca Nuvia López Escorcia','441-160472-0007W','Las rosas',7,2,3,1),(20,'2011-05-25',6,'Santos Plácida Martínez Obando','452-271177-0000X','El círculo',7,2,3,1),(21,'2011-05-01',7,'Juan Francisco Martínez','445-060563-0000S','El Regalito',15,1,3,1),(22,'2011-05-01',8,'Rosa Danelia Montoya','445-020985-0000Q','Las Mercedes',16,2,3,1),(23,'2011-05-01',8,'Justino Martínez López','445-060868-000K','La Plancha',15,1,3,1),(24,'2011-05-01',8,'Ramona del Carmen Mejía','364-070187-0001F','El Sacrificio',17,2,3,1),(25,'2011-05-01',8,'Erlinda González','445-160868-0000G','La Trenitaria',15,2,3,1),(26,'2011-05-01',9,'Manuel Gaitán González','441-170646-0000B','San José',18,1,11,1),(27,'2011-05-01',9,'Jaime García Montenegro','442-210857-0001B','Cruz Verde',18,1,11,1),(28,'2011-05-01',9,'Mercedes Gaitán Herrera','441-240967-0002T','La Pimienta',18,2,11,1),(29,'2011-05-01',10,'Victorino Gaitán','441-05361-0001U','El cacao',19,2,11,1),(30,'2011-05-01',11,'Dora Dilia López','441-020363-0001X','El Almendro',19,2,11,1),(33,'2011-05-01',12,'Rosa Sánchez','','Buena Vista',19,2,11,1),(32,'2011-05-01',11,'Amado López','441-130735-0002F','Consuelo',19,2,12,1),(34,'2011-05-01',10,'Pedro González','','San Luis ',18,1,11,2),(35,'2011-05-01',13,'Miriam Lisseth Falcón Guerrero','241-021282-0006G','El cacao',20,2,16,1),(36,'2011-05-01',14,'Margarito Hernández Alvarez','446-011177-0001 Q','El Nancite',21,1,14,2),(37,'2011-05-01',14,'Marlón Antonio Chavarria Luquez ','446-121187-0000G','Marlón Antonio Chavarria Luquez ',21,1,14,2),(38,'2011-05-01',14,'Francisca Valiente Barrera','446-171272-0002 H','Cuatro Esquina',21,2,14,2),(39,'2011-05-01',13,'Carlos Fidel Flores Arancibia','610-050690-0005G','El Milagro',22,1,16,1),(40,'2011-05-01',15,'Geovany Talavera Cruz','241-251185-0002H','Santa Martha',23,1,16,1),(41,'2011-05-01',14,'Braulio López Alvarez','446-140359-0000 L','El Chaguite',21,1,14,2),(42,'2011-05-01',14,'Lorenzo Cruz Flores','446-100879-0002 D','El Regalo',24,1,14,2),(43,'2011-05-01',16,'Gregorio López García','241-290953-0003D','El Higo',25,1,16,1),(44,'2011-05-01',14,'José Napoleón Valiente ','446-23757-0000 S','La Chiripa',26,1,14,2),(45,'2011-05-01',18,'Máximo Hernández García','','Progreso',27,1,16,1),(46,'2011-05-01',17,'Mirian del Carmen Montenegro','442-030867-0004 N','Cruz Verde ',18,2,11,2),(47,'2011-05-01',19,'Francisco Vidal Torrez','241-280455-0002G','Los quebrachos',27,1,16,1),(48,'2011-05-01',16,'José Adrián López Palacios','241-310759-0003M','El aguacate',25,1,16,1),(49,'2011-05-01',10,'Mario Gaytan','','Mario Gaytan',18,1,11,2),(50,'2011-05-01',21,'Jesús Torrez Duarte','241-020272-0003B','Linda Vista',28,1,16,1),(51,'2011-05-01',20,'Facunda Ohoa','446-271164-0000 P','La Chiripa',24,2,14,2),(52,'2011-05-01',22,'Pablo Absalón Chavarría López','441-030379-0001S','El mirador',25,1,16,1),(53,'2011-05-01',20,'Vicente Palacio Palacio ','446-210958-0000 Y','Los Alvarez',24,1,19,2),(54,'2011-05-01',23,'Francisco Úbeda Méndez','242-240740-0000P','El encanto',29,1,16,1),(55,'2011-05-01',14,'Arcadia Rodriguez Urbina','442-270457-0004 R','Miramar',21,2,14,2),(56,'2011-05-01',23,'Juan Ramón Herrera','244-030480-0000R','La chiripa',29,1,16,1),(57,'2011-05-01',14,'Luz Marina Orellana Flores','446-121172-0000 Q','El RODEO',24,2,14,2),(58,'2011-05-01',23,'Gustavo Úbeda Cruz','242-020970-0000R','La tejera',29,1,16,1),(59,'2011-05-01',25,'María Julia Méndez Gutiérrez','242-170858-00004','Peor es nada',29,1,16,1),(60,'2011-05-01',10,'Juana Antonia Rizo Orozco','441-120663-0009 G','La Zona Matapalo',18,2,18,2),(61,'2011-05-01',25,'Francisco Úbeda Cruz','242-220867-0001V','El salvador',29,1,16,1),(62,'2011-05-01',10,'David Gaytan','441-171072-0000 E','San Antonio ',19,1,18,2),(63,'2011-05-01',25,'Alfonso de Jesús Molina Herrera','244-270956-0000C','El jocote',29,1,16,1),(64,'2011-05-01',10,'Yeril Valle Valle','165-200175-0002P','Los mangos',30,1,16,1),(65,'2011-05-01',27,'Judin Enoc Reyes Picado','161-250684-0000M','Judin Enoc Reyes Picado',30,1,16,1),(66,'2011-05-01',27,'Lorenzo Rizo','448-140270-0001F','Los guineos',31,1,16,1),(67,'2011-05-01',24,'Rosario Hernández','','Las Maderas',19,2,18,2),(68,'2011-05-01',10,'Mario José Villagra Hernández','241-211178-0001L','El Tamarindo',32,1,16,1),(69,'2011-05-01',29,'Elva Leonor Mendoza Ordeñana','','Finca La Fé',33,2,20,1),(70,'2011-05-01',30,'Feliciana del Carmen López Delgado','044-290645-0001 T','El Almendro',34,2,20,1),(71,'2011-06-01',10,'Domingo Salomón Páramo Guido','044-110654-0001L','La Hacia',35,1,20,1);
/*!40000 ALTER TABLE `grupo_gpae_encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_gpae_organizaciones`
--

DROP TABLE IF EXISTS `grupo_gpae_organizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_gpae_organizaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `direccion` longtext,
  `correo_electronico` varchar(75) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_gpae_organizaciones_8865b15a` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_gpae_organizaciones`
--

LOCK TABLES `grupo_gpae_organizaciones` WRITE;
/*!40000 ALTER TABLE `grupo_gpae_organizaciones` DISABLE KEYS */;
INSERT INTO `grupo_gpae_organizaciones` VALUES (1,'Asociación Nochari',NULL,NULL,NULL,'','',70,'',''),(2,'ODESAR',NULL,NULL,NULL,'','',40,'',''),(3,'No contestó',NULL,NULL,NULL,'','',NULL,'',''),(4,'Reyna Isabel Granados Sánchez',NULL,NULL,NULL,'','',NULL,'',''),(5,'Santos Plácida Martínez Obando',NULL,NULL,NULL,'','',NULL,'',''),(6,'Juan Francisco Martínez',NULL,NULL,NULL,'','',NULL,'',''),(7,'Rosa Danelia Montoya',NULL,NULL,NULL,'','',NULL,'',''),(8,'Justino Martínez',NULL,NULL,NULL,'','',NULL,'',''),(9,'Celso Gómez',NULL,NULL,NULL,'','',NULL,'',''),(10,'Erlinda González',NULL,NULL,NULL,'','',NULL,'',''),(11,'FDEGL',NULL,NULL,NULL,'','',40,'',''),(12,'UCOS',NULL,NULL,NULL,'','',40,'',''),(13,'Miriam Lisseth Falcón Guerrero',NULL,NULL,NULL,'','',NULL,'',''),(14,'PCAC',NULL,NULL,NULL,'','',40,'',''),(15,'Carlos Fidel Flores Arancibia',NULL,NULL,NULL,'','',NULL,'',''),(16,'La Cuculmeca',NULL,NULL,NULL,'','',10,'',''),(18,'FUDEG',NULL,NULL,NULL,'','',NULL,'',''),(17,'LA CUCULMECA/ ENTRAIDE',NULL,NULL,NULL,'','',NULL,'',''),(19,'Vicente Palacio Palacio ',NULL,NULL,NULL,'','',NULL,'',''),(20,'Asociación Tierra y vida',NULL,NULL,NULL,'','',NULL,'','');
/*!40000 ALTER TABLE `grupo_gpae_organizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_gpae_recolector`
--

DROP TABLE IF EXISTS `grupo_gpae_recolector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_gpae_recolector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_gpae_recolector`
--

LOCK TABLES `grupo_gpae_recolector` WRITE;
/*!40000 ALTER TABLE `grupo_gpae_recolector` DISABLE KEYS */;
INSERT INTO `grupo_gpae_recolector` VALUES (1,'Ericka Rodríguez'),(2,'Saúl Antonio Martínez Martínez'),(3,'Orlando Umanzor'),(4,'Lorenza Muñoz Zamora'),(5,'Sergio Hernández Guillen'),(6,'Marlón José García'),(7,'Juliana Castro'),(8,'Ileana Castro '),(9,'Hilda Jarquín Jarquín'),(10,'Sin recolector'),(11,'Mercedes Torrez'),(12,'Perla Zeledón'),(13,'José Luis Martínez Manzanares'),(14,'Santo Angel Hernández Rodriguez'),(15,'José Jesús Zeledón López'),(16,'Jorge Luis López Herrera'),(17,'Erick David Barrera Mejia'),(18,'Fausto Castro Duarte'),(19,'Elphidia Duarte'),(20,'Denis José Rosales Vanega'),(21,'Arlen S. Castro'),(22,'Jorge L'),(23,'Donald Ramón Úbeda Pineda'),(24,'Mercedes'),(25,'Leyda Lastenia Úbeda Molina'),(26,'David Gaytan'),(27,'Francisco Meza'),(28,'Marlón Enrrique Herrera Cruz'),(29,'Gonzalo Arias Mendoza'),(30,'Reynerio Mongalo Jarquín'),(31,'Juan Carlos Mora Vargas');
/*!40000 ALTER TABLE `grupo_gpae_recolector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_gpae_tenencia`
--

DROP TABLE IF EXISTS `grupo_gpae_tenencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_gpae_tenencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parcela` int(11) NOT NULL,
  `solar` int(11) NOT NULL,
  `dueno` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_gpae_tenencia_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_gpae_tenencia`
--

LOCK TABLES `grupo_gpae_tenencia` WRITE;
/*!40000 ALTER TABLE `grupo_gpae_tenencia` DISABLE KEYS */;
INSERT INTO `grupo_gpae_tenencia` VALUES (1,6,6,3,1),(2,2,6,2,2),(3,4,4,2,3),(4,2,1,3,4),(5,1,1,1,5),(6,4,4,6,6),(7,4,4,1,7),(8,6,6,1,8),(9,3,3,2,9),(10,1,1,1,10),(11,1,1,3,11),(12,2,2,2,12),(13,2,2,2,13),(14,1,1,2,14),(15,6,1,2,15),(16,1,1,2,16),(17,1,1,2,17),(18,1,1,6,18),(19,1,1,2,19),(20,1,1,3,20),(21,4,4,1,21),(22,2,2,2,22),(23,4,4,1,23),(24,6,6,4,24),(25,3,3,3,25),(26,1,1,1,26),(27,2,2,1,27),(28,1,1,3,28),(29,2,2,6,29),(30,2,2,2,30),(31,2,2,1,32),(32,1,1,2,33),(33,1,1,3,34),(34,1,1,1,35),(35,1,1,1,36),(36,5,6,4,37),(37,1,1,2,38),(38,1,1,2,39),(39,1,2,1,41),(40,2,2,4,40),(41,2,2,6,42),(42,1,1,1,43),(43,2,2,1,44),(44,1,1,2,45),(45,2,2,2,46),(46,1,1,1,47),(47,2,2,6,48),(48,1,1,3,49),(49,2,1,4,50),(50,1,1,1,51),(51,2,2,2,52),(52,1,1,1,53),(53,1,1,1,54),(54,4,4,2,55),(55,1,1,1,56),(56,2,2,6,57),(57,1,1,2,58),(58,1,1,2,59),(59,1,6,1,60),(60,1,1,2,62),(61,1,1,1,61),(62,1,1,1,63),(63,1,1,4,64),(64,2,2,6,65),(65,1,1,1,66),(66,1,1,2,67),(67,1,3,1,68),(68,1,1,2,69),(69,2,2,2,70),(70,5,2,2,71);
/*!40000 ALTER TABLE `grupo_gpae_tenencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_agua`
--

DROP TABLE IF EXISTS `indicador01_agua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_agua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador01_agua_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_agua`
--

LOCK TABLES `indicador01_agua` WRITE;
/*!40000 ALTER TABLE `indicador01_agua` DISABLE KEYS */;
INSERT INTO `indicador01_agua` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(33,33),(32,32),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,41),(41,40),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71);
/*!40000 ALTER TABLE `indicador01_agua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_agua_disponible`
--

DROP TABLE IF EXISTS `indicador01_agua_disponible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_agua_disponible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agua_id` int(11) NOT NULL,
  `disponibilidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador01_agua_disponible_agua_id_7b39312812fb8923_uniq` (`agua_id`,`disponibilidad_id`),
  KEY `indicador01_agua_disponible_90bd79ea` (`agua_id`),
  KEY `indicador01_agua_disponible_c5390e13` (`disponibilidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_agua_disponible`
--

LOCK TABLES `indicador01_agua_disponible` WRITE;
/*!40000 ALTER TABLE `indicador01_agua_disponible` DISABLE KEYS */;
INSERT INTO `indicador01_agua_disponible` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,4),(5,5,4),(6,6,2),(7,7,1),(8,7,2),(9,8,1),(10,9,1),(11,10,2),(12,11,1),(13,12,1),(14,13,4),(15,14,1),(16,15,2),(17,16,1),(18,17,1),(19,18,1),(20,19,1),(21,20,2),(22,21,1),(23,22,1),(24,23,1),(25,23,2),(26,23,3),(27,23,4),(28,24,1),(29,25,2),(30,26,3),(31,27,2),(32,28,3),(33,29,2),(34,30,1),(37,33,3),(36,32,3),(38,34,3),(39,35,1),(40,36,1),(41,37,1),(42,38,2),(43,39,1),(44,40,2),(45,41,2),(46,42,1),(47,43,1),(48,44,1),(49,45,1),(50,46,2),(51,47,1),(52,48,1),(53,49,2),(54,50,2),(55,51,1),(56,52,1),(57,53,3),(58,54,1),(59,55,2),(60,56,1),(61,57,1),(62,58,1),(63,59,1),(64,60,1),(65,61,1),(66,62,3),(67,63,1),(68,64,1),(69,65,1),(70,66,1),(71,67,4),(72,68,1),(73,69,1),(74,70,1),(75,71,3);
/*!40000 ALTER TABLE `indicador01_agua_disponible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_agua_fuente`
--

DROP TABLE IF EXISTS `indicador01_agua_fuente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_agua_fuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agua_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador01_agua_fuente_agua_id_18f3a1d304a8fe7f_uniq` (`agua_id`,`fuente_id`),
  KEY `indicador01_agua_fuente_90bd79ea` (`agua_id`),
  KEY `indicador01_agua_fuente_7592e3f3` (`fuente_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_agua_fuente`
--

LOCK TABLES `indicador01_agua_fuente` WRITE;
/*!40000 ALTER TABLE `indicador01_agua_fuente` DISABLE KEYS */;
INSERT INTO `indicador01_agua_fuente` VALUES (1,1,5),(2,2,4),(3,3,5),(4,4,4),(5,5,4),(6,6,6),(7,7,6),(8,8,6),(9,9,2),(10,10,1),(11,10,6),(12,11,1),(13,11,2),(14,11,5),(15,11,6),(16,12,4),(17,12,7),(18,13,2),(19,13,3),(20,13,7),(21,14,6),(22,15,6),(23,16,7),(24,17,6),(25,18,6),(26,19,6),(27,20,6),(28,21,6),(29,22,6),(30,23,6),(31,24,3),(32,24,6),(33,25,6),(34,25,7),(35,26,6),(36,26,7),(37,27,4),(38,27,6),(39,27,7),(40,28,6),(41,29,2),(42,30,7),(45,33,7),(44,32,6),(46,34,5),(47,35,3),(48,36,2),(49,37,4),(50,38,4),(51,39,3),(52,39,6),(53,40,4),(54,41,6),(55,42,2),(56,43,5),(57,44,2),(58,45,5),(59,46,2),(60,46,6),(61,47,4),(62,48,4),(63,49,6),(64,50,1),(65,50,4),(66,51,2),(67,51,5),(68,52,2),(69,53,2),(70,53,3),(71,53,7),(72,54,6),(73,55,4),(74,56,6),(75,57,3),(76,58,6),(77,59,6),(78,60,2),(79,60,4),(80,61,6),(81,62,2),(82,62,6),(83,63,6),(84,64,1),(85,64,4),(86,65,1),(87,65,4),(88,66,4),(89,67,1),(90,67,7),(91,68,2),(92,68,3),(93,68,7),(94,69,5),(95,70,6),(96,71,6);
/*!40000 ALTER TABLE `indicador01_agua_fuente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_agua_trata`
--

DROP TABLE IF EXISTS `indicador01_agua_trata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_agua_trata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agua_id` int(11) NOT NULL,
  `tratamiento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador01_agua_trata_agua_id_30b1a83db07cf52d_uniq` (`agua_id`,`tratamiento_id`),
  KEY `indicador01_agua_trata_90bd79ea` (`agua_id`),
  KEY `indicador01_agua_trata_1bbf3ef3` (`tratamiento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_agua_trata`
--

LOCK TABLES `indicador01_agua_trata` WRITE;
/*!40000 ALTER TABLE `indicador01_agua_trata` DISABLE KEYS */;
INSERT INTO `indicador01_agua_trata` VALUES (1,1,4),(2,2,3),(3,3,4),(4,4,3),(5,5,3),(6,6,3),(7,7,1),(8,8,3),(9,9,3),(10,10,3),(11,11,1),(12,12,3),(13,12,4),(14,13,4),(15,14,1),(16,15,1),(17,16,3),(18,17,3),(19,18,3),(20,19,1),(21,20,1),(22,21,1),(23,22,4),(24,23,1),(25,24,1),(26,25,4),(27,26,1),(28,27,1),(29,28,1),(30,29,2),(31,30,1),(34,33,1),(33,32,3),(35,34,3),(36,34,4),(37,35,1),(38,36,3),(39,37,1),(40,38,1),(41,39,1),(42,40,1),(43,41,3),(44,42,1),(45,43,1),(46,44,1),(47,45,1),(48,46,4),(49,47,1),(50,48,1),(51,49,3),(52,50,1),(53,51,1),(54,52,1),(55,53,1),(56,54,3),(57,55,1),(58,56,3),(59,57,1),(60,58,3),(61,59,1),(62,60,3),(63,61,1),(64,62,3),(65,63,1),(66,64,1),(67,64,3),(68,65,3),(69,66,3),(70,67,1),(71,68,5),(72,69,1),(73,70,1),(74,71,1);
/*!40000 ALTER TABLE `indicador01_agua_trata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_agua_uso`
--

DROP TABLE IF EXISTS `indicador01_agua_uso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_agua_uso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agua_id` int(11) NOT NULL,
  `usoagua_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador01_agua_uso_agua_id_7a9ab9340bab0ae9_uniq` (`agua_id`,`usoagua_id`),
  KEY `indicador01_agua_uso_90bd79ea` (`agua_id`),
  KEY `indicador01_agua_uso_54fb09a2` (`usoagua_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_agua_uso`
--

LOCK TABLES `indicador01_agua_uso` WRITE;
/*!40000 ALTER TABLE `indicador01_agua_uso` DISABLE KEYS */;
INSERT INTO `indicador01_agua_uso` VALUES (1,1,1),(2,1,3),(3,2,3),(4,3,3),(5,4,3),(6,5,3),(7,6,3),(8,7,3),(9,8,3),(10,9,3),(11,9,4),(12,10,1),(13,11,1),(14,11,3),(15,12,3),(16,13,3),(17,14,3),(18,15,2),(19,15,3),(20,16,2),(21,16,3),(22,17,3),(23,18,3),(24,19,1),(25,19,2),(26,19,3),(27,20,1),(28,20,2),(29,20,3),(30,21,1),(31,21,3),(32,22,1),(33,22,3),(34,23,1),(35,23,3),(36,23,4),(37,24,1),(38,24,3),(39,24,4),(40,25,1),(41,25,3),(42,26,3),(43,27,2),(44,27,3),(45,28,2),(46,28,3),(47,29,3),(48,30,3),(54,34,3),(53,33,3),(51,32,2),(52,32,3),(55,35,1),(56,35,3),(57,36,3),(58,37,3),(59,38,3),(60,39,3),(61,40,3),(62,41,3),(63,42,3),(64,43,3),(65,44,3),(66,45,3),(67,46,3),(68,47,3),(69,48,3),(70,49,3),(71,50,1),(72,50,3),(73,51,3),(74,52,2),(75,52,3),(76,52,4),(77,53,3),(78,54,3),(79,55,3),(80,56,3),(81,57,3),(82,57,4),(83,58,5),(84,59,3),(85,60,3),(86,61,3),(87,62,3),(88,63,3),(89,64,1),(90,64,3),(91,65,1),(92,65,3),(93,65,4),(94,66,3),(95,67,3),(96,67,4),(97,68,3),(98,69,3),(99,70,1),(100,70,3),(101,70,4),(102,71,3);
/*!40000 ALTER TABLE `indicador01_agua_uso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_cocina`
--

DROP TABLE IF EXISTS `indicador01_cocina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_cocina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador01_cocina_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_cocina`
--

LOCK TABLES `indicador01_cocina` WRITE;
/*!40000 ALTER TABLE `indicador01_cocina` DISABLE KEYS */;
INSERT INTO `indicador01_cocina` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(33,33),(32,32),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71);
/*!40000 ALTER TABLE `indicador01_cocina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_cocina_utiliza`
--

DROP TABLE IF EXISTS `indicador01_cocina_utiliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_cocina_utiliza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cocina_id` int(11) NOT NULL,
  `tipococina_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador01_cocina_utiliza_cocina_id_ff35a088701bc29_uniq` (`cocina_id`,`tipococina_id`),
  KEY `indicador01_cocina_utiliza_2f8ff5bf` (`cocina_id`),
  KEY `indicador01_cocina_utiliza_9d13e24d` (`tipococina_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_cocina_utiliza`
--

LOCK TABLES `indicador01_cocina_utiliza` WRITE;
/*!40000 ALTER TABLE `indicador01_cocina_utiliza` DISABLE KEYS */;
INSERT INTO `indicador01_cocina_utiliza` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,1),(26,25,2),(27,26,2),(28,27,2),(29,28,1),(30,29,2),(31,30,2),(34,33,2),(33,32,2),(35,34,1),(36,35,2),(37,36,2),(38,37,2),(39,38,2),(40,39,2),(41,40,2),(42,41,2),(43,42,2),(44,43,2),(45,44,2),(46,45,2),(47,46,2),(48,47,2),(49,48,2),(50,49,1),(51,49,2),(52,50,2),(53,51,2),(54,52,2),(55,53,2),(56,54,2),(57,55,2),(58,56,2),(59,57,2),(60,58,2),(61,59,2),(62,60,2),(63,61,2),(64,62,2),(65,63,2),(66,64,2),(67,65,2),(68,66,2),(69,67,2),(70,68,2),(71,69,1),(72,69,2),(73,70,2),(74,71,2);
/*!40000 ALTER TABLE `indicador01_cocina_utiliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_disponibilidad`
--

DROP TABLE IF EXISTS `indicador01_disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_disponibilidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_disponibilidad`
--

LOCK TABLES `indicador01_disponibilidad` WRITE;
/*!40000 ALTER TABLE `indicador01_disponibilidad` DISABLE KEYS */;
INSERT INTO `indicador01_disponibilidad` VALUES (1,'Todos los dias y todas las horas'),(2,'Todos los dias algunas horas'),(3,'Algunos dias algunas horas'),(4,'No confiable');
/*!40000 ALTER TABLE `indicador01_disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_educacion`
--

DROP TABLE IF EXISTS `indicador01_educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_educacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `no_leer` int(11) NOT NULL,
  `p_incompleta` int(11) NOT NULL,
  `p_completa` int(11) NOT NULL,
  `s_incompleta` int(11) NOT NULL,
  `bachiller` int(11) NOT NULL,
  `universitario` int(11) NOT NULL,
  `f_comunidad` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador01_educacion_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_educacion`
--

LOCK TABLES `indicador01_educacion` WRITE;
/*!40000 ALTER TABLE `indicador01_educacion` DISABLE KEYS */;
INSERT INTO `indicador01_educacion` VALUES (1,1,1,0,1,0,0,0,0,0,1),(2,2,1,0,1,0,0,0,0,0,1),(3,3,1,0,0,0,0,1,0,0,1),(4,1,1,0,1,0,0,0,0,0,2),(5,2,1,0,0,1,0,0,0,0,2),(6,5,2,0,1,0,1,0,0,0,2),(7,6,1,1,0,0,0,0,0,0,2),(8,1,1,0,0,0,1,0,0,0,3),(9,2,1,0,1,0,0,0,0,0,3),(10,4,1,0,0,0,1,0,0,0,3),(11,5,2,0,2,0,0,0,0,0,3),(12,1,1,0,0,1,0,0,0,0,4),(13,2,1,0,0,0,1,0,0,0,4),(14,4,2,0,1,0,0,0,0,0,4),(15,5,1,0,0,0,1,0,0,0,4),(16,6,1,1,0,0,0,0,0,0,4),(17,1,1,0,1,0,0,0,0,0,5),(18,2,2,0,1,1,0,0,0,0,5),(19,4,1,0,0,1,0,0,0,0,5),(20,5,1,0,1,0,0,0,0,0,5),(21,1,3,0,0,1,1,0,1,0,6),(22,2,1,0,0,0,1,0,0,0,6),(23,3,2,0,0,0,2,0,0,0,6),(24,4,1,0,1,0,0,0,0,0,6),(25,5,1,0,1,0,0,0,0,0,6),(26,6,1,0,0,0,0,0,0,0,6),(27,1,1,0,1,0,0,0,0,0,7),(28,2,1,0,1,0,0,0,0,0,7),(29,3,1,0,0,0,1,0,0,0,7),(30,4,1,0,1,0,0,0,0,0,7),(31,7,1,0,0,0,0,0,0,0,7),(32,1,1,0,1,0,0,0,0,0,8),(33,3,1,0,1,0,0,0,0,0,8),(34,5,1,0,1,0,0,0,0,0,8),(35,6,1,0,0,0,0,0,0,0,8),(36,1,1,1,0,0,0,0,0,0,9),(37,2,3,1,0,0,0,0,0,0,9),(38,3,2,1,0,0,1,0,0,0,9),(39,5,1,0,1,0,0,0,0,0,9),(40,6,1,0,0,0,0,0,0,0,9),(41,1,2,1,1,0,0,0,0,0,10),(42,2,1,0,1,0,0,0,0,0,10),(43,3,1,0,0,0,0,0,0,0,10),(44,4,1,0,0,0,1,0,0,0,10),(45,5,1,0,0,0,1,0,0,0,10),(46,1,1,0,0,1,0,0,0,0,11),(47,2,1,0,1,0,0,0,0,0,11),(48,4,2,0,1,0,1,0,0,0,11),(49,5,2,0,0,0,1,0,0,0,11),(50,6,2,0,0,0,0,0,0,0,11),(51,7,1,0,0,0,0,0,0,0,11),(52,1,1,0,1,0,0,0,0,0,12),(53,3,1,0,1,0,0,0,0,0,12),(54,5,1,0,1,0,0,0,0,0,12),(55,6,1,0,0,0,0,0,0,0,12),(56,1,1,0,1,0,0,0,0,0,13),(57,2,1,0,1,0,0,0,0,0,13),(58,3,4,0,1,0,0,1,2,0,13),(59,5,1,0,0,0,1,0,0,0,13),(60,1,1,0,1,0,0,0,0,0,14),(61,2,1,0,0,1,0,0,0,0,14),(62,3,1,0,0,0,0,1,0,0,14),(63,4,1,0,1,0,0,0,0,0,14),(64,5,1,0,0,0,1,0,0,0,14),(65,1,2,2,0,0,0,0,0,0,15),(66,2,2,1,1,0,0,0,0,0,15),(67,4,2,0,2,0,0,0,0,0,15),(68,5,2,0,2,0,0,0,0,0,15),(69,7,1,1,0,0,0,0,0,0,15),(70,1,1,0,0,1,0,0,0,0,16),(71,2,1,1,0,0,0,0,0,0,16),(72,3,5,0,1,0,0,0,0,0,16),(73,7,1,0,0,0,0,0,0,0,16),(74,1,1,0,1,0,0,0,0,0,17),(75,2,1,0,1,0,0,0,0,0,17),(76,3,1,0,0,2,0,0,0,0,17),(77,4,2,0,2,0,0,0,0,0,17),(78,5,2,0,2,0,0,0,0,0,17),(79,6,1,0,0,0,0,0,0,0,17),(80,2,1,0,1,0,0,0,0,0,18),(81,1,1,1,0,0,0,0,0,0,19),(82,2,1,0,0,0,1,0,0,0,19),(83,5,1,0,1,0,0,0,0,0,19),(84,6,1,1,0,0,0,0,0,0,19),(85,7,1,1,0,0,0,0,0,0,19),(86,1,1,0,1,0,0,0,0,0,20),(87,2,1,0,1,0,0,0,0,0,20),(88,5,3,0,3,0,0,0,0,0,20),(89,6,1,0,0,0,0,0,0,0,20),(90,1,1,1,0,0,0,0,0,0,21),(91,2,1,0,1,0,0,0,0,0,21),(92,3,1,0,1,0,0,0,0,0,21),(93,3,2,0,0,0,0,1,1,0,22),(94,6,1,0,0,0,0,0,0,0,22),(95,1,1,0,1,0,0,0,0,0,23),(96,2,1,0,0,1,0,0,0,0,23),(97,1,2,0,1,0,0,0,0,0,24),(98,3,1,0,0,0,1,0,0,0,24),(99,7,1,0,0,0,0,0,0,0,24),(100,1,1,0,1,0,0,0,0,0,25),(101,2,1,0,1,0,0,0,0,0,25),(102,3,1,0,0,0,1,0,0,0,25),(103,4,1,0,0,0,0,0,0,0,25),(104,5,1,0,0,0,0,0,0,0,25),(105,1,2,0,1,1,0,0,0,0,26),(106,2,1,1,0,0,0,0,0,0,26),(107,3,3,0,0,2,0,1,0,0,26),(108,1,1,0,0,1,0,0,0,0,27),(109,4,1,0,0,1,0,0,0,0,27),(110,1,1,0,0,1,0,0,0,0,28),(111,2,1,1,0,0,0,0,0,0,28),(112,3,2,0,0,0,1,0,0,1,28),(113,5,1,0,0,0,0,0,0,1,28),(114,1,1,1,0,0,0,0,0,0,29),(115,2,2,0,0,0,0,0,2,0,29),(116,3,1,0,0,0,0,0,1,0,29),(117,4,1,0,0,0,0,0,0,0,29),(118,6,2,2,0,0,0,0,0,0,29),(119,1,1,0,0,0,1,0,0,0,30),(120,2,3,0,0,1,1,0,0,1,30),(121,6,1,1,0,0,0,0,0,0,30),(133,4,2,0,1,1,0,0,0,0,33),(132,3,1,0,0,0,1,0,0,0,33),(131,2,2,0,1,0,1,0,0,0,33),(130,1,2,0,1,1,0,0,0,0,33),(126,1,2,0,1,0,1,0,0,0,32),(127,2,1,0,0,0,1,0,0,0,32),(128,5,1,0,1,0,0,0,0,0,32),(129,6,2,2,0,0,0,0,0,0,32),(134,5,1,1,0,0,0,0,0,0,33),(135,1,1,1,0,0,0,0,0,0,35),(136,2,2,1,1,0,0,0,0,0,35),(137,3,2,0,0,1,1,0,0,0,35),(138,4,1,0,1,0,0,0,0,0,35),(139,5,2,0,1,1,0,0,0,0,35),(140,6,2,2,0,0,0,0,0,0,35),(141,1,1,1,0,0,0,0,0,0,36),(142,2,1,0,1,0,0,0,0,0,36),(143,4,1,0,0,1,0,0,0,0,36),(144,5,1,0,0,1,0,0,0,0,36),(145,6,1,1,0,0,0,0,0,0,36),(146,1,2,2,1,1,0,0,0,0,37),(147,1,1,1,0,0,0,0,0,0,38),(148,2,1,0,1,1,0,0,2,0,38),(149,4,1,0,1,0,1,0,0,0,38),(150,5,2,0,1,0,1,0,0,0,38),(151,2,1,0,1,0,0,0,0,0,39),(152,3,4,0,0,0,3,1,0,0,39),(153,4,3,0,2,1,0,0,0,0,39),(154,5,2,0,2,0,0,0,0,0,39),(155,3,2,0,0,0,2,0,0,0,40),(156,6,1,1,0,0,0,0,0,0,40),(157,7,1,1,0,0,0,0,0,0,40),(158,1,1,0,1,0,0,0,0,0,41),(159,2,2,1,0,0,0,1,0,0,41),(160,3,2,0,1,0,1,0,0,0,41),(161,4,2,0,1,0,1,0,0,0,41),(162,6,1,0,1,0,0,0,0,0,41),(163,7,1,0,1,0,0,0,0,0,41),(164,1,1,0,1,0,0,0,0,0,42),(165,7,1,0,1,0,0,0,0,0,42),(166,1,1,0,1,0,0,0,0,0,43),(167,2,1,0,1,0,0,0,0,0,43),(168,3,1,0,0,0,1,0,0,0,43),(169,4,1,0,0,1,0,0,0,0,43),(170,5,2,0,0,1,1,0,0,0,43),(171,2,1,1,0,0,0,0,0,0,44),(172,4,2,0,2,0,0,0,0,0,44),(173,3,1,0,0,0,0,1,0,0,45),(174,2,2,1,0,0,1,0,0,0,46),(175,3,1,0,0,0,0,0,1,0,46),(176,1,1,0,1,0,0,0,0,0,47),(177,2,1,1,0,0,0,0,0,0,47),(178,3,2,0,2,0,0,0,0,0,47),(179,6,1,1,0,0,0,0,0,0,47),(180,7,1,1,0,0,0,0,0,0,47),(181,1,1,0,1,0,0,0,0,0,48),(182,2,1,1,0,0,0,0,0,0,48),(183,6,2,2,0,0,0,0,0,0,48),(184,1,1,0,0,0,1,0,0,0,49),(185,2,1,0,0,1,0,0,0,0,49),(186,4,1,0,0,0,0,1,0,0,49),(187,1,1,0,0,1,0,0,0,0,50),(188,2,1,0,1,0,0,0,0,0,50),(189,4,2,0,1,1,0,0,0,0,50),(190,6,1,1,0,0,0,0,0,0,50),(191,1,1,0,1,0,0,0,0,0,51),(192,2,1,0,1,0,0,0,0,0,51),(193,4,2,0,2,0,0,0,0,0,51),(194,5,1,1,0,0,0,0,0,0,51),(195,1,1,0,1,0,0,0,0,0,52),(196,3,1,0,1,0,0,0,0,0,52),(197,6,1,1,0,0,0,0,0,0,52),(198,7,1,1,0,0,0,0,0,0,52),(199,1,2,0,2,0,0,0,0,0,53),(200,2,1,0,1,0,0,0,0,0,53),(201,3,1,1,1,0,0,0,0,0,53),(202,1,1,0,1,0,0,0,0,0,54),(203,2,1,1,0,0,0,0,0,0,54),(204,3,3,1,0,0,1,0,1,0,54),(205,1,1,1,0,0,0,0,0,0,55),(206,2,1,1,0,0,0,0,0,0,55),(207,3,3,0,1,1,0,0,1,0,55),(208,4,1,0,1,0,0,0,0,0,55),(209,5,2,0,2,0,0,0,0,0,55),(210,6,1,0,1,0,0,0,0,0,55),(211,1,1,0,0,0,0,1,0,0,56),(212,2,1,0,0,1,0,0,0,0,56),(213,6,1,1,0,0,0,0,0,0,56),(214,2,1,0,0,0,1,0,0,0,57),(215,3,1,0,0,0,1,0,0,0,57),(216,4,1,0,0,0,1,0,0,0,57),(217,5,2,0,0,0,1,1,0,0,57),(218,1,1,0,1,0,1,0,0,0,58),(219,2,1,0,0,0,1,0,0,0,58),(220,4,2,0,1,0,1,0,0,0,58),(221,1,1,0,1,0,0,0,0,0,59),(222,1,2,0,0,1,0,0,1,0,59),(223,1,2,1,0,1,0,0,0,0,61),(224,2,1,0,1,0,0,0,0,0,61),(225,3,4,0,0,0,1,0,3,0,61),(226,4,1,0,1,0,0,0,0,0,61),(227,5,1,0,0,0,1,0,0,0,61),(228,7,1,1,0,0,0,0,0,0,61),(229,1,1,1,0,0,0,0,0,0,63),(230,2,1,0,0,1,0,0,0,0,63),(231,3,2,0,0,1,1,0,0,0,63),(232,5,1,0,0,0,1,0,0,0,63),(233,6,1,1,0,0,0,0,0,0,63),(234,1,1,0,1,0,0,0,0,0,64),(235,2,1,0,1,0,0,0,0,0,64),(236,5,1,0,0,1,0,0,0,0,64),(237,6,1,0,1,0,0,0,0,0,64),(238,3,1,0,0,0,0,0,1,0,65),(239,5,1,0,0,0,0,0,1,0,65),(240,1,1,1,0,0,0,0,0,0,66),(241,2,1,1,0,0,0,0,0,0,66),(242,4,1,0,1,0,0,0,0,0,66),(243,5,1,0,1,0,0,0,0,0,66),(244,1,5,1,2,1,1,0,0,0,67),(245,2,1,0,1,0,0,0,0,0,67),(246,3,1,0,1,0,0,0,0,0,67),(247,1,1,1,0,0,0,0,0,0,68),(248,2,1,0,1,0,0,0,0,0,68),(249,4,2,2,0,0,0,0,0,0,68),(250,6,1,1,0,0,0,0,0,0,68),(251,7,1,1,0,0,0,0,0,0,68),(252,1,1,0,0,0,1,0,0,0,69),(253,2,1,0,1,0,0,0,0,0,69),(254,3,3,0,0,0,3,0,0,0,69),(255,1,3,1,1,0,0,1,0,1,70),(256,2,1,0,1,1,0,0,0,0,70),(257,1,1,0,0,0,1,0,0,0,71),(258,2,1,0,0,1,0,0,0,0,71),(259,3,2,0,0,0,0,0,2,0,71);
/*!40000 ALTER TABLE `indicador01_educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_energia`
--

DROP TABLE IF EXISTS `indicador01_energia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_energia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador01_energia_37c55af2` (`pregunta_id`),
  KEY `indicador01_energia_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_energia`
--

LOCK TABLES `indicador01_energia` WRITE;
/*!40000 ALTER TABLE `indicador01_energia` DISABLE KEYS */;
INSERT INTO `indicador01_energia` VALUES (1,1,1,1),(2,2,2,1),(3,3,2,1),(4,4,2,1),(5,5,1,1),(6,1,1,2),(7,2,2,2),(8,3,2,2),(9,4,2,2),(10,5,2,2),(11,1,2,3),(12,2,2,3),(13,3,2,3),(14,4,2,3),(15,5,1,3),(16,1,1,4),(17,2,1,4),(18,3,2,4),(19,4,2,4),(20,5,2,4),(21,1,1,5),(22,2,1,5),(23,3,2,5),(24,4,2,5),(25,5,1,5),(26,1,1,6),(27,2,1,6),(28,3,2,6),(29,4,2,6),(30,1,1,7),(31,2,1,7),(32,3,2,7),(33,4,2,7),(34,5,2,7),(35,1,1,8),(36,2,1,8),(37,3,2,8),(38,4,2,8),(39,5,2,8),(40,1,2,9),(41,2,2,9),(42,3,2,9),(43,4,2,9),(44,5,1,9),(45,1,1,10),(46,2,2,10),(47,3,2,10),(48,4,2,10),(49,5,2,10),(50,1,1,11),(51,2,2,11),(52,3,2,11),(53,4,2,11),(54,5,1,11),(55,1,2,12),(56,2,2,12),(57,3,2,12),(58,4,2,12),(59,5,1,12),(60,1,2,13),(61,2,2,13),(62,3,2,13),(63,4,2,13),(64,5,1,13),(65,1,2,14),(66,2,2,14),(67,3,2,14),(68,4,2,14),(69,5,2,14),(70,1,1,15),(71,2,2,15),(72,3,2,15),(73,4,2,15),(74,5,2,15),(75,1,1,16),(76,2,1,16),(77,3,2,16),(78,4,2,16),(79,5,2,16),(80,1,1,17),(81,2,2,17),(82,3,2,17),(83,4,2,17),(84,5,2,17),(85,1,1,18),(86,2,1,18),(87,3,2,18),(88,4,2,18),(89,5,2,18),(90,1,1,19),(91,2,1,19),(92,3,2,19),(93,4,2,19),(94,5,2,19),(95,1,1,20),(96,2,1,20),(97,3,2,20),(98,4,2,20),(99,5,2,20),(100,1,1,21),(101,2,2,21),(102,3,2,21),(103,4,2,21),(104,5,2,21),(105,1,1,22),(106,2,2,22),(107,3,2,22),(108,4,2,22),(109,5,2,22),(110,1,1,23),(111,2,2,23),(112,3,2,23),(113,4,2,23),(114,5,2,23),(115,1,1,24),(116,2,2,24),(117,3,2,24),(118,4,2,24),(119,5,2,24),(120,1,1,25),(121,2,1,25),(122,3,2,25),(123,4,2,25),(124,5,2,25),(125,1,1,26),(126,2,2,26),(127,3,2,26),(128,4,2,26),(129,5,2,26),(130,1,1,27),(131,2,2,27),(132,3,2,27),(133,4,2,27),(134,5,2,27),(135,1,1,28),(136,2,2,28),(137,3,2,28),(138,4,2,28),(139,5,2,28),(140,1,1,29),(141,2,2,29),(142,3,2,29),(143,4,2,29),(144,5,2,29),(145,1,2,30),(146,2,2,30),(147,3,2,30),(148,4,2,30),(149,5,2,30),(164,5,2,33),(163,4,2,33),(162,3,2,33),(161,2,1,33),(160,1,1,33),(155,1,1,32),(156,2,2,32),(157,3,2,32),(158,4,2,32),(159,5,2,32),(165,1,1,34),(166,2,2,34),(167,3,2,34),(168,4,2,34),(169,5,2,34),(170,1,2,35),(171,2,2,35),(172,3,1,35),(173,4,2,35),(174,5,2,35),(175,1,2,36),(176,2,2,36),(177,3,2,36),(178,4,1,36),(179,1,2,37),(180,2,2,37),(181,3,2,37),(182,4,1,37),(183,1,2,38),(184,2,2,38),(185,3,2,38),(186,4,2,38),(187,5,1,38),(188,1,2,39),(189,2,2,39),(190,3,2,39),(191,4,2,39),(192,5,2,39),(193,1,1,40),(194,2,1,40),(195,3,2,40),(196,4,2,40),(197,5,2,40),(198,1,2,41),(199,2,2,41),(200,3,2,41),(201,4,2,41),(202,5,2,41),(203,1,2,42),(204,3,2,42),(205,3,2,42),(206,5,1,42),(207,1,2,43),(208,2,2,43),(209,3,2,43),(210,4,2,43),(211,5,1,43),(212,1,2,44),(213,2,2,44),(214,3,2,44),(215,4,2,44),(216,5,2,44),(217,1,2,45),(218,2,2,45),(219,3,2,45),(220,4,2,45),(221,5,2,45),(222,1,1,46),(223,2,2,46),(224,1,1,47),(225,2,1,47),(226,2,2,47),(227,4,2,47),(228,5,2,47),(229,1,2,48),(230,2,2,48),(231,3,2,48),(232,4,2,48),(233,5,1,48),(234,1,1,49),(235,2,2,49),(236,3,2,49),(237,4,2,49),(238,5,2,49),(239,1,2,50),(240,2,2,50),(241,3,1,50),(242,4,2,50),(243,5,2,50),(244,3,1,51),(245,1,2,52),(246,2,2,52),(247,3,2,52),(248,4,2,52),(249,5,2,52),(250,5,1,53),(251,1,1,54),(252,2,1,54),(253,3,2,54),(254,4,2,54),(255,5,2,54),(256,1,1,56),(257,2,1,56),(258,3,2,56),(259,4,2,56),(260,5,2,56),(261,3,1,57),(262,5,1,57),(263,1,1,58),(264,2,1,58),(265,3,2,58),(266,4,2,58),(267,5,2,58),(268,1,1,59),(269,2,1,59),(270,3,2,59),(271,4,2,59),(272,5,2,59),(273,1,1,61),(274,2,1,61),(275,3,2,61),(276,4,2,61),(277,5,2,61),(278,1,1,62),(279,1,1,63),(280,2,1,63),(281,3,2,63),(282,4,2,63),(283,5,2,63),(284,2,2,64),(285,3,1,64),(286,4,2,64),(287,1,2,65),(288,5,1,65),(289,1,2,66),(290,5,1,66),(291,1,2,68),(292,2,2,68),(293,3,2,68),(294,4,2,68),(295,5,1,68),(296,1,1,69),(297,2,1,69),(298,3,2,69),(299,4,2,69),(300,5,2,69),(301,1,1,70),(302,2,2,70),(303,3,2,70),(304,4,2,70),(305,5,2,70),(306,1,1,71),(307,2,1,71);
/*!40000 ALTER TABLE `indicador01_energia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_fuente`
--

DROP TABLE IF EXISTS `indicador01_fuente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_fuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_fuente`
--

LOCK TABLES `indicador01_fuente` WRITE;
/*!40000 ALTER TABLE `indicador01_fuente` DISABLE KEYS */;
INSERT INTO `indicador01_fuente` VALUES (1,'Río'),(2,'Ojo de agua'),(3,'Quebrada'),(4,'Pozo comunitario'),(5,'Pozo propio'),(6,'Agua entubada'),(7,'Agua de lluvia');
/*!40000 ALTER TABLE `indicador01_fuente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_preguntaenergia`
--

DROP TABLE IF EXISTS `indicador01_preguntaenergia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_preguntaenergia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_preguntaenergia`
--

LOCK TABLES `indicador01_preguntaenergia` WRITE;
/*!40000 ALTER TABLE `indicador01_preguntaenergia` DISABLE KEYS */;
INSERT INTO `indicador01_preguntaenergia` VALUES (1,'¿Tiene luz eléctrica?'),(2,'¿Tiene medidor de luz?'),(3,'¿Tiene panel solar?'),(4,'¿Tiene planta eléctrica?'),(5,'¿Usa lámpara kerosene?');
/*!40000 ALTER TABLE `indicador01_preguntaenergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_salud`
--

DROP TABLE IF EXISTS `indicador01_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_salud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` int(11) NOT NULL,
  `b_salud` int(11) NOT NULL,
  `s_delicada` int(11) NOT NULL,
  `e_cronica` int(11) NOT NULL,
  `v_centro` int(11) NOT NULL,
  `v_medico` int(11) NOT NULL,
  `v_naturista` int(11) NOT NULL,
  `automedica` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador01_salud_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_salud`
--

LOCK TABLES `indicador01_salud` WRITE;
/*!40000 ALTER TABLE `indicador01_salud` DISABLE KEYS */;
INSERT INTO `indicador01_salud` VALUES (1,1,1,0,0,1,2,2,2,1),(2,2,1,0,0,1,2,2,2,1),(3,3,1,0,0,1,2,2,2,1),(4,1,1,0,0,3,1,3,3,2),(5,2,1,0,0,1,3,3,3,2),(6,4,2,0,0,1,3,3,3,2),(7,6,1,0,0,1,3,3,3,2),(8,1,1,0,0,1,3,3,3,3),(9,2,1,0,0,1,3,3,3,3),(10,4,1,0,0,1,3,3,3,3),(11,5,2,0,0,1,3,3,3,3),(12,1,1,0,0,1,3,3,3,4),(13,2,1,0,0,1,2,2,2,4),(14,4,2,0,0,1,2,2,2,4),(15,5,1,0,0,1,2,2,2,4),(16,6,1,0,0,1,2,2,2,4),(17,1,1,0,0,1,2,2,2,5),(18,2,2,0,0,1,2,2,2,5),(19,4,1,0,0,1,2,2,2,5),(20,5,1,0,0,1,2,2,2,5),(21,1,1,0,0,3,3,1,1,9),(22,2,3,1,0,1,3,1,3,9),(23,3,2,0,0,3,3,3,3,9),(24,5,1,0,0,1,3,1,3,9),(25,6,1,0,0,1,3,1,3,9),(26,1,1,0,1,3,3,3,3,10),(27,1,1,0,1,3,3,3,1,12),(28,3,1,0,0,3,3,3,3,12),(29,5,1,0,0,1,3,3,3,12),(30,6,1,0,0,1,3,3,3,12),(31,1,0,1,0,3,3,3,1,14),(32,2,0,1,0,3,3,3,1,14),(33,3,1,0,0,3,3,3,1,14),(34,4,1,0,0,3,3,3,1,14),(35,5,1,0,0,3,3,3,1,14),(36,1,1,0,0,1,3,3,1,15),(37,2,1,0,0,1,3,3,1,15),(38,4,1,0,0,1,3,3,1,15),(39,5,1,0,0,1,3,3,1,15),(40,1,1,0,1,3,3,1,3,16),(41,1,1,0,0,1,3,3,3,17),(42,2,1,0,0,1,3,3,3,17),(43,3,1,1,0,1,3,3,3,17),(44,4,2,1,0,1,3,3,3,17),(45,5,2,1,0,1,3,3,3,17),(46,6,1,1,0,1,3,3,3,17),(47,1,0,1,0,1,3,3,3,18),(48,1,1,0,0,1,3,3,1,19),(49,2,1,0,0,3,3,3,3,19),(50,5,1,0,0,3,3,1,3,19),(51,6,1,0,0,3,3,1,3,19),(52,7,1,0,0,3,3,3,3,19),(53,1,1,0,0,3,3,3,3,20),(54,2,1,1,0,1,3,1,3,20),(55,4,1,0,0,3,3,3,3,20),(56,5,1,0,0,3,3,3,3,20),(57,6,1,0,0,3,3,3,3,20),(58,1,0,0,1,3,3,3,3,21),(59,2,0,0,1,3,3,3,3,21),(60,3,1,0,0,3,3,3,3,21),(61,3,1,0,0,1,1,3,1,22),(62,6,1,0,0,1,1,3,3,22),(63,1,0,0,1,1,3,2,1,23),(64,2,0,0,1,1,3,3,3,23),(65,1,0,0,0,1,3,3,1,24),(66,3,1,0,0,3,3,3,1,24),(67,7,1,0,0,1,3,3,3,24),(68,1,1,0,0,1,3,3,1,25),(69,2,0,0,1,1,3,3,1,25),(70,3,1,0,0,1,3,3,1,25),(71,4,1,0,0,1,3,3,1,25),(72,4,1,0,1,1,3,3,1,25),(73,1,2,0,0,1,3,3,3,26),(74,2,1,0,0,1,3,3,3,26),(75,3,3,0,0,1,3,3,3,26),(76,1,1,0,0,1,3,3,3,27),(77,4,1,0,0,1,3,3,3,27),(78,1,1,0,0,1,2,2,2,28),(79,2,1,0,0,1,2,2,2,28),(80,3,2,0,0,1,2,2,2,28),(81,5,1,0,0,1,2,2,2,28),(82,1,1,0,0,2,1,2,2,29),(83,2,2,0,0,2,1,2,2,29),(84,3,1,0,0,2,1,2,2,29),(85,4,1,0,0,2,1,2,2,29),(86,7,2,0,0,2,1,2,2,29),(87,1,1,0,0,3,3,3,3,30),(88,2,1,0,0,3,3,3,3,30),(89,6,1,0,0,1,3,3,3,30),(101,4,1,0,0,2,2,2,1,33),(100,3,1,0,0,2,2,2,1,33),(99,2,1,0,0,2,2,2,1,33),(98,1,1,0,0,2,2,2,1,33),(94,1,1,1,0,1,2,2,2,32),(95,2,1,0,0,1,2,2,2,32),(96,5,1,0,0,1,2,2,2,32),(97,6,1,0,0,1,2,2,2,32),(102,5,1,0,0,1,2,2,2,33),(103,1,0,1,0,1,2,2,2,35),(104,2,1,1,0,1,2,2,2,35),(105,3,2,0,0,1,2,2,2,35),(106,4,1,0,0,1,2,2,2,35),(107,5,2,0,0,1,2,2,2,35),(108,6,1,0,1,2,2,2,2,35),(109,6,1,1,0,1,3,3,3,36),(110,3,2,0,0,3,3,3,3,37),(111,7,1,0,0,3,3,3,3,37),(112,1,1,0,0,3,3,3,3,38),(113,2,1,0,0,3,3,3,3,38),(114,3,2,0,0,3,3,3,3,38),(115,4,1,0,0,3,3,3,3,38),(116,5,0,1,0,3,3,3,3,38),(117,2,1,0,0,1,2,2,2,39),(118,3,4,0,0,1,2,2,2,39),(119,4,3,0,0,1,2,2,2,39),(120,5,2,0,0,1,2,2,2,39),(121,3,2,0,0,1,2,2,2,40),(122,6,1,0,0,1,2,2,2,40),(123,7,1,0,0,1,2,2,2,40),(124,1,1,0,0,1,3,3,3,41),(125,2,2,1,0,3,3,3,3,41),(126,7,1,1,0,1,3,3,3,41),(127,1,1,0,0,3,3,3,3,42),(128,3,1,1,0,1,3,3,3,42),(129,1,0,1,0,2,1,2,2,43),(130,2,0,1,0,1,2,2,2,43),(131,3,0,1,0,1,2,2,2,43),(132,4,0,1,0,1,2,2,2,43),(133,5,0,2,0,1,2,2,2,43),(134,1,0,0,1,1,1,3,3,44),(135,2,0,1,0,1,3,3,3,44),(136,4,0,0,1,1,3,3,3,44),(137,1,0,1,0,1,1,2,2,45),(138,2,0,1,0,1,1,2,2,45),(139,2,0,1,0,1,3,1,2,46),(140,3,1,0,0,3,3,3,3,46),(141,1,0,1,0,1,2,2,2,47),(142,2,0,1,0,1,2,2,2,47),(143,3,2,0,0,1,2,2,2,47),(144,6,1,0,0,2,2,2,2,47),(145,7,0,0,1,1,1,2,2,47),(146,1,0,1,0,2,1,2,2,48),(147,2,0,1,0,2,1,2,2,48),(148,6,0,2,0,1,2,2,2,48),(149,1,1,0,0,3,1,3,3,49),(150,2,1,0,0,3,1,3,3,49),(151,3,1,0,0,3,1,3,3,49),(152,4,1,0,0,3,1,3,3,49),(153,1,1,0,0,2,1,2,2,50),(154,2,1,0,0,1,2,2,2,50),(155,4,2,0,0,1,2,2,2,50),(156,6,1,0,0,1,2,2,2,50),(157,1,1,0,0,1,3,3,3,51),(158,2,1,0,0,1,3,3,3,51),(159,3,2,0,0,1,3,3,3,51),(160,5,1,0,0,1,3,3,3,51),(161,7,1,0,0,1,3,3,3,51),(162,1,1,0,0,1,2,2,2,52),(163,3,1,0,0,1,2,2,2,52),(164,6,1,0,0,1,2,2,2,52),(165,7,1,0,0,1,2,2,2,52),(166,1,2,0,0,2,3,3,3,53),(167,2,1,0,0,1,3,3,3,53),(168,7,2,0,0,1,3,1,1,53),(169,1,0,0,1,1,1,2,2,54),(170,2,0,1,0,2,1,2,2,54),(171,3,1,0,0,2,1,2,2,54),(172,1,0,4,0,1,3,3,3,55),(173,2,0,1,0,1,3,3,3,55),(174,3,0,1,0,1,3,3,3,55),(175,5,0,1,0,1,3,3,3,55),(176,6,0,1,0,1,3,3,3,55),(177,1,1,0,0,1,2,2,2,56),(178,2,1,0,0,1,2,2,2,56),(179,6,1,0,0,1,2,2,2,56),(180,1,1,0,0,3,3,3,3,57),(181,3,2,0,0,1,3,3,3,57),(182,4,0,1,0,3,3,3,3,57),(183,1,1,0,0,1,2,2,2,58),(184,2,1,0,0,1,2,2,2,58),(185,4,1,0,0,1,2,2,2,58),(186,1,0,1,0,1,2,2,2,59),(187,2,0,1,1,1,1,1,1,59),(188,1,0,1,1,1,1,2,1,61),(189,2,0,1,0,2,1,2,2,61),(190,3,4,0,0,2,2,2,2,61),(191,4,1,0,0,2,2,2,2,61),(192,5,1,0,0,2,2,2,2,61),(193,7,1,0,0,2,2,2,2,61),(194,1,0,1,0,1,2,2,2,63),(195,2,0,1,0,1,2,2,2,63),(196,3,2,0,0,3,3,3,3,63),(197,5,1,0,0,3,3,3,3,63),(198,6,1,0,0,3,3,3,3,63),(199,1,1,0,0,1,2,2,2,64),(200,2,1,0,0,1,2,2,2,64),(201,5,1,0,0,1,2,2,2,64),(202,6,1,0,0,1,2,2,2,64),(203,3,1,0,0,1,2,2,2,65),(204,5,1,0,0,1,2,2,2,65),(205,1,1,0,0,1,2,2,2,66),(206,2,1,0,0,1,2,2,2,66),(207,4,1,0,0,1,2,2,2,66),(208,5,1,0,0,1,2,2,2,66),(209,1,4,1,0,3,3,3,3,67),(210,2,1,0,0,3,3,3,3,67),(211,3,1,1,0,3,3,3,3,67),(212,4,1,1,0,3,3,3,3,67),(213,1,1,0,0,2,1,2,1,68),(214,2,1,0,0,1,2,1,1,68),(215,4,2,0,0,2,2,2,2,68),(216,6,1,0,0,2,2,2,2,68),(217,7,1,0,0,2,2,2,2,68),(218,1,1,0,0,2,2,1,2,69),(219,2,1,0,0,2,2,2,1,69),(220,3,3,0,0,1,2,2,2,69),(221,1,2,1,0,1,2,2,2,70),(222,2,1,0,0,1,2,2,2,70),(223,1,0,0,1,2,2,1,1,71),(224,2,0,0,1,2,1,2,2,71),(225,3,0,0,1,1,2,2,2,71);
/*!40000 ALTER TABLE `indicador01_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_tipococina`
--

DROP TABLE IF EXISTS `indicador01_tipococina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_tipococina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_tipococina`
--

LOCK TABLES `indicador01_tipococina` WRITE;
/*!40000 ALTER TABLE `indicador01_tipococina` DISABLE KEYS */;
INSERT INTO `indicador01_tipococina` VALUES (1,'Gas'),(2,'Leña'),(3,'Carbón');
/*!40000 ALTER TABLE `indicador01_tipococina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_tratamiento`
--

DROP TABLE IF EXISTS `indicador01_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_tratamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_tratamiento`
--

LOCK TABLES `indicador01_tratamiento` WRITE;
/*!40000 ALTER TABLE `indicador01_tratamiento` DISABLE KEYS */;
INSERT INTO `indicador01_tratamiento` VALUES (1,'No trata el agua'),(2,'Hierbe el agua'),(3,'Clora el agua'),(4,'Usa filtro de agua'),(5,'No contestó');
/*!40000 ALTER TABLE `indicador01_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador01_usoagua`
--

DROP TABLE IF EXISTS `indicador01_usoagua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador01_usoagua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador01_usoagua`
--

LOCK TABLES `indicador01_usoagua` WRITE;
/*!40000 ALTER TABLE `indicador01_usoagua` DISABLE KEYS */;
INSERT INTO `indicador01_usoagua` VALUES (1,'Riego'),(2,'Reciclaje'),(3,'Uso doméstico'),(4,'Labor Agrícola'),(5,'No contestó');
/*!40000 ALTER TABLE `indicador01_usoagua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_beneficioorgcomunitaria`
--

DROP TABLE IF EXISTS `indicador02_beneficioorgcomunitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_beneficioorgcomunitaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_beneficioorgcomunitaria`
--

LOCK TABLES `indicador02_beneficioorgcomunitaria` WRITE;
/*!40000 ALTER TABLE `indicador02_beneficioorgcomunitaria` DISABLE KEYS */;
INSERT INTO `indicador02_beneficioorgcomunitaria` VALUES (1,'Para aportar el desarrollo de comunidad'),(2,'Para recibir benficios de salud'),(3,'Para recibir mejores servicios'),(4,'Para mejorar la participación de las mujeres y jóvenes'),(5,'No contestó');
/*!40000 ALTER TABLE `indicador02_beneficioorgcomunitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_beneficiosobtenido`
--

DROP TABLE IF EXISTS `indicador02_beneficiosobtenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_beneficiosobtenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_beneficiosobtenido`
--

LOCK TABLES `indicador02_beneficiosobtenido` WRITE;
/*!40000 ALTER TABLE `indicador02_beneficiosobtenido` DISABLE KEYS */;
INSERT INTO `indicador02_beneficiosobtenido` VALUES (1,'Obtener crédito para la producción'),(2,'Suministro de semilla'),(3,'Tener servicio de asistencia técnica'),(4,'Tener servicio de capacitaciones'),(5,'Fondos para retención de cosecha'),(6,'Comercializar mejor y obtener mejor precio'),(7,'Obtener mejores beneficios familiares'),(8,'Proyectos sociales'),(9,'Proyectos productivos'),(10,'No contestó');
/*!40000 ALTER TABLE `indicador02_beneficiosobtenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_noorganizado`
--

DROP TABLE IF EXISTS `indicador02_noorganizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_noorganizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_noorganizado`
--

LOCK TABLES `indicador02_noorganizado` WRITE;
/*!40000 ALTER TABLE `indicador02_noorganizado` DISABLE KEYS */;
INSERT INTO `indicador02_noorganizado` VALUES (1,'Pérdida de tiempo'),(2,'Hay corrupción'),(3,'Hay amiguismo'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador02_noorganizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizacioncomunitaria`
--

DROP TABLE IF EXISTS `indicador02_organizacioncomunitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizacioncomunitaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `pertence` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador02_organizacioncomunitaria_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizacioncomunitaria`
--

LOCK TABLES `indicador02_organizacioncomunitaria` WRITE;
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria` DISABLE KEYS */;
INSERT INTO `indicador02_organizacioncomunitaria` VALUES (1,3,1,1),(2,3,1,2),(3,2,1,3),(4,2,1,4),(5,2,2,5),(6,4,1,6),(7,3,1,7),(8,0,1,8),(9,5,1,9),(10,5,1,10),(11,6,1,11),(12,6,1,12),(13,6,1,13),(14,9,1,14),(15,7,1,15),(16,5,1,16),(17,3,2,17),(18,4,2,18),(19,3,1,19),(20,3,1,20),(21,6,1,21),(22,0,1,22),(23,6,1,23),(24,5,2,24),(25,6,1,25),(26,0,2,26),(27,0,2,27),(28,2,2,28),(29,3,1,29),(30,3,1,30),(31,1,2,32),(32,4,1,33),(33,1,2,34),(34,2,2,35),(35,4,1,36),(36,4,1,37),(37,4,1,38),(38,3,2,39),(39,4,1,41),(40,8,1,40),(41,1,1,42),(42,0,1,43),(43,3,1,44),(44,5,1,45),(45,1,1,46),(46,5,1,47),(47,0,1,48),(48,1,1,49),(49,2,1,50),(50,1,1,51),(51,3,2,52),(52,4,1,53),(53,3,2,54),(54,1,1,55),(55,3,2,56),(56,0,2,57),(57,3,1,58),(58,1,2,59),(59,4,2,60),(60,1,2,62),(61,3,2,61),(62,3,2,63),(63,1,1,64),(64,2,2,65),(65,0,2,66),(66,0,1,67),(67,5,1,68),(68,5,2,69),(69,2,1,70),(70,0,2,71);
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizacioncomunitaria_cual_beneficio`
--

DROP TABLE IF EXISTS `indicador02_organizacioncomunitaria_cual_beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizacioncomunitaria_cual_beneficio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacioncomunitaria_id` int(11) NOT NULL,
  `beneficioorgcomunitaria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_or_organizacioncomunitaria_id_14df591d2ec80c0b_uniq` (`organizacioncomunitaria_id`,`beneficioorgcomunitaria_id`),
  KEY `indicador02_organizacioncomunitaria_cual_beneficio_3dcc15c7` (`organizacioncomunitaria_id`),
  KEY `indicador02_organizacioncomunitaria_cual_beneficio_bab411d9` (`beneficioorgcomunitaria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizacioncomunitaria_cual_beneficio`
--

LOCK TABLES `indicador02_organizacioncomunitaria_cual_beneficio` WRITE;
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_cual_beneficio` DISABLE KEYS */;
INSERT INTO `indicador02_organizacioncomunitaria_cual_beneficio` VALUES (1,1,4),(2,2,3),(3,3,5),(4,4,2),(5,4,3),(6,5,2),(7,6,3),(8,7,1),(9,7,2),(10,7,3),(11,7,4),(12,8,1),(13,8,3),(14,8,4),(15,9,1),(16,9,2),(17,9,3),(18,9,4),(19,10,1),(20,10,2),(21,10,3),(22,10,4),(23,11,1),(24,11,3),(25,11,4),(26,12,3),(27,13,1),(28,13,3),(29,13,4),(30,14,1),(31,14,2),(32,14,4),(33,15,1),(34,15,4),(35,16,1),(36,16,2),(37,16,3),(38,16,4),(39,17,4),(40,18,4),(41,19,1),(42,19,2),(43,19,3),(44,19,4),(45,20,1),(46,20,2),(47,20,3),(48,20,4),(49,21,3),(50,22,3),(51,23,1),(52,23,3),(53,24,3),(54,25,3),(55,25,4),(56,26,5),(57,27,5),(58,28,5),(59,29,1),(60,29,2),(61,29,3),(62,29,4),(63,30,1),(64,30,3),(65,31,1),(66,31,2),(67,31,3),(68,31,4),(69,32,1),(70,33,1),(71,33,2),(72,33,3),(73,33,4),(74,34,5),(75,35,3),(76,36,1),(77,37,1),(78,37,3),(79,37,4),(80,38,4),(81,39,1),(82,39,3),(83,40,1),(84,41,1),(85,42,1),(86,42,3),(87,43,5),(88,44,1),(89,44,3),(90,44,4),(91,45,1),(92,46,1),(93,46,4),(94,47,1),(95,47,2),(96,47,3),(97,48,1),(98,48,2),(99,48,3),(100,48,4),(101,49,1),(102,49,4),(103,50,3),(104,50,4),(105,51,5),(106,52,3),(107,53,1),(108,54,3),(109,55,1),(110,56,1),(111,56,2),(112,56,4),(113,57,1),(114,58,5),(115,59,1),(116,59,3),(117,59,4),(118,60,5),(119,61,5),(120,62,5),(121,63,1),(122,63,2),(123,63,3),(124,63,4),(125,64,1),(126,64,4),(127,65,5),(128,66,1),(129,67,1),(130,67,3),(131,68,5),(132,69,5),(133,70,1),(134,70,4);
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_cual_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizacioncomunitaria_cual_organizacion`
--

DROP TABLE IF EXISTS `indicador02_organizacioncomunitaria_cual_organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizacioncomunitaria_cual_organizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacioncomunitaria_id` int(11) NOT NULL,
  `orgcomunitarias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_or_organizacioncomunitaria_id_5ab75890e8c9d2a9_uniq` (`organizacioncomunitaria_id`,`orgcomunitarias_id`),
  KEY `indicador02_organizacioncomunitaria_cual_organizacion_3dcc15c7` (`organizacioncomunitaria_id`),
  KEY `indicador02_organizacioncomunitaria_cual_organizacion_c9912b98` (`orgcomunitarias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizacioncomunitaria_cual_organizacion`
--

LOCK TABLES `indicador02_organizacioncomunitaria_cual_organizacion` WRITE;
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_cual_organizacion` DISABLE KEYS */;
INSERT INTO `indicador02_organizacioncomunitaria_cual_organizacion` VALUES (1,1,6),(2,2,3),(3,2,7),(4,3,6),(5,3,7),(6,4,5),(7,5,2),(8,5,5),(9,6,8),(10,7,8),(11,8,9),(12,9,1),(13,9,2),(14,9,3),(15,9,4),(16,9,5),(17,10,1),(18,10,2),(19,10,3),(20,10,5),(21,11,1),(22,11,4),(23,11,5),(24,12,1),(25,13,10),(26,13,4),(27,14,3),(28,14,2),(29,14,11),(30,14,5),(31,15,12),(32,16,1),(33,16,5),(34,17,13),(35,18,14),(36,19,15),(37,20,4),(38,20,15),(39,21,1),(40,22,16),(41,23,5),(42,24,14),(43,25,16),(44,25,1),(45,25,2),(46,25,5),(47,26,14),(48,27,14),(49,28,14),(50,29,4),(51,30,4),(52,31,14),(53,32,4),(54,33,1),(55,33,3),(56,33,4),(57,34,14),(58,35,17),(59,36,17),(60,37,3),(61,37,4),(62,37,5),(63,38,18),(64,38,4),(65,39,1),(66,39,3),(67,39,5),(68,40,19),(69,41,3),(70,42,20),(71,43,14),(72,44,4),(73,45,5),(74,46,5),(75,47,2),(76,47,5),(77,48,3),(78,48,4),(79,49,1),(80,49,5),(81,50,4),(82,51,14),(83,52,4),(84,53,14),(85,54,14),(86,55,14),(87,56,3),(88,56,5),(89,56,6),(90,57,2),(91,58,14),(92,59,14),(93,60,14),(94,61,14),(95,62,14),(96,63,1),(97,63,3),(98,64,21),(99,65,14),(100,66,4),(101,67,5),(102,67,22),(103,68,14),(104,69,14),(105,70,4),(106,70,23);
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_cual_organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizacioncomunitaria_no_organizado`
--

DROP TABLE IF EXISTS `indicador02_organizacioncomunitaria_no_organizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizacioncomunitaria_no_organizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacioncomunitaria_id` int(11) NOT NULL,
  `noorganizado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_or_organizacioncomunitaria_id_60b95a89871f7974_uniq` (`organizacioncomunitaria_id`,`noorganizado_id`),
  KEY `indicador02_organizacioncomunitaria_no_organizado_3dcc15c7` (`organizacioncomunitaria_id`),
  KEY `indicador02_organizacioncomunitaria_no_organizado_d5675767` (`noorganizado_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizacioncomunitaria_no_organizado`
--

LOCK TABLES `indicador02_organizacioncomunitaria_no_organizado` WRITE;
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_no_organizado` DISABLE KEYS */;
INSERT INTO `indicador02_organizacioncomunitaria_no_organizado` VALUES (1,1,4),(2,2,4),(3,3,2),(4,4,4),(5,5,4),(6,6,4),(7,7,4),(8,8,4),(9,9,4),(10,10,4),(11,11,4),(12,12,4),(13,13,4),(14,14,4),(15,15,4),(16,16,4),(17,17,4),(18,18,4),(19,19,4),(20,20,4),(21,21,4),(22,22,4),(23,23,1),(24,23,2),(25,23,3),(26,24,4),(27,25,4),(28,26,4),(29,27,1),(30,28,3),(31,29,4),(32,30,4),(33,31,4),(34,32,4),(35,33,4),(36,34,4),(37,35,4),(38,36,4),(39,37,4),(40,38,4),(41,39,4),(42,40,4),(43,41,4),(44,42,4),(45,43,4),(46,44,4),(47,45,4),(48,46,4),(49,47,4),(50,48,4),(51,49,4),(52,50,4),(53,51,1),(54,52,4),(55,53,3),(56,54,4),(57,55,4),(58,56,4),(59,57,4),(60,58,1),(61,59,4),(62,60,3),(63,61,1),(64,62,4),(65,63,4),(66,64,4),(67,65,4),(68,66,4),(69,67,4),(70,68,4),(71,69,4),(72,70,4);
/*!40000 ALTER TABLE `indicador02_organizacioncomunitaria_no_organizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizaciongremial`
--

DROP TABLE IF EXISTS `indicador02_organizaciongremial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizaciongremial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desde_socio` int(11) NOT NULL,
  `miembro_gremial` int(11) NOT NULL,
  `desde_miembro` int(11) NOT NULL,
  `capacitacion` int(11) NOT NULL,
  `desde_capacitacion` int(11) NOT NULL,
  `asumir_cargo` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador02_organizaciongremial_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizaciongremial`
--

LOCK TABLES `indicador02_organizaciongremial` WRITE;
/*!40000 ALTER TABLE `indicador02_organizaciongremial` DISABLE KEYS */;
INSERT INTO `indicador02_organizaciongremial` VALUES (1,1,2,3,2,3,2,1),(2,1,3,1,1,1,1,2),(3,1,3,1,1,1,1,3),(4,2,2,1,2,1,2,4),(5,1,3,1,1,1,2,5),(6,2,3,2,1,2,2,6),(7,1,3,1,1,1,2,7),(8,1,1,1,1,1,2,8),(9,1,2,3,2,3,1,9),(10,2,2,3,1,1,2,10),(11,1,2,1,1,1,2,11),(12,3,2,3,2,3,2,12),(13,2,1,2,1,1,2,13),(14,3,3,2,1,2,2,14),(15,1,1,1,1,2,2,15),(16,1,3,1,1,3,1,16),(17,3,2,3,2,3,1,17),(18,3,2,3,1,1,2,18),(19,3,2,3,2,3,1,19),(20,3,2,3,2,3,2,20),(21,1,1,1,1,1,1,21),(22,1,1,1,1,1,1,22),(23,3,1,1,1,1,1,23),(24,3,2,3,2,3,1,24),(25,2,3,1,1,1,2,25),(26,1,2,3,2,3,2,26),(27,1,1,1,2,3,2,27),(28,1,2,3,2,3,1,28),(29,1,1,1,1,1,2,29),(30,1,1,1,1,1,2,30),(33,1,2,1,2,1,2,33),(32,2,3,2,2,3,2,32),(34,1,2,3,2,3,2,34),(35,1,2,3,2,3,2,35),(36,3,1,1,1,3,2,36),(37,1,1,1,1,1,2,37),(38,1,1,1,1,1,2,38),(39,1,1,1,1,1,2,39),(40,1,1,1,1,2,2,41),(41,1,3,1,1,1,1,40),(42,1,1,1,2,3,2,42),(43,1,1,1,1,1,2,43),(44,1,2,3,2,3,2,44),(45,2,1,2,1,2,1,45),(46,2,1,2,2,3,2,46),(47,2,3,1,1,1,2,47),(48,1,1,2,1,2,1,48),(49,1,1,2,1,2,2,49),(50,3,3,2,1,1,2,50),(51,1,2,2,1,2,2,51),(52,1,2,3,2,3,1,52),(53,1,2,3,2,2,1,53),(54,1,2,3,2,3,2,54),(55,1,3,3,2,3,1,55),(56,3,1,2,1,2,2,56),(57,1,1,1,1,1,2,57),(58,3,2,3,2,3,2,58),(59,3,2,3,2,3,2,59),(60,3,3,3,2,3,2,60),(61,1,2,3,2,3,2,61),(62,1,3,3,2,3,2,62),(63,3,2,3,2,3,2,63),(64,1,1,1,1,1,2,64),(65,1,1,3,1,1,2,65),(66,3,2,3,2,3,2,66),(67,1,3,3,2,3,1,67),(68,1,1,1,1,1,2,68),(69,2,2,3,2,3,2,69),(70,2,2,3,2,3,1,70),(71,2,1,1,1,3,2,71);
/*!40000 ALTER TABLE `indicador02_organizaciongremial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizaciongremial_beneficio`
--

DROP TABLE IF EXISTS `indicador02_organizaciongremial_beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizaciongremial_beneficio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizaciongremial_id` int(11) NOT NULL,
  `beneficiosobtenido_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_organiz_organizaciongremial_id_9389597f28034b6_uniq` (`organizaciongremial_id`,`beneficiosobtenido_id`),
  KEY `indicador02_organizaciongremial_beneficio_db6696be` (`organizaciongremial_id`),
  KEY `indicador02_organizaciongremial_beneficio_8ea6b359` (`beneficiosobtenido_id`)
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizaciongremial_beneficio`
--

LOCK TABLES `indicador02_organizaciongremial_beneficio` WRITE;
/*!40000 ALTER TABLE `indicador02_organizaciongremial_beneficio` DISABLE KEYS */;
INSERT INTO `indicador02_organizaciongremial_beneficio` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,6),(5,2,1),(6,2,3),(7,2,4),(8,2,6),(9,3,8),(10,3,1),(11,3,2),(12,3,3),(13,3,4),(14,4,1),(15,4,2),(16,4,3),(17,4,4),(18,5,1),(19,5,3),(20,5,4),(21,5,6),(22,6,1),(23,6,2),(24,6,3),(25,6,4),(26,6,7),(27,6,8),(28,6,9),(29,7,8),(30,7,2),(31,7,3),(32,7,4),(33,7,5),(34,8,1),(35,8,3),(36,8,4),(37,8,5),(38,8,7),(39,8,8),(40,8,9),(41,9,8),(42,9,3),(43,9,4),(44,10,10),(45,11,10),(46,12,1),(47,12,2),(48,12,3),(49,12,4),(50,12,5),(51,12,7),(52,12,8),(53,12,9),(54,13,1),(55,13,2),(56,13,3),(57,13,4),(58,13,8),(59,13,9),(60,14,1),(61,14,7),(62,14,4),(63,14,6),(64,14,9),(65,15,4),(66,16,2),(67,17,10),(68,18,10),(69,19,1),(70,19,2),(71,19,3),(72,19,4),(73,19,5),(74,19,7),(75,19,8),(76,19,9),(77,20,2),(78,20,3),(79,20,4),(80,20,5),(81,20,7),(82,20,8),(83,20,9),(84,21,1),(85,21,2),(86,21,3),(87,21,4),(88,21,5),(89,21,6),(90,21,8),(91,21,9),(92,22,1),(93,22,2),(94,22,3),(95,22,4),(96,22,6),(97,22,7),(98,22,8),(99,22,9),(100,23,10),(101,24,10),(102,25,1),(103,25,2),(104,25,3),(105,25,4),(106,25,6),(107,25,7),(108,25,8),(109,25,9),(110,26,1),(111,26,2),(112,26,3),(113,26,5),(114,27,1),(115,27,2),(116,27,3),(117,27,4),(118,27,5),(119,27,7),(120,28,1),(121,28,2),(122,28,3),(123,28,7),(124,29,1),(125,29,2),(126,29,5),(127,29,6),(128,29,8),(129,29,9),(130,30,1),(131,30,2),(132,30,3),(133,30,4),(134,30,6),(146,34,1),(145,33,3),(144,33,2),(143,33,1),(139,32,1),(140,32,2),(141,32,3),(142,32,4),(147,34,2),(148,34,3),(149,34,4),(150,35,4),(151,36,1),(152,36,4),(153,36,7),(154,37,1),(155,37,4),(156,38,1),(157,38,4),(158,38,7),(159,39,9),(160,39,4),(161,40,1),(162,40,4),(163,40,7),(164,41,1),(165,41,3),(166,41,4),(167,42,4),(168,43,1),(169,43,2),(170,43,3),(171,43,4),(172,43,7),(173,44,1),(174,44,2),(175,44,4),(176,45,1),(177,45,2),(178,45,3),(179,45,7),(180,46,1),(181,46,2),(182,46,3),(183,46,4),(184,46,5),(185,46,8),(186,46,9),(187,47,1),(188,47,2),(189,48,1),(190,48,2),(191,48,3),(192,49,1),(193,49,2),(194,49,3),(195,49,4),(196,49,7),(197,49,8),(198,49,9),(199,50,1),(200,50,3),(201,50,4),(202,51,1),(203,51,3),(204,51,9),(205,52,1),(206,52,2),(207,53,1),(208,53,2),(209,53,3),(210,53,5),(211,53,6),(212,53,7),(213,53,9),(214,54,8),(215,54,3),(216,54,4),(217,54,7),(218,55,1),(219,55,4),(220,56,10),(221,57,1),(222,57,4),(223,57,6),(224,58,10),(225,59,10),(226,60,1),(227,60,2),(228,60,3),(229,60,4),(230,60,6),(231,61,8),(232,61,3),(233,61,4),(234,61,7),(235,62,8),(236,62,1),(237,62,2),(238,62,3),(239,62,4),(240,63,10),(241,64,7),(242,64,1),(243,64,3),(244,64,4),(245,64,9),(246,65,1),(247,65,2),(248,65,3),(249,65,4),(250,65,7),(251,65,9),(252,66,7),(253,66,1),(254,66,3),(255,66,4),(256,66,9),(257,67,1),(258,67,2),(259,67,3),(260,67,4),(261,68,1),(262,68,3),(263,68,4),(264,68,9),(265,69,1),(266,69,2),(267,69,4),(268,70,1),(269,70,3),(270,70,4),(271,70,5),(272,70,9),(273,71,9),(274,71,2),(275,71,4);
/*!40000 ALTER TABLE `indicador02_organizaciongremial_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizaciongremial_miembro_junta`
--

DROP TABLE IF EXISTS `indicador02_organizaciongremial_miembro_junta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizaciongremial_miembro_junta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizaciongremial_id` int(11) NOT NULL,
  `sermiembro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_organi_organizaciongremial_id_316de61a6b6c4272_uniq` (`organizaciongremial_id`,`sermiembro_id`),
  KEY `indicador02_organizaciongremial_miembro_junta_db6696be` (`organizaciongremial_id`),
  KEY `indicador02_organizaciongremial_miembro_junta_86a38beb` (`sermiembro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizaciongremial_miembro_junta`
--

LOCK TABLES `indicador02_organizaciongremial_miembro_junta` WRITE;
/*!40000 ALTER TABLE `indicador02_organizaciongremial_miembro_junta` DISABLE KEYS */;
INSERT INTO `indicador02_organizaciongremial_miembro_junta` VALUES (1,1,5),(2,2,2),(3,2,4),(4,3,2),(5,4,4),(6,5,2),(7,5,3),(8,6,1),(9,6,2),(10,6,3),(11,6,4),(12,7,1),(13,7,2),(14,7,3),(15,7,4),(16,8,1),(17,8,2),(18,8,3),(19,8,4),(20,9,5),(21,10,5),(22,11,3),(23,11,4),(24,12,5),(25,13,2),(26,13,3),(27,13,4),(28,14,1),(29,14,3),(30,14,4),(31,15,1),(32,15,2),(33,15,3),(34,15,4),(35,16,4),(36,17,4),(37,18,5),(38,19,5),(39,20,5),(40,21,2),(41,22,2),(42,22,4),(43,23,2),(44,24,4),(45,25,4),(46,26,5),(47,27,2),(48,28,5),(49,29,5),(50,30,1),(51,30,2),(52,30,3),(53,30,4),(56,33,2),(55,32,5),(57,34,5),(58,35,5),(59,36,1),(60,36,2),(61,37,1),(62,37,2),(63,38,1),(64,38,2),(65,38,3),(66,39,1),(67,39,2),(68,39,3),(69,39,4),(70,40,1),(71,40,2),(72,41,1),(73,41,2),(74,42,1),(75,43,1),(76,43,2),(77,44,5),(78,45,2),(79,45,3),(80,45,4),(81,46,2),(82,47,1),(83,48,1),(84,49,1),(85,49,2),(86,49,3),(87,49,4),(88,50,1),(89,50,2),(90,50,4),(91,51,1),(92,52,1),(93,53,5),(94,54,5),(95,55,1),(96,56,2),(97,57,1),(98,58,5),(99,59,5),(100,60,5),(101,61,5),(102,62,5),(103,63,5),(104,64,1),(105,64,2),(106,64,3),(107,64,4),(108,65,1),(109,65,4),(110,66,5),(111,67,2),(112,68,1),(113,68,2),(114,68,3),(115,69,1),(116,69,3),(117,70,1),(118,71,1),(119,71,2),(120,71,3),(121,71,4);
/*!40000 ALTER TABLE `indicador02_organizaciongremial_miembro_junta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_organizaciongremial_socio`
--

DROP TABLE IF EXISTS `indicador02_organizaciongremial_socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_organizaciongremial_socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizaciongremial_id` int(11) NOT NULL,
  `orggremiales_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador02_organi_organizaciongremial_id_1a5690b94f9c5ee5_uniq` (`organizaciongremial_id`,`orggremiales_id`),
  KEY `indicador02_organizaciongremial_socio_db6696be` (`organizaciongremial_id`),
  KEY `indicador02_organizaciongremial_socio_7bafd1b3` (`orggremiales_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_organizaciongremial_socio`
--

LOCK TABLES `indicador02_organizaciongremial_socio` WRITE;
/*!40000 ALTER TABLE `indicador02_organizaciongremial_socio` DISABLE KEYS */;
INSERT INTO `indicador02_organizaciongremial_socio` VALUES (1,1,2),(2,2,4),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,3),(10,10,4),(11,11,4),(12,12,4),(13,13,3),(14,14,4),(15,15,1),(16,16,1),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,21,4),(22,22,2),(23,22,4),(24,23,1),(25,23,2),(26,23,4),(27,24,5),(28,25,3),(29,26,2),(30,27,3),(31,28,3),(32,29,1),(33,29,2),(34,30,2),(37,33,1),(36,32,1),(38,34,1),(39,35,1),(40,36,1),(41,37,1),(42,38,1),(43,39,2),(44,40,1),(45,41,1),(46,42,1),(47,43,4),(48,44,1),(49,45,2),(50,46,2),(51,47,3),(52,48,4),(53,49,1),(54,49,2),(55,50,3),(56,51,1),(57,52,3),(58,53,1),(59,54,3),(60,55,1),(61,56,5),(62,57,1),(63,58,5),(64,59,5),(65,60,5),(66,61,3),(67,62,1),(68,63,5),(69,64,5),(70,65,3),(71,66,3),(72,67,1),(73,68,3),(74,69,1),(75,70,2),(76,71,1);
/*!40000 ALTER TABLE `indicador02_organizaciongremial_socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_orgcomunitarias`
--

DROP TABLE IF EXISTS `indicador02_orgcomunitarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_orgcomunitarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_orgcomunitarias`
--

LOCK TABLES `indicador02_orgcomunitarias` WRITE;
/*!40000 ALTER TABLE `indicador02_orgcomunitarias` DISABLE KEYS */;
INSERT INTO `indicador02_orgcomunitarias` VALUES (1,'Comite de agua potable y saneamiento CAPS'),(2,'Comité de salud'),(3,'Asociación de padres de familia'),(4,'Asociación de iglesia'),(5,'CPC'),(6,'Movimiento de mujeres'),(7,'Red de Mujeres Comercializadoras'),(8,'ASOMUPRO'),(9,'INTA'),(10,'Comité banco de semilla y promotor social'),(11,'Educadora Programa Amor'),(12,'Promotora Producción y MA ODESAR'),(13,'Responsable de grupo de ODESAR'),(14,'No contestó'),(15,' ODESAR (Producción)'),(16,'Grupo Agroecológico'),(17,'PCAC'),(18,'Presidente de sección del Instituto Abisinia'),(19,'Coop. COMULJUT'),(20,'Junta directiva CFR'),(21,'Comité Fondo Revolvente'),(22,'Presidente de Junta directiva'),(23,'Comisión de Producción de GB'),(24,'Comité de Padres de Familia');
/*!40000 ALTER TABLE `indicador02_orgcomunitarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_orggremiales`
--

DROP TABLE IF EXISTS `indicador02_orggremiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_orggremiales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_orggremiales`
--

LOCK TABLES `indicador02_orggremiales` WRITE;
/*!40000 ALTER TABLE `indicador02_orggremiales` DISABLE KEYS */;
INSERT INTO `indicador02_orggremiales` VALUES (1,'Cooperativa'),(2,'Asociación'),(3,'Empresa'),(4,'Grupo'),(5,'Ninguno');
/*!40000 ALTER TABLE `indicador02_orggremiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador02_sermiembro`
--

DROP TABLE IF EXISTS `indicador02_sermiembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador02_sermiembro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador02_sermiembro`
--

LOCK TABLES `indicador02_sermiembro` WRITE;
/*!40000 ALTER TABLE `indicador02_sermiembro` DISABLE KEYS */;
INSERT INTO `indicador02_sermiembro` VALUES (1,'Para apoyar a las organizaciones'),(2,'Para asegurar que todo marche bien'),(3,'Para asegurar la participación de la mujeres'),(4,'Para defender derecho de las mujeres y jóvenes'),(5,'No contestó');
/*!40000 ALTER TABLE `indicador02_sermiembro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador05_uso`
--

DROP TABLE IF EXISTS `indicador05_uso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador05_uso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador05_uso`
--

LOCK TABLES `indicador05_uso` WRITE;
/*!40000 ALTER TABLE `indicador05_uso` DISABLE KEYS */;
INSERT INTO `indicador05_uso` VALUES (1,'Área total'),(2,'Bosque'),(3,'Tacotales'),(4,'Cultivos anuales'),(5,'Plantaciones forestal'),(6,'Áreas de pasto abierto'),(7,'Áreas de pastos con árboles'),(8,'Cultivos perennes'),(9,'Cultivos temporales'),(10,'Área de riego');
/*!40000 ALTER TABLE `indicador05_uso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador05_usotierra`
--

DROP TABLE IF EXISTS `indicador05_usotierra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador05_usotierra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tierra_id` int(11) NOT NULL,
  `area` double NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador05_usotierra_db7c39b9` (`tierra_id`),
  KEY `indicador05_usotierra_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador05_usotierra`
--

LOCK TABLES `indicador05_usotierra` WRITE;
/*!40000 ALTER TABLE `indicador05_usotierra` DISABLE KEYS */;
INSERT INTO `indicador05_usotierra` VALUES (1,1,12.5,1),(2,1,2.5,2),(3,4,0.5,2),(4,9,1.5,2),(5,1,4,3),(6,2,1,3),(7,4,1.5,3),(8,5,0.25,3),(9,6,1,3),(10,1,1,4),(11,4,1,4),(12,1,4,5),(13,2,0.25,5),(14,4,3,5),(15,6,0.25,5),(16,1,4.5,6),(17,3,0.5,6),(18,4,2,6),(19,9,2,6),(20,1,3.5,7),(21,4,2,7),(22,9,2,7),(23,8,2,7),(24,1,4,8),(25,3,0.5,8),(26,4,1.5,8),(27,8,0.25,8),(28,1,5,9),(29,2,2,9),(30,4,0.5,9),(31,9,1.123,9),(32,5,0.028,9),(33,8,1.34,9),(34,1,24,10),(35,2,1,10),(36,6,20.75,10),(37,8,2,10),(38,1,4,11),(39,2,0.5,11),(40,9,0.5,11),(41,5,0.25,11),(42,6,0.5,11),(43,7,0.75,11),(44,8,0.5,11),(45,10,1,11),(46,1,1.25,12),(47,4,1,12),(48,9,0.25,12),(49,8,24,12),(50,1,7,13),(51,2,1,13),(52,4,0.25,13),(53,9,1.5,13),(54,5,0.75,13),(55,6,0.25,13),(56,7,3,13),(57,8,0.25,13),(58,1,1.5,14),(59,4,1,14),(60,9,0.5,14),(61,5,0.5,14),(62,1,1,15),(63,4,1,15),(64,8,1,15),(65,1,8,16),(66,2,1,16),(67,9,7,16),(68,1,2,17),(69,2,0.25,17),(70,9,1.5,17),(71,1,1,18),(72,4,1,18),(73,8,1,18),(74,1,2,19),(75,6,0.5,19),(76,1,2,20),(77,4,1,20),(78,5,1,20),(79,1,4,21),(80,4,2.5,21),(81,9,0.5,21),(82,6,0.5,21),(83,10,0.25,21),(84,8,0.25,21),(85,1,14.5,22),(86,3,2,22),(87,4,1.5,22),(88,9,0.5,22),(89,6,10,22),(90,7,0.5,22),(91,1,4,23),(92,2,1,23),(93,4,1.5,23),(94,9,1,23),(95,7,1,23),(96,10,0.5,23),(97,1,6,24),(98,2,0.25,24),(99,3,0.5,24),(100,4,3,24),(101,9,0.25,24),(102,5,0.25,24),(103,6,0.25,24),(104,10,0.5,24),(105,8,1,24),(106,1,4.5,25),(107,3,0.5,25),(108,4,3,25),(109,6,0.25,25),(110,7,0.25,25),(111,10,0.5,25),(112,8,0.5,25),(113,1,10,26),(114,2,8,26),(115,4,4,26),(116,8,3,26),(117,1,10,27),(118,2,5,27),(119,4,5,27),(120,9,5,27),(121,5,5,27),(122,1,4,28),(123,2,1,28),(124,9,0.25,28),(125,7,1,28),(126,1,0.5,29),(127,9,2.25,30),(128,8,0.25,30),(129,2,6,32),(130,4,1,32),(131,6,0.5,32),(132,8,6,32),(133,2,0.25,33),(134,9,3,33),(135,8,5,33),(136,1,3,34),(137,4,0.5,35),(138,8,1,35),(139,1,5,36),(140,2,1,36),(141,4,2,36),(142,7,2,36),(143,1,2,37),(144,4,2,37),(145,1,1.5,38),(146,9,1.5,38),(147,1,1.5,39),(148,8,1.5,39),(149,1,2.5,41),(150,4,2,41),(151,8,0.5,41),(152,1,1.5,40),(153,8,1.5,40),(154,1,5,42),(155,2,1,42),(156,4,2,42),(157,6,2,42),(158,1,15,43),(159,2,5,43),(160,3,3,43),(161,4,4,43),(162,6,1,43),(163,7,2,43),(164,1,80,44),(165,2,6,44),(166,5,2,44),(167,7,72,44),(168,1,30,45),(169,2,10,45),(170,3,2,45),(171,4,6,45),(172,9,1,45),(173,5,1,45),(174,6,4,45),(175,7,10,45),(176,10,1,45),(177,8,1,45),(178,1,7,46),(179,2,0.5,46),(180,3,0.5,46),(181,4,5,46),(182,6,4,47),(183,2,10,47),(184,3,22,47),(185,9,4,47),(186,1,8,48),(187,2,3,48),(188,3,1,48),(189,4,3,48),(190,6,1,48),(191,1,1.5,49),(192,4,1,49),(193,5,0.33,49),(194,7,0.33,49),(195,1,5,50),(196,3,1,50),(197,9,1,50),(198,6,3,50),(199,1,80,51),(200,2,3,51),(201,3,6,51),(202,9,6,51),(203,7,65,51),(204,1,15,52),(205,3,11,52),(206,9,4,52),(207,1,15,53),(208,2,1,53),(209,9,3,53),(210,6,11,53),(211,1,12.13,54),(212,9,2.3,54),(213,7,10,54),(214,1,6,55),(215,4,4,55),(216,6,2,55),(217,1,0.5,56),(218,9,0.5,56),(219,1,15,57),(220,2,1,57),(221,9,7,57),(222,5,2,57),(223,6,5,57),(224,1,3,58),(225,1,0.59,59),(226,8,0.59,59),(227,1,1,60),(228,9,0.25,60),(229,1,4,62),(230,2,0.25,62),(231,3,0.33,62),(232,4,2,62),(233,9,0.5,62),(234,9,2.56,61),(235,7,14,61),(236,1,1.07,63),(237,9,0.57,63),(238,4,2,64),(239,9,2,64),(240,4,3,65),(241,10,3,65),(242,4,1,66),(243,7,5,66),(244,1,1.75,67),(245,4,0.5,67),(246,9,0.5,67),(247,8,0.75,67),(248,2,8,68),(249,3,5,68),(250,4,8,68),(251,6,9,68),(252,2,5,69),(253,4,5,69),(254,7,14,69),(255,8,0.5,69),(256,2,0.5,70),(257,4,1,70),(258,9,0.5,70),(259,10,0.2,70),(260,2,1,71),(261,5,1,71),(262,6,1,71),(263,8,1,71);
/*!40000 ALTER TABLE `indicador05_usotierra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_energetico`
--

DROP TABLE IF EXISTS `indicador06_energetico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_energetico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_energetico`
--

LOCK TABLES `indicador06_energetico` WRITE;
/*!40000 ALTER TABLE `indicador06_energetico` DISABLE KEYS */;
INSERT INTO `indicador06_energetico` VALUES (1,'neem'),(2,'quebracho'),(3,'carao'),(4,'tiguilote'),(5,'guanacaste blanco'),(6,'miliguiste'),(7,'eucalipto'),(8,'Papaturro'),(9,'No contestó'),(10,'Guaba'),(11,'Vainilla'),(12,'Chaperno'),(13,'Guayaba'),(14,'Mamosquillo'),(15,'Madroño'),(16,'Guachipilin'),(17,'Chocuaguo');
/*!40000 ALTER TABLE `indicador06_energetico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_existenciaarboles`
--

DROP TABLE IF EXISTS `indicador06_existenciaarboles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_existenciaarboles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_maderable` int(11) NOT NULL,
  `cantidad_forrajero` int(11) NOT NULL,
  `cantidad_energetico` int(11) NOT NULL,
  `cantidad_frutal` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador06_existenciaarboles_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_existenciaarboles`
--

LOCK TABLES `indicador06_existenciaarboles` WRITE;
/*!40000 ALTER TABLE `indicador06_existenciaarboles` DISABLE KEYS */;
INSERT INTO `indicador06_existenciaarboles` VALUES (1,15,5,11,16,1),(2,14,9,7,10,2),(3,300,15,5,60,3),(4,50,500,0,50,4),(5,50,4,0,20,5),(6,80,20,10,25,6),(7,18,15,10,30,7),(8,20,10,0,30,8),(9,144,154,1,180,9),(10,25,145,41,21,10),(11,213,175,64,73,11),(12,0,0,0,0,12),(13,164,67,19,229,13),(14,35,25,12,40,14),(15,16,12,15,0,15),(16,14,1500,70,65,16),(17,0,0,0,22,17),(18,150,0,15,500,18),(19,0,0,0,0,19),(20,0,0,0,0,20),(21,36,46,6,40,21),(22,18,67,7,17,22),(23,31,25,1,12,23),(24,37,38,3,849,24),(25,8,20,3,55,25),(26,33,305,3,706,26),(27,0,200,0,93,27),(28,49,22,0,75,28),(29,9,15,0,38,29),(30,20,31,4,45,30),(31,5,20,30,10,32),(32,500,300,2,51,33),(33,30,40,15,50,34),(34,9,0,5,3,35),(35,28,82,44,10,36),(36,15,10,3,30,37),(37,16,83,7,34,38),(38,30,10,0,18,39),(39,15,30,20,200,41),(40,55,0,0,0,40),(41,14,10,0,20,42),(42,50,20,80,10,43),(43,12,2000,50,70,44),(44,0,50,5000,29,45),(45,10,10,10,30,46),(46,100,100,25,7,47),(47,63,35,40,7,48),(48,6,10,1,100,49),(49,20,15,12,5,50),(50,130,110,40,77,51),(51,70,40,40,26,52),(52,25,32,0,12,53),(53,0,100,10,20,54),(54,6,30,10,20,55),(55,0,15,0,10,56),(56,120,100,35,400,57),(57,0,10,90,30,58),(58,1,2,2,13,59),(59,20,5,0,60,60),(60,10,10,2,20,62),(61,20,80,70,25,61),(62,0,50,3,20,63),(63,0,0,0,0,64),(64,20,0,10,0,65),(65,80,0,20,0,66),(66,10,2,4,230,67),(67,100,6,10000,0,68),(68,465,394,206,65,69),(69,28,16,4,47,70),(70,219,188,187,120,71);
/*!40000 ALTER TABLE `indicador06_existenciaarboles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_existenciaarboles_energetico`
--

DROP TABLE IF EXISTS `indicador06_existenciaarboles_energetico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_existenciaarboles_energetico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `existenciaarboles_id` int(11) NOT NULL,
  `energetico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador06_existenc_existenciaarboles_id_497d6ca12fc7c3ac_uniq` (`existenciaarboles_id`,`energetico_id`),
  KEY `indicador06_existenciaarboles_energetico_134d880e` (`existenciaarboles_id`),
  KEY `indicador06_existenciaarboles_energetico_cbe5cc8d` (`energetico_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_existenciaarboles_energetico`
--

LOCK TABLES `indicador06_existenciaarboles_energetico` WRITE;
/*!40000 ALTER TABLE `indicador06_existenciaarboles_energetico` DISABLE KEYS */;
INSERT INTO `indicador06_existenciaarboles_energetico` VALUES (1,1,8),(2,1,1),(3,1,2),(4,2,1),(5,3,4),(6,4,1),(7,5,9),(8,6,2),(9,6,3),(10,6,5),(11,7,2),(12,7,3),(13,7,7),(14,8,9),(15,9,3),(16,10,4),(17,10,6),(18,10,7),(19,11,1),(20,11,3),(21,11,4),(22,11,5),(23,11,6),(24,11,7),(25,12,9),(26,13,2),(27,13,3),(28,13,7),(29,14,1),(30,15,1),(31,15,7),(32,16,1),(33,17,9),(34,18,1),(35,19,9),(36,20,9),(37,21,2),(38,22,1),(39,22,2),(40,22,3),(41,22,5),(42,23,5),(43,24,5),(44,25,1),(45,25,7),(46,26,1),(47,27,9),(48,28,9),(49,29,9),(50,30,1),(51,30,7),(52,31,9),(53,32,1),(54,32,3),(55,33,2),(56,33,3),(57,33,7),(58,34,10),(59,35,2),(60,35,3),(61,35,4),(62,35,5),(63,35,7),(64,36,7),(65,37,2),(66,37,3),(67,37,4),(68,37,7),(69,38,9),(70,39,2),(71,39,7),(72,40,9),(73,41,9),(74,42,2),(75,42,5),(76,42,6),(77,43,9),(78,44,1),(79,44,2),(80,44,6),(81,45,1),(82,45,3),(83,45,7),(84,46,1),(85,46,2),(86,47,2),(87,47,6),(88,48,1),(89,49,1),(90,50,2),(91,51,2),(92,51,6),(93,52,9),(94,53,2),(95,53,3),(96,53,7),(97,54,5),(98,55,9),(99,56,5),(100,56,6),(101,56,7),(102,57,2),(103,57,6),(104,58,6),(105,58,7),(106,59,9),(107,60,1),(108,61,2),(109,61,3),(110,61,6),(111,61,7),(112,62,6),(113,62,7),(114,63,9),(115,64,9),(116,65,4),(117,66,2),(118,67,2),(119,67,5),(120,67,11),(121,67,12),(122,67,13),(123,67,14),(124,68,1),(125,68,2),(126,68,3),(127,68,4),(128,68,5),(129,68,6),(130,68,7),(131,69,1),(132,69,4),(133,69,7),(134,70,1),(135,70,2),(136,70,4),(137,70,7),(138,70,15),(139,70,16),(140,70,17);
/*!40000 ALTER TABLE `indicador06_existenciaarboles_energetico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_existenciaarboles_forrajero`
--

DROP TABLE IF EXISTS `indicador06_existenciaarboles_forrajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_existenciaarboles_forrajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `existenciaarboles_id` int(11) NOT NULL,
  `forrajero_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador06_existenc_existenciaarboles_id_176038f98ff952a4_uniq` (`existenciaarboles_id`,`forrajero_id`),
  KEY `indicador06_existenciaarboles_forrajero_134d880e` (`existenciaarboles_id`),
  KEY `indicador06_existenciaarboles_forrajero_6b935d81` (`forrajero_id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_existenciaarboles_forrajero`
--

LOCK TABLES `indicador06_existenciaarboles_forrajero` WRITE;
/*!40000 ALTER TABLE `indicador06_existenciaarboles_forrajero` DISABLE KEYS */;
INSERT INTO `indicador06_existenciaarboles_forrajero` VALUES (1,1,1),(2,1,5),(3,2,1),(4,2,5),(5,3,4),(6,4,1),(7,5,1),(8,5,2),(9,5,6),(10,6,8),(11,6,1),(12,6,4),(13,7,1),(14,7,3),(15,7,4),(16,7,7),(17,8,3),(18,8,4),(19,9,1),(20,9,3),(21,9,4),(22,10,1),(23,10,3),(24,10,4),(25,10,5),(26,11,1),(27,11,2),(28,11,3),(29,11,4),(30,12,3),(31,12,4),(32,13,1),(33,13,3),(34,13,4),(35,14,2),(36,14,3),(37,14,4),(38,14,5),(39,14,6),(40,14,8),(41,14,9),(42,15,8),(43,15,3),(44,15,5),(45,15,7),(46,16,1),(47,17,10),(48,18,10),(49,19,1),(50,19,4),(51,20,1),(52,20,3),(53,20,4),(54,21,8),(55,21,1),(56,21,3),(57,21,4),(58,21,6),(59,22,8),(60,22,1),(61,22,3),(62,22,4),(63,22,7),(64,23,8),(65,23,1),(66,23,3),(67,23,4),(68,23,5),(69,24,8),(70,24,1),(71,24,4),(72,24,5),(73,25,8),(74,25,1),(75,25,3),(76,25,4),(77,26,1),(78,26,4),(79,26,6),(80,26,7),(81,27,4),(82,28,1),(83,28,3),(84,28,4),(85,28,7),(86,29,2),(87,29,4),(88,30,1),(89,30,3),(90,30,4),(91,31,1),(92,31,3),(93,31,4),(94,31,5),(95,31,7),(96,31,8),(97,32,8),(98,32,1),(99,32,3),(100,32,4),(101,33,8),(102,33,1),(103,33,2),(104,33,4),(105,33,5),(106,34,10),(107,35,8),(108,35,1),(109,35,2),(110,35,7),(111,36,1),(112,36,4),(113,37,1),(114,37,2),(115,37,4),(116,37,7),(117,38,1),(118,39,1),(119,39,2),(120,39,4),(121,40,10),(122,41,10),(123,42,8),(124,42,4),(125,43,10),(126,44,1),(127,44,4),(128,45,8),(129,45,1),(130,45,3),(131,45,4),(132,46,8),(133,46,4),(134,46,7),(135,47,8),(136,47,1),(137,47,4),(138,47,6),(139,48,1),(140,48,2),(141,48,4),(142,48,5),(143,49,8),(144,49,1),(145,50,1),(146,51,8),(147,51,1),(148,51,11),(149,51,4),(150,51,12),(151,52,1),(152,52,4),(153,53,2),(154,53,4),(155,54,8),(156,54,1),(157,54,4),(158,54,5),(159,54,7),(160,55,1),(161,55,4),(162,56,8),(163,56,1),(164,56,4),(165,56,7),(166,57,1),(167,58,4),(168,58,7),(169,59,1),(170,59,4),(171,60,8),(172,61,8),(173,61,1),(174,61,3),(175,61,4),(176,61,7),(177,62,1),(178,63,10),(179,64,10),(180,65,10),(181,66,1),(182,66,4),(183,67,8),(184,68,1),(185,68,2),(186,68,3),(187,68,4),(188,68,5),(189,68,7),(190,68,8),(191,69,1),(192,69,2),(193,69,4),(194,69,5),(195,70,1),(196,70,2),(197,70,3),(198,70,4),(199,70,5),(200,70,7),(201,70,8);
/*!40000 ALTER TABLE `indicador06_existenciaarboles_forrajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_existenciaarboles_frutal`
--

DROP TABLE IF EXISTS `indicador06_existenciaarboles_frutal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_existenciaarboles_frutal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `existenciaarboles_id` int(11) NOT NULL,
  `frutal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador06_existenci_existenciaarboles_id_24abc3230a0eda8_uniq` (`existenciaarboles_id`,`frutal_id`),
  KEY `indicador06_existenciaarboles_frutal_134d880e` (`existenciaarboles_id`),
  KEY `indicador06_existenciaarboles_frutal_d3ea0dee` (`frutal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_existenciaarboles_frutal`
--

LOCK TABLES `indicador06_existenciaarboles_frutal` WRITE;
/*!40000 ALTER TABLE `indicador06_existenciaarboles_frutal` DISABLE KEYS */;
INSERT INTO `indicador06_existenciaarboles_frutal` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,9),(5,1,12),(6,1,13),(7,2,1),(8,2,3),(9,2,4),(10,2,5),(11,2,9),(12,3,1),(13,3,2),(14,3,3),(15,3,4),(16,3,5),(17,3,8),(18,3,9),(19,4,1),(20,4,4),(21,4,5),(22,4,6),(23,4,9),(24,4,13),(25,5,1),(26,5,2),(27,5,4),(28,5,5),(29,5,7),(30,5,9),(31,5,11),(32,6,8),(33,6,1),(34,6,2),(35,7,1),(36,7,2),(37,7,4),(38,7,5),(39,7,6),(40,7,7),(41,7,8),(42,7,9),(43,7,12),(44,8,1),(45,8,2),(46,8,4),(47,8,6),(48,8,7),(49,8,8),(50,8,9),(51,8,10),(52,9,1),(53,9,2),(54,9,4),(55,9,5),(56,9,6),(57,9,7),(58,9,9),(59,9,11),(60,9,13),(61,10,1),(62,10,2),(63,10,3),(64,10,4),(65,10,5),(66,10,6),(67,10,8),(68,10,9),(69,11,1),(70,11,2),(71,11,3),(72,11,4),(73,11,5),(74,11,6),(75,11,7),(76,11,8),(77,11,9),(78,11,10),(79,11,11),(80,11,13),(81,12,1),(82,12,2),(83,12,4),(84,12,6),(85,12,8),(86,12,9),(87,12,13),(88,13,1),(89,13,2),(90,13,3),(91,13,4),(92,13,5),(93,13,6),(94,13,7),(95,13,8),(96,13,9),(97,13,10),(98,13,12),(99,13,13),(100,14,1),(101,14,2),(102,14,4),(103,14,5),(104,14,6),(105,14,7),(106,14,9),(107,15,1),(108,15,2),(109,15,5),(110,15,6),(111,15,7),(112,16,1),(113,16,6),(114,17,1),(115,17,2),(116,17,3),(117,17,6),(118,17,9),(119,18,1),(120,18,2),(121,18,3),(122,18,4),(123,18,5),(124,18,6),(125,18,7),(126,18,8),(127,18,9),(128,19,1),(129,19,4),(130,19,5),(131,19,6),(132,19,7),(133,19,8),(134,19,9),(135,20,1),(136,20,2),(137,20,4),(138,20,6),(139,20,7),(140,20,8),(141,20,9),(142,20,10),(143,21,1),(144,21,2),(145,21,3),(146,21,4),(147,21,5),(148,21,6),(149,21,7),(150,21,8),(151,21,9),(152,21,11),(153,21,13),(154,22,1),(155,22,2),(156,22,5),(157,22,6),(158,22,8),(159,22,9),(160,22,10),(161,22,13),(162,23,1),(163,23,2),(164,23,4),(165,23,5),(166,23,6),(167,23,8),(168,23,9),(169,24,1),(170,24,2),(171,24,4),(172,24,5),(173,24,6),(174,24,8),(175,24,11),(176,25,1),(177,25,2),(178,25,4),(179,25,5),(180,25,6),(181,25,7),(182,25,8),(183,25,9),(184,25,11),(185,25,12),(186,25,13),(187,26,1),(188,26,2),(189,26,4),(190,26,5),(191,26,6),(192,26,7),(193,26,9),(194,26,11),(195,27,8),(196,27,1),(197,27,2),(198,27,5),(199,27,9),(200,28,1),(201,28,2),(202,28,4),(203,28,5),(204,28,6),(205,28,7),(206,28,8),(207,28,9),(208,28,10),(209,29,1),(210,29,2),(211,29,5),(212,29,6),(213,29,9),(214,30,1),(215,30,2),(216,30,4),(217,30,6),(218,30,8),(219,30,9),(220,31,1),(221,31,2),(222,31,5),(223,31,6),(224,31,7),(225,31,8),(226,31,9),(227,32,1),(228,32,2),(229,32,4),(230,32,9),(231,32,11),(232,32,13),(233,33,1),(234,33,2),(235,33,5),(236,33,6),(237,33,7),(238,33,9),(239,33,12),(240,33,13),(241,34,1),(242,34,14),(243,35,1),(244,35,2),(245,35,4),(246,35,5),(247,35,6),(248,35,13),(249,36,1),(250,36,2),(251,36,4),(252,36,13),(253,36,9),(254,37,1),(255,37,2),(256,37,4),(257,37,5),(258,37,6),(259,37,7),(260,37,9),(261,37,10),(262,37,13),(263,38,1),(264,38,2),(265,38,5),(266,38,6),(267,38,9),(268,39,1),(269,39,2),(270,39,4),(271,39,5),(272,39,6),(273,39,8),(274,39,9),(275,39,10),(276,39,13),(277,40,1),(278,40,4),(279,40,6),(280,41,1),(281,41,2),(282,41,4),(283,41,6),(284,42,8),(285,42,4),(286,42,5),(287,42,13),(288,43,14),(289,44,1),(290,44,2),(291,44,3),(292,44,4),(293,44,5),(294,44,6),(295,44,7),(296,45,1),(297,45,2),(298,45,5),(299,45,6),(300,45,7),(301,45,8),(302,45,9),(303,45,11),(304,45,13),(305,46,1),(306,46,15),(307,47,9),(308,47,2),(309,47,5),(310,47,6),(311,48,1),(312,48,2),(313,48,4),(314,48,5),(315,48,6),(316,48,7),(317,48,8),(318,48,9),(319,48,10),(320,48,13),(321,49,1),(322,49,4),(323,50,1),(324,50,2),(325,50,4),(326,50,5),(327,50,6),(328,50,8),(329,50,10),(330,50,11),(331,50,13),(332,51,1),(333,51,4),(334,51,5),(335,51,6),(336,51,9),(337,52,8),(338,52,1),(339,52,2),(340,52,9),(341,53,8),(342,53,1),(343,53,2),(344,53,4),(345,54,1),(346,54,2),(347,54,13),(348,54,7),(349,55,8),(350,55,1),(351,55,2),(352,56,1),(353,56,2),(354,56,3),(355,56,4),(356,56,5),(357,56,6),(358,56,7),(359,56,8),(360,56,10),(361,56,13),(362,57,8),(363,57,1),(364,57,4),(365,57,9),(366,58,1),(367,58,2),(368,58,6),(369,58,8),(370,58,9),(371,58,13),(372,59,1),(373,59,2),(374,59,3),(375,59,4),(376,59,5),(377,59,6),(378,59,8),(379,59,9),(380,59,12),(381,59,13),(382,60,1),(383,60,2),(384,60,4),(385,60,5),(386,60,6),(387,60,7),(388,60,8),(389,60,9),(390,61,1),(391,61,2),(392,61,3),(393,61,4),(394,61,6),(395,61,8),(396,61,9),(397,62,1),(398,62,2),(399,62,4),(400,62,5),(401,62,7),(402,62,8),(403,62,9),(404,63,1),(405,63,2),(406,63,6),(407,64,16),(408,65,2),(409,65,13),(410,66,1),(411,66,2),(412,66,4),(413,66,6),(414,66,9),(415,66,13),(416,67,16),(417,68,1),(418,68,2),(419,68,3),(420,68,4),(421,68,5),(422,68,8),(423,68,9),(424,68,11),(425,68,12),(426,69,1),(427,69,2),(428,69,3),(429,69,5),(430,69,6),(431,69,7),(432,69,8),(433,69,9),(434,69,12),(435,69,13),(436,70,1),(437,70,2),(438,70,3),(439,70,4),(440,70,5),(441,70,6),(442,70,7),(443,70,8),(444,70,9),(445,70,11),(446,70,12),(447,70,17);
/*!40000 ALTER TABLE `indicador06_existenciaarboles_frutal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_existenciaarboles_maderable`
--

DROP TABLE IF EXISTS `indicador06_existenciaarboles_maderable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_existenciaarboles_maderable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `existenciaarboles_id` int(11) NOT NULL,
  `maderable_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador06_existenci_existenciaarboles_id_51cb148295d0d20_uniq` (`existenciaarboles_id`,`maderable_id`),
  KEY `indicador06_existenciaarboles_maderable_134d880e` (`existenciaarboles_id`),
  KEY `indicador06_existenciaarboles_maderable_fed1d0ba` (`maderable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_existenciaarboles_maderable`
--

LOCK TABLES `indicador06_existenciaarboles_maderable` WRITE;
/*!40000 ALTER TABLE `indicador06_existenciaarboles_maderable` DISABLE KEYS */;
INSERT INTO `indicador06_existenciaarboles_maderable` VALUES (1,1,2),(2,1,4),(3,1,10),(4,2,2),(5,2,3),(6,2,10),(7,2,7),(8,3,2),(9,3,3),(10,3,4),(11,3,6),(12,3,7),(13,3,10),(14,4,2),(15,4,3),(16,4,4),(17,5,2),(18,5,4),(19,5,10),(20,6,10),(21,6,4),(22,6,5),(23,6,7),(24,7,4),(25,8,10),(26,8,4),(27,9,2),(28,9,3),(29,9,4),(30,9,5),(31,9,6),(32,9,10),(33,9,11),(34,10,11),(35,10,5),(36,10,6),(37,11,2),(38,11,3),(39,11,4),(40,11,5),(41,11,6),(42,11,7),(43,11,10),(44,11,11),(45,12,2),(46,12,4),(47,13,1),(48,13,2),(49,13,3),(50,13,4),(51,13,5),(52,13,6),(53,13,7),(54,13,10),(55,13,11),(56,14,9),(57,14,2),(58,14,3),(59,14,4),(60,14,10),(61,15,10),(62,15,4),(63,15,5),(64,16,9),(65,17,12),(66,18,2),(67,18,4),(68,18,10),(69,18,5),(70,19,4),(71,20,3),(72,20,4),(73,21,2),(74,21,3),(75,21,4),(76,21,5),(77,21,6),(78,21,7),(79,21,9),(80,21,10),(81,21,11),(82,22,3),(83,22,4),(84,22,5),(85,22,6),(86,23,2),(87,23,7),(88,23,4),(89,23,10),(90,23,5),(91,24,2),(92,24,4),(93,24,10),(94,24,5),(95,25,2),(96,25,4),(97,25,5),(98,26,2),(99,26,3),(100,26,4),(101,26,6),(102,27,12),(103,28,2),(104,28,4),(105,28,10),(106,29,2),(107,29,4),(108,30,2),(109,30,3),(110,30,4),(111,30,6),(112,31,10),(113,32,2),(114,32,11),(115,32,4),(116,32,5),(117,33,2),(118,33,3),(119,33,4),(120,33,5),(121,34,2),(122,34,3),(123,34,4),(124,35,4),(125,35,5),(126,35,6),(127,36,4),(128,36,5),(129,37,2),(130,37,3),(131,37,4),(132,37,5),(133,37,6),(134,38,4),(135,38,13),(136,39,2),(137,39,3),(138,39,4),(139,39,6),(140,40,12),(141,41,12),(142,42,11),(143,42,4),(144,42,5),(145,43,12),(146,44,12),(147,45,2),(148,45,4),(149,45,5),(150,46,4),(151,46,14),(152,46,15),(153,47,2),(154,47,11),(155,47,4),(156,47,5),(157,48,2),(158,48,3),(159,48,4),(160,49,16),(161,49,2),(162,49,10),(163,49,5),(164,50,2),(165,50,3),(166,50,4),(167,50,5),(168,51,3),(169,51,11),(170,51,4),(171,51,5),(172,52,2),(173,52,3),(174,53,12),(175,54,4),(176,54,6),(177,55,12),(178,56,3),(179,56,4),(180,56,5),(181,56,6),(182,57,12),(183,58,6),(184,59,2),(185,59,4),(186,60,2),(187,60,7),(188,60,4),(189,60,10),(190,60,5),(191,61,8),(192,61,2),(193,61,5),(194,61,6),(195,62,12),(196,63,10),(197,63,4),(198,64,12),(199,65,5),(200,65,6),(201,66,2),(202,67,17),(203,67,18),(204,67,5),(205,68,1),(206,68,2),(207,68,3),(208,68,4),(209,68,5),(210,68,6),(211,68,7),(212,68,10),(213,69,1),(214,69,2),(215,69,3),(216,69,4),(217,69,7),(218,69,10),(219,70,1),(220,70,2),(221,70,3),(222,70,4),(223,70,5),(224,70,6),(225,70,7),(226,70,11);
/*!40000 ALTER TABLE `indicador06_existenciaarboles_maderable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_forrajero`
--

DROP TABLE IF EXISTS `indicador06_forrajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_forrajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_forrajero`
--

LOCK TABLES `indicador06_forrajero` WRITE;
/*!40000 ALTER TABLE `indicador06_forrajero` DISABLE KEYS */;
INSERT INTO `indicador06_forrajero` VALUES (1,'madero negro'),(2,'tiguilote'),(3,'acasia'),(4,'guasimo'),(5,'leucaena'),(6,'marango'),(7,'genizaro'),(8,'guanacaste'),(9,'Macualí'),(10,'No contestó'),(11,'Jiñocuao'),(12,'Copal');
/*!40000 ALTER TABLE `indicador06_forrajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_frutal`
--

DROP TABLE IF EXISTS `indicador06_frutal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_frutal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_frutal`
--

LOCK TABLES `indicador06_frutal` WRITE;
/*!40000 ALTER TABLE `indicador06_frutal` DISABLE KEYS */;
INSERT INTO `indicador06_frutal` VALUES (1,'naranja'),(2,'mango'),(3,'marañon'),(4,'limón'),(5,'limón agrio'),(6,'aguacate'),(7,'mamón'),(8,'guayaba'),(9,'jocote'),(10,'zapote'),(11,'nispero'),(12,'tamarindo'),(13,'papaya'),(14,'Grape Fruit'),(15,'Nancite'),(16,'No contestó'),(17,'Mandarina');
/*!40000 ALTER TABLE `indicador06_frutal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador06_maderable`
--

DROP TABLE IF EXISTS `indicador06_maderable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador06_maderable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador06_maderable`
--

LOCK TABLES `indicador06_maderable` WRITE;
/*!40000 ALTER TABLE `indicador06_maderable` DISABLE KEYS */;
INSERT INTO `indicador06_maderable` VALUES (1,'teca'),(2,'cedro'),(3,'pochote'),(4,'laurel'),(5,'guanacaste'),(6,'genizaro'),(7,'roble'),(8,'pino'),(9,'melina'),(10,'caoba'),(11,'frijolillo'),(12,'No contestó'),(13,'Macuelizo'),(14,'Talalate'),(15,'Quebracho'),(16,'Mamasquillo'),(17,'Palo de Arco'),(18,'Moro');
/*!40000 ALTER TABLE `indicador06_maderable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador07_actividad`
--

DROP TABLE IF EXISTS `indicador07_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador07_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador07_actividad`
--

LOCK TABLES `indicador07_actividad` WRITE;
/*!40000 ALTER TABLE `indicador07_actividad` DISABLE KEYS */;
INSERT INTO `indicador07_actividad` VALUES (1,'Enriquecimiento de los bosques'),(2,'Protección de fuente de agua'),(3,'Establecimiento de cercas viva'),(4,'Plantaciones foretales'),(5,'Siembra de árboles en potrero'),(6,'Siembra de árboles en cafetales'),(7,'Establecimiento de viveros'),(8,'Parcelas frutales'),(9,'Huerto de patio'),(10,'Producción de patio'),(11,'Regeneración Natural'),(12,'Sistema silvopastoril'),(13,'Conservación de suelo y agua'),(14,'Sistema Agroforestal');
/*!40000 ALTER TABLE `indicador07_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador07_reforestacion`
--

DROP TABLE IF EXISTS `indicador07_reforestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador07_reforestacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reforestacion_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador07_reforestacion_751e20c3` (`reforestacion_id`),
  KEY `indicador07_reforestacion_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador07_reforestacion`
--

LOCK TABLES `indicador07_reforestacion` WRITE;
/*!40000 ALTER TABLE `indicador07_reforestacion` DISABLE KEYS */;
INSERT INTO `indicador07_reforestacion` VALUES (1,4,25,1),(2,7,57,1),(3,2,30,2),(4,3,50,2),(5,10,1,2),(6,11,50,3),(7,2,20,3),(8,3,15,3),(9,12,20,3),(10,4,20,4),(11,10,5,4),(12,10,15,5),(13,4,100,6),(14,6,8,6),(15,4,15,8),(16,7,20,8),(17,13,40,8),(18,11,240,9),(19,2,24,9),(20,3,200,9),(21,4,144,9),(22,6,50,9),(23,7,200,9),(24,10,180,9),(25,3,500,10),(26,10,30,10),(27,11,100,11),(28,2,80,11),(29,2,80,11),(30,4,120,11),(31,12,30,11),(32,7,1200,11),(33,14,80,11),(34,10,73,11),(35,3,400,12),(36,7,200,12),(37,10,25,12),(38,13,98,12),(39,11,2000,13),(40,2,125,13),(41,3,500,13),(42,4,250,13),(43,12,990,13),(44,6,35,13),(45,14,50,13),(46,10,645,13),(47,13,350,13),(48,11,20,14),(49,3,15,14),(50,4,15,14),(51,6,20,14),(52,7,100,14),(53,10,1,14),(54,7,200,15),(55,13,200,15),(56,2,2500,16),(57,2,10,17),(58,3,30,19),(59,4,25,19),(60,7,25,19),(61,10,18,19),(62,13,15,19),(63,11,15,20),(64,2,2,20),(65,3,2,20),(66,4,15,20),(67,7,25,20),(68,10,4,20),(69,13,5,20),(70,11,15,21),(71,3,100,21),(72,3,40,22),(73,10,10,22),(74,11,50,23),(75,3,40,23),(76,3,60,24),(77,6,200,24),(78,7,2500,24),(79,11,3,25),(80,3,25,25),(81,4,10,25),(82,7,200,25),(83,10,30,25),(84,13,50,25),(85,11,25,26),(86,6,1000,26),(87,7,3000,26),(88,11,20,27),(89,3,20,27),(90,6,50,27),(91,7,1000,27),(92,10,40,27),(93,11,40,28),(94,3,12,28),(95,12,100,28),(96,6,2000,28),(97,7,3500,28),(98,14,50,28),(99,10,10,28),(100,11,60,30),(101,3,100,30),(102,6,400,30),(103,7,10,30),(104,11,500,32),(105,3,100,32),(106,6,3000,32),(107,7,8000,32),(108,11,50,33),(109,3,300,33),(110,6,50,33),(111,11,10,34),(112,2,15,34),(113,3,48,34),(114,6,25,34),(115,3,600,35),(116,6,3,35),(117,11,200,36),(118,3,300,36),(119,7,50,36),(120,10,18,36),(121,13,20,36),(122,11,30,37),(123,11,60,38),(124,3,100,38),(125,10,14,38),(126,13,3,38),(127,6,6,39),(128,10,60,41),(129,3,200,41),(130,7,1,41),(131,13,300,41),(132,11,7,40),(133,3,30,40),(134,11,20,42),(135,3,200,42),(136,13,20,42),(137,11,100,43),(138,2,20,43),(139,10,30,43),(140,11,200,44),(141,3,200,44),(142,14,50,44),(143,13,180,44),(144,2,1,45),(145,13,4,45),(146,11,50,46),(147,2,15,46),(148,13,30,46),(149,11,100,47),(150,3,200,47),(151,11,100,48),(152,10,10,48),(153,3,100,49),(154,6,30,49),(155,7,120,49),(156,11,10,50),(157,2,300,50),(158,4,30,50),(159,12,6,50),(160,10,5,50),(161,11,100,51),(162,2,50,51),(163,3,2000,51),(164,4,300,51),(165,6,400,51),(166,10,100,51),(167,11,150,52),(168,3,100,52),(169,10,26,52),(170,11,100,53),(171,3,80,53),(172,10,5,53),(173,13,30,53),(174,11,100,54),(175,2,20,54),(176,3,80,54),(177,10,10,54),(178,11,100,55),(179,7,2,55),(180,13,700,55),(181,11,40,56),(182,11,35,57),(183,3,450,57),(184,4,35,57),(185,6,25,57),(186,10,30,57),(187,11,50,58),(188,2,20,58),(189,3,25,59),(190,11,100,60),(191,2,50,60),(192,11,35,62),(193,3,80,62),(194,3,150,61),(195,3,40,63),(196,10,7,63),(197,11,20,64),(198,2,300,66),(199,3,20,67),(200,6,30,67),(201,7,2000,67),(202,11,100,69),(203,2,100,69),(204,3,200,69),(205,12,100,69),(206,13,7,69);
/*!40000 ALTER TABLE `indicador07_reforestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador08_animales`
--

DROP TABLE IF EXISTS `indicador08_animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador08_animales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador08_animales`
--

LOCK TABLES `indicador08_animales` WRITE;
/*!40000 ALTER TABLE `indicador08_animales` DISABLE KEYS */;
INSERT INTO `indicador08_animales` VALUES (1,'Vacas paridas'),(2,'Vacas horras'),(3,'Vaquillas'),(4,'Ternero de desarrollo'),(5,'Novillo'),(6,'Toros'),(7,'Pelibuey'),(8,'Cerdos'),(9,'Aves de corral'),(10,'Colmenas'),(11,'Bueyes'),(12,'Bestias'),(13,'Colmenas');
/*!40000 ALTER TABLE `indicador08_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador08_animalesfinca`
--

DROP TABLE IF EXISTS `indicador08_animalesfinca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador08_animalesfinca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animales_id` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `produccion_id` int(11) NOT NULL,
  `total_produccion` int(11) DEFAULT NULL,
  `consumo` double NOT NULL,
  `venta_libre` double NOT NULL,
  `venta_organizada` double NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `robo` int(11),
  `muerte` int(11),
  `desc` int(11),
  PRIMARY KEY (`id`),
  KEY `indicador08_animalesfinca_ad70a848` (`animales_id`),
  KEY `indicador08_animalesfinca_4153c39a` (`produccion_id`),
  KEY `indicador08_animalesfinca_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador08_animalesfinca`
--

LOCK TABLES `indicador08_animalesfinca` WRITE;
/*!40000 ALTER TABLE `indicador08_animalesfinca` DISABLE KEYS */;
INSERT INTO `indicador08_animalesfinca` VALUES (1,4,3,2,3,0,0,0,1,0,0,0),(2,8,1,6,0,0,0,0,1,0,0,0),(3,9,7,4,90,70,20,0,1,0,0,0),(4,1,3,1,540,540,0,0,2,0,1,0),(5,4,2,2,0,0,0,0,2,0,0,0),(6,5,1,2,0,0,0,0,2,0,0,0),(7,7,7,3,2,0,2,0,2,0,0,0),(8,8,16,6,9,1,9,0,2,0,0,0),(9,9,10,4,60,60,0,0,2,0,0,0),(10,7,2,3,0,0,0,0,3,0,0,0),(11,9,25,4,80,60,20,0,3,0,0,0),(12,12,1,5,0,0,0,0,3,0,0,0),(13,8,1,6,60,60,0,0,4,0,0,0),(14,9,11,4,0,0,0,0,4,0,0,0),(15,12,2,5,0,0,0,0,4,0,0,0),(16,1,1,1,0,0,0,0,5,0,0,1),(17,8,3,6,0,0,0,0,5,1,1,1),(18,9,20,4,300,180,120,0,5,0,0,0),(19,7,1,3,0,0,0,0,6,0,0,0),(20,9,30,4,0,0,0,0,6,6,0,0),(21,7,0,5,12,0,8,0,8,0,0,0),(22,8,4,6,0,0,0,0,8,0,0,0),(23,9,12,4,0,0,0,0,8,2,0,0),(24,8,1,6,166,100,66,0,9,0,0,0),(25,9,12,4,0,0,0,0,9,0,0,0),(26,13,1,5,0,0,0,0,9,0,0,0),(27,1,13,1,14400,1800,12600,0,10,0,0,0),(28,2,5,2,10,0,0,0,10,0,0,0),(29,3,5,2,10,0,0,0,10,0,0,0),(30,4,13,2,10,0,0,0,10,0,0,0),(31,6,1,2,0,0,0,0,10,0,0,0),(32,8,1,6,0,0,0,0,10,0,0,0),(33,9,50,4,180,48,132,0,10,0,0,0),(34,12,2,5,0,0,0,0,10,0,0,0),(35,2,1,2,1,0,0,0,11,0,0,0),(36,9,7,4,7,0,0,0,11,0,0,0),(37,13,17,5,17,0,0,0,11,0,0,0),(38,12,1,5,0,0,0,0,11,0,0,0),(39,1,2,1,810,810,0,0,13,0,1,0),(40,3,1,5,0,0,0,0,13,0,0,0),(41,8,1,6,0,0,0,0,13,0,0,0),(42,9,10,4,1200,600,600,0,13,0,4,0),(43,1,1,1,720,720,0,0,14,0,0,0),(44,3,1,5,0,0,0,0,14,0,0,0),(45,4,1,5,0,0,0,0,14,0,0,0),(46,9,8,4,6,6,0,0,14,0,0,0),(47,8,1,6,0,0,0,0,15,0,0,0),(48,9,10,4,0,0,0,0,15,0,0,0),(49,2,1,2,0,0,0,0,16,0,0,0),(50,3,1,2,0,0,0,0,16,0,0,0),(51,6,2,5,0,0,0,0,16,0,0,0),(52,8,3,6,0,0,0,0,16,0,0,0),(53,9,25,4,0,0,0,0,16,0,0,0),(54,12,2,5,0,0,0,0,16,0,0,0),(55,9,12,4,8,0,0,0,17,0,0,0),(56,1,1,1,1200,800,400,0,21,0,0,0),(57,4,1,5,0,0,0,0,21,0,0,0),(58,8,1,6,1,0,0,0,21,0,0,0),(59,9,13,4,180,60,12,0,21,0,0,0),(60,1,4,1,3240,240,0,0,22,0,0,0),(61,2,6,2,0,0,0,0,22,0,0,0),(62,4,4,5,0,0,0,0,22,0,0,0),(63,9,45,4,250,50,200,0,22,0,0,0),(64,1,1,1,720,720,0,0,23,0,0,0),(65,3,1,2,0,0,0,0,23,0,0,0),(66,4,1,5,0,0,0,0,23,0,0,0),(67,8,2,6,0,0,0,0,23,0,0,0),(68,9,9,4,140,50,90,0,23,0,0,0),(69,9,30,4,0,0,0,0,24,0,0,0),(70,12,1,5,0,0,0,0,24,0,0,0),(71,1,1,1,720,720,0,0,25,0,0,0),(72,4,1,5,0,0,0,0,25,0,0,0),(73,9,18,4,337,200,137,0,25,1,0,1),(74,9,20,4,300,25,275,0,26,0,0,0),(75,9,10,4,150,10,140,0,27,0,0,0),(76,12,0,5,0,0,0,0,27,0,0,0),(77,9,15,4,225,25,200,0,28,0,0,0),(78,8,0,6,1,0,0,0,29,0,0,0),(79,9,3,4,0,0,0,0,29,0,0,0),(80,9,4,4,720,240,480,0,30,0,0,0),(81,9,4,4,60,30,30,0,32,0,0,0),(82,9,10,4,150,0,150,0,33,0,0,0),(83,1,1,4,4500,0,0,0,34,0,0,0),(84,2,1,5,0,0,0,0,34,0,0,0),(85,3,1,5,0,0,0,0,34,0,0,0),(86,4,1,5,0,0,0,0,34,0,0,0),(87,9,30,5,0,0,0,0,34,0,0,0),(88,8,2,6,2,2,0,0,35,0,0,0),(89,9,30,4,1440,1440,0,0,35,0,0,0),(90,10,1,5,0,0,0,0,35,0,0,0),(91,9,35,5,100,50,50,0,36,0,5,0),(92,12,1,5,0,0,0,0,36,0,0,0),(93,8,1,5,1,0,1,1,37,0,0,0),(94,9,5,5,15,15,0,0,37,0,0,0),(95,8,2,6,2,0,2,2,38,0,0,0),(96,9,10,4,30,30,0,0,38,0,0,0),(97,8,1,6,5,0,5,0,39,0,0,0),(98,9,22,4,0,5,0,0,39,0,0,0),(99,10,3,5,0,0,0,0,39,0,0,0),(100,8,1,6,1,0,1,0,41,0,0,0),(101,9,15,4,60,60,0,0,41,0,0,0),(102,9,14,4,840,416,424,0,40,0,1,0),(103,9,20,4,30,0,0,0,42,0,0,5),(104,2,1,5,0,0,0,0,43,0,0,0),(105,3,3,5,0,0,0,0,43,0,0,0),(106,9,15,4,60,40,20,0,43,0,0,0),(107,12,5,5,0,0,0,0,43,0,0,0),(108,1,5,1,2880,2000,880,0,44,0,0,0),(109,2,4,5,0,0,0,0,44,0,0,0),(110,3,3,5,0,0,0,0,44,0,0,0),(111,4,2,5,0,0,0,0,44,0,0,0),(112,6,1,5,0,0,0,0,44,0,0,0),(113,8,2,5,0,0,0,0,44,0,0,0),(114,9,20,4,30,0,0,0,44,0,0,0),(115,12,5,5,0,0,0,0,44,0,0,0),(116,3,3,2,0,0,0,0,45,0,0,0),(117,6,1,5,0,0,0,0,45,0,0,0),(118,8,1,6,0,0,0,0,45,0,0,0),(119,9,10,4,0,0,0,0,45,0,0,0),(120,12,2,5,0,0,0,0,45,0,0,0),(121,9,65,4,915,15,900,0,46,0,4,0),(122,1,4,1,4320,3240,1080,0,47,0,0,0),(123,2,2,2,0,0,0,0,47,0,0,0),(124,3,1,2,0,0,0,0,47,0,0,0),(125,4,4,5,0,0,0,0,47,0,0,0),(126,6,1,5,0,0,0,0,47,0,0,0),(127,9,6,4,0,0,0,0,47,0,0,0),(128,10,2,5,0,0,0,0,47,0,0,0),(129,11,2,5,0,0,0,0,47,0,0,0),(130,12,3,5,0,0,0,0,47,0,0,0),(131,1,1,1,720,720,0,0,48,0,0,0),(132,3,1,2,0,0,0,0,48,0,0,0),(133,4,2,5,0,0,0,0,48,0,0,0),(134,8,1,6,0,0,0,0,48,0,0,0),(135,9,8,4,25,25,0,0,48,0,0,0),(136,8,3,6,8,0,0,0,49,0,0,0),(137,9,6,4,190,0,0,0,49,0,0,0),(138,3,1,2,0,0,0,0,50,0,0,0),(139,1,6,1,131400,131400,131400,0,51,0,0,0),(140,2,4,2,4,0,0,0,51,0,0,0),(141,3,6,2,6,0,0,0,51,0,0,0),(142,6,1,2,3,0,0,0,51,0,0,0),(143,8,2,6,10,1,9,0,51,0,0,0),(144,2,1,1,1260,1260,0,0,52,0,0,0),(145,4,1,5,0,0,0,0,52,0,0,0),(146,5,2,5,0,0,0,0,52,0,0,0),(147,9,28,4,0,0,0,0,52,0,0,0),(148,12,1,5,0,0,0,0,52,0,0,0),(149,12,4,5,0,0,0,0,53,0,0,0),(150,1,4,1,3000,3000,0,0,54,0,0,0),(151,2,2,2,0,0,0,0,54,0,0,0),(152,3,2,2,3,0,3,0,54,0,0,0),(153,4,4,5,4,0,4,0,54,0,0,0),(154,8,1,6,2,0,2,0,54,0,0,0),(155,9,10,4,20,0,10,0,54,0,0,0),(156,2,1,2,0,1,0,0,55,0,0,0),(157,3,1,2,0,1,0,0,55,0,0,0),(158,9,15,4,30,2,10,0,55,0,0,0),(159,1,1,1,1500,1500,0,0,56,0,0,0),(160,4,1,5,1,0,0,0,56,0,0,0),(161,8,1,6,1,0,0,0,56,0,0,0),(162,9,5,4,0,0,0,0,56,0,0,0),(163,12,1,5,0,0,0,0,56,0,0,0),(164,9,29,4,700,0,0,0,57,0,0,0),(165,2,1,2,0,0,0,0,58,0,0,0),(166,3,1,2,0,0,0,0,58,0,0,0),(167,8,1,6,0,0,0,0,58,0,0,0),(168,9,10,4,0,0,0,0,58,0,0,0),(169,12,1,5,0,0,0,0,58,0,0,0),(170,8,1,6,1,0,1,0,59,0,0,0),(171,9,22,4,10,0,0,0,59,3,0,0),(172,1,1,5,0,0,0,0,60,0,1,0),(173,9,15,5,0,0,0,0,60,0,0,0),(174,8,2,6,2,0,0,0,62,0,0,0),(175,9,5,4,900,0,0,0,62,0,0,0),(176,1,4,1,4860,2700,2160,0,61,0,0,0),(177,3,2,2,2,0,0,0,61,0,0,0),(178,4,5,5,5,0,0,0,61,0,0,0),(179,9,15,4,190,90,100,0,61,0,0,0),(180,8,1,6,3,0,3,0,61,0,0,0),(181,9,7,4,12,12,0,0,63,0,0,0),(182,1,5,1,3600,0,330,0,64,0,0,0),(183,2,3,5,1,0,1,0,64,0,0,0),(184,3,1,2,0,0,0,0,64,0,0,0),(185,4,2,5,2,0,2,0,64,0,0,0),(186,5,2,5,0,0,0,0,64,0,0,0),(187,9,15,4,0,0,0,0,64,0,0,0),(188,10,6,5,262,50,212,0,64,0,0,0),(189,11,1,5,0,0,0,0,64,0,0,0),(190,1,3,5,3600,700,3600,0,65,0,0,0),(191,2,10,2,0,0,0,0,65,0,0,0),(192,3,4,2,0,0,0,0,65,0,0,0),(193,4,4,5,0,0,0,0,65,0,0,0),(194,9,10,4,0,0,0,0,65,0,0,0),(195,10,1,5,0,0,0,0,65,0,0,0),(196,12,1,5,0,0,0,0,65,0,0,0),(197,1,3,1,2000,300,2000,0,66,0,0,0),(198,3,3,2,0,0,0,0,66,0,0,0),(199,4,2,5,0,0,0,0,66,0,0,0),(200,12,1,5,0,0,0,0,66,0,0,0),(201,3,0,5,0,0,0,0,67,0,0,0),(202,9,10,4,1800,60,1740,0,67,0,0,0),(203,2,2,2,0,0,0,0,68,0,0,0),(204,3,1,2,0,0,0,0,68,0,0,0),(205,4,2,5,0,0,0,0,68,0,0,0),(206,8,2,6,0,0,0,0,68,0,0,0),(207,9,4,4,1,0,1,0,68,0,0,0),(208,12,3,5,0,0,0,0,68,0,0,0),(209,1,5,1,5000,2000,3000,0,69,0,0,0),(210,2,5,2,0,0,0,0,69,0,1,0),(211,3,4,2,1,0,0,0,69,0,0,0),(212,4,5,5,5,0,0,0,69,0,0,0),(213,5,2,5,2,0,0,0,69,0,0,0),(214,7,8,3,10,0,0,0,69,0,10,0),(215,8,5,6,5,0,3,0,69,0,0,0),(216,9,300,4,100,100,0,0,69,0,0,0),(217,11,2,5,0,0,0,0,69,0,0,0),(218,12,5,5,0,0,0,0,69,0,0,0),(219,9,25,4,0,0,0,0,70,0,0,0),(220,11,2,5,0,0,0,0,70,0,0,0),(221,3,1,2,1,1,1,1,71,0,0,0),(222,7,3,3,1,1,1,1,71,0,0,0),(223,9,55,4,0,0,0,0,71,0,0,0),(224,12,1,5,0,0,0,0,71,0,0,0);
/*!40000 ALTER TABLE `indicador08_animalesfinca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador08_productoanimal`
--

DROP TABLE IF EXISTS `indicador08_productoanimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador08_productoanimal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador08_productoanimal`
--

LOCK TABLES `indicador08_productoanimal` WRITE;
/*!40000 ALTER TABLE `indicador08_productoanimal` DISABLE KEYS */;
INSERT INTO `indicador08_productoanimal` VALUES (1,'Leche','Litro'),(2,'Carne de res','Cabeza'),(3,'carne pelibuey','Cabeza'),(4,'Huevo','Docena'),(5,'No tiene','No tiene'),(6,'Carne de cerdo','Cabeza');
/*!40000 ALTER TABLE `indicador08_productoanimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador09_cultivos`
--

DROP TABLE IF EXISTS `indicador09_cultivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador09_cultivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador09_cultivos`
--

LOCK TABLES `indicador09_cultivos` WRITE;
/*!40000 ALTER TABLE `indicador09_cultivos` DISABLE KEYS */;
INSERT INTO `indicador09_cultivos` VALUES (1,'Aguacate','Cien'),(2,'Ajonjolí','Quintales'),(3,'Arroz','Quintales'),(4,'Cacao','Quintales'),(5,'Café','Quintales'),(6,'Cebolla','Libras'),(7,'Chiltoma','Libras'),(8,'Frijol','Quintales'),(9,'Guineo','Cabeza'),(10,'Jocote','Lata'),(11,'Limón','Cien'),(12,'Maíz','Libras'),(13,'Malanga','Quintales'),(14,'Mango','Cien'),(15,'Millón','Quintales'),(16,'Naranja','Cien'),(17,'Pepino','Docena'),(18,'Plátano','Cabeza'),(19,'Quequisque','Quintales'),(20,'Sorgo','Quintales'),(21,'Tomate','Libras'),(22,'Yuca','Quintales'),(23,'Grandilla','Docena'),(24,'Pipián','Docena'),(25,'Maracuyá','Docena'),(26,'Ayote','Docena'),(27,'Flor de Jamaica','Lb'),(28,'Chayote','Docena');
/*!40000 ALTER TABLE `indicador09_cultivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador09_cultivosfinca`
--

DROP TABLE IF EXISTS `indicador09_cultivosfinca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador09_cultivosfinca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cultivos_id` int(11) NOT NULL,
  `area` double NOT NULL,
  `consumo` double NOT NULL,
  `venta_libre` double,
  `venta_organizada` double,
  `encuesta_id` int(11) NOT NULL,
  `manejo_conv` double,
  `manejo_agro` double,
  `prod_conv` double,
  `prod_agro` double,
  PRIMARY KEY (`id`),
  KEY `indicador09_cultivosfinca_168c2801` (`cultivos_id`),
  KEY `indicador09_cultivosfinca_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=400 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador09_cultivosfinca`
--

LOCK TABLES `indicador09_cultivosfinca` WRITE;
/*!40000 ALTER TABLE `indicador09_cultivosfinca` DISABLE KEYS */;
INSERT INTO `indicador09_cultivosfinca` VALUES (1,7,10,5,0,45,1,0,1,0,50),(2,8,0.75,0.42,0,0,1,1,0,0,0),(3,9,1,5,0,0,1,0,1,0,0),(4,12,1,556,0,0,1,1,0,556,0),(5,20,0.5,4,0,0,1,1,0,0,0),(6,22,0.25,1,0,0.5,1,0,1,0,0),(7,3,1,8,0,0,2,1,0,8,0),(8,10,5,2,0,3,2,0,1,0,5),(9,12,0.5,200,0,0,2,1,0,200,0),(10,3,0.38,6,0,0,3,1,0,6,0),(11,8,1,1,0,0,3,1,0,1,0),(12,9,0.13,500,0,0,3,0,1,0,500),(13,10,0,30,0,0,3,0,1,0,30),(14,12,1,0,0,0,3,1,0,300,0),(15,14,0,0,0,0,3,0,1,0,3),(16,1,0,0,0,0,4,0,1,0,0),(17,3,0.25,0,0,0,4,0,1,8,0),(18,8,1.5,0,0,0,4,0,1,5,0),(19,9,0.13,90,0,0,4,0,1,90,0),(20,10,0.13,0,0,0,4,0,1,50,0),(21,11,0,0,0,20,4,0,1,0,0),(22,12,0.38,0,0,0,4,0,1,500,0),(23,17,20,14,0,0,4,0,1,14,0),(24,20,1,0,0,0,4,0,1,8,0),(25,21,28,3,0,0,4,0,1,3,0),(26,22,1,0,0,0,4,0,1,0,0),(27,23,0,0,0,18,4,0,1,20,0),(28,1,1,3,0,0,5,0,1,0,0),(29,8,2,6,0,0,5,0,1,6,0),(30,9,0.13,60,0,0,5,0,1,60,0),(31,12,0.38,0,0,0,5,0,1,800,0),(32,17,1,0,0,0,5,0,1,9,0),(33,20,0.25,0,0,3,5,0,1,10,0),(34,24,0,0,0,7,5,0,1,11,0),(35,1,1.5,0,0,0,6,0,0,0,0),(36,4,0.25,0,0,0,6,0,0,0,0),(37,5,2.75,0,0,0,6,0,0,0,0),(38,7,1.5,0,0,0,6,0,0,0,0),(39,8,0.25,0,0,0,6,0,0,0,0),(40,9,0.25,0,0,0,6,0,0,0,0),(41,12,1.5,0,0,0,6,0,0,0,0),(42,18,0.25,0,0,0,6,0,0,0,0),(43,19,0.25,0,0,0,6,0,0,0,0),(44,22,1.5,0,0,0,6,0,0,0,0),(45,24,1.5,0,0,0,6,0,0,0,0),(46,1,0.5,0,0,0,7,0,0,0,0),(47,4,0,10,NULL,0,7,0,0,0,0),(48,8,1,10,0,0,7,0,0,0,0),(49,9,2,0,0,0,7,0,0,0,0),(50,1,3,0,0,0,8,0,0,0,0),(51,5,1.25,60,0,0,8,0,0,0,0),(52,8,0.5,6,0,0,8,0,0,0,0),(53,12,1,12,0,0,8,0,0,0,0),(54,9,0.25,0,0,0,8,0,0,0,0),(55,24,0.25,0,0,0,8,0,0,NULL,0),(56,25,5,0,0,0,8,0,0,0,0),(57,5,0.25,1,0,0,9,0,1,0,1),(58,8,1,4,0,200,9,1,0,6,0),(59,12,3,30,0,1500,9,1,0,40,0),(60,8,0.5,6,0,0,10,1,0,6,0),(61,12,2,40,0,40,10,1,0,80,0),(62,26,0,2,0,0,10,1,2,0,0),(63,24,0,5,0,0,10,1,0,5,0),(64,23,0,30,0,10,10,0,1,0,40),(65,8,0.5,6,0,0,12,1,0,1,0),(66,9,0.4,30,0,0,12,0,1,0,1),(67,10,2,5,0,0,12,0,1,0,1),(68,11,2,0,0,0,12,0,1,0,1),(69,12,0.5,1000,0,0,12,1,0,1,0),(70,14,5,10,0,0,12,0,1,0,1),(71,16,15,0,0,0,12,0,1,0,1),(72,17,1,4,0,0,12,0,1,0,1),(73,18,4,20,0,0,12,0,1,0,1),(74,21,1.44,50,0,0,12,0,1,0,1),(75,22,2.25,5,0,5,12,0,1,0,1),(76,26,1,15,0,0,12,0,1,0,1),(77,24,0.25,7,0,0,12,0,1,0,1),(78,27,9,10,0,0,12,0,1,0,1),(79,5,0.25,60,0,40,13,0,0.25,0,1),(80,8,0.25,200,0,0,13,0.25,0,200,0),(81,9,0.25,40,0,40,13,0,0.25,0,400),(82,12,1.25,10,0,0,13,1.25,0,10,0),(83,18,0.0003,10,0,0,13,0,0.0003,0,10),(84,21,0,40,0,0,13,0,0.0004,0,40),(85,24,0.0225,35,0,2,13,0,0.225,0,56),(86,5,1,8,0,2,14,0,1,0,1),(87,9,0.125,15,0,0,14,0,0.5,0,15),(88,18,5,3,0,0,14,0,0,0,3),(89,8,1.5,8,0,0,15,1,0,0,0),(90,12,1,2000,0,0,15,1,0,0,0),(91,15,1.5,10,0,0,15,1,0,0,0),(92,1,40,2000,0,0,16,0,0,0,0),(93,3,0.25,8,0,0,16,0,0,0,0),(94,8,2,30,0,0,16,0,0,0,0),(95,10,3,4,0,0,16,0,0,0,0),(96,11,5,400,0,0,16,0,0,0,0),(97,12,2,60,0,0,16,0,0,0,0),(98,14,12,600,0,0,16,0,0,0,0),(99,15,3,60,0,0,16,0,0,0,0),(100,16,2,2000,0,0,16,0,0,0,0),(101,5,0,0.5,0,0,17,0,0,0,0),(102,9,0.5,20,0,0,17,0,0,0,0),(103,10,2,1,0,0,17,0,0,0,0),(104,13,20,1,0,0,17,0,0,0,0),(105,14,4,0,0,0,17,0,0,0,0),(106,18,50,20,0,0,17,0,0,0,0),(107,19,300,3,0,0,17,0,0,0,0),(108,22,200,1,0,0,17,0,0,0,0),(109,28,3,1000,0,0,17,0,0,0,0),(110,26,20,200,0,0,17,0,0,0,0),(111,24,25,300,0,0,17,0,0,0,0),(112,1,40,500,0,0,18,0,0,0,0),(113,10,20,60,0,0,18,0,0,0,0),(114,14,30,3000,0,0,18,0,0,0,0),(115,1,1.5,70,0,0,19,0,0,0,0),(116,4,1.5,0,0,0,19,0,0,0,0),(117,8,1,8,0,0,19,0,0,0,0),(118,9,1.5,0,0,0,19,0,0,0,NULL),(119,10,1,0,0,0,19,0,0,0,0),(120,12,1,5,NULL,0,19,0,0,0,0),(121,24,0.25,15,0,0,19,0,0,0,0),(122,23,10,2,0,0,19,0,0,0,0),(123,1,4.5,300,0,0,20,0,0,0,0),(124,3,0.25,7,0,0,20,0,0,0,0),(125,8,1,8,0,0,20,0,0,0,0),(126,9,0.25,200,0,0,20,0,0,0,0),(127,12,1,80,0,0,20,0,0,0,0),(128,13,10,0.5,0,0,20,0,0,0,0),(129,14,4.5,200,0,0,20,0,0,0,0),(130,16,4.5,0,0,0,20,0,0,0,0),(131,18,4.5,200,0,0,20,0,0,0,0),(132,28,0.04,3,0,0,20,0,0,0,0),(133,23,0.04,1,0,0,20,0,0,0,0),(134,1,2,2,0,80,21,0,1,0,3),(135,5,1,1,0,3,21,0,1,0,4),(136,6,3,20,0,0,21,0,1,0,20),(137,7,3,16,0,0,21,0,1,0,13),(138,8,0.5,3,0,0,21,1,0,2,0),(139,9,0.25,13,0,0,21,0,1,0,13),(140,12,0.5,1200,0,0,21,1,0,7,700),(141,13,20,1,0,0,21,0,1,0,1),(142,14,2,1,0,0,21,0,1,0,1),(143,16,4,1,0,0,21,0,1,0,2),(144,18,5,5,0,0,21,0,1,0,6),(145,19,6,1,0,0,21,0,1,0,1),(146,21,0.25,1000,0,1,21,1,0,5000,0),(147,22,10,1,0,0,21,0,1,0,1),(148,24,8,12,0,0,21,0,1,0,12),(149,7,0,15,0,0,22,0,1,0,15),(150,8,2,4,0,6,22,1,0,10,0),(151,9,0.001423,6,0,6,22,0,1,0,6),(152,10,0.00085,1,0,0,22,0,1,1,0),(153,11,0.00014,0,0,0,22,0,1,0,0),(154,12,0.0019,8,0,0,22,1,0,12,0),(155,13,0.0028,0,0,0,22,0,1,0,0),(156,14,0.00085,0,0,0,22,0,1,0,0),(157,15,0.5,2,0,0,22,1,0,2,0),(158,18,0.0014,5,0,0,22,0,1,0,5),(159,19,0.0042,0.5,0,0,22,0,1,0,0.5),(160,22,0.0017,1,0,0,22,0,1,0,1),(161,25,0.00056,6,0,0,22,0,1,0,6),(162,23,0.00056,7,0,0,22,0,1,0,7),(163,5,0.25,0.5,0,0,23,0,1,0,0.5),(164,6,0.3,200,0,500,23,0,1,0,700),(165,7,0.3,130,0,500,23,1,0,630,0),(166,8,0.06,2,0,6,23,1,0,8,0),(167,9,0.06,4,0,0,23,0,1,0,4),(168,12,1,12,0,0,23,1,0,2,0),(169,18,0.06,5,0,0,23,0,1,0,5),(170,24,0.1,4,0,0,23,0,1,0,4),(171,25,0.00028,5,0,0,23,0,1,0,5),(172,6,0.3,700,0,40,24,0,0,0,1400),(173,8,1,10,0,6,24,1,0,16,0),(174,11,0.1,500,0,100,24,0,1,0,500),(175,12,1,1000,0,2000,24,1,0,3000,0),(176,13,0.25,10,0,10,24,0,1,0,20),(177,14,0.25,500,0,1000,24,0,1,0,2000),(178,16,2,60,0,40,24,0,1,0,100),(179,17,0.1,30,0,0,24,0,1,0,30),(180,18,0.25,100,0,0,24,0,1,0,100),(181,21,0.25,400,0,0,24,1,0,400,0),(182,22,0.25,2,0,0,24,0,1,0,1),(183,28,0.03,25,0,0,24,0,1,0,25),(184,26,0.03,15,0,0,24,0,1,0,25),(185,24,0.06,23,0,0,24,0,1,0,15),(186,27,0.3,200,0,0,24,0,1,0,60),(187,5,0,1,0,40,24,0,0,0,41),(188,9,0.5,400,0,100,24,0,1,0,500),(189,1,0,200,0,330,24,0,1,0,550),(190,1,0,150,0,0,25,0,1,0,200),(191,5,0.5,1,0,19,25,0,1,0,20),(192,6,0,50,0,19,25,0,1,0,20),(193,7,0,6,0,0,25,0,1,0,6),(194,8,2,4,0,0,25,1,0,2,0),(195,9,0.25,15,0,0,25,0,1,0,25),(196,11,0,120,0,0,25,0,1,0,300),(197,12,1,600,0,0,25,1,0,250,0),(198,14,0.25,500,0,0,25,0,1,0,2000),(199,16,0.25,200,0,500,25,0,1,0,900),(200,18,0.25,10,0,10,25,0,1,0,20),(201,21,0,50,0,0,25,0,1,0,50),(202,28,0,10,0,10,25,0,1,0,20),(203,26,0,10,0,0,25,0,1,0,12),(204,24,0,5,0,0,25,0,1,0,6),(205,25,0,30,0,17,25,0,1,0,48),(206,23,0,3,0,2,25,0,1,0,6),(207,1,4,50,0,4000,26,1,0,1,0),(208,5,4,0,0,20,26,1,0,0,0),(209,8,3,10,0,25,26,1,0,0,0),(210,11,0,100,0,6000,26,1,0,0,0),(211,12,3,1200,0,4000,26,0,0,0,0),(212,16,200,200,0,8000,26,1,0,0,0),(213,1,1,0,0,0,27,0,0,0,0),(214,8,1,3,0,0,27,0.25,0,0.25,0),(215,12,1,80,0,40,27,0,0,0,0),(216,1,0.25,20,0,200,28,1,0,1,0),(217,5,0.75,0.25,0,4,28,1,0,1,0),(218,8,0.75,7,0,6,28,1,0,1,0),(219,9,0.25,0,0,10,28,1,0,1,0),(220,12,2.25,8,0,10,28,1,0,1,0),(221,16,0.25,200,0,12000,28,1,0,1,0),(222,8,0.5,0,0,0,29,0,0,0,0),(223,12,0.5,24,0,0,29,0,0,0,0),(224,5,0.25,0,0,5,30,0,0,5,0),(225,8,1,0,0,20,30,0,0,0,20),(226,12,1,0,0,30,30,0,0,0,30),(227,22,0.25,0,0,6,30,0,0,0,6),(228,1,0.119,0,0,300,32,0,0,300,0),(229,4,0.004,0,0,0,32,0,0,1,0),(230,5,3,15,0,25,32,0,0,40,0),(231,8,1,0,0,0,32,0,0,1,0),(232,9,0.005,0,0,0,32,0,0,2000,0),(233,15,0.5,5,0,5,32,0,0,10,0),(234,16,0.5,500,0,5500,32,0,0,6000,0),(235,5,5,0,0,0,33,0,0,26,0),(236,8,2,0,0,0,33,0,0,0,20),(237,10,0,0,0,15,33,0,0,13,0),(238,11,0,0,0,500,33,0,0,500,0),(239,16,0,0,0,100,33,0,0,100,0),(240,5,0.25,0,0,0,34,0,0,0,0),(241,8,4,4,0,0,34,0,0,0,0),(242,12,4,20,0,0,34,0,0,0,0),(243,5,1,0.5,0,23,35,1,0,23,0),(244,8,0.5,15,0,5,35,0.5,0,5,0),(245,9,1,216,0,480,35,1,0,480,0),(246,12,3,60,0,0,35,3,0,60,0),(247,14,1,2,0,0,35,0,1,0,8),(248,16,1,10,0,0,35,0,1,0,10),(249,8,0,5,0,10,36,0,0,15,0),(250,12,0,20,0,20,36,0,0,40,0),(251,28,0,8,0,0,36,0,0,0,NULL),(252,26,0,8,0,0,36,0,0,0,0),(253,24,0,8,0,0,36,0,0,0,0),(254,8,1.5,2,0,23,37,0,0,25,0),(255,12,1,10,0,23,37,0,0,23,0),(256,8,1,10,0,10,38,1,0,10,0),(257,9,1,60,0,10,38,1,0,60,0),(258,12,1,20,0,10,38,1,0,30,0),(259,1,1.5,3,0,0,39,3,0,3,0),(260,5,1.5,0.5,0,1.5,39,1.5,0,26,0),(261,8,1,10,0,25,39,1,0,25,0),(262,9,1.5,144,0,300,39,1.5,0,300,0),(263,10,1.5,2,0,0,39,1.5,0,13,0),(264,12,2,12,0,58,39,2,0,70,0),(265,13,0.125,6,0,4,39,0.125,0,4,0),(266,14,1.5,40,0,0,39,1.5,0,40,0),(267,16,1.5,20,0,30,39,1.5,0,30,0),(268,28,1.5,50,0,0,39,1.5,0,50,0),(269,1,1,300,0,0,41,0,1,300,0),(270,8,2,10,0,20,41,2,0,30,0),(271,12,1,30,0,0,41,1,0,30,0),(272,5,1.5,1,0,2,40,1.5,0,1.5,0),(273,8,2,5,0,10,42,2,0,0,0),(274,12,2,20,0,10,42,0,0,0,0),(275,20,1,6,0,0,42,0,0,0,0),(276,8,2.5,10,0,30,43,0,0,0,30),(277,11,5,0,0,0,43,0,0,0,0),(278,12,0,20,0,10,43,0,0,0,20),(279,21,0.25,100,0,0,43,0,0,0,0),(280,26,0.25,15,0,0,43,0,0,0,0),(281,24,0.25,20,0,80,43,0,0,0,0),(282,8,34,25,0,20,44,0,0,0,0),(283,12,4,30,0,20,44,0,0,0,0),(284,20,1,20,0,0,44,0,0,0,0),(285,1,1,0,0,0,45,0,0,0,0),(286,8,15,15,0,10,45,1,0,20,0),(287,11,500,0,0,0,45,0,0,0,0),(288,12,10,10,0,0,45,1,0,5,0),(289,14,500,300,0,0,45,0,0,0,0),(290,15,10,10,0,0,45,0,0,0,0),(291,16,200,200,0,0,45,0,0,0,0),(292,20,0,10,0,0,45,1,0,0,0),(293,1,6,0,0,0,46,0,0,0,0),(294,10,3,0,0,0,46,0,0,0,0),(295,13,3.5,0,0,0,46,0,NULL,0,0),(296,14,20,0,0,0,46,0,0,0,0),(297,16,15,0,0,0,46,0,0,0,0),(298,20,5,0,0,0,46,0,0,0,0),(299,28,17,0,0,0,46,0,0,0,0),(300,26,50,0,0,0,46,0,0,0,0),(301,24,50,0,0,0,46,0,0,0,0),(302,8,4,4,0,4,47,0,1,0,8),(303,12,2,18,0,0,47,0,1,0,75),(304,20,2,100,0,0,47,0,1,0,0),(305,1,1,1,0,2,48,0,0,0,0),(306,8,1,10,0,10,48,0,0,0,0),(307,11,1,1,0,0,48,0,0,0,0),(308,12,1,20,0,0,48,0,0,0,0),(309,14,1,3,0,0,48,0,0,0,0),(310,26,0.25,20,0,20,48,0,0,0,0),(311,1,2,100,0,0,49,0,0,0,0),(312,5,0.25,0.5,0,NULL,49,0,0,0,0),(313,8,1,0,0,0,49,0,0,0,0),(314,9,20,10,0,0,49,0,0,0,0),(315,11,6,100,0,0,49,0,0,0,0),(316,12,1,1000,0,0,49,0,0,0,0),(317,14,17,100,0,0,49,0,0,0,0),(318,15,1,7,0,0,49,0,0,0,0),(319,16,33,100,0,0,49,0,0,0,0),(320,18,20,20,0,0,49,0,0,0,0),(321,28,3,0,0,0,49,0,0,0,0),(322,26,20,3,0,0,49,0,0,0,0),(323,24,10,2,0,0,49,0,0,0,0),(324,25,1,8,0,0,49,0,0,0,0),(325,23,1,2,0,0,49,0,0,0,0),(326,7,1,1,0,500,50,1,0,50,0),(327,8,1,3,0,5,50,0,1,0,8),(328,12,1,8,0,7,50,0,1,0,15),(329,1,0.12,500,0,0,51,0,0,0,0),(330,5,0,4,0,16,51,0,0,0,0),(331,8,50,0,0,25,51,0,0,0,0),(332,9,2000,0,0,200,51,0,0,0,0),(333,11,0,1000,0,0,51,0,0,0,0),(334,16,0,3000,0,0,51,0,0,0,0),(335,22,0,10,0,0,51,0,0,0,0),(336,26,0,25,0,0,51,0,0,0,0),(337,8,2,6,0,24,52,0,1,0,30),(338,12,8,0,0,7,52,1,0,0,15),(339,8,3,0,0,0,53,0,0,0,0),(340,9,10,0,0,0,53,0,0,0,0),(341,10,4,0,0,0,53,0,0,0,0),(342,12,30,0,0,0,53,0,0,0,0),(343,18,10,0,0,0,53,0,0,0,0),(344,26,2,0,0,0,53,0,0,0,0),(345,24,2,0,0,0,53,0,0,0,0),(346,8,1,10,0,0,54,1,0,1,0),(347,12,2,3000,0,0,54,2,0,2,0),(348,8,2,10,0,15,55,2,0,2,0),(349,10,30,80,0,0,55,0,0,0,0),(350,12,2,30,0,0,55,2,0,2,0),(351,26,10,0,0,0,55,0,0,0,0),(352,6,0.5,0,0,0,56,0,0,0,0),(353,8,0.5,3,0,0,56,0,0,0,0),(354,12,0.5,10,0,0,56,0,0,0,0),(355,3,0.5,2,0,8,57,0,0,0,0),(356,4,7,7,0,0,57,0,0,0,0),(357,8,2.5,2,0,0,57,0,0,0,0),(358,12,1.5,29,0,0,57,0,0,0,0),(359,8,1,4,0,0,58,0,0,0,0),(360,12,1,10,0,0,58,0,0,0,0),(361,8,0.28,1,0,0,59,0,0,0,0),(362,12,0.28,1000,0,0,59,0,0,0,0),(363,8,2,2,0,0,60,0,0,0,0),(364,9,200,200,0,0,60,0,0,0,0),(365,12,1,40,0,NULL,60,0,0,0,0),(366,14,15,0,0,0,60,0,0,0,0),(367,15,0.25,0,0,0,60,0,0,0,0),(368,18,20,0,0,0,60,0,0,0,0),(369,8,1,5,0,0,62,0,0,0,0),(370,12,1,20,0,0,62,0,0,0,0),(371,1,0,120,0,0,61,0,0,0,0),(372,8,0.96,4,0,0,61,0.96,0,0.96,0),(373,12,1.45,2500,0,0,61,1.45,0,1.45,0),(374,12,0.25,300,0,0,63,0,0,0,0),(375,12,1,10,0,0,64,0,1,0,1),(376,8,1,1,0,0,65,0,0,0,0),(377,12,1,4,0,0,65,0,0,0,0),(378,5,0.75,0,0,8,67,0,0,0,8),(379,12,1,0,0,0,67,0,0,0,25),(380,8,1,6,0,0,66,0,1,0,1),(381,12,1,16,0,0,66,0,1,0,1),(382,8,6,4,0,40,68,1,0,1,0),(383,12,1,150,0,0,68,1,0,1,0),(384,15,3,20,0,20,68,1,0,1,0),(385,3,30.5,30,0,0,69,1,0,30,0),(386,22,5,0,0,0,69,0,0,0,0),(387,7,0.1,60,240,0,70,0,0.1,0,300),(388,8,1,0,0,0,70,0,0,0,0),(389,9,0.5,10,0,200,70,0,0.5,0,300),(390,12,0.25,300,200,0,70,0,0.25,0,300),(391,15,0.5,0,0,0,70,0,0,0,0),(392,3,1,16,0,16,71,26,6,0,0),(393,8,2.5,2,0,0,71,0,0,2,0),(394,9,0.25,6000,0,0,71,0,0,6000,0),(395,12,0,4,0,6,71,10,0,0,0),(396,14,0,1000,0,0,71,3000,0,0,0),(397,15,0,8,0,0,71,8,0,8,0),(398,16,0,0,0,0,71,0,0,1000,0),(399,20,0.125,2,0,0,71,2,0,0,0);
/*!40000 ALTER TABLE `indicador09_cultivosfinca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador09_cultivosfinca_excedente`
--

DROP TABLE IF EXISTS `indicador09_cultivosfinca_excedente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador09_cultivosfinca_excedente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cultivosfinca_id` int(11) NOT NULL,
  `excedente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador09_cultivosfinc_cultivosfinca_id_6667af5bbbc0c495_uniq` (`cultivosfinca_id`,`excedente_id`),
  KEY `indicador09_cultivosfinca_excedente_db3e4e1` (`cultivosfinca_id`),
  KEY `indicador09_cultivosfinca_excedente_ebb209d4` (`excedente_id`)
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador09_cultivosfinca_excedente`
--

LOCK TABLES `indicador09_cultivosfinca_excedente` WRITE;
/*!40000 ALTER TABLE `indicador09_cultivosfinca_excedente` DISABLE KEYS */;
INSERT INTO `indicador09_cultivosfinca_excedente` VALUES (2,1,1),(3,2,4),(4,3,4),(5,4,1),(6,4,2),(7,5,4),(8,6,1),(9,7,2),(10,8,1),(11,9,2),(12,10,2),(13,11,2),(14,12,1),(15,12,2),(16,13,1),(17,13,2),(18,14,1),(19,14,2),(20,15,4),(21,16,4),(22,17,2),(23,18,1),(24,19,2),(25,20,2),(26,21,1),(27,22,1),(28,23,4),(29,24,1),(30,25,4),(31,26,4),(32,27,1),(33,28,1),(34,29,1),(35,29,2),(36,30,1),(37,30,2),(38,31,1),(39,32,2),(40,33,1),(41,34,1),(42,35,1),(43,36,4),(44,37,4),(45,38,4),(46,39,4),(47,40,4),(48,41,4),(49,42,4),(50,43,4),(51,44,4),(52,45,4),(53,46,1),(54,47,4),(55,48,4),(56,49,1),(57,50,1),(58,51,4),(59,52,4),(60,53,4),(61,54,1),(62,55,1),(63,56,4),(64,57,4),(65,58,4),(66,59,4),(67,60,4),(68,61,4),(69,62,4),(70,63,4),(71,64,4),(72,65,4),(249,66,4),(74,67,4),(75,68,4),(76,69,4),(77,70,4),(78,71,4),(250,72,4),(251,73,4),(252,74,4),(253,75,4),(254,76,4),(255,77,4),(256,78,4),(86,79,4),(87,80,4),(88,81,4),(89,82,4),(90,83,4),(91,84,4),(92,85,4),(93,86,2),(257,87,4),(258,88,4),(96,89,4),(97,90,4),(98,91,4),(99,92,4),(100,93,4),(101,94,4),(102,95,4),(103,96,4),(104,97,4),(105,98,4),(106,99,4),(107,100,4),(108,101,4),(109,102,4),(110,103,4),(111,104,4),(112,105,4),(113,106,4),(114,107,4),(115,108,4),(116,109,4),(117,110,4),(118,111,4),(119,112,4),(120,113,4),(121,114,4),(122,115,4),(123,116,4),(124,117,4),(125,118,4),(126,119,4),(127,120,4),(128,121,4),(129,122,4),(130,123,4),(131,124,4),(132,125,4),(133,126,4),(134,127,4),(135,128,4),(136,129,4),(137,130,4),(138,131,4),(259,132,4),(260,133,4),(141,134,1),(142,135,4),(143,136,4),(144,137,4),(145,138,4),(146,139,4),(147,140,4),(148,141,4),(149,142,4),(150,143,4),(151,144,4),(152,145,4),(153,146,4),(154,147,4),(155,148,4),(156,149,4),(157,150,4),(261,151,4),(262,152,4),(263,153,4),(264,154,1),(265,155,4),(266,156,4),(164,157,4),(267,158,4),(268,159,4),(269,160,4),(270,161,4),(271,162,4),(272,163,4),(273,164,4),(274,165,4),(275,166,4),(276,167,4),(277,168,4),(278,169,4),(279,170,4),(280,171,4),(179,172,4),(180,173,4),(181,174,4),(182,175,4),(183,176,4),(184,177,1),(185,178,4),(186,179,4),(187,180,4),(188,181,4),(189,182,4),(190,183,4),(191,184,4),(192,185,1),(193,186,4),(194,187,1),(195,188,4),(196,189,1),(197,190,1),(198,191,4),(199,192,1),(200,193,4),(201,194,4),(202,195,1),(203,196,1),(204,196,3),(205,197,4),(206,198,1),(207,198,3),(208,199,1),(209,200,4),(210,201,4),(211,202,4),(212,203,1),(213,204,1),(214,205,1),(215,206,1),(216,207,4),(217,208,4),(218,209,4),(219,210,4),(220,211,4),(221,212,4),(222,213,4),(223,214,2),(224,215,4),(225,216,4),(226,217,4),(227,218,4),(228,219,4),(229,220,4),(230,221,4),(231,222,4),(232,223,4),(233,224,4),(234,225,4),(235,226,4),(236,227,4),(237,228,4),(238,229,4),(239,230,4),(240,231,4),(241,232,4),(242,233,4),(243,234,4),(244,235,4),(245,236,4),(246,237,4),(247,238,4),(248,239,4),(281,240,4),(282,241,4),(283,242,4),(284,243,4),(285,244,4),(286,245,4),(287,246,4),(288,247,3),(289,248,4),(290,249,4),(291,250,4),(292,251,4),(293,252,4),(294,253,4),(295,254,4),(296,255,4),(297,256,2),(298,257,4),(299,258,4),(300,259,4),(301,260,4),(302,261,4),(303,262,1),(304,263,1),(305,263,3),(306,264,4),(307,265,4),(308,266,4),(309,267,1),(310,268,1),(311,268,3),(312,269,4),(313,270,4),(314,271,4),(315,272,4),(316,273,2),(317,274,4),(318,275,2),(319,276,4),(320,277,1),(321,278,4),(322,279,1),(323,280,1),(324,280,2),(325,281,1),(326,282,4),(327,283,4),(328,284,4),(329,285,4),(330,286,1),(331,287,4),(332,288,4),(333,289,4),(334,290,4),(335,291,4),(336,292,4),(337,293,4),(338,294,4),(339,295,4),(340,296,4),(341,297,4),(342,298,4),(343,299,4),(344,300,4),(345,301,4),(346,302,4),(347,303,4),(348,304,4),(349,305,2),(350,306,4),(351,307,4),(352,308,4),(353,309,1),(354,310,1),(355,311,4),(356,312,4),(357,313,4),(358,314,4),(359,315,4),(360,316,4),(361,317,4),(362,318,4),(363,319,4),(364,320,4),(365,321,4),(366,322,4),(367,323,4),(368,324,4),(369,325,4),(370,326,4),(371,327,3),(372,328,2),(373,329,3),(374,330,4),(375,331,4),(376,332,3),(377,333,3),(378,334,3),(379,335,4),(380,336,3),(381,337,1),(382,337,2),(383,338,1),(384,338,2),(385,339,4),(386,340,4),(387,341,1),(388,342,4),(389,343,4),(390,344,4),(391,345,4),(392,346,4),(393,347,4),(394,348,4),(395,349,4),(396,350,4),(397,351,4),(398,352,4),(399,353,4),(400,354,4),(401,355,4),(402,356,4),(403,357,4),(404,358,4),(405,359,4),(406,360,4),(407,361,4),(408,362,4),(409,363,4),(410,364,4),(411,365,4),(412,366,4),(413,367,4),(414,368,4),(415,369,4),(416,370,4),(417,371,1),(418,372,4),(419,373,4),(420,374,4),(421,375,4),(422,376,4),(423,377,4),(424,378,4),(425,379,4),(426,380,4),(427,381,4),(428,382,4),(429,383,4),(430,384,4),(431,385,4),(432,386,4),(433,387,4),(434,388,4),(435,389,1),(436,390,4),(437,391,4),(438,392,2),(439,393,3),(440,394,4),(441,395,1),(442,395,2),(443,395,3),(444,396,3),(445,397,4),(446,398,2),(447,399,4);
/*!40000 ALTER TABLE `indicador09_cultivosfinca_excedente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador09_excedente`
--

DROP TABLE IF EXISTS `indicador09_excedente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador09_excedente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador09_excedente`
--

LOCK TABLES `indicador09_excedente` WRITE;
/*!40000 ALTER TABLE `indicador09_excedente` DISABLE KEYS */;
INSERT INTO `indicador09_excedente` VALUES (1,'Regala'),(2,'Cambia'),(3,'Lo deja perder'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador09_excedente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador10_manejoagro`
--

DROP TABLE IF EXISTS `indicador10_manejoagro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador10_manejoagro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador10_manejoagro`
--

LOCK TABLES `indicador10_manejoagro` WRITE;
/*!40000 ALTER TABLE `indicador10_manejoagro` DISABLE KEYS */;
INSERT INTO `indicador10_manejoagro` VALUES (1,'Biofertilizantes','Litros'),(2,'Estiercoleras','Quintales'),(3,'Insecticida natural','Litros'),(4,'Fungicida natural','Litros'),(5,'Conservaciones de semilla','Libras'),(6,'Selección de semilla nativa','Libras'),(7,'Cerca viva','Varas'),(8,'Cortina rompe viento','varas'),(9,'Abonos verdes','Libras'),(10,'Curva a nivel','Varas'),(11,'Acequia','Varas'),(12,'Barrera viva','Varas'),(13,'Barrera muerta','Varas'),(14,'Cosecha de agua','Litros'),(15,'Cultivo asociado','Manzana'),(16,'Incorporación de rastrojo','Manzana'),(17,'Compost','qq'),(18,'Lombricultura','Lb'),(19,'Apicultura','Lb'),(20,'Medicina Natural','Lb'),(21,'Ronda corta fuego','Mz'),(22,'Selección de semilla criolla','Lb');
/*!40000 ALTER TABLE `indicador10_manejoagro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador10_opcionesmanejo`
--

DROP TABLE IF EXISTS `indicador10_opcionesmanejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador10_opcionesmanejo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uso_id` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `menor_escala` int(11) NOT NULL,
  `mayor_escala` int(11) NOT NULL,
  `volumen` double NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador10_opcionesmanejo_7b812cfc` (`uso_id`),
  KEY `indicador10_opcionesmanejo_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=799 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador10_opcionesmanejo`
--

LOCK TABLES `indicador10_opcionesmanejo` WRITE;
/*!40000 ALTER TABLE `indicador10_opcionesmanejo` DISABLE KEYS */;
INSERT INTO `indicador10_opcionesmanejo` VALUES (1,1,3,1,2,0,1),(2,2,2,1,2,0,1),(3,3,3,1,2,0,1),(4,4,2,2,2,0,1),(5,17,3,1,2,0,1),(6,18,1,2,2,0,1),(7,19,1,2,2,0,1),(8,20,3,2,2,0,1),(9,5,2,2,2,0,1),(10,6,1,2,2,0,1),(11,14,3,2,2,0,1),(12,7,3,2,2,0,1),(13,8,2,2,2,0,1),(14,9,2,2,2,0,1),(15,10,2,1,2,0,1),(16,11,2,2,2,0,1),(17,12,1,2,2,0,1),(18,13,3,1,2,0,1),(19,21,1,2,2,0,1),(20,15,2,2,2,0,1),(21,16,2,1,2,0,1),(22,1,2,2,2,0,2),(23,4,1,2,2,0,2),(24,17,1,1,2,0,2),(25,19,1,2,2,0,2),(26,20,1,2,2,0,2),(27,5,3,1,2,0,2),(28,22,3,1,2,0,2),(29,14,1,2,2,0,2),(30,7,4,1,1,100,2),(31,8,2,2,2,0,2),(32,9,4,1,2,10,2),(33,10,3,2,2,0,2),(34,11,3,2,2,0,2),(35,12,4,1,1,50,2),(36,13,3,2,2,0,2),(37,15,4,2,2,0,2),(38,16,2,2,2,0,2),(39,1,2,2,2,0,3),(40,2,2,2,2,0,3),(41,3,2,2,2,0,3),(42,4,2,2,2,0,3),(43,17,4,1,2,0,3),(44,18,1,2,2,0,3),(45,19,1,2,2,0,3),(46,20,2,2,2,0,3),(47,5,2,1,2,0,3),(48,22,3,1,2,0,3),(49,14,2,2,2,0,3),(50,7,3,1,2,0,3),(51,8,2,2,2,0,3),(52,9,1,2,2,0,3),(53,10,4,1,2,0,3),(54,11,1,2,2,0,3),(55,12,2,1,2,0,3),(56,13,3,1,2,0,3),(57,21,1,2,2,0,3),(58,15,2,2,2,0,3),(59,16,3,1,2,0,3),(60,1,4,1,2,0,4),(61,2,3,2,2,0,4),(62,3,3,1,2,0,4),(63,4,3,1,2,0,4),(64,17,4,1,2,0,4),(65,18,1,2,2,0,4),(66,19,1,2,2,0,4),(67,20,3,1,2,0,4),(68,5,3,1,2,0,4),(69,22,3,1,2,0,4),(70,14,1,2,2,0,4),(71,7,2,1,2,0,4),(72,8,1,2,2,0,4),(73,9,4,1,1,200,4),(74,10,3,1,2,0,4),(75,11,1,2,2,0,4),(76,12,2,1,2,0,4),(77,13,3,1,2,0,4),(78,21,1,2,2,0,4),(79,15,4,1,2,0,4),(80,16,4,1,2,0,4),(81,1,4,1,1,0,5),(82,2,3,1,2,0,5),(83,3,3,1,2,0,5),(84,4,3,1,2,0,5),(85,17,4,1,2,0,5),(86,18,1,2,2,0,5),(87,19,1,2,2,0,5),(88,20,4,1,2,0,5),(89,5,3,1,2,0,5),(90,22,3,1,2,0,5),(91,14,3,2,2,0,5),(92,7,1,2,2,0,5),(93,8,1,2,2,0,5),(94,9,3,1,2,0,5),(95,10,3,1,2,0,5),(96,11,1,2,2,0,5),(97,12,1,2,2,0,5),(98,13,4,1,2,0,5),(99,21,1,2,2,0,5),(100,15,4,1,2,0,5),(101,16,3,1,2,0,5),(102,8,1,1,2,200,6),(103,10,1,1,2,150,6),(104,12,1,2,2,200,6),(105,1,2,1,2,1200,7),(106,18,2,1,2,3,7),(107,12,2,2,2,450,7),(108,1,2,1,2,9,8),(109,18,3,1,2,3,8),(110,20,3,1,2,0,8),(111,11,1,1,2,200,8),(112,12,3,1,2,0,8),(113,13,3,1,2,200,8),(114,1,1,2,2,0,9),(115,2,1,2,2,0,9),(116,3,1,2,2,0,9),(117,4,1,2,2,0,9),(118,17,1,1,2,0,9),(119,18,1,1,2,0,9),(120,19,1,1,2,0,9),(121,20,1,2,2,0,9),(122,5,1,1,2,60,9),(123,22,1,1,2,60,9),(124,14,1,1,2,0,9),(125,7,1,1,2,500,9),(126,8,1,2,2,0,9),(127,9,1,1,2,20,9),(128,10,1,2,2,0,9),(129,11,1,2,2,0,9),(130,12,1,2,2,0,9),(131,13,1,2,2,0,9),(132,21,1,2,2,0,9),(133,15,1,1,2,0,9),(134,16,1,1,2,1,9),(135,1,1,2,2,0,10),(136,2,1,1,2,2,10),(137,18,1,1,2,8.8,10),(138,5,1,1,2,95,10),(139,22,1,1,2,90,10),(140,7,1,1,2,20,10),(141,12,1,1,2,50,10),(142,1,1,1,2,25,11),(143,2,1,2,2,0,11),(144,3,1,2,2,0,11),(145,4,1,2,2,0,11),(146,17,1,1,1,40,11),(147,18,1,1,1,30,11),(148,5,1,1,2,30,11),(149,22,1,1,2,25,11),(150,14,1,2,2,0,11),(151,7,1,1,2,25,11),(152,8,1,2,2,0,11),(153,9,1,1,2,10,11),(154,10,1,1,2,25,11),(155,12,1,1,2,25,11),(156,13,1,2,2,0,11),(157,21,1,2,2,0,11),(158,15,1,1,2,0.5,11),(159,16,1,2,2,0,11),(160,1,1,2,2,0,12),(161,2,1,2,2,0,12),(162,3,3,1,2,10,12),(163,4,3,1,2,4,12),(164,17,4,1,2,18,12),(165,18,1,2,2,0,12),(166,5,1,2,2,0,12),(167,22,3,1,2,40,12),(168,14,1,2,2,0,12),(169,7,3,1,2,500,12),(170,8,3,1,2,90,12),(171,9,2,1,2,1,12),(172,12,2,1,2,90,12),(173,21,4,1,2,0.5,12),(174,15,3,1,2,0.28,12),(175,16,1,2,2,0,12),(176,10,1,2,2,0,12),(177,1,1,1,1,40,13),(178,2,1,1,1,60,13),(179,3,1,2,2,0,13),(180,4,1,2,2,0,13),(181,15,1,1,1,0.25,13),(182,7,1,1,1,300,13),(183,8,1,1,2,0,13),(184,9,1,1,1,50,13),(185,10,1,1,1,200,13),(186,11,1,1,1,150,13),(187,12,1,1,1,350,13),(188,13,1,1,1,200,13),(189,16,1,2,1,1.5,13),(190,17,1,1,1,5,13),(191,18,1,1,1,160,13),(192,19,1,2,1,0,13),(193,20,1,1,2,0,13),(194,21,1,1,1,7,13),(195,22,1,1,1,40,13),(196,1,1,2,2,0,14),(197,2,1,2,2,0,14),(198,3,1,2,2,0,14),(199,4,1,2,2,0,14),(200,17,1,2,2,0,14),(201,18,4,1,1,50,14),(202,19,1,2,2,0,14),(203,20,4,2,1,0,14),(204,5,1,2,2,0,14),(205,22,1,2,2,0,14),(206,14,1,2,2,0,14),(207,7,3,1,2,20,14),(208,8,3,1,2,20,14),(209,9,1,2,2,0,14),(210,10,1,2,2,0,14),(211,11,1,2,2,0,14),(212,12,1,2,2,0,14),(213,13,1,2,2,0,14),(214,21,1,2,2,0,14),(215,15,2,1,2,1,14),(216,16,1,2,2,0,14),(217,1,1,2,2,0,15),(218,2,1,2,2,0,15),(219,3,1,2,2,0,15),(220,4,1,2,2,0,15),(221,17,1,2,2,0,15),(222,18,1,2,2,0,15),(223,19,1,2,2,0,15),(224,20,3,1,2,0,15),(225,5,1,2,2,0,15),(226,22,2,1,2,20,15),(227,12,3,1,2,200,15),(228,16,3,1,2,1,15),(229,1,1,1,2,0,16),(230,5,1,1,2,0,16),(231,22,1,1,2,0,16),(232,14,1,2,2,0,16),(233,7,1,2,2,0,16),(234,8,1,2,2,0,16),(235,9,1,2,2,0,16),(236,10,1,1,1,2500,16),(237,11,1,2,2,0,16),(238,12,1,2,2,0,16),(239,13,1,2,2,0,16),(240,21,1,2,2,0,16),(241,15,1,2,2,0,16),(242,16,1,2,2,0,16),(243,1,1,2,2,0,17),(244,2,1,2,2,0,17),(245,3,1,2,2,0,17),(246,4,1,2,2,0,17),(247,17,1,2,2,0,17),(248,18,1,1,1,50,17),(249,19,1,2,2,0,17),(250,20,1,2,2,0,17),(251,7,1,1,1,200,17),(252,9,1,1,1,50,17),(253,10,1,2,2,0,17),(254,11,1,2,2,0,17),(255,12,1,2,2,0,17),(256,13,1,2,2,0,17),(257,21,1,2,2,0,17),(258,15,1,2,2,0,17),(259,16,1,2,2,0,17),(260,1,1,2,2,0,18),(261,2,1,2,2,0,18),(262,3,1,2,2,0,18),(263,4,1,2,2,0,18),(264,17,1,2,2,0,18),(265,18,1,2,2,0,18),(266,19,1,2,2,0,18),(267,20,1,2,2,0,18),(268,5,1,2,2,0,18),(269,22,1,2,2,0,18),(270,14,1,2,2,0,18),(271,7,1,1,1,60,18),(272,8,1,1,1,80,18),(273,9,1,1,1,50,18),(274,10,1,2,2,0,18),(275,11,1,2,2,0,18),(276,12,1,1,1,80,18),(277,13,1,2,2,0,18),(278,21,1,1,1,1,18),(279,15,1,1,1,1,18),(280,16,1,1,1,1,18),(281,1,3,2,1,10,19),(282,2,4,2,1,8,19),(283,18,4,2,1,1000,19),(284,5,2,1,2,300,19),(285,22,2,1,2,300,19),(286,7,2,1,2,30,19),(287,10,3,2,2,3000,19),(288,12,4,2,1,3000,19),(289,16,1,2,1,2,19),(290,1,2,2,1,40,20),(291,5,2,1,1,200,20),(292,10,4,1,1,500,20),(293,12,4,1,1,300,20),(294,13,4,1,1,200,20),(295,21,4,1,1,1,20),(296,16,4,1,1,2,20),(297,1,4,1,1,25,21),(298,2,4,1,2,6,21),(299,3,3,1,2,30,21),(300,4,3,1,2,10,21),(301,17,4,1,2,28,21),(302,18,4,2,2,0,21),(303,19,1,2,2,0,21),(304,20,2,2,2,0,21),(305,5,4,1,2,30,21),(306,22,4,1,2,100,21),(307,14,3,2,2,0,21),(308,7,4,1,2,300,21),(309,8,3,2,2,0,21),(310,9,4,1,2,10,21),(311,10,4,1,2,500,21),(312,11,4,1,2,300,21),(313,12,4,2,1,500,21),(314,13,4,1,2,15,21),(315,21,4,2,2,0,21),(316,15,4,1,2,1,21),(317,16,4,1,2,1,21),(318,1,4,1,2,10,22),(319,2,3,1,2,8,22),(320,3,3,1,2,15,22),(321,4,3,1,2,20,22),(322,17,4,1,2,5,22),(323,18,4,2,2,0,22),(324,19,2,2,2,0,22),(325,20,2,2,2,0,22),(326,5,4,1,2,100,22),(327,22,4,1,2,40,22),(328,14,3,2,2,0,22),(329,7,4,1,2,80,22),(330,8,4,2,2,0,22),(331,9,4,1,2,8,22),(332,10,4,1,2,300,22),(333,11,4,1,2,60,22),(334,12,4,1,2,150,22),(335,13,4,2,2,0,22),(336,21,4,2,2,0,22),(337,15,4,1,2,2,22),(338,16,4,1,2,2,22),(339,1,4,2,1,4,23),(340,2,4,1,2,10,23),(341,3,4,1,2,20,23),(342,4,3,1,2,5,23),(343,17,4,1,2,14,23),(344,18,4,1,2,40,23),(345,19,2,2,2,0,23),(346,20,3,2,2,0,23),(347,5,3,1,2,30,23),(348,22,4,1,2,50,23),(349,14,3,2,2,0,23),(350,7,4,1,2,80,23),(351,8,4,2,2,0,23),(352,9,3,1,2,25,23),(353,10,4,2,1,600,23),(354,11,4,2,1,400,23),(355,12,4,2,1,350,23),(356,13,4,1,2,40,23),(357,21,4,2,2,0,23),(358,15,4,1,2,1,23),(359,16,4,1,2,1,23),(360,1,4,1,2,30,24),(361,2,4,1,2,5,24),(362,3,3,1,2,15,24),(363,4,4,1,1,50,24),(364,17,3,1,2,14,24),(365,18,4,1,2,40,24),(366,19,1,2,2,0,24),(367,20,3,2,2,0,24),(368,5,3,1,2,200,24),(369,22,3,2,1,300,24),(370,14,3,2,2,0,24),(371,7,4,2,1,600,24),(372,8,4,2,2,0,24),(373,9,4,1,2,30,24),(374,10,4,2,1,1000,24),(375,11,4,1,2,500,24),(376,12,4,1,2,350,24),(377,13,4,2,2,0,24),(378,21,4,2,2,0,24),(379,15,4,1,2,2,24),(380,16,4,1,2,2,24),(381,1,4,1,1,20,25),(382,2,3,1,2,30,25),(383,3,4,1,2,30,25),(384,4,4,2,2,0,25),(385,17,3,1,2,3,25),(386,18,4,2,2,17,25),(387,19,2,2,2,0,25),(388,20,4,1,2,20,25),(389,5,4,1,2,200,25),(390,22,4,1,2,50,25),(391,14,2,2,2,0,25),(392,7,4,1,2,200,25),(393,8,3,2,2,0,25),(394,9,4,1,2,12,25),(395,10,4,2,1,430,25),(396,11,4,1,2,45,25),(397,12,4,1,2,200,25),(398,13,4,1,2,50,25),(399,21,4,2,2,0,25),(400,15,4,1,2,0.5,25),(401,16,4,2,1,2,25),(402,1,4,1,1,0,26),(403,2,4,1,1,0,26),(404,3,4,1,1,0,26),(405,4,2,2,2,0,26),(406,5,4,1,1,0,26),(407,22,4,1,1,0,26),(408,14,4,1,1,4,26),(409,7,4,1,1,100,26),(410,8,4,1,1,25,26),(411,9,4,1,1,5,26),(412,10,4,1,1,25,26),(413,11,3,2,2,0,26),(414,12,4,1,1,50,26),(415,13,4,1,1,50,26),(416,21,4,2,2,0,26),(417,15,4,1,1,3,26),(418,16,4,1,1,3,26),(419,1,4,1,1,20,27),(420,2,4,1,1,10,27),(421,3,4,1,1,4,27),(422,4,1,2,2,0,27),(423,17,1,2,2,0,27),(424,18,1,2,2,0,27),(425,19,1,2,2,0,27),(426,20,1,2,2,0,27),(427,5,4,1,2,300,27),(428,22,4,1,2,300,27),(429,14,1,2,2,3,27),(430,7,1,1,2,200,27),(431,8,1,2,2,200,27),(432,9,4,1,2,2,27),(433,10,4,1,2,300,27),(434,11,4,1,2,300,27),(435,12,4,1,2,200,27),(436,13,4,1,2,400,27),(437,21,4,1,2,5,27),(438,15,4,1,2,5,27),(439,16,4,1,2,5,27),(440,1,4,1,1,20,28),(441,2,4,1,1,12,28),(442,3,3,2,2,0,28),(443,4,1,2,2,0,28),(444,17,1,2,2,0,28),(445,18,1,2,2,0,28),(446,19,1,2,2,0,28),(447,20,1,2,2,0,28),(448,5,4,1,1,50,28),(449,22,4,1,1,50,28),(450,14,2,2,2,0,28),(451,7,4,1,1,50,28),(452,8,4,1,1,100,28),(453,9,4,1,1,4,28),(454,10,4,1,1,200,28),(455,11,1,2,2,0,28),(456,12,4,1,1,100,28),(457,13,4,1,1,0,28),(458,21,3,1,1,2,28),(459,15,4,2,2,0,28),(460,16,4,2,2,0,28),(461,1,4,2,1,504,29),(462,2,4,2,1,10,29),(463,3,1,2,1,0,29),(464,4,1,2,2,0,29),(465,5,4,2,1,20,29),(466,22,4,2,1,20,29),(467,7,1,2,1,200,29),(468,8,1,2,2,100,29),(469,10,1,2,1,100,29),(470,15,1,2,1,0.25,29),(471,16,1,2,1,0.25,29),(472,1,4,1,2,10,30),(473,2,4,1,2,10,30),(474,3,4,1,2,20,30),(475,4,1,2,2,0,30),(476,17,2,2,2,0,30),(477,18,1,2,2,0,30),(478,19,1,2,2,0,30),(479,20,1,2,2,0,30),(480,5,4,1,2,40,30),(481,22,3,1,2,10,30),(482,14,1,2,2,0,30),(483,7,4,1,2,0,30),(484,8,1,2,2,0,30),(485,9,3,1,2,6,30),(486,10,4,1,2,300,30),(487,11,4,1,2,0,30),(488,12,4,1,2,0,30),(489,13,3,1,2,0,30),(490,21,2,1,2,0,30),(491,15,4,1,2,0,30),(492,16,4,1,2,1,30),(493,1,4,1,2,0,32),(494,2,4,2,2,0,32),(495,3,4,2,2,0,32),(496,4,1,2,2,0,32),(497,1,2,1,2,40,33),(498,2,2,1,2,10,33),(499,3,2,1,2,0,33),(500,4,2,1,2,0,33),(501,5,4,1,2,25,33),(502,22,3,1,2,25,33),(503,7,1,2,2,0,33),(504,8,3,1,2,0,33),(505,9,4,1,2,10,33),(506,10,4,1,2,600,33),(507,11,3,1,2,0,33),(508,12,4,1,2,125,33),(509,13,4,1,2,0,33),(510,21,1,2,2,0,33),(511,15,1,2,2,0,33),(512,16,4,1,2,0,33),(513,14,1,1,2,0,33),(514,3,3,1,2,20,35),(515,4,1,2,2,0,35),(516,17,3,1,2,3,35),(517,19,3,1,2,1,35),(518,7,4,1,2,15,35),(519,22,1,1,2,0,36),(520,7,1,1,2,0,36),(521,8,1,1,2,0,36),(522,10,1,1,2,0,36),(523,11,1,1,2,0,36),(524,12,1,1,2,0,36),(525,13,1,1,2,0,36),(526,16,1,1,2,0,36),(527,22,1,1,2,40,37),(528,16,1,1,2,1,37),(529,1,3,1,2,15,39),(530,17,4,1,2,12,39),(531,7,4,1,2,50,39),(532,10,1,2,2,0,39),(533,19,3,1,2,4,39),(534,1,1,1,1,0,41),(535,3,1,1,1,0,41),(536,4,1,1,1,0,41),(537,20,1,1,1,0,41),(538,1,4,1,2,0.5,40),(539,4,2,2,2,0,40),(540,5,4,1,2,300,40),(541,22,4,1,2,300,40),(542,7,4,1,1,800,40),(543,8,4,1,2,30,40),(544,9,4,1,2,10,40),(545,10,4,1,2,400,40),(546,11,4,1,2,200,40),(547,12,4,1,2,300,40),(548,13,4,1,2,200,40),(549,21,4,1,2,600,40),(550,15,4,1,2,0.25,40),(551,16,4,1,2,0.25,40),(552,5,1,1,2,0,42),(553,22,1,1,2,0,42),(554,7,1,1,2,0,42),(555,8,1,1,2,0,42),(556,10,1,1,2,0,42),(557,13,1,1,2,0,42),(558,16,1,1,2,0,42),(559,1,3,1,2,200,43),(560,2,2,1,2,10,43),(561,4,2,1,2,50,43),(562,17,2,1,2,10,43),(563,5,3,1,2,100,43),(564,22,2,1,2,50,43),(565,7,2,1,2,500,43),(566,9,2,1,2,100,43),(567,10,2,1,2,300,43),(568,11,2,1,2,300,43),(569,13,4,2,1,1000,43),(570,21,3,1,2,10,43),(571,15,3,1,2,5,43),(572,16,2,1,2,3,43),(573,22,1,2,2,0,44),(574,7,1,1,2,0,44),(575,8,1,1,2,0,44),(576,10,1,1,2,0,44),(577,11,1,1,2,0,44),(578,12,1,1,2,0,44),(579,13,1,1,2,0,44),(580,21,1,1,2,0,44),(581,16,1,1,2,0,44),(582,1,1,1,2,3,45),(583,2,1,1,2,2,45),(584,3,1,1,2,1,45),(585,4,1,1,2,1,45),(586,17,1,1,2,0,45),(587,19,1,1,2,0,45),(588,20,1,1,2,0,45),(589,1,2,1,2,40,46),(590,2,2,1,2,10,46),(591,3,2,1,2,20,46),(592,17,1,1,2,20,46),(593,5,1,1,2,4,46),(594,22,1,1,2,4,46),(595,7,1,1,2,500,46),(596,8,1,1,2,200,46),(597,9,1,1,2,7,46),(598,10,1,1,2,200,46),(599,11,1,1,2,0,46),(600,12,1,1,2,100,46),(601,13,1,1,2,300,46),(602,21,1,1,2,0,46),(603,15,1,1,2,2,46),(604,16,1,1,2,2,46),(605,1,4,2,2,200,47),(606,7,3,2,2,800,47),(607,9,1,2,2,0,47),(608,10,4,2,2,0,47),(609,11,1,2,2,0,47),(610,12,3,2,2,0,47),(611,21,4,1,2,40,47),(612,15,3,1,2,0,47),(613,16,1,1,2,0,47),(614,1,3,1,2,180,48),(615,2,2,1,2,1,48),(616,3,1,2,2,20,48),(617,4,2,1,2,0,48),(618,5,2,1,2,50,48),(619,22,2,1,2,50,48),(620,7,2,1,2,100,48),(621,9,2,1,2,300,48),(622,10,2,1,2,350,48),(623,13,4,1,2,300,48),(624,21,3,1,2,400,48),(625,1,4,2,1,50,49),(626,2,4,2,1,15,49),(627,3,4,2,1,15,49),(628,4,4,2,1,10,49),(629,5,4,2,1,200,49),(630,22,4,2,1,200,49),(631,7,1,2,2,500,49),(632,8,1,2,1,400,49),(633,9,1,2,1,399,49),(634,10,1,2,1,200,49),(635,11,1,2,1,20,49),(636,12,1,2,1,200,49),(637,13,1,2,1,200,49),(638,21,1,2,1,1.5,49),(639,15,1,2,1,0.25,49),(640,16,1,2,1,1,49),(641,1,4,1,2,200,50),(642,22,4,2,2,0,50),(643,7,4,2,2,0,50),(644,8,4,1,2,200,50),(645,9,3,2,2,0,50),(646,10,4,1,2,700,50),(647,11,3,2,2,0,50),(648,12,4,2,2,0,50),(649,13,4,1,2,700,50),(650,21,4,1,2,1,50),(651,15,4,1,2,1,50),(652,16,4,1,2,1,50),(653,5,3,1,1,600,51),(654,22,3,1,1,60,51),(655,7,3,1,1,500,51),(656,10,3,1,1,600,51),(657,11,3,1,1,246,51),(658,13,2,1,1,533,51),(659,16,3,1,1,4,51),(660,1,4,1,1,200,52),(661,5,4,1,2,200,52),(662,22,4,1,2,0,52),(663,14,2,2,2,0,52),(664,10,2,1,2,0,52),(665,12,4,1,2,80,52),(666,13,4,1,2,80,52),(667,21,4,1,2,0,52),(668,16,4,1,2,2,52),(669,5,4,1,1,1800,53),(670,22,1,1,2,1800,53),(671,8,1,1,2,0,53),(672,9,2,1,2,3,53),(673,10,3,1,1,300,53),(674,11,3,1,1,200,53),(675,12,1,1,2,0,53),(676,13,3,1,1,400,53),(677,15,2,1,2,1,53),(678,1,3,1,2,1,54),(679,5,3,1,1,100,54),(680,7,4,1,1,200,54),(681,8,4,1,1,200,54),(682,10,4,1,1,300,54),(683,12,4,1,1,300,54),(684,21,4,1,1,2,54),(685,2,1,1,2,1,55),(686,20,1,1,2,0,55),(687,5,2,1,2,60,55),(688,16,2,1,2,2,55),(689,1,4,1,2,0.5,56),(690,5,4,1,1,50,56),(691,7,4,1,1,100,56),(692,12,3,1,1,50,56),(693,5,1,1,2,0,57),(694,22,1,1,2,0,57),(695,14,1,1,2,0,57),(696,7,1,1,2,0,57),(697,8,1,1,2,0,57),(698,10,1,1,2,0,57),(699,11,1,1,2,0,57),(700,12,1,1,2,0,57),(701,13,1,1,2,0,57),(702,21,1,1,2,0,57),(703,15,1,1,2,0,57),(704,1,3,1,1,50,58),(705,5,3,2,1,0,58),(706,13,4,2,1,50,58),(707,1,2,2,2,2,59),(708,5,1,2,2,0,59),(709,22,1,2,2,0,59),(710,7,2,1,2,200,59),(711,11,2,2,2,200,59),(712,15,3,2,1,0.59,59),(713,1,4,1,2,0,60),(714,2,4,1,2,0,60),(715,20,4,1,2,0,60),(716,5,4,1,2,0,60),(717,22,4,1,2,0,60),(718,7,4,1,2,0,60),(719,12,4,1,2,0,60),(720,16,4,1,2,0,60),(721,1,4,2,1,10,62),(722,2,4,2,1,20,62),(723,3,4,2,1,15,62),(724,5,1,2,1,1,62),(725,22,1,2,1,1,62),(726,10,1,2,1,200,62),(727,11,1,2,1,100,62),(728,12,1,2,1,500,62),(729,13,1,2,1,200,62),(730,21,1,2,1,100,62),(731,15,1,2,1,0.5,62),(732,16,1,2,1,2,62),(733,1,3,1,2,15,61),(734,7,4,1,1,1100,61),(735,8,2,1,1,100,61),(736,10,2,1,1,200,61),(737,11,4,1,2,300,61),(738,12,4,1,1,250,61),(739,13,4,1,2,160,61),(740,15,4,1,2,0,61),(741,1,2,1,2,8,63),(742,22,3,1,1,30,63),(743,7,3,1,2,200,63),(744,13,2,1,1,100,63),(745,15,4,1,1,0.57,63),(746,1,4,2,1,260,64),(747,17,1,2,2,120,64),(748,18,4,2,1,0,64),(749,19,4,2,1,6,64),(750,1,4,2,1,390,65),(751,19,4,1,2,1,65),(752,5,4,1,2,0,65),(753,22,4,1,2,0,65),(754,1,4,2,2,40,67),(755,2,4,2,2,10,67),(756,5,4,2,2,35,67),(757,22,4,2,2,35,67),(758,8,3,2,2,5,67),(759,9,4,2,2,10,67),(760,12,4,2,2,25,67),(761,1,4,2,1,260,66),(762,22,4,1,2,50,66),(763,1,3,2,1,400,68),(764,5,4,1,2,300,68),(765,22,4,1,2,300,68),(766,13,4,1,2,200,68),(767,15,4,1,2,3,68),(768,2,4,1,1,300,69),(769,3,4,1,1,2,69),(770,5,4,1,1,100,69),(771,22,3,1,1,100,69),(772,14,3,1,2,0,69),(773,7,3,1,1,1000,69),(774,8,3,1,1,3000,69),(775,9,4,1,1,100,69),(776,10,4,1,1,200,69),(777,12,3,1,2,100,69),(778,21,4,1,1,25,69),(779,15,3,1,1,3,69),(780,16,4,1,1,3,69),(781,1,2,1,2,20,70),(782,2,2,1,2,25,70),(783,3,3,2,1,10,70),(784,4,2,1,2,10,70),(785,22,3,1,2,0,70),(786,13,3,1,2,300,70),(787,2,4,1,1,100,71),(788,3,3,1,1,20,71),(789,20,3,1,2,0,71),(790,5,3,1,2,250,71),(791,7,3,1,1,1000,71),(792,8,3,1,2,200,71),(793,9,3,1,2,0,71),(794,10,1,1,2,200,71),(795,12,4,1,2,0,71),(796,21,4,1,2,1.5,71),(797,15,3,1,1,1,71),(798,16,3,1,2,2,71);
/*!40000 ALTER TABLE `indicador10_opcionesmanejo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador11_cultivosvariedad`
--

DROP TABLE IF EXISTS `indicador11_cultivosvariedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador11_cultivosvariedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cultivo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador11_cultivosvariedad`
--

LOCK TABLES `indicador11_cultivosvariedad` WRITE;
/*!40000 ALTER TABLE `indicador11_cultivosvariedad` DISABLE KEYS */;
INSERT INTO `indicador11_cultivosvariedad` VALUES (1,'Maíz'),(2,'Frijol'),(3,'Arroz'),(4,'Sorgo'),(5,'Yuca'),(6,'Quequisque'),(7,'Guineo'),(8,'Plátano'),(9,'Tomate'),(10,'Chiltoma'),(11,'Cebolla'),(12,'Malanga'),(13,'Flor de jamaica'),(14,'Café');
/*!40000 ALTER TABLE `indicador11_cultivosvariedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador11_semilla`
--

DROP TABLE IF EXISTS `indicador11_semilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador11_semilla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cultivo_id` int(11) NOT NULL,
  `origen` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador11_semilla_9f97820b` (`cultivo_id`),
  KEY `indicador11_semilla_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador11_semilla`
--

LOCK TABLES `indicador11_semilla` WRITE;
/*!40000 ALTER TABLE `indicador11_semilla` DISABLE KEYS */;
INSERT INTO `indicador11_semilla` VALUES (1,1,2,1),(2,2,1,1),(3,3,1,1),(4,4,2,1),(5,5,1,1),(6,6,1,2),(7,7,1,2),(8,3,1,2),(9,8,1,3),(10,9,1,3),(11,2,1,3),(12,10,1,3),(13,11,2,3),(14,12,1,3),(15,13,1,4),(16,14,1,4),(17,15,1,4),(18,3,1,4),(19,16,1,4),(20,17,1,4),(21,1,1,5),(22,14,1,5),(23,3,1,5),(24,5,1,5),(25,6,1,6),(26,18,1,6),(27,19,2,6),(28,20,2,6),(29,21,2,6),(30,22,1,7),(31,23,1,7),(32,24,1,7),(33,25,2,8),(34,26,2,8),(35,27,2,9),(36,28,1,9),(37,29,1,9),(38,17,1,9),(39,24,1,9),(40,30,1,9),(41,31,2,9),(42,32,2,10),(43,33,2,10),(44,34,1,11),(45,27,2,11),(46,35,1,11),(47,28,1,11),(48,36,1,11),(49,23,1,11),(50,5,1,11),(51,37,1,11),(52,38,2,11),(53,39,2,11),(54,32,2,12),(55,9,1,12),(56,19,2,12),(57,40,1,12),(58,16,2,12),(59,17,1,12),(60,5,1,12),(61,41,2,12),(62,42,2,12),(63,31,1,12),(64,27,2,13),(65,33,2,13),(66,43,2,13),(67,5,1,13),(68,17,1,13),(69,38,2,13),(70,42,2,13),(71,30,2,13),(72,27,2,14),(73,44,2,14),(74,23,1,14),(75,17,1,14),(76,38,2,14),(77,18,2,15),(78,19,2,15),(79,45,2,15),(80,46,2,16),(81,47,2,16),(82,22,1,19),(83,19,2,19),(84,48,2,19),(85,49,1,20),(86,33,2,20),(87,32,1,21),(88,18,1,21),(89,26,2,21),(90,50,1,21),(91,23,1,21),(92,52,1,21),(93,6,1,22),(94,53,1,22),(95,54,2,22),(96,55,1,22),(97,17,1,22),(98,38,1,22),(99,56,2,22),(100,30,1,22),(101,57,1,22),(102,27,2,23),(103,32,2,23),(104,26,2,23),(105,50,2,23),(106,58,1,23),(107,38,1,23),(108,56,2,23),(109,59,2,24),(110,26,2,24),(111,60,1,24),(112,16,1,24),(113,61,2,24),(114,38,2,24),(115,62,2,24),(116,63,1,24),(117,6,1,25),(118,44,2,25),(119,50,1,25),(120,58,2,25),(121,64,2,25),(122,38,2,25),(123,65,1,26),(124,66,1,26),(125,70,1,26),(126,27,1,27),(127,18,1,27),(128,67,2,27),(129,68,1,27),(130,69,1,27),(131,70,1,27),(132,65,1,28),(133,18,1,28),(134,71,1,28),(135,72,1,28),(136,23,1,28),(137,64,1,28),(138,18,1,29),(139,73,1,29),(140,19,2,29),(141,65,2,30),(142,18,2,30),(143,71,2,30),(144,74,2,30),(145,55,3,30),(146,58,2,30),(147,23,2,30),(148,65,1,32),(149,73,1,32),(150,71,1,32),(151,75,1,32),(152,58,2,32),(153,70,2,32),(154,58,2,32),(155,70,2,32),(156,65,1,33),(157,76,2,33),(158,77,3,33),(159,78,1,33),(160,23,2,33),(161,64,2,33),(162,79,1,33),(163,32,1,34),(164,2,1,34),(165,17,1,34),(166,80,1,35),(167,81,1,35),(168,61,1,35),(169,82,3,35),(170,84,1,39),(171,85,1,39),(172,86,1,39),(173,87,1,39),(174,82,3,39),(175,22,1,40),(176,88,2,40),(177,23,1,40),(178,89,3,40),(179,82,3,40),(180,83,2,42),(181,91,2,42),(182,92,2,42),(183,93,3,43),(184,26,2,43),(185,94,2,43),(186,83,2,44),(187,90,2,44),(188,92,2,44),(189,18,1,46),(190,68,1,46),(191,19,3,46),(192,70,1,46),(193,58,1,46),(194,27,3,47),(195,95,3,47),(196,26,3,47),(197,96,3,47),(198,97,1,47),(199,98,1,47),(200,99,1,47),(201,94,3,48),(202,26,3,48),(203,18,1,49),(204,65,1,49),(205,74,1,49),(206,64,1,49),(207,23,1,49),(208,27,3,50),(209,100,1,50),(210,26,3,50),(211,101,1,50),(212,56,3,50),(213,102,3,50),(214,27,1,51),(215,67,1,51),(216,103,1,52),(217,26,1,52),(218,104,1,52),(219,17,1,53),(220,24,1,53),(221,83,1,55),(222,90,1,55),(223,92,1,55),(224,105,1,55),(225,106,1,55),(226,83,2,57),(227,90,2,57),(228,107,2,57),(229,92,2,57),(230,105,2,57),(231,106,1,57),(232,27,1,59),(233,108,1,59),(234,27,1,60),(235,77,1,60),(236,43,1,60),(237,58,1,60),(238,73,1,62),(239,32,1,62),(240,74,1,62),(241,23,1,62),(242,27,3,61),(243,94,3,61),(244,27,1,63),(245,26,1,63),(246,27,3,64),(247,19,2,64),(248,27,2,65),(249,19,2,65),(250,78,2,65),(251,65,2,67),(252,27,3,67),(253,77,3,67),(254,55,2,67),(255,43,2,67),(256,23,1,67),(257,58,1,67),(258,109,3,68),(259,110,3,68),(260,9,1,69),(261,27,2,69),(262,111,1,69),(263,16,1,69),(264,58,1,69),(265,112,1,69),(266,9,1,70),(267,1,1,70),(268,114,1,70),(269,58,1,70),(270,115,1,70),(271,6,1,71),(272,27,2,71),(273,116,1,71),(274,7,1,71),(275,117,1,71),(276,118,1,71),(277,119,1,71),(278,58,1,71);
/*!40000 ALTER TABLE `indicador11_semilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador11_variedades`
--

DROP TABLE IF EXISTS `indicador11_variedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador11_variedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cultivo_id` int(11) NOT NULL,
  `variedad` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador11_variedades_9f97820b` (`cultivo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador11_variedades`
--

LOCK TABLES `indicador11_variedades` WRITE;
/*!40000 ALTER TABLE `indicador11_variedades` DISABLE KEYS */;
INSERT INTO `indicador11_variedades` VALUES (1,1,'Maizón'),(2,2,'Rojo'),(3,4,'Copete'),(4,5,'Pochota Cubana'),(5,7,'Cuadrado grande'),(6,1,'Olotillo'),(7,3,'Blueonec'),(8,1,'Cuarenteño'),(9,1,'Pujagua'),(10,2,'Ballo'),(11,3,'Tres meses'),(12,4,'Millón blanco'),(13,1,'Merzon'),(14,2,'Rojito'),(15,3,'Bloonet'),(16,5,'pochota'),(17,7,'Felipito'),(18,1,'Olote rojo'),(19,2,'INTA'),(20,3,'INTA chinandega'),(21,6,'Punto rojo'),(22,1,'Tuza Morada'),(23,7,'Patriota'),(24,8,'Grande'),(25,1,'Mejorado'),(26,2,'INTA Rojo'),(27,1,'NB6'),(28,2,'H-dar rojo'),(29,2,'H-dar negro'),(30,6,'Rojo'),(31,13,'0'),(32,1,'H5'),(33,2,'Estelí 90'),(34,1,'Miton'),(35,2,'Madero'),(36,5,'Morada Masaya'),(37,8,'Gigante'),(38,8,'Enano'),(39,9,'Río grande'),(40,2,'Masatepe'),(41,8,'0'),(42,9,'de mesa'),(43,5,'Roja'),(44,2,'Rojo claro'),(45,4,'Corta blanca'),(46,7,'Olote rojo'),(47,7,'amarillo'),(48,8,'Pequeño'),(49,1,'Tuza blanca'),(50,2,'Maravilla'),(51,8,'Chaparro'),(52,9,'Linea 7'),(53,2,'Sangre de toro'),(54,4,'Maicillo'),(55,5,'Blanca'),(56,10,'3 cantos'),(57,12,'Roja'),(58,7,'cuadrado'),(59,1,'H55'),(60,2,'Moro'),(61,7,'Blanco'),(62,10,'Pepper'),(63,11,'Blanca'),(64,7,'Caribe'),(65,1,'JV 16'),(66,2,'Nicaragua'),(67,2,'Dor'),(68,2,'Rojo ceda'),(69,5,'Colorada'),(70,7,'Filipino'),(71,2,'Santa Elena'),(72,2,'HV blor'),(73,1,'Venzuela'),(74,2,'V.Blanco'),(75,2,'Moncheño'),(76,2,'INTA canelo'),(77,2,'H5'),(78,4,'Rojo'),(79,8,'Criollo'),(80,1,'Izalco'),(81,2,'H'),(82,14,'Catimar'),(83,1,'Acriollado'),(84,1,'Catacama'),(85,2,'H1 INTA'),(86,7,'Mismo hijo'),(87,12,'Mismo hijo'),(88,2,'H-46'),(89,8,'Cuerno T'),(90,2,'Acriollada'),(91,2,'Acriollada'),(92,4,'Acriollada'),(93,1,'MB6 Híbrido'),(94,2,'Estelí 150'),(95,1,'NB5'),(96,2,'INTA-Canelo'),(97,2,'Chile rosa'),(98,4,'Aneno'),(99,4,'Ligero-tortillero'),(100,1,'Planta Baja'),(101,2,'Estelí chile matón'),(102,10,'Rellena'),(103,1,'Colombiano'),(104,2,'Estelí'),(105,5,'Acriollada'),(106,6,'Criollo'),(107,3,'Acriollada'),(108,2,'Tico'),(109,2,'INTA R'),(110,2,'INTA H'),(111,3,'Nilo'),(112,4,'Pinolero'),(113,1,'Blanco'),(114,2,'Rojo criollo'),(115,9,'Manzano'),(116,2,'Rojo Nacional'),(117,3,'Carbonet'),(118,3,'Nilo Amarillo'),(119,4,'Tortillero');
/*!40000 ALTER TABLE `indicador11_variedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_conservacion`
--

DROP TABLE IF EXISTS `indicador12_conservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_conservacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_conservacion`
--

LOCK TABLES `indicador12_conservacion` WRITE;
/*!40000 ALTER TABLE `indicador12_conservacion` DISABLE KEYS */;
INSERT INTO `indicador12_conservacion` VALUES (1,'Barrera viva'),(2,'Barrera muerta'),(3,'Terraza'),(4,'Acequia'),(5,'Curva a nivel'),(6,'No contestó');
/*!40000 ALTER TABLE `indicador12_conservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_densidad`
--

DROP TABLE IF EXISTS `indicador12_densidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_densidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_densidad`
--

LOCK TABLES `indicador12_densidad` WRITE;
/*!40000 ALTER TABLE `indicador12_densidad` DISABLE KEYS */;
INSERT INTO `indicador12_densidad` VALUES (1,'Alta'),(2,'Media'),(3,'Baja'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador12_densidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_drenaje`
--

DROP TABLE IF EXISTS `indicador12_drenaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_drenaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_drenaje`
--

LOCK TABLES `indicador12_drenaje` WRITE;
/*!40000 ALTER TABLE `indicador12_drenaje` DISABLE KEYS */;
INSERT INTO `indicador12_drenaje` VALUES (1,'Bueno'),(2,'Regular'),(3,'Malo'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador12_drenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_fertilizacion`
--

DROP TABLE IF EXISTS `indicador12_fertilizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_fertilizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_fertilizacion`
--

LOCK TABLES `indicador12_fertilizacion` WRITE;
/*!40000 ALTER TABLE `indicador12_fertilizacion` DISABLE KEYS */;
INSERT INTO `indicador12_fertilizacion` VALUES (1,'Química'),(2,'Orgánica'),(3,'Ninguna');
/*!40000 ALTER TABLE `indicador12_fertilizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_manejosuelo`
--

DROP TABLE IF EXISTS `indicador12_manejosuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_manejosuelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `analisis` int(11) NOT NULL,
  `practica` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador12_manejosuelo_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_manejosuelo`
--

LOCK TABLES `indicador12_manejosuelo` WRITE;
/*!40000 ALTER TABLE `indicador12_manejosuelo` DISABLE KEYS */;
INSERT INTO `indicador12_manejosuelo` VALUES (1,2,1,1),(2,2,1,2),(3,2,1,3),(4,2,1,4),(5,2,1,5),(6,2,1,6),(7,2,1,7),(8,2,1,8),(9,2,2,9),(10,2,2,10),(11,2,1,11),(12,2,1,12),(13,2,1,13),(14,2,1,14),(15,2,1,15),(16,2,1,16),(17,2,1,17),(18,2,1,18),(19,2,1,19),(20,1,1,20),(21,1,1,21),(22,1,1,22),(23,1,1,23),(24,1,1,24),(25,1,1,25),(26,2,1,26),(27,2,1,27),(28,2,1,28),(29,2,1,29),(30,2,1,30),(31,2,1,32),(32,2,1,32),(33,2,1,33),(34,1,1,34),(35,1,1,35),(36,2,1,36),(37,2,1,37),(38,2,1,38),(39,2,1,39),(40,2,2,41),(41,2,1,40),(42,2,1,42),(43,1,1,43),(44,2,1,44),(45,2,1,45),(46,2,1,46),(47,2,2,47),(48,2,1,48),(49,1,1,49),(50,2,1,50),(51,2,1,51),(52,2,1,52),(53,2,1,53),(54,2,1,54),(55,2,1,55),(56,2,1,56),(57,2,1,57),(58,2,2,58),(59,2,2,59),(60,2,2,60),(61,2,1,62),(62,2,1,61),(63,2,1,63),(64,2,1,64),(65,1,2,65),(66,2,1,67),(67,2,2,66),(68,2,1,68),(69,2,1,69),(70,2,2,70),(71,2,1,71);
/*!40000 ALTER TABLE `indicador12_manejosuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_manejosuelo_fertilizacion`
--

DROP TABLE IF EXISTS `indicador12_manejosuelo_fertilizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_manejosuelo_fertilizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manejosuelo_id` int(11) NOT NULL,
  `fertilizacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_manejosuelo_fer_manejosuelo_id_d5cbc7db2233b57_uniq` (`manejosuelo_id`,`fertilizacion_id`),
  KEY `indicador12_manejosuelo_fertilizacion_fc6a937b` (`manejosuelo_id`),
  KEY `indicador12_manejosuelo_fertilizacion_587f4b8a` (`fertilizacion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_manejosuelo_fertilizacion`
--

LOCK TABLES `indicador12_manejosuelo_fertilizacion` WRITE;
/*!40000 ALTER TABLE `indicador12_manejosuelo_fertilizacion` DISABLE KEYS */;
INSERT INTO `indicador12_manejosuelo_fertilizacion` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,9,2),(11,10,1),(12,10,2),(13,11,1),(14,11,2),(15,12,1),(16,12,2),(17,13,1),(18,13,2),(19,14,2),(20,15,1),(21,16,1),(22,17,1),(23,18,2),(24,19,1),(25,20,1),(26,20,2),(27,21,1),(28,21,2),(29,22,1),(30,22,2),(31,23,1),(32,23,2),(33,24,1),(34,24,2),(35,25,1),(36,25,2),(37,26,2),(38,27,1),(39,27,2),(40,28,2),(41,29,2),(42,30,2),(43,31,2),(44,32,2),(45,33,1),(46,33,2),(47,34,2),(48,35,1),(49,35,2),(50,36,1),(51,37,1),(52,38,1),(53,39,1),(54,39,2),(55,40,1),(56,41,1),(57,42,1),(58,43,1),(59,43,2),(60,44,1),(61,45,1),(62,45,2),(63,46,2),(64,47,1),(65,47,2),(66,48,1),(67,49,2),(68,50,1),(69,50,2),(70,51,1),(71,52,2),(72,53,1),(73,54,1),(74,55,1),(75,56,1),(76,57,1),(77,58,1),(78,59,1),(79,60,3),(80,61,2),(81,62,1),(82,63,1),(83,64,1),(84,64,2),(85,65,2),(86,66,1),(87,66,2),(88,67,3),(89,68,2),(90,69,1),(91,69,2),(92,70,2),(93,71,2);
/*!40000 ALTER TABLE `indicador12_manejosuelo_fertilizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_manejosuelo_obra`
--

DROP TABLE IF EXISTS `indicador12_manejosuelo_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_manejosuelo_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manejosuelo_id` int(11) NOT NULL,
  `conservacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_manejosuelo_ob_manejosuelo_id_4c2e82e81375ed9f_uniq` (`manejosuelo_id`,`conservacion_id`),
  KEY `indicador12_manejosuelo_obra_fc6a937b` (`manejosuelo_id`),
  KEY `indicador12_manejosuelo_obra_36336b1a` (`conservacion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_manejosuelo_obra`
--

LOCK TABLES `indicador12_manejosuelo_obra` WRITE;
/*!40000 ALTER TABLE `indicador12_manejosuelo_obra` DISABLE KEYS */;
INSERT INTO `indicador12_manejosuelo_obra` VALUES (1,1,2),(2,2,1),(3,3,1),(4,3,2),(5,3,5),(6,4,2),(7,4,5),(8,5,2),(9,5,5),(10,6,1),(11,6,2),(12,6,5),(13,7,1),(14,7,2),(15,7,5),(16,8,1),(17,8,2),(18,8,5),(19,9,6),(20,10,6),(21,11,1),(22,11,5),(23,12,1),(24,13,1),(25,13,2),(26,13,4),(27,13,5),(28,14,1),(29,14,2),(30,14,3),(31,15,1),(32,15,2),(33,16,2),(34,17,1),(35,17,2),(36,18,1),(37,18,2),(38,19,1),(39,19,5),(40,20,1),(41,20,2),(42,20,3),(43,20,5),(44,21,1),(45,21,2),(46,21,4),(47,21,5),(48,22,1),(49,22,4),(50,22,5),(51,23,1),(52,23,2),(53,23,4),(54,23,5),(55,24,1),(56,24,3),(57,24,4),(58,24,5),(59,25,1),(60,25,2),(61,25,4),(62,25,5),(63,26,1),(64,26,2),(65,26,3),(66,26,5),(67,27,1),(68,27,2),(69,27,3),(70,27,4),(71,27,5),(72,28,1),(73,28,2),(74,28,3),(75,28,4),(76,28,5),(77,29,1),(78,29,2),(79,29,3),(80,29,4),(81,29,5),(82,30,1),(83,30,2),(84,30,5),(85,31,1),(86,31,2),(87,32,1),(88,32,2),(89,33,1),(90,33,2),(91,33,3),(92,33,5),(93,34,1),(94,34,2),(95,34,3),(96,34,4),(97,34,5),(98,35,1),(99,36,1),(100,36,2),(101,36,4),(102,36,5),(103,37,1),(104,38,1),(105,38,2),(106,38,4),(107,38,5),(108,39,1),(109,40,1),(110,40,2),(111,40,4),(112,40,5),(113,41,1),(114,41,2),(115,41,4),(116,41,5),(117,42,1),(118,42,2),(119,42,4),(120,42,5),(121,43,2),(122,43,3),(123,43,4),(124,44,1),(125,44,2),(126,44,5),(127,45,2),(128,45,4),(129,45,5),(130,46,1),(131,46,2),(132,46,3),(133,46,4),(134,46,5),(135,47,6),(136,48,2),(137,48,4),(138,49,1),(139,49,2),(140,49,3),(141,49,4),(142,49,5),(143,50,2),(144,50,5),(145,51,1),(146,51,2),(147,51,4),(148,51,5),(149,52,2),(150,53,1),(151,53,2),(152,53,4),(153,53,5),(154,54,1),(155,54,2),(156,54,5),(157,55,1),(158,55,2),(159,55,4),(160,55,5),(161,56,1),(162,56,2),(163,57,1),(164,57,2),(165,57,5),(166,58,2),(167,59,4),(168,60,1),(169,60,2),(170,60,3),(171,61,1),(172,61,2),(173,61,3),(174,61,4),(175,61,5),(176,62,1),(177,62,2),(178,62,4),(179,62,5),(180,63,2),(181,64,4),(182,64,5),(183,65,6),(184,66,1),(185,66,2),(186,66,5),(187,67,6),(188,68,2),(189,69,1),(190,69,2),(191,69,5),(192,70,6),(193,71,1),(194,71,3),(195,71,5);
/*!40000 ALTER TABLE `indicador12_manejosuelo_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_manejosuelo_preparan`
--

DROP TABLE IF EXISTS `indicador12_manejosuelo_preparan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_manejosuelo_preparan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manejosuelo_id` int(11) NOT NULL,
  `preparar_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_manejosuelo_pr_manejosuelo_id_31f135b96d55cc91_uniq` (`manejosuelo_id`,`preparar_id`),
  KEY `indicador12_manejosuelo_preparan_fc6a937b` (`manejosuelo_id`),
  KEY `indicador12_manejosuelo_preparan_96449f07` (`preparar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_manejosuelo_preparan`
--

LOCK TABLES `indicador12_manejosuelo_preparan` WRITE;
/*!40000 ALTER TABLE `indicador12_manejosuelo_preparan` DISABLE KEYS */;
INSERT INTO `indicador12_manejosuelo_preparan` VALUES (1,1,2),(2,2,1),(3,3,1),(4,3,2),(5,3,3),(6,4,2),(7,5,3),(8,6,2),(9,7,2),(10,8,2),(11,9,2),(12,9,4),(13,10,2),(14,11,2),(15,12,2),(16,13,2),(17,14,2),(18,14,4),(19,15,2),(20,15,4),(21,16,2),(22,16,4),(23,17,4),(24,18,4),(25,19,2),(26,19,4),(27,20,1),(28,20,4),(29,21,4),(30,22,4),(31,23,2),(32,24,4),(33,25,4),(34,26,3),(35,27,4),(36,28,4),(37,29,4),(38,30,2),(39,30,4),(40,31,2),(41,32,2),(42,33,4),(43,34,4),(44,35,2),(45,36,2),(46,37,2),(47,38,2),(48,39,2),(49,40,2),(50,41,2),(51,42,2),(52,43,3),(53,44,2),(54,45,3),(55,46,4),(56,47,2),(57,47,3),(58,48,2),(59,49,4),(60,50,4),(61,51,2),(62,52,3),(63,53,2),(64,54,3),(65,55,2),(66,56,3),(67,57,2),(68,58,2),(69,59,3),(70,60,2),(71,61,4),(72,62,3),(73,63,3),(74,64,3),(75,65,3),(76,66,2),(77,67,3),(78,68,1),(79,68,3),(80,69,3),(81,69,4),(82,70,3),(83,70,4),(84,71,2),(85,71,3);
/*!40000 ALTER TABLE `indicador12_manejosuelo_preparan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_manejosuelo_traccion`
--

DROP TABLE IF EXISTS `indicador12_manejosuelo_traccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_manejosuelo_traccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manejosuelo_id` int(11) NOT NULL,
  `traccion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_manejosuelo_tr_manejosuelo_id_6e443313dfe74ab5_uniq` (`manejosuelo_id`,`traccion_id`),
  KEY `indicador12_manejosuelo_traccion_fc6a937b` (`manejosuelo_id`),
  KEY `indicador12_manejosuelo_traccion_a7e75993` (`traccion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_manejosuelo_traccion`
--

LOCK TABLES `indicador12_manejosuelo_traccion` WRITE;
/*!40000 ALTER TABLE `indicador12_manejosuelo_traccion` DISABLE KEYS */;
INSERT INTO `indicador12_manejosuelo_traccion` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,12,4),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,2),(28,28,2),(29,29,2),(30,30,2),(31,31,2),(32,32,2),(33,33,2),(34,34,2),(35,35,2),(36,36,4),(37,37,4),(38,38,4),(39,39,4),(40,40,4),(41,41,5),(42,42,2),(43,43,1),(44,43,2),(45,44,4),(46,45,1),(47,46,2),(48,47,1),(49,47,2),(50,48,1),(51,49,2),(52,50,2),(53,51,4),(54,52,1),(55,53,4),(56,54,1),(57,55,4),(58,56,1),(59,57,1),(60,58,2),(61,59,1),(62,60,2),(63,61,2),(64,62,1),(65,63,1),(66,64,1),(67,65,1),(68,66,2),(69,67,1),(70,68,1),(71,69,1),(72,70,1),(73,71,1);
/*!40000 ALTER TABLE `indicador12_manejosuelo_traccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_pendiente`
--

DROP TABLE IF EXISTS `indicador12_pendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_pendiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_pendiente`
--

LOCK TABLES `indicador12_pendiente` WRITE;
/*!40000 ALTER TABLE `indicador12_pendiente` DISABLE KEYS */;
INSERT INTO `indicador12_pendiente` VALUES (1,'Plana'),(2,'Inclinada'),(3,'Muy inclinada'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador12_pendiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_preparar`
--

DROP TABLE IF EXISTS `indicador12_preparar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_preparar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_preparar`
--

LOCK TABLES `indicador12_preparar` WRITE;
/*!40000 ALTER TABLE `indicador12_preparar` DISABLE KEYS */;
INSERT INTO `indicador12_preparar` VALUES (1,'Tala y Quema'),(2,'Trabaja en crudo'),(3,'Arado'),(4,'Usa cobertura');
/*!40000 ALTER TABLE `indicador12_preparar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_profundidad`
--

DROP TABLE IF EXISTS `indicador12_profundidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_profundidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_profundidad`
--

LOCK TABLES `indicador12_profundidad` WRITE;
/*!40000 ALTER TABLE `indicador12_profundidad` DISABLE KEYS */;
INSERT INTO `indicador12_profundidad` VALUES (1,'Muy profunda'),(2,'Media profunda'),(3,'Poca profunda'),(4,'No contestó');
/*!40000 ALTER TABLE `indicador12_profundidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo`
--

DROP TABLE IF EXISTS `indicador12_suelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador12_suelo_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo`
--

LOCK TABLES `indicador12_suelo` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo` DISABLE KEYS */;
INSERT INTO `indicador12_suelo` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,32),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,41),(41,40),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,62),(62,61),(63,63),(64,64),(65,65),(66,67),(67,66),(68,68),(69,69),(70,70),(71,71);
/*!40000 ALTER TABLE `indicador12_suelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_densidad`
--

DROP TABLE IF EXISTS `indicador12_suelo_densidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_densidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `densidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_densidad_suelo_id_91be5645f454559_uniq` (`suelo_id`,`densidad_id`),
  KEY `indicador12_suelo_densidad_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_densidad_44546348` (`densidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_densidad`
--

LOCK TABLES `indicador12_suelo_densidad` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_densidad` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_densidad` VALUES (1,1,2),(2,2,1),(3,3,3),(4,4,2),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,3),(12,12,2),(13,13,2),(14,14,1),(15,15,2),(16,16,3),(17,17,1),(18,18,3),(19,19,2),(20,20,1),(21,20,2),(22,21,2),(23,22,2),(24,23,2),(25,24,2),(26,25,1),(27,26,2),(28,27,2),(29,28,2),(30,29,2),(31,30,2),(32,31,2),(33,32,2),(34,33,1),(35,34,3),(36,35,1),(37,36,2),(38,37,2),(39,38,2),(40,39,1),(41,40,2),(42,41,1),(43,42,2),(44,43,2),(45,44,2),(46,45,2),(47,46,2),(48,47,1),(49,48,1),(50,49,2),(51,50,1),(52,51,2),(53,52,2),(54,53,2),(55,54,2),(56,55,1),(57,56,2),(58,57,1),(59,58,2),(60,59,2),(61,60,1),(62,61,2),(63,62,2),(64,63,3),(65,64,1),(66,65,1),(67,66,2),(68,67,2),(69,68,2),(70,69,2),(71,70,2),(72,71,3);
/*!40000 ALTER TABLE `indicador12_suelo_densidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_drenaje`
--

DROP TABLE IF EXISTS `indicador12_suelo_drenaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_drenaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `drenaje_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_drenaje_suelo_id_73ada49bdcdeae97_uniq` (`suelo_id`,`drenaje_id`),
  KEY `indicador12_suelo_drenaje_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_drenaje_bd849a80` (`drenaje_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_drenaje`
--

LOCK TABLES `indicador12_suelo_drenaje` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_drenaje` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_drenaje` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,3),(5,5,3),(6,6,1),(7,7,2),(8,8,1),(9,9,2),(10,10,1),(11,11,1),(12,12,1),(13,13,2),(14,14,1),(15,15,2),(16,16,3),(17,17,4),(18,18,1),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,1),(24,24,2),(25,25,2),(26,26,3),(27,27,3),(28,28,2),(29,29,3),(30,30,2),(31,31,2),(32,32,2),(33,33,2),(34,34,2),(35,35,1),(36,36,1),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,2),(44,44,1),(45,45,4),(46,46,2),(47,47,1),(48,48,1),(49,49,2),(50,50,1),(51,51,2),(52,52,1),(53,53,2),(54,54,2),(55,55,1),(56,56,2),(57,57,2),(58,58,2),(59,59,2),(60,60,2),(61,61,2),(62,62,1),(63,63,2),(64,64,1),(65,65,1),(66,66,2),(67,67,2),(68,68,1),(69,69,1),(70,69,2),(71,70,1),(72,71,2);
/*!40000 ALTER TABLE `indicador12_suelo_drenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_lombrices`
--

DROP TABLE IF EXISTS `indicador12_suelo_lombrices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_lombrices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `densidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_lombrices_suelo_id_306652032e431f66_uniq` (`suelo_id`,`densidad_id`),
  KEY `indicador12_suelo_lombrices_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_lombrices_44546348` (`densidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_lombrices`
--

LOCK TABLES `indicador12_suelo_lombrices` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_lombrices` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_lombrices` VALUES (1,1,3),(2,2,4),(3,3,4),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,3),(11,11,2),(12,11,3),(13,12,3),(14,13,2),(15,14,3),(16,15,2),(17,16,3),(18,17,1),(19,18,3),(20,19,2),(21,20,2),(22,21,2),(23,22,2),(24,23,2),(25,24,2),(26,25,2),(27,26,3),(28,27,2),(29,28,2),(30,29,2),(31,30,2),(32,31,3),(33,32,3),(34,33,1),(35,34,2),(36,35,1),(37,36,2),(38,37,2),(39,38,2),(40,39,1),(41,40,2),(42,41,1),(43,42,2),(44,43,3),(45,44,3),(46,45,3),(47,46,2),(48,47,1),(49,48,1),(50,49,4),(51,50,2),(52,51,4),(53,52,2),(54,53,2),(55,54,2),(56,55,3),(57,56,3),(58,57,1),(59,58,2),(60,59,1),(61,60,3),(62,61,2),(63,62,2),(64,63,1),(65,64,2),(66,65,2),(67,66,2),(68,67,2),(69,68,3),(70,69,2),(71,70,2),(72,71,3);
/*!40000 ALTER TABLE `indicador12_suelo_lombrices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_materia`
--

DROP TABLE IF EXISTS `indicador12_suelo_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `densidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_materia_suelo_id_6c706dd25f65d223_uniq` (`suelo_id`,`densidad_id`),
  KEY `indicador12_suelo_materia_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_materia_44546348` (`densidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_materia`
--

LOCK TABLES `indicador12_suelo_materia` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_materia` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_materia` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,3),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,1),(16,16,1),(17,17,3),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,1),(25,25,1),(26,26,2),(27,27,3),(28,28,2),(29,29,2),(30,30,2),(31,31,2),(32,32,2),(33,33,2),(34,34,2),(35,35,2),(36,36,2),(37,37,4),(38,38,3),(39,39,1),(40,40,2),(41,41,1),(42,42,2),(43,43,1),(44,44,4),(45,45,2),(46,46,2),(47,47,1),(48,48,2),(49,49,2),(50,50,1),(51,51,2),(52,52,1),(53,53,2),(54,54,2),(55,55,3),(56,56,2),(57,57,2),(58,58,2),(59,59,2),(60,60,1),(61,61,2),(62,62,3),(63,63,2),(64,64,2),(65,65,2),(66,66,1),(67,67,2),(68,68,2),(69,69,2),(70,69,3),(71,70,1),(72,71,2);
/*!40000 ALTER TABLE `indicador12_suelo_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_pendiente`
--

DROP TABLE IF EXISTS `indicador12_suelo_pendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_pendiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `pendiente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_pendiente_suelo_id_1daa5408d50b3919_uniq` (`suelo_id`,`pendiente_id`),
  KEY `indicador12_suelo_pendiente_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_pendiente_ae46a14d` (`pendiente_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_pendiente`
--

LOCK TABLES `indicador12_suelo_pendiente` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_pendiente` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_pendiente` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,4),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,1),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,1),(16,16,1),(17,17,2),(18,18,2),(19,19,2),(20,20,1),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,1),(28,27,2),(29,28,4),(30,29,2),(31,30,2),(32,31,2),(33,32,2),(34,33,2),(35,34,2),(36,35,1),(37,35,2),(38,36,2),(39,37,2),(40,38,2),(41,39,2),(42,40,2),(43,41,2),(44,42,2),(45,43,2),(46,44,2),(47,44,3),(48,45,2),(49,46,2),(50,47,1),(51,47,2),(52,48,2),(53,49,2),(54,50,2),(55,51,2),(56,52,2),(57,53,2),(58,54,3),(59,55,2),(60,56,2),(61,57,1),(62,57,2),(63,58,2),(64,59,2),(65,60,2),(66,61,2),(67,62,2),(68,63,2),(69,64,1),(70,65,1),(71,66,2),(72,67,1),(73,68,2),(74,69,1),(75,69,2),(76,70,1),(77,71,1);
/*!40000 ALTER TABLE `indicador12_suelo_pendiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_profundidad`
--

DROP TABLE IF EXISTS `indicador12_suelo_profundidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_profundidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `profundidad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_profundidad_suelo_id_52192575ce6953cb_uniq` (`suelo_id`,`profundidad_id`),
  KEY `indicador12_suelo_profundidad_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_profundidad_d412ad97` (`profundidad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_profundidad`
--

LOCK TABLES `indicador12_suelo_profundidad` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_profundidad` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_profundidad` VALUES (1,1,2),(2,2,3),(3,3,2),(4,4,3),(5,5,3),(6,6,1),(7,7,2),(8,8,2),(9,9,3),(10,10,3),(11,11,4),(12,12,2),(13,13,2),(14,14,1),(15,15,3),(16,16,3),(17,17,1),(18,18,3),(19,19,3),(20,20,3),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,2),(28,28,2),(29,29,2),(30,30,1),(31,31,2),(32,32,2),(33,33,3),(34,34,2),(35,35,3),(36,36,2),(37,37,4),(38,38,4),(39,39,2),(40,40,2),(41,41,2),(42,42,2),(43,43,3),(44,44,3),(45,45,2),(46,46,2),(47,47,1),(48,48,3),(49,49,2),(50,50,1),(51,51,3),(52,52,4),(53,53,1),(54,54,2),(55,55,3),(56,56,2),(57,57,2),(58,58,2),(59,59,3),(60,60,4),(61,61,3),(62,62,2),(63,63,2),(64,64,1),(65,65,1),(66,66,2),(67,67,4),(68,68,2),(69,69,2),(70,69,3),(71,70,3),(72,71,3);
/*!40000 ALTER TABLE `indicador12_suelo_profundidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_suelo_textura`
--

DROP TABLE IF EXISTS `indicador12_suelo_textura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_suelo_textura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suelo_id` int(11) NOT NULL,
  `textura_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador12_suelo_textura_suelo_id_1f2b9dcab4ae17cd_uniq` (`suelo_id`,`textura_id`),
  KEY `indicador12_suelo_textura_b0bd5e91` (`suelo_id`),
  KEY `indicador12_suelo_textura_d554af26` (`textura_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_suelo_textura`
--

LOCK TABLES `indicador12_suelo_textura` WRITE;
/*!40000 ALTER TABLE `indicador12_suelo_textura` DISABLE KEYS */;
INSERT INTO `indicador12_suelo_textura` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,1),(5,5,1),(6,6,2),(7,7,3),(8,8,3),(9,9,1),(10,10,1),(11,11,1),(12,12,3),(13,13,1),(14,14,1),(15,15,1),(16,16,3),(17,17,3),(18,18,3),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,3),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,3),(34,34,1),(35,34,2),(36,35,2),(37,36,2),(38,37,3),(39,38,1),(40,39,2),(41,40,3),(42,41,1),(43,42,2),(44,43,3),(45,44,3),(46,45,1),(47,45,3),(48,46,1),(49,47,3),(50,47,4),(51,48,3),(52,49,3),(53,50,1),(54,51,3),(55,52,4),(56,53,3),(57,54,2),(58,55,1),(59,56,2),(60,57,1),(61,57,2),(62,58,1),(63,59,1),(64,60,2),(65,61,1),(66,61,2),(67,62,1),(68,63,1),(69,64,3),(70,65,3),(71,66,4),(72,67,1),(73,68,1),(74,69,1),(75,69,2),(76,70,1),(77,70,2),(78,71,2);
/*!40000 ALTER TABLE `indicador12_suelo_textura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_textura`
--

DROP TABLE IF EXISTS `indicador12_textura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_textura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_textura`
--

LOCK TABLES `indicador12_textura` WRITE;
/*!40000 ALTER TABLE `indicador12_textura` DISABLE KEYS */;
INSERT INTO `indicador12_textura` VALUES (1,'Arcilloso'),(2,'Limoso'),(3,'Arenoso'),(4,'Franco');
/*!40000 ALTER TABLE `indicador12_textura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador12_traccion`
--

DROP TABLE IF EXISTS `indicador12_traccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador12_traccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador12_traccion`
--

LOCK TABLES `indicador12_traccion` WRITE;
/*!40000 ALTER TABLE `indicador12_traccion` DISABLE KEYS */;
INSERT INTO `indicador12_traccion` VALUES (1,'Animal'),(2,'Humano'),(3,'Tractor'),(4,'Ninguna'),(5,'Espeque');
/*!40000 ALTER TABLE `indicador12_traccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador13_ingresofamiliar`
--

DROP TABLE IF EXISTS `indicador13_ingresofamiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador13_ingresofamiliar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rubro_id` int(11) NOT NULL,
  `cantidad` double,
  `precio` double,
  `quien_vendio` int(11) DEFAULT NULL,
  `maneja_negocio` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  `venta` int(11),
  PRIMARY KEY (`id`),
  KEY `indicador13_ingresofamiliar_c29a5cfb` (`rubro_id`),
  KEY `indicador13_ingresofamiliar_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador13_ingresofamiliar`
--

LOCK TABLES `indicador13_ingresofamiliar` WRITE;
/*!40000 ALTER TABLE `indicador13_ingresofamiliar` DISABLE KEYS */;
INSERT INTO `indicador13_ingresofamiliar` VALUES (1,8,45,10,3,2,1,3),(2,12,96,25,3,2,1,3),(3,16,42,35,3,2,1,3),(4,29,1,100,3,2,1,3),(5,12,96,25,3,2,1,3),(6,16,42,35,3,2,1,3),(7,29,1,100,3,2,1,3),(8,12,96,25,3,2,1,3),(9,16,42,35,3,2,1,3),(10,29,1,100,3,2,1,3),(11,3,1,800,1,3,2,3),(12,4,6,40,1,NULL,2,3),(13,12,70,25,1,2,2,3),(14,13,3,40,3,2,2,3),(15,14,360,10,1,2,2,3),(16,16,3,250,3,2,2,3),(17,25,5,300,3,2,2,3),(18,26,1,5000,1,1,2,3),(19,4,5,100,1,2,3,3),(20,16,1,250,2,1,3,3),(21,4,4,80,3,2,4,3),(22,15,0,6,3,2,4,3),(23,12,0,36,1,2,5,3),(24,21,0,30,3,2,5,3),(25,25,0,250,3,2,5,3),(26,6,12,1800,3,1,6,3),(27,16,20,160,3,1,6,3),(28,6,19,1900,3,1,7,3),(29,6,25,2000,3,1,8,3),(30,16,5,200,2,1,8,3),(31,10,8,800,2,1,9,3),(32,11,150,1,3,1,11,3),(33,22,120,2,4,1,11,3),(34,12,10,20,1,2,12,3),(35,29,5,200,1,1,12,3),(36,4,2,100,1,2,14,3),(37,5,8,800,2,2,14,3),(38,1,1000,3,1,2,16,3),(39,4,12,0,1,1,17,3),(40,6,50,0,1,1,17,3),(41,11,20,0,1,1,17,3),(42,12,8,0,1,1,17,3),(43,13,1,0,1,1,17,3),(44,16,20,0,1,1,17,3),(45,17,2,0,1,1,17,3),(46,18,100,0,1,1,17,3),(47,22,5,0,1,1,17,3),(48,23,0.2,0,1,1,17,3),(49,13,1,0,1,2,20,3),(50,1,80,2,3,3,21,3),(51,6,3,2000,3,3,21,3),(52,12,120,20,1,3,21,3),(53,14,400,7,1,3,21,2),(54,27,4000,4,3,3,21,2),(55,9,150,20,1,2,22,3),(56,10,6,1000,1,2,22,3),(57,12,200,20,1,2,22,3),(58,7,500,5,3,3,23,3),(59,8,500,6,3,1,23,3),(60,10,1100,6,3,3,23,3),(61,12,90,20,1,2,23,3),(62,1,3,3,3,1,24,3),(63,6,40,2500,3,1,24,3),(64,7,700,5,3,3,24,3),(65,10,6,1000,3,1,24,3),(66,11,100,30,2,1,24,3),(67,16,20,200,3,1,24,3),(68,17,10,300,2,1,24,3),(69,18,10,50,3,3,24,3),(70,20,40,50,3,1,24,3),(71,6,20,1000,3,3,25,2),(72,9,30,20,2,2,25,2),(73,12,137.5,20,2,3,25,2),(74,15,400,50,3,2,25,2),(75,20,500,50,3,2,25,2),(76,22,10,50,2,4,25,2),(77,1,4000,50,3,1,26,3),(78,6,20,1000,1,1,26,3),(79,10,20,1000,1,1,26,3),(80,13,80,10,1,1,26,3),(81,16,40,300,1,1,26,3),(82,20,5000,20,1,1,26,3),(83,11,20,20,1,1,27,3),(84,13,40,50,1,1,27,3),(85,16,40,250,1,1,27,3),(86,1,300,40,3,1,28,3),(87,6,4,1800,3,1,28,3),(88,10,6,900,3,1,28,3),(89,12,200,10,3,1,28,3),(90,15,1000,10,3,1,28,3),(91,20,12000,15,3,1,28,3),(92,20,500,20,1,1,29,3),(93,6,5,2000,3,1,30,3),(94,10,20,1200,3,1,30,3),(95,13,6,70,3,1,30,3),(96,16,30,250,3,1,30,3),(97,29,0.5,4,3,1,30,3),(98,1,500,100,1,1,32,3),(99,6,40,100,1,1,32,3),(100,11,1200,20,1,1,32,3),(101,15,300,20,1,1,32,3),(102,20,500,40,1,1,32,3),(103,1,500,100,1,1,32,3),(104,6,40,100,1,1,32,3),(105,11,1200,20,1,1,32,3),(106,15,300,20,1,1,32,3),(107,20,500,40,1,1,32,3),(108,6,26,2400,1,1,33,3),(109,11,30,30,3,1,33,3),(110,13,20,100,3,1,33,3),(111,15,10000,1,3,1,33,3),(112,20,10,40,3,1,33,3),(113,6,3,0,3,1,34,3),(114,10,5,0,3,1,34,3),(115,6,23,2000,2,2,35,3),(116,11,480,12,2,2,35,3),(117,4,20,100,2,1,36,3),(118,10,10,1000,2,1,36,3),(119,12,60,24,2,2,36,3),(120,16,20,300,2,1,36,3),(121,10,25,900,2,1,37,3),(122,16,22,300,2,2,37,3),(123,10,5,1000,2,2,38,3),(124,16,10,300,2,2,38,3),(125,6,26,2000,2,3,39,3),(126,10,8,1000,2,3,39,3),(127,11,300,15,2,3,39,3),(128,16,58,200,2,3,39,3),(129,17,4,350,2,3,39,3),(130,20,30,15,2,3,39,3),(131,10,20,1000,2,1,41,3),(132,5,2,2500,2,1,40,3),(133,11,840,15,2,1,40,3),(134,12,416,2,1,3,40,3),(135,10,10,1200,2,1,42,3),(136,16,10,200,2,1,42,3),(137,10,15,800,2,7,44,3),(138,16,20,300,2,7,44,3),(139,10,30,800,3,1,43,3),(140,12,10,25,1,3,43,3),(141,16,20,200,3,1,43,3),(142,26,1,4500,1,1,43,3),(143,28,3,4000,3,1,43,3),(144,10,5,900,3,1,45,3),(145,16,20,220,1,7,46,3),(146,10,0,800,3,1,47,3),(147,1,1,3,3,1,48,3),(148,10,10,500,3,1,48,3),(149,10,12,1300,1,7,49,3),(150,13,20,35,1,7,49,3),(151,16,28,300,1,7,49,3),(152,20,3000,900,1,7,49,3),(153,8,50,950,3,1,50,3),(154,12,40,25,1,2,50,3),(155,4,12,100,1,2,51,3),(156,6,16,1600,2,1,51,3),(157,9,50,0,2,2,51,3),(158,10,40,100,1,3,51,3),(159,12,20,24,1,2,51,3),(160,14,132400,10,1,2,51,3),(161,26,2,0,2,1,51,3),(162,28,3,0,2,1,51,3),(163,10,26,900,3,1,52,3),(164,16,7,400,2,1,52,3),(165,4,4,200,1,1,53,3),(166,10,3,3000,2,1,53,3),(167,11,50,50,1,1,53,3),(168,12,2,24,1,1,53,3),(169,28,3,5000,2,1,54,3),(170,4,10,100,2,2,55,3),(171,10,5,800,2,3,55,3),(172,12,20,24,2,2,55,3),(173,3,8,400,3,2,57,3),(174,10,7,800,2,6,57,3),(175,10,5,1000,3,7,62,3),(176,15,20000,25,3,7,62,3),(177,14,3300,5,1,2,64,3),(178,9,900,20,1,1,65,3),(179,6,1.5,3300,3,7,67,3),(180,10,1,1000,3,7,67,3),(181,12,0,2,5,7,67,3),(182,13,0,80,3,7,67,3),(183,15,0,50,3,7,67,3),(184,20,0,60,3,7,67,3),(185,29,2,300,1,7,67,3),(186,10,40,1000,3,1,68,3),(187,19,20,30,1,1,68,3),(188,14,3000,9,1,1,69,3),(189,11,24,0,4,2,70,1),(190,16,3,0,4,2,70,1),(191,25,8,0,1,2,70,3),(192,3,16,800,1,1,71,3),(193,12,40,2.5,1,2,71,3),(194,16,6,3000,3,1,71,3);
/*!40000 ALTER TABLE `indicador13_ingresofamiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador13_rubros`
--

DROP TABLE IF EXISTS `indicador13_rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador13_rubros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador13_rubros`
--

LOCK TABLES `indicador13_rubros` WRITE;
/*!40000 ALTER TABLE `indicador13_rubros` DISABLE KEYS */;
INSERT INTO `indicador13_rubros` VALUES (1,'Aguacate','Cien'),(2,'Ajonjolí','Quintales'),(3,'Arroz','Quintales'),(4,'Aves','Unidad'),(5,'Cacao','Quintales'),(6,'café','Quintales'),(7,'Cebolla','Libras'),(8,'Chiltoma','Libras'),(9,'Cuajada','Libras'),(10,'Frijol','Quintales'),(11,'Guineo','Cabeza'),(12,'Huevos','Docena'),(13,'Jocote','Lata'),(14,'Leche','Litros'),(15,'Limón','Cien'),(16,'Maíz','Quintales'),(17,'Malanga','Quintales'),(18,'Mango','Cien'),(19,'Millón','Quintales'),(20,'Naranja','Cien'),(21,'Pepino','Docena'),(22,'Plátano','Cabeza'),(23,'Quequisque','Quintales'),(24,'Queso','Libras'),(25,'Sorgo','Quintales'),(26,'Ternero de desarrollo','Cabeza'),(27,'Tomate','Libras'),(28,'Vaca','Cabeza'),(29,'Yuca','Quintales');
/*!40000 ALTER TABLE `indicador13_rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador14_fuentes`
--

DROP TABLE IF EXISTS `indicador14_fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador14_fuentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador14_fuentes`
--

LOCK TABLES `indicador14_fuentes` WRITE;
/*!40000 ALTER TABLE `indicador14_fuentes` DISABLE KEYS */;
INSERT INTO `indicador14_fuentes` VALUES (1,'Salarios'),(2,'Negocios'),(3,'Remesas'),(4,'Alquiler');
/*!40000 ALTER TABLE `indicador14_fuentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador14_otrosingresos`
--

DROP TABLE IF EXISTS `indicador14_otrosingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador14_otrosingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `meses` int(11) DEFAULT NULL,
  `ingreso` int(11) DEFAULT NULL,
  `tiene_ingreso` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador14_otrosingresos_7592e3f3` (`fuente_id`),
  KEY `indicador14_otrosingresos_d81b0b6e` (`tipo_id`),
  KEY `indicador14_otrosingresos_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador14_otrosingresos`
--

LOCK TABLES `indicador14_otrosingresos` WRITE;
/*!40000 ALTER TABLE `indicador14_otrosingresos` DISABLE KEYS */;
INSERT INTO `indicador14_otrosingresos` VALUES (1,2,1,12,300,2,1),(2,2,1,12,300,2,1),(3,2,1,12,300,2,1),(4,2,2,12,1340,3,2),(5,1,3,12,2400,1,3),(6,1,4,5,4800,1,4),(7,2,5,12,600,2,4),(8,2,6,12,400,2,5),(9,3,7,0,1500,4,6),(10,1,8,4,3000,1,9),(11,1,9,12,5572,3,10),(12,1,10,12,862,3,11),(13,1,8,4,1500,1,12),(14,1,11,12,4200,3,13),(15,1,12,8,1000,2,14),(16,3,13,4,446,3,15),(17,3,14,0,2000,2,16),(18,3,14,0,1000,2,18),(19,1,8,6,1200,1,19),(20,1,8,6,1200,3,20),(21,1,10,8,2000,1,21),(22,2,15,4,2000,1,21),(23,1,16,12,1000,2,22),(24,2,17,12,3000,1,22),(25,1,16,12,2000,1,23),(26,1,16,12,3000,3,24),(27,1,18,3,3000,3,25),(28,2,19,6,500,2,25),(29,1,20,12,4000,3,29),(30,1,6,12,2500,2,30),(31,3,21,4,6000,2,30),(32,1,14,2,2000,1,38),(33,1,22,3,1900,1,39),(34,1,23,12,1500,2,46),(35,2,24,3,2000,3,51),(36,2,25,15,5000,1,54),(37,3,21,12,1200,2,55),(38,2,6,12,3000,3,56),(39,4,26,3,1500,2,57),(40,2,25,12,2500,1,58),(41,1,15,3,4500,7,60),(42,1,27,10,1400,4,63),(43,2,25,12,300,1,68),(44,1,20,12,4500,2,69),(45,2,28,12,1200,2,70);
/*!40000 ALTER TABLE `indicador14_otrosingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador14_tipotrabajo`
--

DROP TABLE IF EXISTS `indicador14_tipotrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador14_tipotrabajo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador14_tipotrabajo`
--

LOCK TABLES `indicador14_tipotrabajo` WRITE;
/*!40000 ALTER TABLE `indicador14_tipotrabajo` DISABLE KEYS */;
INSERT INTO `indicador14_tipotrabajo` VALUES (1,'Venta de ropa, rosquillas'),(2,'Venta de carbón'),(3,'Fines de semana'),(4,'Trapiche'),(5,'Venta de ropa interior'),(6,'Pulpería'),(7,'Albañil'),(8,'Obrero agricola'),(9,'Ganadero'),(10,'Agrícola'),(11,'Agricultor/profesor'),(12,'Educadora'),(13,'Emigración a Costa Rica'),(14,'No contestó'),(15,'Cortes'),(16,'Agricultura'),(17,'Trabajo social'),(18,'Cortes de café'),(19,'Comerciante de ropa'),(20,'Profesor'),(21,'Remesas'),(22,'Jornalero'),(23,'Costurera'),(24,'Venta de Molienda de caña'),(25,'Compra venta de ganado'),(26,'Alquiler de Tierra'),(27,'Mano de obra'),(28,'Venta de producto finca');
/*!40000 ALTER TABLE `indicador14_tipotrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_detallecasa`
--

DROP TABLE IF EXISTS `indicador15_detallecasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_detallecasa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tamano` int(11) DEFAULT NULL,
  `ambientes` int(11) DEFAULT NULL,
  `letrina` int(11) DEFAULT NULL,
  `lavadero` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador15_detallecasa_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_detallecasa`
--

LOCK TABLES `indicador15_detallecasa` WRITE;
/*!40000 ALTER TABLE `indicador15_detallecasa` DISABLE KEYS */;
INSERT INTO `indicador15_detallecasa` VALUES (1,6,3,1,2,1),(2,6,3,1,2,1),(3,6,3,1,2,1),(4,24,2,1,1,2),(5,36,2,1,1,3),(6,0,4,1,1,4),(7,0,3,1,1,5),(8,6,1,1,1,6),(9,5,1,1,1,7),(10,6,1,1,2,8),(11,56,1,1,2,9),(12,36,1,1,1,10),(13,36,3,1,1,11),(14,36,1,1,1,12),(15,63,1,1,2,13),(16,24,1,1,2,14),(17,24,1,2,2,15),(18,120,1,1,2,16),(19,45,NULL,1,2,17),(20,48,1,1,2,18),(21,4,1,1,2,19),(22,6,1,1,2,20),(23,4,1,1,1,21),(24,10,4,1,2,22),(25,6,1,1,2,23),(26,6,1,2,2,24),(27,7,1,1,1,25),(28,20,3,1,2,26),(29,48,1,1,2,27),(30,84,1,1,1,28),(31,144,1,1,1,29),(32,49,3,1,2,30),(33,54,3,1,2,32),(34,54,3,1,2,32),(35,60,3,1,1,33),(36,0,1,1,1,34),(37,70,3,1,1,35),(38,10,1,1,2,36),(39,5,1,NULL,2,37),(40,8,1,1,2,38),(41,70,2,1,1,39),(42,8,1,1,2,41),(43,80,4,1,1,40),(44,5,1,1,2,42),(45,17,1,1,2,44),(46,8,3,1,2,43),(47,4,1,1,2,45),(48,0,4,1,1,46),(49,120,5,2,2,47),(50,10,3,2,2,48),(51,8,1,1,1,49),(52,8,4,2,2,50),(53,10,1,1,2,51),(54,15,3,2,2,52),(55,4,1,2,1,53),(56,10,1,1,1,54),(57,5,1,1,2,55),(58,8,1,1,1,56),(59,14,1,2,2,57),(60,7,1,1,1,58),(61,10,1,1,1,59),(62,5,1,1,2,60),(63,8,1,1,2,62),(64,13,1,1,1,61),(65,5,1,1,1,63),(66,54,4,1,2,64),(67,144,5,1,1,65),(68,7,3,1,2,67),(69,30,1,2,2,66),(70,96,4,1,2,68),(71,20,1,1,1,69),(72,48,1,1,1,70),(73,80,3,1,1,71);
/*!40000 ALTER TABLE `indicador15_detallecasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_equipos`
--

DROP TABLE IF EXISTS `indicador15_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_equipos`
--

LOCK TABLES `indicador15_equipos` WRITE;
/*!40000 ALTER TABLE `indicador15_equipos` DISABLE KEYS */;
INSERT INTO `indicador15_equipos` VALUES (1,'Arado'),(2,'Bomba de fumigar'),(3,'Bomba de motor'),(4,'Carreta'),(5,'Moto sierra'),(6,'Motor de riego'),(7,'Panel solar'),(8,'Picadora'),(9,'Silos metalicos'),(10,'Plancha'),(11,'Radio'),(12,'TV'),(13,'DVD'),(14,'Celular'),(15,'Licuadora'),(16,'Refrigeradora'),(17,'Muebles'),(18,'Biodigestor'),(19,'Caseta para aves'),(20,'Sistema Beneficiarios');
/*!40000 ALTER TABLE `indicador15_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_herramientas`
--

DROP TABLE IF EXISTS `indicador15_herramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_herramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `herramienta_id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador15_herramientas_18dc765` (`herramienta_id`),
  KEY `indicador15_herramientas_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=431 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_herramientas`
--

LOCK TABLES `indicador15_herramientas` WRITE;
/*!40000 ALTER TABLE `indicador15_herramientas` DISABLE KEYS */;
INSERT INTO `indicador15_herramientas` VALUES (1,1,4,1),(2,2,1,1),(3,4,1,1),(4,7,1,1),(5,8,1,1),(6,1,4,1),(7,2,1,1),(8,4,1,1),(9,7,1,1),(10,8,1,1),(11,1,4,1),(12,2,1,1),(13,4,1,1),(14,7,1,1),(15,8,1,1),(16,1,6,2),(17,2,2,2),(18,3,1,2),(19,4,1,2),(20,6,1,2),(21,7,2,2),(22,1,5,3),(23,2,1,3),(24,3,1,3),(25,4,2,3),(26,6,1,3),(27,7,1,3),(28,1,8,4),(29,3,1,4),(30,4,1,4),(31,7,1,4),(32,8,1,4),(33,1,15,5),(34,2,1,5),(35,3,1,5),(36,4,1,5),(37,5,1,5),(38,6,1,5),(39,7,1,5),(40,8,1,5),(41,9,1,5),(42,1,4,6),(43,2,4,6),(44,3,1,6),(45,4,2,6),(46,6,1,6),(47,7,1,6),(48,1,3,7),(49,2,3,7),(50,3,1,7),(51,4,1,7),(52,6,1,7),(53,7,1,7),(54,8,1,7),(55,1,2,8),(56,2,1,8),(57,3,1,8),(58,4,1,8),(59,6,2,8),(60,7,1,8),(61,1,1,9),(62,2,1,9),(63,4,1,9),(64,7,1,9),(65,1,4,10),(66,2,1,10),(67,3,1,10),(68,5,1,10),(69,7,1,10),(70,8,1,10),(71,9,1,10),(72,1,2,11),(73,2,1,11),(74,3,1,11),(75,4,1,11),(76,5,1,11),(77,6,1,11),(78,7,1,11),(79,8,1,11),(80,9,1,11),(81,1,5,12),(82,2,1,12),(83,7,1,12),(84,8,1,12),(85,2,2,13),(86,3,1,13),(87,4,1,13),(88,5,2,13),(89,7,1,13),(90,8,1,13),(91,1,2,14),(92,2,3,14),(93,4,1,14),(94,5,1,14),(95,1,3,15),(96,2,4,15),(97,3,1,15),(98,4,2,15),(99,5,1,15),(100,8,1,15),(101,1,4,16),(102,2,4,16),(103,3,2,16),(104,4,2,16),(105,5,1,16),(106,7,2,16),(107,8,2,16),(108,1,3,17),(109,2,2,17),(110,3,2,17),(111,7,1,17),(112,8,1,17),(113,1,2,18),(114,2,1,18),(115,3,1,18),(116,4,1,18),(117,5,1,18),(118,7,1,18),(119,1,2,19),(120,2,2,19),(121,4,1,19),(122,1,1,20),(123,4,1,20),(124,7,1,20),(125,1,2,21),(126,2,1,21),(127,3,1,21),(128,4,2,21),(129,5,1,21),(130,1,1,22),(131,4,1,22),(132,8,1,22),(133,1,2,23),(134,1,3,23),(135,3,1,23),(136,4,1,23),(137,5,1,23),(138,8,1,23),(139,1,6,24),(140,2,6,24),(141,3,5,24),(142,4,2,24),(143,5,3,24),(144,6,3,24),(145,7,3,24),(146,8,3,24),(147,1,3,25),(148,2,2,25),(149,3,1,25),(150,4,1,25),(151,7,1,25),(152,1,4,26),(153,2,3,26),(154,3,1,26),(155,4,1,26),(156,6,3,26),(157,7,1,26),(158,8,2,26),(159,9,1,26),(160,1,4,27),(161,2,4,27),(162,3,1,27),(163,4,2,27),(164,7,2,27),(165,9,3,27),(166,1,1,28),(167,2,3,28),(168,3,1,28),(169,4,2,28),(170,7,1,28),(171,1,3,29),(172,2,3,29),(173,4,3,29),(174,7,1,29),(175,1,5,32),(176,2,6,32),(177,3,1,32),(178,4,3,32),(179,5,4,32),(180,6,2,32),(181,7,1,32),(182,8,2,32),(183,1,5,32),(184,2,6,32),(185,3,1,32),(186,4,3,32),(187,5,4,32),(188,6,2,32),(189,7,1,32),(190,8,2,32),(191,1,4,33),(192,2,4,33),(193,3,1,33),(194,4,1,33),(195,5,1,33),(196,6,1,33),(197,7,1,33),(198,8,1,33),(199,1,4,34),(200,2,4,34),(201,3,2,34),(202,4,2,34),(203,7,2,34),(204,1,1,34),(205,1,2,36),(206,2,2,36),(207,3,1,36),(208,4,1,36),(209,8,1,36),(210,1,3,37),(211,2,1,37),(212,1,3,35),(213,2,1,35),(214,10,1,35),(215,4,1,35),(216,5,1,35),(217,6,1,35),(218,7,1,35),(219,11,1,35),(220,12,NULL,35),(221,1,3,38),(222,2,3,38),(223,3,1,38),(224,6,1,38),(225,8,1,38),(226,1,5,39),(227,2,2,39),(228,3,1,39),(229,4,1,39),(230,5,1,39),(231,6,2,39),(232,7,1,39),(233,10,1,39),(234,1,5,41),(235,2,4,41),(236,3,2,41),(237,4,1,41),(238,7,1,41),(239,8,1,41),(240,1,1,40),(241,2,1,40),(242,6,1,40),(243,1,2,42),(244,2,1,42),(245,3,1,42),(246,4,2,42),(247,1,4,44),(248,2,4,44),(249,3,1,44),(250,4,1,44),(251,7,1,44),(252,8,1,44),(253,1,6,43),(254,2,4,43),(255,3,3,43),(256,4,1,43),(257,5,1,43),(258,6,1,43),(259,7,2,43),(260,8,1,43),(261,1,2,45),(262,2,1,45),(263,4,1,45),(264,7,1,45),(265,8,1,45),(266,1,2,46),(267,2,2,46),(268,3,1,46),(269,4,1,46),(270,5,1,46),(271,7,1,46),(272,8,1,46),(273,1,1,47),(274,2,1,47),(275,4,1,47),(276,7,1,47),(277,8,1,47),(278,1,2,49),(279,2,3,49),(280,3,1,49),(281,4,1,49),(282,7,1,49),(283,1,2,48),(284,2,2,48),(285,3,1,48),(286,4,1,48),(287,5,1,48),(288,6,1,48),(289,8,1,48),(290,9,1,48),(291,1,2,50),(292,2,2,50),(293,3,1,50),(294,4,1,50),(295,6,1,50),(296,7,1,50),(297,8,1,50),(298,1,5,51),(299,2,4,51),(300,3,2,51),(301,4,3,51),(302,5,1,51),(303,7,2,51),(304,8,3,51),(305,9,1,51),(306,1,3,52),(307,2,2,52),(308,3,1,52),(309,4,2,52),(310,5,1,52),(311,7,1,52),(312,8,1,52),(313,1,8,53),(314,2,2,53),(315,3,1,53),(316,4,1,53),(317,7,2,53),(318,8,1,53),(319,1,3,54),(320,2,1,54),(321,3,1,54),(322,4,2,54),(323,7,1,54),(324,8,1,54),(325,9,1,54),(326,1,3,55),(327,2,3,55),(328,3,2,55),(329,4,2,55),(330,7,1,55),(331,1,2,56),(332,3,1,56),(333,4,1,56),(334,5,1,56),(335,7,1,56),(336,8,1,56),(337,1,3,57),(338,2,3,57),(339,3,2,57),(340,7,1,57),(341,8,1,57),(342,1,2,58),(343,2,1,58),(344,3,1,58),(345,4,1,58),(346,7,1,58),(347,8,1,58),(348,1,1,59),(349,2,1,59),(350,3,1,59),(351,4,1,59),(352,5,1,59),(353,7,1,59),(354,8,1,59),(355,9,1,59),(356,1,4,60),(357,2,3,60),(358,3,1,60),(359,4,1,60),(360,7,1,60),(361,8,1,60),(362,1,3,62),(363,2,3,62),(364,4,1,62),(365,6,1,62),(366,7,1,62),(367,1,3,61),(368,2,2,61),(369,3,4,61),(370,4,4,61),(371,5,2,61),(372,6,1,61),(373,7,3,61),(374,8,3,61),(375,9,1,61),(376,1,1,63),(377,3,1,63),(378,4,1,63),(379,7,1,63),(380,1,2,64),(381,2,1,64),(382,4,1,64),(383,6,1,64),(384,7,1,64),(385,8,1,64),(386,1,1,65),(387,2,1,65),(388,4,1,65),(389,5,1,65),(390,8,1,65),(391,1,3,67),(392,2,3,67),(393,3,2,67),(394,4,2,67),(395,7,1,67),(396,8,1,67),(397,1,1,66),(398,2,2,66),(399,4,2,66),(400,7,1,66),(401,8,1,66),(402,1,2,68),(403,2,1,68),(404,4,1,68),(405,5,1,68),(406,7,1,68),(407,8,1,68),(408,1,3,69),(409,2,1,69),(410,3,1,69),(411,4,1,69),(412,5,1,69),(413,6,1,69),(414,7,2,69),(415,9,1,69),(416,1,4,70),(417,2,2,70),(418,3,1,70),(419,4,2,70),(420,5,2,70),(421,7,1,70),(422,9,1,70),(423,1,4,71),(424,2,4,71),(425,3,4,71),(426,4,5,71),(427,6,3,71),(428,7,2,71),(429,8,2,71),(430,9,1,71);
/*!40000 ALTER TABLE `indicador15_herramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_infraestructuras`
--

DROP TABLE IF EXISTS `indicador15_infraestructuras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_infraestructuras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_infraestructuras`
--

LOCK TABLES `indicador15_infraestructuras` WRITE;
/*!40000 ALTER TABLE `indicador15_infraestructuras` DISABLE KEYS */;
INSERT INTO `indicador15_infraestructuras` VALUES (1,'Pilas'),(2,'Corrales de vacas'),(3,'Corrales de cerdos'),(4,'Caseta de ternero'),(5,'Caseta de aves'),(6,'Comederos'),(7,'Silo forrajero'),(8,'Tanque de plástico'),(9,'Tanque de cemento'),(10,'Pozos'),(11,'Caseta para aves');
/*!40000 ALTER TABLE `indicador15_infraestructuras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_nombreherramienta`
--

DROP TABLE IF EXISTS `indicador15_nombreherramienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_nombreherramienta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_nombreherramienta`
--

LOCK TABLES `indicador15_nombreherramienta` WRITE;
/*!40000 ALTER TABLE `indicador15_nombreherramienta` DISABLE KEYS */;
INSERT INTO `indicador15_nombreherramienta` VALUES (1,'Machete'),(2,'Coba'),(3,'Piocha'),(4,'Pala'),(5,'Rastrillo'),(6,'Herramienta para poda'),(7,'Hacha'),(8,'Barra'),(9,'Carretilla'),(10,'Azadón'),(11,'Cobín'),(12,'Martillo');
/*!40000 ALTER TABLE `indicador15_nombreherramienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_nombretransporte`
--

DROP TABLE IF EXISTS `indicador15_nombretransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_nombretransporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_nombretransporte`
--

LOCK TABLES `indicador15_nombretransporte` WRITE;
/*!40000 ALTER TABLE `indicador15_nombretransporte` DISABLE KEYS */;
INSERT INTO `indicador15_nombretransporte` VALUES (1,'Caballos o mulas'),(2,'Carreta de bueyes o caballos'),(3,'Bicicleta'),(4,'Motocicleta'),(5,'Camioneta o carro'),(6,'Tractor');
/*!40000 ALTER TABLE `indicador15_nombretransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_piso`
--

DROP TABLE IF EXISTS `indicador15_piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_piso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_piso`
--

LOCK TABLES `indicador15_piso` WRITE;
/*!40000 ALTER TABLE `indicador15_piso` DISABLE KEYS */;
INSERT INTO `indicador15_piso` VALUES (1,'Tierra'),(2,'Ladrillo de barro'),(3,'Embaldosado'),(4,'Cemento fino'),(5,'Cerámica'),(6,'No contestó');
/*!40000 ALTER TABLE `indicador15_piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_propiedades`
--

DROP TABLE IF EXISTS `indicador15_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_propiedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(11) DEFAULT NULL,
  `cantidad_equipo` int(11) DEFAULT NULL,
  `infraestructura_id` int(11) DEFAULT NULL,
  `cantidad_infra` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador15_propiedades_80b245ef` (`equipo_id`),
  KEY `indicador15_propiedades_84e6f7ed` (`infraestructura_id`),
  KEY `indicador15_propiedades_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_propiedades`
--

LOCK TABLES `indicador15_propiedades` WRITE;
/*!40000 ALTER TABLE `indicador15_propiedades` DISABLE KEYS */;
INSERT INTO `indicador15_propiedades` VALUES (1,2,1,1,1,1),(2,11,1,2,1,1),(3,NULL,NULL,10,1,1),(4,2,1,1,1,1),(5,11,1,2,1,1),(6,NULL,NULL,10,1,1),(7,2,1,1,1,1),(8,11,1,2,1,1),(9,2,1,10,1,1),(10,2,1,NULL,NULL,2),(11,10,1,5,1,2),(12,12,1,NULL,NULL,2),(13,11,1,NULL,NULL,2),(14,14,1,NULL,NULL,2),(15,11,1,11,1,3),(16,14,1,10,1,3),(17,1,1,3,1,4),(18,9,1,5,1,4),(19,10,1,NULL,NULL,4),(20,11,1,NULL,NULL,4),(21,12,1,NULL,NULL,4),(22,14,1,NULL,NULL,4),(23,16,1,NULL,NULL,4),(24,2,1,3,1,5),(25,9,1,5,1,5),(26,10,2,NULL,NULL,5),(27,11,1,NULL,NULL,5),(28,12,1,NULL,NULL,5),(29,13,1,NULL,NULL,5),(30,14,1,NULL,NULL,5),(31,2,1,5,1,6),(32,10,1,NULL,NULL,6),(33,11,1,NULL,NULL,6),(34,12,1,NULL,NULL,6),(35,13,1,NULL,NULL,6),(36,14,2,NULL,NULL,6),(37,15,1,NULL,NULL,6),(38,16,1,5,NULL,7),(39,11,1,NULL,NULL,7),(40,2,1,3,1,8),(41,10,1,NULL,NULL,8),(42,11,1,NULL,NULL,8),(43,12,1,NULL,NULL,8),(44,13,1,NULL,NULL,8),(45,14,2,NULL,NULL,8),(46,17,1,NULL,NULL,8),(47,2,1,5,1,9),(48,9,1,NULL,NULL,9),(49,11,1,NULL,NULL,9),(50,2,1,1,1,10),(51,10,1,2,1,10),(52,14,3,5,1,10),(53,NULL,NULL,6,1,10),(54,2,1,5,1,11),(55,3,1,10,1,11),(56,4,1,NULL,NULL,11),(57,6,1,NULL,NULL,11),(58,10,1,NULL,NULL,11),(59,11,1,NULL,NULL,11),(60,14,2,NULL,NULL,11),(61,9,1,8,1,12),(62,11,2,NULL,NULL,12),(63,14,2,NULL,NULL,12),(64,2,2,1,1,13),(65,9,1,2,1,13),(66,10,1,3,1,13),(67,11,1,NULL,NULL,13),(68,14,1,NULL,NULL,13),(69,2,1,NULL,NULL,14),(70,11,1,NULL,NULL,14),(71,14,1,NULL,NULL,14),(72,2,1,5,1,15),(73,10,1,NULL,NULL,15),(74,11,1,NULL,NULL,15),(75,12,1,NULL,NULL,15),(76,13,1,NULL,NULL,15),(77,14,1,NULL,NULL,15),(78,2,2,1,1,16),(79,4,1,11,1,16),(80,9,4,6,1,16),(81,10,1,NULL,NULL,16),(82,11,1,NULL,NULL,16),(83,12,1,NULL,NULL,16),(84,13,1,NULL,NULL,16),(85,14,1,NULL,NULL,16),(86,16,1,NULL,NULL,16),(87,18,1,NULL,NULL,16),(88,2,1,5,1,17),(89,9,1,NULL,NULL,17),(90,11,1,NULL,NULL,17),(91,12,1,NULL,NULL,17),(92,13,1,NULL,NULL,17),(93,14,1,NULL,NULL,17),(94,2,1,NULL,NULL,18),(95,12,1,NULL,NULL,18),(96,14,1,NULL,NULL,18),(97,12,1,1,1,19),(98,13,1,5,1,19),(99,11,1,NULL,NULL,20),(100,9,1,3,1,21),(101,10,1,4,1,21),(102,11,1,5,1,21),(103,12,1,6,1,21),(104,13,1,NULL,1,21),(105,2,1,5,1,22),(106,10,1,6,1,22),(107,11,1,NULL,NULL,22),(108,12,1,NULL,NULL,22),(109,13,1,NULL,NULL,22),(110,17,3,NULL,NULL,22),(111,2,1,5,1,23),(112,9,1,NULL,NULL,23),(113,10,1,NULL,NULL,23),(114,11,1,NULL,NULL,23),(115,12,1,NULL,NULL,23),(116,14,1,NULL,NULL,23),(117,2,3,5,1,24),(118,9,3,8,2,24),(119,10,1,10,2,24),(120,11,1,NULL,NULL,24),(121,12,1,NULL,NULL,24),(122,13,1,NULL,NULL,24),(123,14,2,NULL,NULL,24),(124,17,1,NULL,NULL,24),(125,2,1,5,1,25),(126,9,1,6,1,25),(127,10,1,9,1,25),(128,11,1,NULL,NULL,25),(129,12,1,NULL,NULL,25),(130,13,1,NULL,NULL,25),(131,14,1,NULL,NULL,25),(132,15,1,NULL,NULL,25),(133,16,1,NULL,NULL,25),(134,17,1,NULL,NULL,25),(135,2,3,1,1,26),(136,4,1,3,1,26),(137,9,4,8,1,26),(138,11,1,NULL,NULL,26),(139,12,1,NULL,NULL,26),(140,13,1,NULL,NULL,26),(141,17,3,NULL,NULL,26),(142,2,2,3,1,27),(143,11,1,5,1,27),(144,12,1,NULL,NULL,27),(145,13,1,NULL,NULL,27),(146,14,1,NULL,NULL,27),(147,17,1,NULL,NULL,27),(148,2,3,NULL,NULL,28),(149,10,1,NULL,NULL,28),(150,11,1,NULL,NULL,28),(151,12,1,NULL,NULL,28),(152,13,1,NULL,NULL,28),(153,14,1,NULL,NULL,28),(154,16,1,NULL,NULL,28),(155,17,1,NULL,NULL,28),(156,2,1,NULL,NULL,29),(157,10,1,NULL,NULL,29),(158,11,1,NULL,NULL,29),(159,12,1,NULL,NULL,29),(160,14,3,NULL,NULL,29),(161,17,1,NULL,NULL,29),(162,2,2,5,1,30),(163,NULL,NULL,8,1,30),(164,3,2,1,2,32),(165,9,1,2,1,32),(166,NULL,NULL,5,1,32),(167,3,2,1,2,32),(168,9,1,2,1,32),(169,1,0,5,1,32),(170,2,2,1,1,33),(171,9,2,5,1,33),(172,10,1,NULL,NULL,33),(173,11,1,NULL,NULL,33),(174,2,1,1,1,34),(175,10,1,6,1,34),(176,NULL,NULL,10,1,34),(177,11,1,NULL,NULL,34),(178,12,1,NULL,NULL,34),(179,13,1,NULL,NULL,34),(180,14,1,NULL,NULL,34),(181,15,1,NULL,NULL,34),(182,17,1,NULL,NULL,34),(183,2,1,5,1,36),(184,9,1,6,1,36),(185,10,2,NULL,NULL,36),(186,11,1,NULL,NULL,36),(187,2,1,NULL,NULL,37),(188,11,1,NULL,NULL,37),(189,2,1,3,1,35),(190,3,1,5,1,35),(191,7,1,NULL,NULL,35),(192,9,1,NULL,NULL,35),(193,10,1,NULL,NULL,35),(194,11,1,NULL,NULL,35),(195,2,1,NULL,NULL,38),(196,10,1,NULL,NULL,38),(197,11,1,NULL,NULL,38),(198,2,1,1,1,39),(199,9,1,3,1,39),(200,10,1,5,1,39),(201,11,1,NULL,NULL,39),(202,2,1,5,1,41),(203,9,2,8,1,41),(204,10,1,NULL,NULL,41),(205,11,1,NULL,NULL,41),(206,14,1,NULL,NULL,41),(207,10,1,5,1,40),(208,11,1,6,1,40),(209,14,2,NULL,NULL,40),(210,9,1,NULL,NULL,42),(211,11,1,NULL,NULL,42),(212,14,1,NULL,NULL,42),(213,2,3,2,1,44),(214,9,3,5,1,44),(215,11,1,NULL,NULL,44),(216,1,1,2,1,43),(217,2,4,5,1,43),(218,9,1,NULL,NULL,43),(219,10,1,NULL,NULL,43),(220,11,1,NULL,NULL,43),(221,18,1,NULL,NULL,43),(222,1,1,2,1,45),(223,2,1,5,1,45),(224,9,1,10,1,45),(225,11,1,NULL,NULL,45),(226,14,1,NULL,NULL,45),(227,18,1,NULL,NULL,45),(228,2,1,5,1,46),(229,9,2,10,1,46),(230,10,1,NULL,NULL,46),(231,11,1,NULL,NULL,46),(232,12,1,NULL,NULL,46),(233,13,1,NULL,NULL,46),(234,14,1,NULL,NULL,46),(235,1,1,2,1,47),(236,2,1,5,1,47),(237,4,1,NULL,NULL,47),(238,9,2,NULL,NULL,47),(239,10,1,NULL,NULL,47),(240,12,1,NULL,NULL,47),(241,13,1,NULL,NULL,47),(242,14,1,NULL,NULL,47),(243,15,1,NULL,NULL,47),(244,16,1,NULL,NULL,47),(245,17,1,NULL,NULL,47),(246,2,1,1,1,49),(247,NULL,NULL,3,1,49),(248,NULL,NULL,5,1,49),(249,NULL,NULL,7,1,49),(250,10,1,NULL,NULL,49),(251,11,1,NULL,NULL,49),(252,14,1,NULL,NULL,49),(253,17,1,NULL,NULL,49),(254,1,1,2,1,48),(255,2,1,3,1,48),(256,9,1,3,1,48),(257,10,1,5,1,48),(258,11,1,NULL,NULL,48),(259,14,1,NULL,NULL,48),(260,17,3,NULL,NULL,48),(261,2,2,NULL,NULL,50),(262,7,1,NULL,NULL,50),(263,9,1,NULL,NULL,50),(264,10,1,NULL,NULL,50),(265,11,1,NULL,NULL,50),(266,12,2,NULL,NULL,50),(267,13,1,NULL,NULL,50),(268,14,2,NULL,NULL,50),(269,17,1,NULL,NULL,50),(270,2,2,1,1,51),(271,4,1,2,1,51),(272,5,1,3,1,51),(273,7,1,10,2,51),(274,9,4,NULL,NULL,51),(275,2,1,2,1,52),(276,9,1,5,1,52),(277,10,2,10,1,52),(278,11,1,NULL,NULL,52),(279,14,2,NULL,NULL,52),(280,2,1,5,1,53),(281,9,1,10,1,53),(282,1,1,1,1,54),(283,10,1,2,1,54),(284,11,1,3,1,54),(285,12,1,NULL,NULL,54),(286,14,2,NULL,NULL,54),(287,16,1,NULL,NULL,54),(288,17,1,NULL,NULL,54),(289,2,1,2,1,55),(290,9,1,5,1,55),(291,10,2,NULL,NULL,55),(292,11,2,NULL,NULL,55),(293,14,2,NULL,NULL,55),(294,1,1,NULL,NULL,56),(295,2,1,NULL,NULL,56),(296,9,1,NULL,NULL,56),(297,10,1,NULL,NULL,56),(298,11,1,NULL,NULL,56),(299,12,1,NULL,NULL,56),(300,14,1,NULL,NULL,56),(301,16,1,NULL,NULL,56),(302,17,1,NULL,NULL,56),(303,2,1,1,1,57),(304,7,1,11,1,57),(305,9,1,10,1,57),(306,10,2,NULL,NULL,57),(307,11,1,NULL,NULL,57),(308,12,1,NULL,NULL,57),(309,14,2,NULL,NULL,57),(310,1,1,NULL,NULL,58),(311,2,1,NULL,NULL,58),(312,10,1,NULL,NULL,58),(313,11,1,NULL,NULL,58),(314,12,1,NULL,NULL,58),(315,14,1,NULL,NULL,58),(316,2,1,NULL,NULL,59),(317,10,1,NULL,NULL,59),(318,11,1,NULL,NULL,59),(319,12,1,NULL,NULL,59),(320,13,1,NULL,NULL,59),(321,14,2,NULL,NULL,59),(322,15,1,NULL,NULL,59),(323,16,1,NULL,NULL,59),(324,17,1,NULL,NULL,59),(325,2,1,NULL,NULL,60),(326,11,1,NULL,NULL,60),(327,2,2,1,2,62),(328,9,1,3,1,62),(329,NULL,NULL,5,1,62),(330,10,1,NULL,NULL,62),(331,11,1,NULL,NULL,62),(332,13,1,NULL,NULL,62),(333,17,1,NULL,NULL,62),(334,1,1,2,1,61),(335,2,2,3,1,61),(336,10,3,NULL,NULL,61),(337,11,1,NULL,NULL,61),(338,12,1,NULL,NULL,61),(339,13,1,NULL,NULL,61),(340,14,6,NULL,NULL,61),(341,15,1,NULL,NULL,61),(342,16,1,NULL,NULL,61),(343,17,1,NULL,NULL,61),(344,2,1,3,1,63),(345,10,1,NULL,NULL,63),(346,11,1,NULL,NULL,63),(347,12,1,NULL,NULL,63),(348,14,1,NULL,NULL,63),(349,15,1,NULL,NULL,63),(350,17,1,NULL,NULL,63),(351,1,1,2,1,64),(352,2,2,5,1,64),(353,11,1,NULL,NULL,64),(354,12,1,NULL,NULL,64),(355,13,1,NULL,NULL,64),(356,14,1,NULL,NULL,64),(357,17,1,NULL,NULL,64),(358,18,1,NULL,NULL,64),(359,1,1,NULL,NULL,65),(360,2,1,NULL,NULL,65),(361,11,1,NULL,NULL,65),(362,14,1,NULL,NULL,65),(363,17,1,NULL,NULL,65),(364,18,1,NULL,NULL,65),(365,2,2,2,1,67),(366,11,1,NULL,NULL,67),(367,4,1,11,1,67),(368,14,1,NULL,NULL,67),(369,9,1,NULL,NULL,67),(370,2,1,5,1,66),(371,9,2,NULL,NULL,66),(372,11,1,NULL,NULL,66),(373,14,1,NULL,NULL,66),(374,1,1,NULL,NULL,68),(375,2,1,NULL,NULL,68),(376,9,1,NULL,NULL,68),(377,11,1,NULL,NULL,68),(378,14,1,NULL,NULL,68),(379,1,1,2,2,69),(380,2,1,3,1,69),(381,4,1,4,1,69),(382,9,1,6,1,69),(383,20,1,10,1,69),(384,10,1,NULL,NULL,69),(385,11,2,NULL,NULL,69),(386,12,1,NULL,NULL,69),(387,13,1,NULL,NULL,69),(388,14,3,NULL,NULL,69),(389,15,1,NULL,NULL,69),(390,16,1,NULL,NULL,69),(391,17,1,NULL,NULL,69),(392,1,1,1,1,70),(393,2,1,2,1,70),(394,4,1,3,1,70),(395,9,2,5,1,70),(396,10,1,NULL,NULL,70),(397,12,1,NULL,NULL,70),(398,15,1,NULL,NULL,70),(399,16,1,NULL,NULL,70),(400,17,1,NULL,NULL,70),(401,9,3,1,1,71),(402,10,1,3,1,71),(403,11,1,5,1,71),(404,12,1,NULL,NULL,71),(405,14,2,NULL,NULL,71);
/*!40000 ALTER TABLE `indicador15_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_techo`
--

DROP TABLE IF EXISTS `indicador15_techo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_techo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_techo`
--

LOCK TABLES `indicador15_techo` WRITE;
/*!40000 ALTER TABLE `indicador15_techo` DISABLE KEYS */;
INSERT INTO `indicador15_techo` VALUES (1,'Plástico'),(2,'Paja'),(3,'Teja de madera'),(4,'Teja de barro'),(5,'Zinc'),(6,'No contestó');
/*!40000 ALTER TABLE `indicador15_techo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_tipocasa`
--

DROP TABLE IF EXISTS `indicador15_tipocasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_tipocasa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador15_tipocasa_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_tipocasa`
--

LOCK TABLES `indicador15_tipocasa` WRITE;
/*!40000 ALTER TABLE `indicador15_tipocasa` DISABLE KEYS */;
INSERT INTO `indicador15_tipocasa` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,2),(5,1,3),(6,4,4),(7,1,5),(8,5,6),(9,3,7),(10,5,8),(11,3,9),(12,5,10),(13,5,11),(14,5,12),(15,4,13),(16,1,14),(17,1,15),(18,5,16),(19,1,17),(20,2,18),(21,1,19),(22,1,20),(23,3,21),(24,3,22),(25,1,23),(26,1,24),(27,5,25),(28,5,26),(29,5,27),(30,5,28),(31,5,29),(32,2,30),(33,5,32),(34,5,32),(35,5,33),(36,2,34),(37,5,35),(38,3,36),(39,3,37),(40,3,38),(41,3,39),(42,3,41),(43,5,40),(44,1,42),(45,3,44),(46,1,43),(47,1,45),(48,1,46),(49,2,47),(50,5,48),(51,5,49),(52,2,50),(53,3,51),(54,2,52),(55,1,53),(56,5,54),(57,3,55),(58,5,56),(59,3,57),(60,5,58),(61,5,59),(62,1,60),(63,5,62),(64,5,61),(65,2,63),(66,5,64),(67,5,65),(68,1,67),(69,2,66),(70,2,68),(71,4,69),(72,4,70),(73,5,71);
/*!40000 ALTER TABLE `indicador15_tipocasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_tipocasa_piso`
--

DROP TABLE IF EXISTS `indicador15_tipocasa_piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_tipocasa_piso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipocasa_id` int(11) NOT NULL,
  `piso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador15_tipocasa_piso_tipocasa_id_224b1f01f6c47b44_uniq` (`tipocasa_id`,`piso_id`),
  KEY `indicador15_tipocasa_piso_3ea3b976` (`tipocasa_id`),
  KEY `indicador15_tipocasa_piso_91875915` (`piso_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_tipocasa_piso`
--

LOCK TABLES `indicador15_tipocasa_piso` WRITE;
/*!40000 ALTER TABLE `indicador15_tipocasa_piso` DISABLE KEYS */;
INSERT INTO `indicador15_tipocasa_piso` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,9,1),(10,10,3),(11,11,1),(12,12,3),(13,13,3),(14,14,4),(15,15,6),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,6),(28,28,3),(29,29,1),(30,30,1),(31,31,1),(32,32,3),(33,33,3),(34,34,3),(35,35,1),(36,36,4),(37,37,3),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,3),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,3),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,3),(57,57,1),(58,58,1),(59,59,1),(60,60,1),(61,61,3),(62,62,1),(63,63,1),(64,64,3),(65,65,1),(66,66,4),(67,67,1),(68,68,1),(69,69,1),(70,70,1),(71,71,3),(72,72,2),(73,73,6);
/*!40000 ALTER TABLE `indicador15_tipocasa_piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_tipocasa_techo`
--

DROP TABLE IF EXISTS `indicador15_tipocasa_techo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_tipocasa_techo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipocasa_id` int(11) NOT NULL,
  `techo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador15_tipocasa_techo_tipocasa_id_129e2567787b2640_uniq` (`tipocasa_id`,`techo_id`),
  KEY `indicador15_tipocasa_techo_3ea3b976` (`tipocasa_id`),
  KEY `indicador15_tipocasa_techo_c8c364da` (`techo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_tipocasa_techo`
--

LOCK TABLES `indicador15_tipocasa_techo` WRITE;
/*!40000 ALTER TABLE `indicador15_tipocasa_techo` DISABLE KEYS */;
INSERT INTO `indicador15_tipocasa_techo` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,5),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,9,5),(10,10,5),(11,11,4),(12,11,5),(13,12,5),(14,13,5),(15,14,5),(16,15,4),(17,15,5),(18,16,5),(19,17,5),(20,18,5),(21,19,5),(22,20,5),(23,21,5),(24,22,1),(25,23,5),(26,24,5),(27,25,5),(28,26,5),(29,27,5),(30,28,5),(31,29,5),(32,30,5),(33,31,5),(34,32,5),(35,33,5),(36,34,5),(37,35,5),(38,36,5),(39,37,5),(40,38,5),(41,39,5),(42,40,5),(43,41,5),(44,42,5),(45,43,5),(46,44,5),(47,45,5),(48,46,5),(49,47,5),(50,48,5),(51,49,4),(52,49,5),(53,50,5),(54,51,5),(55,52,5),(56,53,2),(57,54,5),(58,55,5),(59,56,5),(60,57,4),(61,58,5),(62,59,4),(63,60,5),(64,61,5),(65,62,1),(66,63,5),(67,64,5),(68,65,4),(69,66,5),(70,67,4),(71,68,5),(72,69,5),(73,70,4),(74,71,5),(75,72,5),(76,73,6);
/*!40000 ALTER TABLE `indicador15_tipocasa_techo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador15_transporte`
--

DROP TABLE IF EXISTS `indicador15_transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador15_transporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transporte_id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador15_transporte_4de90b82` (`transporte_id`),
  KEY `indicador15_transporte_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador15_transporte`
--

LOCK TABLES `indicador15_transporte` WRITE;
/*!40000 ALTER TABLE `indicador15_transporte` DISABLE KEYS */;
INSERT INTO `indicador15_transporte` VALUES (1,3,1,1),(2,3,1,1),(3,3,1,1),(4,3,2,2),(5,1,1,3),(6,3,3,3),(7,1,2,4),(8,3,1,4),(9,1,2,10),(10,3,1,10),(11,1,1,11),(12,3,1,15),(13,1,2,16),(14,3,1,17),(15,1,1,24),(16,1,2,25),(17,3,NULL,25),(18,1,2,26),(19,1,1,27),(20,3,1,27),(21,3,1,28),(22,3,2,29),(23,1,1,33),(24,1,1,36),(25,3,1,37),(26,3,1,35),(27,3,1,38),(28,3,3,39),(29,2,1,41),(30,4,1,40),(31,1,5,44),(32,3,2,44),(33,1,5,43),(34,3,1,43),(35,1,2,45),(36,1,3,47),(37,2,1,47),(38,1,1,51),(39,1,1,52),(40,3,1,52),(41,1,4,53),(42,1,1,54),(43,5,1,54),(44,1,1,56),(45,3,1,56),(46,1,1,57),(47,1,1,58),(48,1,1,62),(49,1,1,61),(50,5,1,61),(51,3,1,63),(52,3,2,64),(53,1,1,65),(54,1,1,66),(55,3,1,66),(56,4,1,66),(57,1,3,68),(58,1,5,69),(59,2,1,69),(60,3,1,69),(61,4,1,69),(62,2,1,70),(63,3,1,70),(64,1,1,71),(65,3,1,71);
/*!40000 ALTER TABLE `indicador15_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador16_ahorro`
--

DROP TABLE IF EXISTS `indicador16_ahorro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador16_ahorro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ahorro_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador16_ahorro_ea2a4b21` (`ahorro_id`),
  KEY `indicador16_ahorro_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador16_ahorro`
--

LOCK TABLES `indicador16_ahorro` WRITE;
/*!40000 ALTER TABLE `indicador16_ahorro` DISABLE KEYS */;
INSERT INTO `indicador16_ahorro` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,4,2,1),(5,5,2,1),(6,6,1,1),(7,1,1,1),(8,2,2,1),(9,3,3,1),(10,4,2,1),(11,5,2,1),(12,6,1,1),(13,1,1,1),(14,2,2,1),(15,3,3,1),(16,4,2,1),(17,5,2,1),(18,6,1,1),(19,1,2,2),(20,2,2,2),(21,4,2,2),(22,6,1,2),(23,1,2,3),(24,2,2,3),(25,4,2,3),(26,6,1,3),(27,1,2,4),(28,2,2,4),(29,4,2,4),(30,6,1,4),(31,1,1,5),(32,2,2,5),(33,3,3,5),(34,4,2,5),(35,6,1,5),(36,6,1,6),(37,6,1,7),(38,1,2,8),(39,2,2,8),(40,6,1,8),(41,1,2,9),(42,2,2,9),(43,4,2,9),(44,6,1,9),(45,6,1,10),(46,1,2,11),(47,2,2,11),(48,6,1,11),(49,1,2,12),(50,2,2,12),(51,4,2,12),(52,6,2,12),(53,1,2,13),(54,2,2,13),(55,3,2,13),(56,4,2,13),(57,5,5,13),(58,6,1,13),(59,1,2,16),(60,6,1,16),(61,1,2,17),(62,2,2,17),(63,4,2,17),(64,6,1,17),(65,6,1,18),(66,1,2,19),(67,2,2,19),(68,6,1,19),(69,1,2,20),(70,6,2,20),(71,1,1,21),(72,2,2,21),(73,3,3,21),(74,4,1,21),(75,5,5,21),(76,6,1,21),(77,1,1,22),(78,2,2,22),(79,3,3,22),(80,4,1,22),(81,5,5,22),(82,6,1,22),(83,1,2,23),(84,2,2,23),(85,4,2,23),(86,6,1,23),(87,1,2,24),(88,2,2,24),(89,4,2,24),(90,6,1,24),(91,1,2,25),(92,2,2,25),(93,4,1,25),(94,5,6,25),(95,6,1,25),(96,1,2,26),(97,2,2,26),(98,4,2,26),(99,6,2,26),(100,1,2,27),(101,2,2,27),(102,4,2,27),(103,6,1,27),(104,1,2,28),(105,2,2,28),(106,4,2,28),(107,6,1,28),(108,1,2,29),(109,2,2,29),(110,4,2,29),(111,6,1,29),(112,1,2,30),(113,2,2,30),(114,6,1,30),(115,1,1,32),(116,2,2,32),(117,3,4,32),(118,4,2,32),(119,6,2,32),(120,1,1,32),(121,2,2,32),(122,3,4,32),(123,4,2,32),(124,6,2,32),(125,1,2,33),(126,2,2,33),(127,6,2,33),(128,1,2,34),(129,2,2,34),(130,4,2,34),(131,6,2,34),(132,1,2,36),(133,2,2,36),(134,4,2,36),(135,6,2,36),(136,1,2,37),(137,2,2,37),(138,6,2,37),(139,1,1,35),(140,2,1,35),(141,4,2,35),(142,6,2,35),(143,1,2,38),(144,2,2,38),(145,4,2,38),(146,6,2,38),(147,1,2,39),(148,2,2,39),(149,4,2,39),(150,6,1,39),(151,1,2,41),(152,2,2,41),(153,4,1,41),(154,6,2,41),(155,1,2,40),(156,2,2,40),(157,4,2,40),(158,6,1,40),(159,1,2,42),(160,2,2,42),(161,4,2,42),(162,6,2,42),(163,1,2,44),(164,2,2,44),(165,4,2,44),(166,6,1,44),(167,1,2,43),(168,2,2,43),(169,4,2,43),(170,6,1,43),(171,1,2,45),(172,2,2,45),(173,4,2,45),(174,6,1,45),(175,1,2,46),(176,2,2,46),(177,4,2,46),(178,6,1,46),(179,1,2,47),(180,2,2,47),(181,4,2,47),(182,6,1,47),(183,1,2,49),(184,2,2,49),(185,4,2,49),(186,6,1,49),(187,1,1,48),(188,2,2,48),(189,3,3,48),(190,4,2,48),(191,5,7,48),(192,6,1,48),(193,1,1,50),(194,2,2,50),(195,3,4,50),(196,6,2,50),(197,1,1,51),(198,2,1,51),(199,3,3,51),(200,6,1,51),(201,1,2,52),(202,2,2,52),(203,6,1,53),(204,1,2,54),(205,2,2,54),(206,4,2,54),(207,6,1,54),(208,1,2,56),(209,2,2,56),(210,6,1,56),(211,1,2,58),(212,2,2,58),(213,4,2,58),(214,6,1,58),(215,1,2,59),(216,2,2,59),(217,4,2,59),(218,6,1,59),(219,1,2,60),(220,2,2,60),(221,6,1,60),(222,6,1,62),(223,1,2,61),(224,2,2,61),(225,4,2,61),(226,6,2,61),(227,1,2,63),(228,2,2,63),(229,6,2,63),(230,1,2,64),(231,1,2,65),(232,1,2,67),(233,2,2,67),(234,6,2,67),(235,1,2,66),(236,2,2,66),(237,1,2,68),(238,2,2,68),(239,4,2,68),(240,1,2,69),(241,6,1,69),(242,1,2,70),(243,2,2,70),(244,4,2,70),(245,6,1,70),(246,1,2,71),(247,2,2,71),(248,6,1,71);
/*!40000 ALTER TABLE `indicador16_ahorro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador16_ahorropregunta`
--

DROP TABLE IF EXISTS `indicador16_ahorropregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador16_ahorropregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador16_ahorropregunta`
--

LOCK TABLES `indicador16_ahorropregunta` WRITE;
/*!40000 ALTER TABLE `indicador16_ahorropregunta` DISABLE KEYS */;
INSERT INTO `indicador16_ahorropregunta` VALUES (1,'¿Tiene ahorro en efectivo?'),(2,'¿Tiene ahorro en joyeria/prendas?'),(3,'Desde cuando ahorra'),(4,'Posee una cuenta de ahorro?'),(5,'Ahorra a nombre de quien?'),(6,'¿Si no tiene ahorro, está interesado en ahorrar en una cuenta de ahorro?');
/*!40000 ALTER TABLE `indicador16_ahorropregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador17_credito`
--

DROP TABLE IF EXISTS `indicador17_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador17_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recibe` int(11) DEFAULT NULL,
  `desde` int(11) DEFAULT NULL,
  `satisfaccion` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador17_credito_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador17_credito`
--

LOCK TABLES `indicador17_credito` WRITE;
/*!40000 ALTER TABLE `indicador17_credito` DISABLE KEYS */;
INSERT INTO `indicador17_credito` VALUES (1,1,1,2,1,1),(2,1,1,2,1,1),(3,1,1,2,1,1),(4,1,1,2,1,2),(5,1,1,3,1,3),(6,1,1,2,1,4),(7,1,1,3,1,5),(8,2,NULL,NULL,NULL,6),(9,2,NULL,NULL,NULL,7),(10,2,NULL,NULL,NULL,8),(11,1,1,1,2,9),(12,1,2,1,1,10),(13,1,1,1,1,11),(14,1,1,2,1,12),(15,1,1,1,1,13),(16,1,1,2,1,14),(17,2,3,NULL,2,15),(18,1,1,2,2,16),(19,2,2,1,2,17),(20,2,NULL,1,2,18),(21,2,3,1,NULL,19),(22,2,3,1,2,20),(23,1,1,3,1,21),(24,1,1,3,1,22),(25,2,3,3,1,23),(26,1,1,3,1,24),(27,1,1,3,1,25),(28,1,1,1,1,26),(29,1,2,2,1,27),(30,1,2,2,1,28),(31,1,3,2,1,29),(32,1,3,2,1,30),(33,1,3,2,1,32),(34,1,3,2,1,32),(35,1,1,1,1,33),(36,1,2,1,2,34),(37,1,2,1,1,36),(38,1,2,2,1,37),(39,2,3,1,2,35),(40,1,2,2,2,38),(41,1,1,1,2,39),(42,1,2,2,2,41),(43,1,1,1,1,40),(44,1,2,1,1,42),(45,1,2,1,NULL,44),(46,1,2,2,1,43),(47,1,1,2,1,45),(48,1,2,2,1,46),(49,1,2,2,1,47),(50,1,2,3,1,49),(51,1,1,1,1,48),(52,1,2,2,1,50),(53,1,2,2,1,51),(54,1,1,3,1,52),(55,1,1,2,1,53),(56,2,3,1,2,54),(57,1,2,2,1,55),(58,2,NULL,1,2,56),(59,1,2,1,1,57),(60,2,3,1,2,58),(61,2,3,1,2,59),(62,1,1,2,1,60),(63,1,3,2,1,62),(64,2,3,1,2,61),(65,1,3,2,1,63),(66,2,3,1,1,64),(67,2,3,1,1,65),(68,1,3,1,1,67),(69,2,3,1,1,66),(70,1,1,1,1,68),(71,1,2,3,1,69),(72,1,1,3,1,70),(73,2,3,1,2,71);
/*!40000 ALTER TABLE `indicador17_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador17_credito_ocupa_credito`
--

DROP TABLE IF EXISTS `indicador17_credito_ocupa_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador17_credito_ocupa_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credito_id` int(11) NOT NULL,
  `ocupacredito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador17_credito_ocupa_cred_credito_id_7621c6bf61891b52_uniq` (`credito_id`,`ocupacredito_id`),
  KEY `indicador17_credito_ocupa_credito_f5ceff33` (`credito_id`),
  KEY `indicador17_credito_ocupa_credito_dd833608` (`ocupacredito_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador17_credito_ocupa_credito`
--

LOCK TABLES `indicador17_credito_ocupa_credito` WRITE;
/*!40000 ALTER TABLE `indicador17_credito_ocupa_credito` DISABLE KEYS */;
INSERT INTO `indicador17_credito_ocupa_credito` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,2),(5,4,3),(6,5,1),(7,6,9),(8,6,2),(9,7,2),(10,11,1),(11,11,3),(12,12,2),(13,12,3),(14,13,1),(15,13,3),(16,14,1),(17,14,3),(18,15,1),(19,15,3),(20,16,10),(21,17,10),(22,18,1),(23,19,10),(24,20,10),(25,21,10),(26,22,10),(27,23,1),(28,24,1),(29,25,1),(30,26,1),(31,27,1),(32,28,1),(33,28,3),(34,28,6),(35,29,1),(36,29,3),(37,30,1),(38,30,3),(39,30,4),(40,31,1),(41,31,3),(42,32,1),(43,32,3),(44,33,1),(45,33,3),(46,34,1),(47,34,3),(48,35,1),(49,35,3),(50,36,10),(51,37,1),(52,37,3),(53,38,1),(54,39,10),(55,40,1),(56,40,3),(57,41,10),(58,42,1),(59,42,3),(60,43,1),(61,44,1),(62,45,1),(63,45,2),(64,45,5),(65,46,8),(66,46,1),(67,46,2),(68,46,3),(69,46,4),(70,47,3),(71,48,1),(72,48,4),(73,49,1),(74,49,2),(75,49,4),(76,50,1),(77,50,3),(78,50,6),(79,51,1),(80,51,3),(81,52,1),(82,53,1),(83,53,2),(84,53,3),(85,54,1),(86,55,3),(87,56,10),(88,57,3),(89,58,10),(90,59,1),(91,59,3),(92,60,10),(93,61,10),(94,62,1),(95,62,3),(96,63,1),(97,63,3),(98,64,10),(99,65,3),(100,66,3),(101,67,1),(102,68,3),(103,69,1),(104,70,1),(105,71,1),(106,71,2),(107,71,3),(108,71,5),(109,72,1),(110,72,3),(111,72,5),(112,73,10);
/*!40000 ALTER TABLE `indicador17_credito_ocupa_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador17_credito_quien_credito`
--

DROP TABLE IF EXISTS `indicador17_credito_quien_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador17_credito_quien_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credito_id` int(11) NOT NULL,
  `dacredito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador17_credito_quien_cred_credito_id_55b1da630d8c6e30_uniq` (`credito_id`,`dacredito_id`),
  KEY `indicador17_credito_quien_credito_f5ceff33` (`credito_id`),
  KEY `indicador17_credito_quien_credito_6361b2e8` (`dacredito_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador17_credito_quien_credito`
--

LOCK TABLES `indicador17_credito_quien_credito` WRITE;
/*!40000 ALTER TABLE `indicador17_credito_quien_credito` DISABLE KEYS */;
INSERT INTO `indicador17_credito_quien_credito` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,4,5),(6,5,2),(7,6,2),(8,7,2),(9,11,5),(10,12,1),(11,12,5),(12,13,4),(13,13,5),(14,14,4),(15,14,5),(16,15,5),(17,16,5),(18,17,8),(19,18,4),(20,19,8),(21,20,8),(22,21,8),(23,22,8),(24,23,2),(25,24,5),(26,25,1),(27,26,2),(28,27,5),(29,28,2),(30,29,2),(31,29,3),(32,30,1),(33,30,2),(34,30,3),(35,31,2),(36,32,2),(37,33,2),(38,33,4),(39,34,2),(40,34,4),(41,35,2),(42,36,1),(43,36,2),(44,37,2),(45,38,2),(46,39,8),(47,40,2),(48,41,8),(49,42,1),(50,42,2),(51,43,1),(52,44,2),(53,45,1),(54,45,2),(55,45,3),(56,45,4),(57,46,1),(58,46,2),(59,46,5),(60,47,1),(61,47,5),(62,48,1),(63,48,2),(64,48,5),(65,49,1),(66,49,4),(67,49,5),(68,49,6),(69,50,1),(70,50,2),(71,51,1),(72,51,2),(73,52,1),(74,52,5),(75,53,1),(76,53,2),(77,54,5),(78,55,1),(79,56,8),(80,57,1),(81,58,8),(82,59,2),(83,60,8),(84,61,8),(85,62,2),(86,63,2),(87,64,8),(88,65,7),(89,66,5),(90,67,5),(91,68,2),(92,69,5),(93,70,5),(94,71,1),(95,71,2),(96,72,1),(97,73,8);
/*!40000 ALTER TABLE `indicador17_credito_quien_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador17_dacredito`
--

DROP TABLE IF EXISTS `indicador17_dacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador17_dacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador17_dacredito`
--

LOCK TABLES `indicador17_dacredito` WRITE;
/*!40000 ALTER TABLE `indicador17_dacredito` DISABLE KEYS */;
INSERT INTO `indicador17_dacredito` VALUES (1,'Cooperativas'),(2,'Asociaciones'),(3,'Microfinancieras'),(4,'Bancos'),(5,'Proyectos'),(6,'Familiares'),(7,'Prestamistas'),(8,'No contestó');
/*!40000 ALTER TABLE `indicador17_dacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador17_ocupacredito`
--

DROP TABLE IF EXISTS `indicador17_ocupacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador17_ocupacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador17_ocupacredito`
--

LOCK TABLES `indicador17_ocupacredito` WRITE;
/*!40000 ALTER TABLE `indicador17_ocupacredito` DISABLE KEYS */;
INSERT INTO `indicador17_ocupacredito` VALUES (1,'Inversión agrícola'),(2,'Inversión ganadera (compra de ganado))'),(3,'Cultivos agrícolas'),(4,'Tierra y vivienda'),(5,'Mejora la infraestructura productiva'),(6,'Consumo'),(7,'Educación y salud'),(8,'Para pagar deuda'),(9,'Comercio'),(10,'No contestó');
/*!40000 ALTER TABLE `indicador17_ocupacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador18_alimentos`
--

DROP TABLE IF EXISTS `indicador18_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador18_alimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador18_alimentos`
--

LOCK TABLES `indicador18_alimentos` WRITE;
/*!40000 ALTER TABLE `indicador18_alimentos` DISABLE KEYS */;
INSERT INTO `indicador18_alimentos` VALUES (1,'Aceite'),(2,'Arroz'),(3,'Avena'),(4,'Azúcar'),(5,'Café'),(6,'Carne de cerdo'),(7,'Carne de res'),(8,'Crema'),(9,'Cuajada'),(10,'Frijol'),(11,'Frutas'),(12,'Guineo'),(13,'Huevos'),(14,'Leche'),(15,'Maíz'),(16,'Malanga'),(17,'Miel'),(18,'Millón'),(19,'Papa'),(20,'Plátano'),(21,'Pollo'),(22,'Quequisque'),(23,'Queso'),(24,'Sorgo'),(25,'Soya'),(26,'Verdura'),(27,'Yuca');
/*!40000 ALTER TABLE `indicador18_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador18_seguridad`
--

DROP TABLE IF EXISTS `indicador18_seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador18_seguridad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alimento_id` int(11) NOT NULL,
  `producen` int(11) NOT NULL,
  `compran` int(11) NOT NULL,
  `consumen` int(11) NOT NULL,
  `consumen_invierno` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador18_seguridad_7daf7119` (`alimento_id`),
  KEY `indicador18_seguridad_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1614 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador18_seguridad`
--

LOCK TABLES `indicador18_seguridad` WRITE;
/*!40000 ALTER TABLE `indicador18_seguridad` DISABLE KEYS */;
INSERT INTO `indicador18_seguridad` VALUES (1,1,2,1,1,1,1),(2,2,2,1,1,1,1),(3,3,2,1,1,2,1),(4,4,2,1,1,1,1),(5,5,2,1,2,1,1),(6,6,2,2,2,1,1),(7,7,2,1,1,2,1),(8,8,2,1,2,2,1),(9,9,2,2,2,2,1),(10,10,1,1,1,1,1),(11,11,1,1,1,2,1),(12,12,1,2,1,1,1),(13,13,1,2,1,1,1),(14,14,2,1,2,2,1),(15,15,1,2,1,1,1),(16,16,2,2,2,2,1),(17,17,2,2,2,2,1),(18,18,2,2,2,2,1),(19,19,2,1,1,1,1),(20,20,2,2,2,2,1),(21,21,1,2,1,2,1),(22,22,2,1,1,1,1),(23,23,2,1,1,1,1),(24,24,1,2,1,1,1),(25,25,2,2,2,2,1),(26,26,2,1,1,1,1),(27,27,1,2,2,1,1),(28,1,2,1,1,1,1),(29,2,2,1,1,1,1),(30,3,2,1,1,2,1),(31,4,2,1,1,1,1),(32,5,2,1,2,1,1),(33,6,2,2,2,1,1),(34,7,2,1,1,2,1),(35,8,2,1,2,2,1),(36,9,2,2,2,2,1),(37,10,1,1,1,1,1),(38,11,1,1,1,2,1),(39,12,1,2,1,1,1),(40,13,1,2,1,1,1),(41,14,2,1,2,2,1),(42,15,1,2,1,1,1),(43,16,2,2,2,2,1),(44,17,2,2,2,2,1),(45,18,2,2,2,2,1),(46,19,2,1,1,1,1),(47,20,2,2,2,2,1),(48,21,1,2,1,2,1),(49,22,2,1,1,1,1),(50,23,2,1,1,1,1),(51,24,1,2,1,1,1),(52,25,2,2,2,2,1),(53,26,2,1,1,1,1),(54,27,1,2,2,1,1),(55,1,2,1,1,1,1),(56,2,2,1,1,1,1),(57,3,2,1,1,2,1),(58,4,2,1,1,1,1),(59,5,2,1,2,1,1),(60,6,2,2,2,1,1),(61,7,2,1,1,2,1),(62,8,2,1,2,2,1),(63,9,2,2,2,2,1),(64,10,1,1,1,1,1),(65,11,1,1,1,2,1),(66,12,1,2,1,1,1),(67,13,1,2,1,1,1),(68,14,2,1,2,2,1),(69,15,1,2,1,1,1),(70,16,2,2,2,2,1),(71,17,2,2,2,2,1),(72,18,2,2,2,2,1),(73,19,2,1,1,1,1),(74,20,2,2,2,2,1),(75,21,1,2,1,2,1),(76,22,2,1,1,1,1),(77,23,2,1,1,1,1),(78,24,1,2,1,1,1),(79,25,2,2,2,2,1),(80,26,2,1,1,1,1),(81,27,1,2,2,1,1),(82,1,2,2,1,1,2),(83,2,1,2,1,2,2),(84,3,2,1,1,1,2),(85,4,2,1,1,1,2),(86,5,1,1,1,1,2),(87,6,1,2,1,1,2),(88,7,2,1,2,1,2),(89,8,2,1,1,2,2),(90,9,1,2,1,2,2),(91,10,2,1,1,2,2),(92,11,1,2,1,1,2),(93,12,2,1,1,1,2),(94,13,1,2,1,1,2),(95,14,1,2,1,1,2),(96,15,1,2,1,1,2),(97,19,2,1,1,1,2),(98,20,2,1,1,1,2),(99,21,1,1,1,1,2),(100,22,2,1,1,1,2),(101,23,2,1,1,1,2),(102,24,1,2,1,1,2),(103,26,2,1,1,1,2),(104,27,2,1,2,1,2),(105,1,2,1,1,1,3),(106,2,1,1,2,1,3),(107,3,2,1,1,2,3),(108,4,2,1,1,1,3),(109,5,2,1,1,1,3),(110,6,2,2,2,2,3),(111,7,2,1,2,1,3),(112,8,2,2,2,2,3),(113,9,2,2,2,2,3),(114,10,1,2,1,1,3),(115,11,1,2,1,1,3),(116,12,1,2,1,1,3),(117,13,1,2,1,1,3),(118,14,2,1,2,2,3),(119,15,1,2,2,1,3),(120,16,2,2,2,2,3),(121,17,2,2,2,2,3),(122,18,2,2,2,2,3),(123,19,2,2,2,2,3),(124,20,2,2,2,2,3),(125,21,1,1,1,1,3),(126,22,2,2,2,2,3),(127,23,2,1,1,1,3),(128,24,1,2,1,1,3),(129,25,2,2,2,2,3),(130,26,2,1,2,2,3),(131,27,2,1,1,1,3),(132,2,1,2,1,1,4),(133,10,1,2,1,1,4),(134,12,1,2,1,1,4),(135,13,1,2,1,1,4),(136,15,1,2,1,1,4),(137,21,1,2,1,1,4),(138,24,1,2,1,1,4),(139,27,1,2,1,1,4),(140,1,2,1,1,1,5),(141,2,2,1,1,1,5),(142,3,2,1,1,1,5),(143,4,2,1,1,1,5),(144,5,2,1,1,1,5),(145,6,1,1,1,1,5),(146,7,2,1,1,2,5),(147,8,2,2,2,2,5),(148,9,2,2,2,2,5),(149,10,1,2,1,1,5),(150,11,1,2,1,1,5),(151,12,1,2,1,1,5),(152,13,1,2,1,1,5),(153,14,1,1,1,1,5),(154,15,1,2,1,1,5),(155,19,2,1,1,1,5),(156,21,1,2,2,2,5),(157,23,2,1,1,1,5),(158,24,1,2,2,2,5),(159,25,2,1,1,2,5),(160,26,2,1,1,1,5),(161,27,2,1,2,1,5),(162,1,2,1,2,1,6),(163,4,2,1,2,1,6),(164,5,1,1,1,1,6),(165,6,2,1,2,2,6),(166,7,2,1,2,2,6),(167,9,2,1,2,2,6),(168,10,1,1,1,1,6),(169,12,1,2,2,2,6),(170,13,1,2,2,2,6),(171,15,1,1,2,2,6),(172,21,2,1,2,2,6),(173,27,1,2,2,2,6),(174,1,2,1,1,1,7),(175,2,2,1,2,1,7),(176,3,2,1,2,2,7),(177,4,2,1,2,2,7),(178,5,1,1,1,1,7),(179,6,2,2,2,2,7),(180,7,2,2,2,2,7),(181,8,2,2,2,2,7),(182,9,2,2,2,2,7),(183,10,1,2,2,2,7),(184,12,1,2,2,2,7),(185,13,1,1,2,2,7),(186,14,1,1,2,2,7),(187,15,1,1,2,2,7),(188,21,2,1,2,2,7),(189,26,2,1,2,2,7),(190,1,2,1,1,1,8),(191,2,2,1,1,1,8),(192,3,2,2,2,2,8),(193,4,2,1,1,1,8),(194,5,1,2,1,1,8),(195,6,2,2,2,2,8),(196,7,2,2,2,2,8),(197,8,2,1,2,2,8),(198,9,2,1,2,2,8),(199,10,1,1,1,1,8),(200,11,2,2,2,2,8),(201,12,1,2,1,1,8),(202,13,1,1,2,2,8),(203,14,2,2,2,2,8),(204,15,1,1,1,2,8),(205,16,2,1,2,2,8),(206,19,2,1,2,2,8),(207,20,1,1,2,2,8),(208,21,2,1,2,2,8),(209,22,1,2,2,2,8),(210,26,2,1,2,2,8),(211,27,1,1,2,2,8),(212,2,1,2,1,1,9),(213,5,1,2,1,1,9),(214,6,2,1,1,1,9),(215,7,2,1,1,1,9),(216,8,2,1,1,1,9),(217,9,2,1,1,1,9),(218,10,1,2,1,1,9),(219,11,1,2,1,1,9),(220,12,1,2,1,1,9),(221,13,1,2,1,1,9),(222,14,2,1,1,1,9),(223,15,1,2,1,1,9),(224,16,1,2,1,1,9),(225,17,1,2,1,1,9),(226,18,2,1,1,1,9),(227,19,2,1,1,1,9),(228,20,1,2,1,1,9),(229,21,1,2,1,1,9),(230,22,1,2,2,1,9),(231,23,2,2,1,1,9),(232,24,2,1,1,1,9),(233,25,2,2,2,1,9),(234,26,1,2,2,1,9),(235,27,1,2,2,1,9),(236,1,2,1,1,1,11),(237,2,2,1,1,1,11),(238,3,2,1,1,1,11),(239,4,2,1,1,1,11),(240,5,2,1,1,1,11),(241,6,2,1,2,2,11),(242,7,2,1,1,1,11),(243,8,2,1,1,1,11),(244,9,2,1,1,1,11),(245,10,1,2,1,1,11),(246,11,1,2,1,1,11),(247,12,1,2,1,1,11),(248,13,1,2,1,1,11),(249,14,2,1,1,1,11),(250,15,1,2,1,1,11),(251,16,2,1,1,1,11),(252,17,1,2,1,1,11),(253,18,2,1,1,1,11),(254,19,2,1,1,1,11),(255,20,1,2,2,1,11),(256,22,2,1,2,2,11),(257,23,2,1,2,2,11),(258,21,1,2,1,1,11),(259,24,2,1,2,1,11),(260,25,2,2,2,2,11),(261,26,1,1,1,1,11),(262,27,1,2,1,1,11),(263,1,2,1,2,1,12),(264,2,2,1,2,2,12),(265,3,2,1,2,2,12),(266,4,2,1,1,1,12),(267,5,2,1,1,1,12),(268,6,2,1,2,2,12),(269,7,2,1,2,2,12),(270,8,2,2,2,2,12),(271,9,2,1,2,2,12),(272,10,1,2,1,1,12),(273,11,1,2,1,1,12),(274,12,1,2,1,1,12),(275,13,1,2,1,1,12),(276,14,2,1,2,2,12),(277,15,1,2,1,1,12),(278,16,2,1,2,2,12),(279,17,2,2,2,2,12),(280,18,2,2,2,2,12),(281,19,2,1,2,2,12),(282,20,1,2,1,1,12),(283,21,1,1,2,2,12),(284,22,2,2,2,2,12),(285,23,2,2,2,2,12),(286,24,2,2,2,2,12),(287,25,2,2,2,2,12),(288,26,1,2,2,1,12),(289,27,1,2,1,1,12),(290,1,2,2,1,1,13),(291,2,2,2,1,1,13),(292,4,2,2,1,1,13),(293,5,1,2,1,1,13),(294,6,2,2,2,1,13),(295,7,2,2,2,1,13),(296,9,1,2,1,1,13),(297,10,1,2,1,1,13),(298,11,1,2,2,1,13),(299,12,1,2,1,1,13),(300,13,1,2,1,1,13),(301,14,1,2,1,1,13),(302,15,1,2,1,1,13),(303,20,1,2,2,1,13),(304,21,1,2,1,1,13),(305,22,1,2,2,2,13),(306,26,1,2,2,2,13),(307,27,1,2,2,2,13),(308,1,2,1,2,2,14),(309,2,2,1,1,1,14),(310,4,2,1,1,1,14),(311,5,1,1,1,1,14),(312,10,1,1,2,2,14),(313,14,1,2,2,2,14),(314,1,2,1,2,2,15),(315,2,2,1,2,2,15),(316,4,2,1,2,2,15),(317,10,1,1,2,2,15),(318,13,1,1,2,2,15),(319,15,1,1,2,2,15),(320,18,1,1,2,2,15),(321,1,2,1,1,1,16),(322,2,1,1,1,1,16),(323,3,2,1,1,1,16),(324,4,2,1,1,1,16),(325,5,2,1,1,1,16),(326,6,2,2,2,2,16),(327,7,1,1,1,1,16),(328,8,2,1,1,1,16),(329,9,2,1,1,1,16),(330,10,1,1,1,1,16),(331,11,1,1,1,1,16),(332,12,1,1,1,1,16),(333,13,1,1,1,1,16),(334,14,1,1,1,1,16),(335,15,1,1,1,1,16),(336,17,2,2,2,2,16),(337,18,1,1,1,1,16),(338,19,2,2,2,2,16),(339,20,2,2,1,1,16),(340,21,1,1,1,1,16),(341,22,1,1,1,1,16),(342,23,2,2,2,2,16),(343,24,2,2,2,2,16),(344,25,2,2,2,2,16),(345,26,2,2,2,2,16),(346,27,2,2,2,2,16),(347,16,2,1,1,1,16),(348,1,2,1,1,1,17),(349,2,2,1,1,1,17),(350,3,2,1,1,1,17),(351,4,2,1,1,1,17),(352,5,1,2,1,1,17),(353,6,2,1,1,1,17),(354,7,2,1,1,1,17),(355,8,2,1,1,1,17),(356,9,2,1,1,1,17),(357,10,1,1,1,1,17),(358,11,1,1,1,1,17),(359,12,1,1,1,1,17),(360,13,1,1,1,1,17),(361,14,2,1,1,1,17),(362,15,1,1,1,1,17),(363,16,1,1,1,1,17),(364,17,2,2,2,2,17),(365,18,2,2,2,2,17),(366,19,2,2,1,1,17),(367,20,1,1,1,1,17),(368,21,1,2,1,1,17),(369,22,1,1,1,1,17),(370,23,2,2,2,2,17),(371,24,2,1,1,1,17),(372,25,2,2,2,1,17),(373,26,1,1,1,1,17),(374,27,1,1,1,1,17),(375,1,2,1,1,1,18),(376,2,2,1,1,1,18),(377,3,2,1,1,1,18),(378,4,2,1,1,1,18),(379,5,1,2,1,1,18),(380,6,2,1,1,1,18),(381,7,2,1,1,1,18),(382,8,2,1,1,1,18),(383,9,2,1,1,1,18),(384,10,2,1,1,1,18),(385,11,2,1,1,1,18),(386,12,1,1,1,1,18),(387,13,1,2,1,1,18),(388,14,2,1,1,1,18),(389,15,2,2,1,1,18),(390,16,2,1,1,1,18),(391,17,2,2,2,2,18),(392,19,2,1,1,1,18),(393,20,2,2,1,1,18),(394,21,1,1,1,1,18),(395,22,2,1,1,1,18),(396,23,2,2,2,2,18),(397,24,2,2,2,2,18),(398,25,2,2,2,2,18),(399,26,2,2,2,2,18),(400,27,2,2,2,2,18),(401,1,2,1,2,2,19),(402,2,2,1,2,2,19),(403,3,2,1,2,2,19),(404,4,2,1,2,2,19),(405,5,2,1,2,2,19),(406,6,2,1,2,2,19),(407,7,2,1,2,2,19),(408,8,2,1,2,2,19),(409,9,2,1,2,2,19),(410,10,1,2,2,2,19),(411,11,1,1,2,2,19),(412,12,1,2,2,2,19),(413,13,2,1,2,2,19),(414,14,2,1,2,2,19),(415,15,1,2,2,2,19),(416,16,2,1,2,2,19),(417,17,2,1,2,2,19),(418,18,2,1,2,2,19),(419,19,2,1,2,2,19),(420,20,1,1,2,2,19),(421,21,2,1,2,2,19),(422,22,2,1,2,2,19),(423,23,2,1,2,2,19),(424,24,2,1,2,2,19),(425,25,2,1,2,2,19),(426,26,2,1,2,2,19),(427,27,2,1,2,2,19),(428,1,2,1,1,1,20),(429,2,1,1,1,2,20),(430,3,2,1,1,2,20),(431,4,2,1,1,2,20),(432,5,2,1,1,2,20),(433,6,2,1,1,2,20),(434,7,2,1,1,1,20),(435,8,2,1,2,1,20),(436,9,2,1,2,1,20),(437,10,1,2,2,1,20),(438,11,1,2,1,1,20),(439,12,1,2,2,1,20),(440,13,2,2,2,2,20),(441,14,2,2,2,1,20),(442,15,1,2,2,1,20),(443,16,1,2,2,1,20),(444,17,2,1,1,1,20),(445,18,2,1,1,2,20),(446,19,2,1,1,2,20),(447,20,1,1,2,2,20),(448,21,2,1,2,2,20),(449,22,2,1,2,2,20),(450,23,2,1,2,2,20),(451,24,2,1,2,1,20),(452,25,2,1,2,1,20),(453,26,2,1,1,1,20),(454,27,2,1,1,1,20),(455,1,2,1,2,2,21),(456,2,2,1,2,1,21),(457,3,2,1,2,2,21),(458,4,2,1,1,1,21),(459,5,1,2,1,1,21),(460,6,2,1,2,2,21),(461,7,2,2,2,2,21),(462,8,2,1,2,2,21),(463,9,1,2,1,1,21),(464,10,1,1,1,1,21),(465,11,1,1,1,1,21),(466,12,1,2,1,1,21),(467,13,1,2,1,1,21),(468,14,1,2,1,1,21),(469,15,1,1,1,1,21),(470,16,1,2,2,2,21),(471,17,2,2,2,2,21),(472,18,2,2,2,2,21),(473,19,2,1,2,2,21),(474,20,1,2,1,1,21),(475,21,1,1,2,2,21),(476,22,1,2,2,2,21),(477,23,2,2,2,2,21),(478,24,2,2,2,2,21),(479,25,2,2,2,2,21),(480,26,1,1,1,1,21),(481,27,1,2,1,1,21),(482,1,2,1,1,1,22),(483,2,2,1,1,1,22),(484,3,2,1,1,1,22),(485,4,2,1,1,1,22),(486,5,2,1,1,1,22),(487,6,2,1,1,1,22),(488,7,2,1,1,1,22),(489,8,2,1,2,2,22),(490,9,1,1,1,1,22),(491,10,1,2,1,1,22),(492,11,1,1,1,1,22),(493,12,1,2,1,1,22),(494,13,1,2,1,1,22),(495,14,1,2,1,1,22),(496,15,1,2,1,1,22),(497,16,1,2,1,1,22),(498,17,2,2,2,2,22),(499,18,1,2,1,1,22),(500,19,2,2,2,2,22),(501,20,1,2,2,2,22),(502,21,2,1,1,1,22),(503,22,1,2,1,1,22),(504,23,2,2,2,2,22),(505,24,2,2,2,2,22),(506,25,2,2,2,2,22),(507,26,1,1,1,1,22),(508,27,1,2,1,1,22),(509,1,2,1,2,2,23),(510,2,2,1,2,2,23),(511,3,2,1,2,2,23),(512,4,2,1,1,1,23),(513,5,2,1,2,2,23),(514,6,2,1,2,2,23),(515,7,2,1,2,2,23),(516,8,2,2,2,2,23),(517,9,1,2,1,1,23),(518,10,1,2,1,1,23),(519,11,1,2,1,1,23),(520,12,1,2,1,1,23),(521,13,1,2,1,1,23),(522,14,1,2,2,1,23),(523,15,1,1,1,1,23),(524,16,2,1,2,2,23),(525,17,2,2,2,2,23),(526,18,2,2,2,2,23),(527,19,2,1,2,2,23),(528,20,1,2,1,1,23),(529,21,1,1,2,2,23),(530,22,2,2,2,2,23),(531,23,2,2,2,2,23),(532,24,2,2,2,2,23),(533,25,2,2,2,2,23),(534,26,1,1,1,1,23),(535,27,2,1,2,1,23),(536,1,2,1,1,1,24),(537,2,2,1,1,1,24),(538,3,2,1,2,2,24),(539,4,2,1,1,1,24),(540,5,1,2,1,1,24),(541,6,2,2,2,2,24),(542,7,2,1,2,2,24),(543,8,2,1,2,2,24),(544,9,2,1,2,1,24),(545,10,1,2,1,1,24),(546,11,1,1,1,1,24),(547,12,1,2,1,1,24),(548,13,1,2,1,1,24),(549,14,2,1,2,2,24),(550,15,1,2,1,1,24),(551,16,1,2,1,1,24),(552,17,2,2,2,2,24),(553,18,2,2,2,2,24),(554,19,2,1,2,2,24),(555,20,1,2,1,1,24),(556,21,1,1,2,2,24),(557,22,1,2,1,1,24),(558,23,2,2,2,2,24),(559,24,2,2,2,2,24),(560,25,2,2,2,2,24),(561,26,1,1,1,1,24),(562,27,1,2,1,1,24),(563,1,2,1,2,1,25),(564,2,2,1,1,1,25),(565,3,2,2,2,2,25),(566,4,2,1,1,1,25),(567,5,1,2,1,1,25),(568,6,2,2,2,2,25),(569,7,2,2,2,2,25),(570,8,2,2,2,2,25),(571,9,1,2,2,1,25),(572,10,1,1,1,1,25),(573,11,1,1,2,2,25),(574,12,1,2,1,1,25),(575,13,1,2,1,1,25),(576,14,1,2,2,2,25),(577,15,1,1,1,1,25),(578,16,2,2,2,2,25),(579,17,2,2,2,2,25),(580,18,2,2,2,2,25),(581,19,2,2,2,2,25),(582,20,1,2,1,1,25),(583,21,1,2,2,2,25),(584,22,2,2,2,2,25),(585,23,2,2,2,2,25),(586,24,2,2,2,2,25),(587,25,2,2,2,2,25),(588,26,1,2,2,1,25),(589,27,2,1,1,1,25),(590,1,1,1,1,1,26),(591,2,1,1,1,1,26),(592,3,1,1,1,1,26),(593,4,1,1,1,1,26),(594,5,1,2,1,1,26),(595,6,1,1,1,1,26),(596,7,2,1,1,1,26),(597,8,2,1,1,1,26),(598,9,2,1,2,1,26),(599,10,1,2,2,1,26),(600,11,1,2,2,1,26),(601,12,1,2,2,2,26),(602,13,1,2,2,2,26),(603,14,1,2,2,2,26),(604,15,1,1,1,2,26),(605,16,2,1,1,2,26),(606,17,2,1,1,2,26),(607,18,2,1,1,2,26),(608,19,2,1,1,2,26),(609,20,2,1,1,2,26),(610,21,1,2,2,1,26),(611,22,2,1,1,1,26),(612,23,2,1,1,1,26),(613,24,2,1,1,1,26),(614,25,2,1,1,1,26),(615,26,2,1,1,1,26),(616,27,2,1,1,1,26),(617,1,2,1,1,1,27),(618,2,2,1,1,1,27),(619,3,2,1,1,1,27),(620,4,2,1,1,1,27),(621,5,2,1,1,1,27),(622,6,2,2,2,2,27),(623,7,2,2,2,2,27),(624,8,2,2,2,2,27),(625,9,2,1,1,1,27),(626,10,1,2,1,1,27),(627,11,1,2,1,1,27),(628,12,1,2,2,2,27),(629,13,1,2,2,2,27),(630,14,2,2,2,2,27),(631,15,1,1,1,1,27),(632,16,2,2,2,2,27),(633,17,2,2,2,2,27),(634,18,2,2,2,2,27),(635,19,2,2,2,2,27),(636,20,1,1,1,1,27),(637,21,2,2,2,2,27),(638,22,2,2,2,2,27),(639,23,2,2,2,2,27),(640,24,2,2,2,2,27),(641,25,2,2,2,2,27),(642,26,2,2,2,2,27),(643,27,1,2,1,1,27),(644,1,2,1,1,1,28),(645,2,2,1,1,1,28),(646,3,2,2,2,2,28),(647,4,2,1,2,2,28),(648,5,1,2,2,2,28),(649,6,2,1,2,2,28),(650,7,2,1,2,2,28),(651,8,2,1,2,2,28),(652,9,2,2,2,2,28),(653,10,1,2,2,2,28),(654,11,2,2,2,2,28),(655,12,1,1,2,2,28),(656,13,2,1,2,2,28),(657,14,2,1,2,2,28),(658,15,1,1,2,2,28),(659,16,2,1,2,2,28),(660,17,2,1,2,2,28),(661,18,1,2,2,2,28),(662,19,2,1,2,2,28),(663,20,1,2,2,2,28),(664,21,1,1,2,2,28),(665,22,2,1,2,2,28),(666,23,2,1,2,2,28),(667,24,2,1,2,2,28),(668,25,2,1,2,2,28),(669,26,2,1,2,2,28),(670,27,2,1,2,2,28),(671,1,1,1,1,2,29),(672,2,2,1,1,2,29),(673,3,2,1,1,2,29),(674,4,2,1,1,2,29),(675,5,2,1,1,1,29),(676,6,2,1,2,2,29),(677,7,2,1,2,2,29),(678,8,2,1,2,2,29),(679,9,2,1,2,2,29),(680,10,1,2,1,2,29),(681,11,2,1,2,2,29),(682,12,2,1,2,2,29),(683,13,2,1,2,2,29),(684,14,2,1,2,2,29),(685,15,1,2,2,1,29),(686,16,2,1,2,2,29),(687,17,2,1,2,2,29),(688,18,2,1,2,2,29),(689,19,2,1,2,2,29),(690,20,2,1,2,2,29),(691,21,2,1,2,2,29),(692,22,2,1,2,2,29),(693,23,2,1,2,2,29),(694,24,2,1,2,2,29),(695,25,2,1,2,2,29),(696,26,2,1,2,2,29),(697,27,2,1,2,2,29),(698,1,2,2,1,1,30),(699,2,2,2,1,1,30),(700,3,2,2,1,1,30),(701,4,2,2,1,1,30),(702,5,1,2,1,1,30),(703,6,2,2,2,2,30),(704,7,2,2,2,2,30),(705,8,2,2,2,2,30),(706,9,2,2,2,1,30),(707,10,1,2,1,1,30),(708,11,1,2,2,2,30),(709,12,1,2,1,1,30),(710,13,1,2,1,1,30),(711,14,2,2,2,1,30),(712,15,1,2,1,1,30),(713,16,1,2,2,1,30),(714,17,2,2,2,2,30),(715,18,2,2,2,2,30),(716,19,2,2,2,2,30),(717,20,2,2,2,2,30),(718,21,2,2,1,2,30),(719,22,2,2,2,2,30),(720,23,2,2,2,2,30),(721,24,2,2,2,2,30),(722,25,2,2,2,2,30),(723,26,2,2,1,1,30),(724,27,1,2,1,1,30),(725,1,2,1,1,1,32),(726,2,2,1,1,1,32),(727,3,2,1,1,1,32),(728,4,2,1,1,1,32),(729,5,1,2,1,2,32),(730,6,2,2,2,2,32),(731,7,2,1,1,1,32),(732,8,2,1,2,2,32),(733,9,2,1,1,1,32),(734,10,1,2,1,1,32),(735,11,1,2,2,2,32),(736,12,1,2,1,1,32),(737,13,1,2,2,2,32),(738,14,2,2,1,1,32),(739,15,1,2,1,1,32),(740,16,1,2,1,1,32),(741,17,2,1,1,1,32),(742,18,1,2,1,1,32),(743,19,2,1,1,1,32),(744,20,2,2,1,2,32),(745,21,1,1,1,1,32),(746,22,2,2,2,2,32),(747,23,2,2,2,2,32),(748,24,2,2,2,2,32),(749,25,2,2,2,2,32),(750,26,2,1,1,1,32),(751,27,1,2,1,1,32),(752,1,2,2,1,1,33),(753,2,2,2,1,1,33),(754,3,2,2,1,1,33),(755,4,2,2,1,1,33),(756,5,1,2,1,1,33),(757,6,2,2,1,1,33),(758,7,2,2,1,1,33),(759,8,2,2,1,1,33),(760,9,2,2,1,1,33),(761,10,1,2,1,1,33),(762,11,1,2,1,2,33),(763,12,1,2,1,1,33),(764,13,1,2,2,2,33),(765,14,2,2,1,1,33),(766,15,1,2,1,1,33),(767,16,2,2,1,1,33),(768,17,2,2,1,1,33),(769,18,2,2,2,1,33),(770,19,1,2,1,1,33),(771,20,2,2,1,1,33),(772,21,2,2,1,2,33),(773,22,2,2,2,2,33),(774,23,2,2,2,2,33),(775,24,2,2,2,2,33),(776,25,2,2,2,2,33),(777,26,2,2,1,1,33),(778,27,1,2,1,1,33),(779,1,2,1,1,1,34),(780,2,2,1,1,1,34),(781,3,2,1,1,1,34),(782,4,2,1,1,1,34),(783,5,1,2,1,1,34),(784,6,2,1,1,1,34),(785,7,2,1,2,2,34),(786,8,1,2,1,2,34),(787,9,1,2,1,2,34),(788,10,1,2,2,2,34),(789,11,2,2,2,2,34),(790,12,1,2,2,2,34),(791,13,1,2,2,2,34),(792,14,1,2,2,2,34),(793,15,1,2,2,2,34),(794,16,2,1,2,2,34),(795,17,2,1,2,2,34),(796,18,2,1,2,2,34),(797,19,2,1,2,2,34),(798,20,2,1,2,2,34),(799,21,1,2,2,2,34),(800,22,2,1,2,2,34),(801,23,2,1,2,2,34),(802,24,2,1,2,2,34),(803,25,2,1,2,2,34),(804,26,2,1,2,2,34),(805,27,2,1,2,2,34),(806,1,2,1,2,2,36),(807,2,2,1,2,2,36),(808,3,2,2,2,2,36),(809,4,2,1,2,2,36),(810,5,2,1,2,2,36),(811,6,2,1,2,2,36),(812,7,2,2,2,2,36),(813,8,2,2,2,2,36),(814,9,2,1,2,2,36),(815,10,1,2,2,2,36),(816,11,2,2,2,2,36),(817,12,2,1,2,2,36),(818,13,1,2,2,2,36),(819,14,2,2,2,2,36),(820,15,1,2,2,2,36),(821,16,2,2,2,2,36),(822,17,2,2,2,2,36),(823,18,2,2,2,2,36),(824,19,2,2,2,2,36),(825,20,2,2,2,2,36),(826,21,1,2,2,2,36),(827,22,2,2,2,2,36),(828,23,2,2,2,2,36),(829,24,2,2,2,2,36),(830,25,2,2,2,2,36),(831,26,1,1,2,2,36),(832,27,2,2,2,2,36),(833,1,2,1,2,2,37),(834,2,2,1,2,2,37),(835,3,2,2,2,2,37),(836,4,2,1,2,2,37),(837,5,2,2,2,2,37),(838,6,2,2,2,2,37),(839,7,2,2,2,2,37),(840,8,2,2,2,2,37),(841,9,2,1,2,2,37),(842,10,1,2,2,2,37),(843,11,2,2,2,2,37),(844,12,2,2,2,2,37),(845,13,1,2,2,2,37),(846,14,2,2,2,2,37),(847,15,1,2,2,2,37),(848,16,2,2,2,2,37),(849,17,2,2,2,2,37),(850,18,2,2,2,2,37),(851,19,2,2,2,2,37),(852,20,2,2,2,2,37),(853,21,1,2,2,2,37),(854,22,2,2,2,2,37),(855,23,2,2,2,2,37),(856,24,2,2,2,2,37),(857,25,2,2,2,2,37),(858,26,2,2,2,2,37),(859,27,2,2,2,2,37),(860,1,2,1,1,1,35),(861,2,2,2,1,1,35),(862,3,2,1,2,2,35),(863,4,2,1,1,1,35),(864,5,1,2,1,1,35),(865,6,2,1,1,1,35),(866,7,2,2,2,2,35),(867,8,2,1,2,2,35),(868,9,2,1,1,2,35),(869,10,1,1,1,1,35),(870,11,1,2,2,2,35),(871,12,1,2,2,2,35),(872,13,1,2,1,1,35),(873,14,2,1,2,2,35),(874,15,1,1,1,1,35),(875,16,1,2,1,1,35),(876,17,1,2,1,2,35),(877,18,1,2,2,2,35),(878,19,2,1,2,2,35),(879,20,2,2,2,2,35),(880,21,1,2,1,1,35),(881,22,1,2,2,2,35),(882,23,2,2,2,2,35),(883,24,2,2,2,2,35),(884,25,2,2,2,2,35),(885,26,2,1,1,2,35),(886,27,1,2,2,2,35),(887,1,2,1,2,1,38),(888,2,2,1,2,2,38),(889,3,2,2,2,2,38),(890,4,2,1,2,2,38),(891,5,2,1,2,2,38),(892,6,2,2,2,2,38),(893,7,2,2,2,2,38),(894,8,2,1,2,2,38),(895,9,2,1,2,2,38),(896,10,1,2,2,2,38),(897,11,1,2,2,2,38),(898,12,1,2,2,2,38),(899,13,1,2,2,2,38),(900,14,2,1,2,2,38),(901,15,1,2,2,2,38),(902,16,2,2,2,2,38),(903,17,2,2,2,2,38),(904,18,2,2,2,2,38),(905,19,2,2,2,2,38),(906,20,2,2,2,2,38),(907,21,1,2,2,2,38),(908,22,2,2,2,2,38),(909,23,2,2,2,2,38),(910,24,2,2,2,2,38),(911,25,2,2,2,2,38),(912,26,1,1,2,2,38),(913,27,2,2,2,2,38),(914,1,2,1,2,1,39),(915,2,2,1,1,1,39),(916,3,2,1,2,2,39),(917,4,2,1,1,1,39),(918,5,1,2,1,1,39),(919,6,2,1,2,2,39),(920,7,2,1,2,2,39),(921,8,2,2,2,2,39),(922,9,2,1,1,1,39),(923,10,1,1,1,1,39),(924,11,1,1,2,2,39),(925,12,1,2,1,1,39),(926,13,1,1,1,1,39),(927,14,2,1,1,1,39),(928,15,1,1,1,1,39),(929,16,1,2,1,1,39),(930,17,1,2,1,2,39),(931,18,2,2,2,2,39),(932,19,2,1,1,1,39),(933,20,2,2,2,2,39),(934,21,1,1,1,1,39),(935,26,2,1,1,1,39),(936,27,2,1,1,1,39),(937,1,2,1,2,2,41),(938,2,2,1,2,2,41),(939,3,2,2,2,2,41),(940,4,2,1,2,2,41),(941,5,2,2,2,2,41),(942,6,2,2,2,2,41),(943,7,2,2,2,2,41),(944,8,2,2,2,2,41),(945,9,2,1,2,2,41),(946,10,1,2,2,2,41),(947,11,1,2,2,2,41),(948,12,1,2,2,2,41),(949,13,1,2,2,2,41),(950,14,2,2,2,2,41),(951,15,1,2,2,2,41),(952,16,2,2,2,2,41),(953,17,2,2,2,2,41),(954,18,2,2,2,2,41),(955,19,2,2,2,2,41),(956,20,2,2,2,2,41),(957,21,1,2,2,2,41),(958,23,2,2,2,2,41),(959,24,2,2,2,2,41),(960,25,2,2,2,2,41),(961,26,2,2,2,2,41),(962,27,2,2,2,2,41),(963,1,2,1,1,1,40),(964,2,2,1,1,1,40),(965,3,2,1,1,1,40),(966,4,2,1,1,1,40),(967,5,1,2,1,1,40),(968,7,2,1,2,2,40),(969,7,2,1,2,2,40),(970,8,2,1,2,2,40),(971,9,2,1,1,1,40),(972,10,1,2,1,1,40),(973,11,1,2,2,2,40),(974,12,1,2,1,1,40),(975,13,1,2,1,1,40),(976,14,1,2,2,2,40),(977,15,1,2,1,1,40),(978,16,2,2,2,2,40),(979,17,2,2,2,2,40),(980,18,2,2,2,2,40),(981,19,2,2,2,2,40),(982,20,1,2,2,2,40),(983,21,2,1,2,1,40),(984,22,2,1,2,2,40),(985,23,2,1,2,2,40),(986,24,2,1,2,2,40),(987,25,2,1,2,2,40),(988,26,2,1,2,2,40),(989,27,2,1,2,1,40),(990,1,2,1,2,2,44),(991,2,1,1,2,2,44),(992,3,2,1,2,2,44),(993,4,2,1,2,2,44),(994,5,2,1,1,2,44),(995,8,1,2,2,2,44),(996,9,1,2,2,2,44),(997,10,1,2,2,2,44),(998,11,1,2,2,2,44),(999,12,1,2,2,2,44),(1000,13,1,2,2,2,44),(1001,14,1,2,2,2,44),(1002,15,1,2,2,2,44),(1003,16,2,2,2,2,44),(1004,17,2,2,2,2,44),(1005,18,1,2,2,2,44),(1006,19,2,1,2,2,44),(1007,20,2,2,2,2,44),(1008,21,1,2,2,2,44),(1009,22,2,2,2,2,44),(1010,23,2,2,2,2,44),(1011,24,1,2,2,2,44),(1012,25,2,2,2,2,44),(1013,26,2,2,2,2,44),(1014,27,2,2,2,2,44),(1015,1,2,1,1,1,43),(1016,2,2,1,1,1,43),(1017,3,2,1,1,1,43),(1018,4,2,1,1,1,43),(1019,5,2,1,1,1,43),(1020,6,1,2,1,2,43),(1021,7,2,1,2,1,43),(1022,8,2,2,1,1,43),(1023,9,2,1,1,1,43),(1024,10,1,2,2,2,43),(1025,11,2,1,1,1,43),(1026,12,2,1,1,2,43),(1027,13,1,2,2,2,43),(1028,14,1,2,2,2,43),(1029,15,1,1,1,2,43),(1030,16,2,1,1,2,43),(1031,17,2,1,2,2,43),(1032,18,2,1,2,2,43),(1033,19,2,1,1,2,43),(1034,20,2,2,1,1,43),(1035,21,1,1,2,1,43),(1036,22,2,2,2,2,43),(1037,23,2,1,1,1,43),(1038,24,2,1,1,1,43),(1039,25,2,2,2,2,43),(1040,26,1,2,1,2,43),(1041,27,2,2,2,2,43),(1042,1,2,1,2,2,45),(1043,2,2,1,2,2,45),(1044,3,2,1,2,2,45),(1045,4,2,1,2,2,45),(1046,5,2,1,1,2,45),(1047,6,2,2,2,2,45),(1048,7,2,2,2,2,45),(1049,8,2,2,2,2,45),(1050,9,1,2,1,1,45),(1051,10,1,2,1,1,45),(1052,11,1,2,2,1,45),(1053,12,2,2,2,1,45),(1054,13,1,2,1,1,45),(1055,14,1,2,2,1,45),(1056,15,1,2,1,1,45),(1057,16,2,2,2,1,45),(1058,17,2,2,2,2,45),(1059,18,1,2,1,2,45),(1060,19,2,2,2,2,45),(1061,20,2,2,2,2,45),(1062,21,2,2,2,2,45),(1063,22,2,2,2,2,45),(1064,23,2,2,2,2,45),(1065,24,1,2,2,2,45),(1066,25,2,2,2,2,45),(1067,26,2,2,2,2,45),(1068,27,2,2,2,2,45),(1069,1,2,1,1,1,46),(1070,2,2,1,1,1,46),(1071,4,2,1,1,1,46),(1072,5,2,1,1,1,46),(1073,6,2,1,1,1,46),(1074,7,2,1,1,1,46),(1075,9,2,1,1,1,46),(1076,10,1,1,1,1,46),(1077,11,1,1,1,1,46),(1078,13,1,1,1,1,46),(1079,15,1,1,1,1,46),(1080,17,2,2,2,2,46),(1081,18,2,1,2,2,46),(1082,26,1,1,1,1,46),(1083,27,2,1,2,1,46),(1084,10,1,1,1,2,47),(1085,15,1,1,1,2,47),(1086,24,1,2,2,2,47),(1087,1,2,2,2,2,49),(1088,2,2,2,2,2,49),(1089,3,2,2,2,2,49),(1090,4,2,2,2,2,49),(1091,5,1,2,1,2,49),(1092,6,1,2,2,2,49),(1093,7,2,2,2,2,49),(1094,8,2,2,2,2,49),(1095,9,2,2,2,2,49),(1096,10,1,2,1,2,49),(1097,11,1,2,2,2,49),(1098,12,1,2,2,2,49),(1099,13,1,2,2,2,49),(1100,14,2,2,2,2,49),(1101,15,1,2,1,1,49),(1102,16,2,2,2,2,49),(1103,17,2,2,2,2,49),(1104,18,2,2,2,2,49),(1105,19,2,2,2,2,49),(1106,20,2,2,2,2,49),(1107,21,1,2,2,2,49),(1108,22,2,2,2,2,49),(1109,1,2,1,1,1,48),(1110,2,2,1,1,1,48),(1111,3,2,1,1,1,48),(1112,4,2,1,1,1,48),(1113,5,2,1,1,1,48),(1114,6,2,2,2,2,48),(1115,7,2,2,2,2,48),(1116,8,2,2,2,2,48),(1117,9,1,2,2,2,48),(1118,10,1,2,2,2,48),(1119,11,1,1,1,1,48),(1120,12,2,2,2,2,48),(1121,13,1,2,2,2,48),(1122,14,1,2,2,2,48),(1123,15,1,2,2,2,48),(1124,16,2,1,1,2,48),(1125,17,2,1,2,2,48),(1126,18,2,1,1,1,48),(1127,19,1,1,1,1,48),(1128,20,2,1,1,1,48),(1129,21,1,2,2,2,48),(1130,22,2,1,2,2,48),(1131,23,2,2,2,2,48),(1132,24,2,1,1,1,48),(1133,25,2,1,1,1,48),(1134,26,2,1,1,1,48),(1135,27,2,1,1,1,48),(1136,1,2,1,1,1,50),(1137,2,2,1,1,1,50),(1138,3,2,1,1,1,50),(1139,4,2,1,1,1,50),(1140,5,2,1,1,1,50),(1141,6,1,2,1,2,50),(1142,7,2,1,1,2,50),(1143,8,2,1,1,1,50),(1144,9,2,1,1,1,50),(1145,10,1,1,2,1,50),(1146,11,2,1,1,2,50),(1147,12,2,2,2,2,50),(1148,13,1,2,2,2,50),(1149,14,2,1,2,1,50),(1150,15,1,2,2,2,50),(1151,16,2,2,2,2,50),(1152,17,2,2,2,2,50),(1153,18,2,2,2,2,50),(1154,19,2,2,2,2,50),(1155,20,2,2,2,2,50),(1156,21,1,1,1,2,50),(1157,22,2,2,2,2,50),(1158,23,2,2,2,2,50),(1159,24,2,2,2,2,50),(1160,25,2,2,2,2,50),(1161,26,2,2,2,2,50),(1162,27,2,2,2,2,50),(1163,1,2,1,1,1,51),(1164,2,2,1,1,1,51),(1165,3,2,1,1,1,51),(1166,4,2,1,1,1,51),(1167,5,1,1,1,1,51),(1168,6,2,2,2,2,51),(1169,7,2,1,1,1,51),(1170,9,1,2,1,2,51),(1171,10,1,2,2,2,51),(1172,11,1,2,1,1,51),(1173,13,1,2,1,1,51),(1174,14,1,2,1,1,51),(1175,15,1,2,2,2,51),(1176,17,1,2,2,2,51),(1177,21,1,2,1,1,51),(1178,27,1,2,1,1,51),(1179,1,2,1,1,1,52),(1180,2,2,1,1,1,52),(1181,3,2,1,1,1,52),(1182,4,2,1,1,1,52),(1183,5,2,1,1,1,52),(1184,6,1,2,2,2,52),(1185,7,2,1,1,1,52),(1186,8,2,1,2,2,52),(1187,9,1,1,2,2,52),(1188,10,1,2,2,2,52),(1189,11,2,1,2,2,52),(1190,12,2,2,2,2,52),(1191,13,1,2,2,2,52),(1192,14,1,2,2,2,52),(1193,15,1,2,2,2,52),(1194,16,2,2,2,2,52),(1195,17,2,2,2,2,52),(1196,18,2,2,2,2,52),(1197,19,1,1,1,2,52),(1198,20,2,2,2,2,52),(1199,21,1,1,2,2,52),(1200,22,2,2,2,2,52),(1201,23,2,2,2,2,52),(1202,24,2,2,2,2,52),(1203,25,2,2,2,2,52),(1204,26,2,2,2,2,52),(1205,27,1,1,1,2,52),(1206,10,1,2,2,2,53),(1207,12,1,1,2,2,53),(1208,13,2,1,1,1,53),(1209,14,2,2,2,1,53),(1210,15,1,1,1,2,53),(1211,20,1,2,1,1,53),(1212,1,2,1,2,2,54),(1213,2,2,1,2,2,54),(1214,3,2,1,2,2,54),(1215,4,2,1,1,1,54),(1216,5,2,1,1,1,54),(1217,6,2,2,2,2,54),(1218,7,2,1,2,2,54),(1219,8,1,2,2,2,54),(1220,9,1,2,2,2,54),(1221,10,1,2,2,2,54),(1222,11,1,2,2,2,54),(1223,12,2,2,2,2,54),(1224,13,1,2,2,2,54),(1225,14,1,2,2,2,54),(1226,15,1,2,1,1,54),(1227,16,2,2,2,2,54),(1228,17,2,2,2,2,54),(1229,18,2,1,2,2,54),(1230,19,2,1,2,2,54),(1231,20,2,1,2,2,54),(1232,21,2,1,2,2,54),(1233,22,2,1,2,2,54),(1234,23,1,2,2,1,54),(1235,24,2,2,2,2,54),(1236,25,2,2,2,2,54),(1237,26,2,2,2,2,54),(1238,27,2,2,2,2,54),(1239,1,2,1,2,2,55),(1240,2,2,1,2,2,55),(1241,3,2,2,2,2,55),(1242,4,2,1,2,2,55),(1243,5,2,1,2,2,55),(1244,6,2,2,2,2,55),(1245,7,2,2,2,2,55),(1246,8,2,2,2,2,55),(1247,9,2,2,2,2,55),(1248,10,1,2,2,2,55),(1249,11,2,2,2,2,55),(1250,12,2,1,2,2,55),(1251,13,1,2,2,2,55),(1252,14,1,2,2,2,55),(1253,15,1,2,2,2,55),(1254,16,2,2,2,2,55),(1255,17,2,2,2,2,55),(1256,18,1,2,2,2,55),(1257,19,2,1,2,2,55),(1258,20,2,2,2,2,55),(1259,21,1,2,2,2,55),(1260,22,1,2,2,2,55),(1261,23,2,2,2,2,55),(1262,24,1,2,2,2,55),(1263,25,2,2,2,2,55),(1264,26,1,1,2,2,55),(1265,27,1,2,2,2,55),(1266,1,2,1,1,1,56),(1267,2,2,1,1,1,56),(1268,3,2,1,2,2,56),(1269,4,2,1,1,1,56),(1270,5,2,1,1,1,56),(1271,6,2,2,2,2,56),(1272,7,2,1,2,2,56),(1273,8,2,1,2,2,56),(1274,9,1,2,1,1,56),(1275,10,1,2,1,1,56),(1276,11,2,1,2,2,56),(1277,12,1,2,2,2,56),(1278,13,1,2,1,1,56),(1279,14,1,2,1,1,56),(1280,15,1,2,1,1,56),(1281,16,2,2,2,2,56),(1282,17,2,2,2,2,56),(1283,18,2,1,2,2,56),(1284,19,2,1,2,2,56),(1285,20,2,2,2,2,56),(1286,21,2,1,2,2,56),(1287,22,2,2,2,2,56),(1288,23,2,2,2,2,56),(1289,24,2,2,2,2,56),(1290,25,2,2,2,2,56),(1291,26,2,1,2,2,56),(1292,27,2,2,2,2,56),(1293,1,2,1,2,2,57),(1294,2,1,2,2,2,57),(1295,3,2,1,2,2,57),(1296,4,2,1,2,2,57),(1297,5,2,1,2,2,57),(1298,6,2,1,2,2,57),(1299,7,2,1,2,2,57),(1300,8,2,2,2,2,57),(1301,9,2,1,2,2,57),(1302,10,1,2,2,2,57),(1303,11,1,2,2,2,57),(1304,12,1,2,2,2,57),(1305,13,1,2,2,2,57),(1306,14,2,1,2,2,57),(1307,15,1,2,2,2,57),(1308,1,2,1,2,2,58),(1309,2,2,1,2,2,58),(1310,3,2,2,2,2,58),(1311,4,2,1,1,1,58),(1312,5,2,1,1,1,58),(1313,6,2,2,2,2,58),(1314,7,2,1,2,2,58),(1315,8,2,2,2,2,58),(1316,9,2,1,2,2,58),(1317,10,1,2,1,1,58),(1318,11,2,1,2,2,58),(1319,12,2,2,2,2,58),(1320,13,1,1,1,1,58),(1321,14,2,2,2,2,58),(1322,15,1,1,1,1,58),(1323,16,2,2,2,2,58),(1324,17,2,2,2,2,58),(1325,18,2,2,2,2,58),(1326,19,2,1,2,2,58),(1327,20,2,2,2,2,58),(1328,21,2,1,2,2,58),(1329,22,2,2,2,2,58),(1330,23,2,1,2,2,58),(1331,24,2,2,2,2,58),(1332,25,2,2,2,2,58),(1333,26,2,2,2,2,58),(1334,27,2,2,2,2,58),(1335,1,2,1,1,1,59),(1336,2,2,1,1,1,59),(1337,3,2,1,2,2,59),(1338,4,2,1,1,1,59),(1339,5,2,1,2,2,59),(1340,6,2,2,2,2,59),(1341,7,2,1,2,2,59),(1342,8,2,2,2,2,59),(1343,9,2,1,1,1,59),(1344,10,1,1,1,1,59),(1345,11,2,2,2,2,59),(1346,12,2,2,2,2,59),(1347,13,1,2,2,2,59),(1348,14,2,1,1,1,59),(1349,15,1,2,1,1,59),(1350,16,2,2,2,2,59),(1351,17,2,2,2,2,59),(1352,18,2,2,2,2,59),(1353,19,2,1,1,1,59),(1354,20,2,2,2,2,59),(1355,21,2,1,2,2,59),(1356,22,2,2,2,2,59),(1357,23,2,2,2,2,59),(1358,24,2,2,2,2,59),(1359,25,2,2,2,2,59),(1360,26,2,2,1,1,59),(1361,27,2,2,1,1,59),(1362,1,2,1,2,2,60),(1363,2,2,1,2,2,60),(1364,3,2,1,2,2,60),(1365,4,2,1,2,2,60),(1366,5,2,1,2,2,60),(1367,6,2,1,2,2,60),(1368,7,2,1,2,2,60),(1369,8,2,1,2,2,60),(1370,9,2,1,2,2,60),(1371,14,2,1,2,2,60),(1372,17,2,1,2,2,60),(1373,19,2,1,2,2,60),(1374,21,2,1,2,2,60),(1375,23,2,1,2,2,60),(1376,24,2,1,2,2,60),(1377,25,2,1,2,2,60),(1378,26,2,1,2,2,60),(1379,1,2,1,1,1,62),(1380,2,2,1,1,1,62),(1381,3,2,1,1,1,62),(1382,4,2,1,1,1,62),(1383,5,2,1,2,2,62),(1384,6,2,1,2,2,62),(1385,7,2,1,2,2,62),(1386,8,2,1,2,2,62),(1387,9,1,1,2,2,62),(1388,10,1,2,2,2,62),(1389,11,2,1,2,2,62),(1390,12,1,1,2,2,62),(1391,13,1,1,2,2,62),(1392,14,2,2,2,2,62),(1393,15,1,2,2,2,62),(1394,16,2,1,2,2,62),(1395,17,2,1,2,2,62),(1396,18,2,1,2,2,62),(1397,19,2,1,2,2,62),(1398,20,2,1,2,2,62),(1399,21,2,1,2,2,62),(1400,22,2,1,2,2,62),(1401,23,2,1,2,2,62),(1402,24,2,1,2,2,62),(1403,25,2,1,2,2,62),(1404,26,2,1,2,2,62),(1405,27,2,1,2,2,62),(1406,1,2,1,2,2,61),(1407,2,2,1,1,1,61),(1408,3,2,1,2,2,61),(1409,4,2,1,1,2,61),(1410,5,2,1,2,2,61),(1411,6,2,1,2,2,61),(1412,7,2,1,2,2,61),(1413,9,1,2,2,2,61),(1414,10,1,2,2,2,61),(1415,11,2,1,1,1,61),(1416,13,1,2,2,2,61),(1417,14,1,2,2,2,61),(1418,15,1,2,2,2,61),(1419,19,2,1,1,1,61),(1420,20,2,1,2,2,61),(1421,21,2,1,1,1,61),(1422,1,2,1,1,1,63),(1423,2,2,2,1,1,63),(1424,3,2,1,2,2,63),(1425,4,2,1,1,1,63),(1426,5,2,1,1,1,63),(1427,7,2,1,2,2,63),(1428,8,2,2,2,2,63),(1429,9,2,1,1,1,63),(1430,10,1,2,1,1,63),(1431,11,2,2,2,2,63),(1432,12,2,2,2,2,63),(1433,13,1,2,1,1,63),(1434,14,2,2,2,2,63),(1435,15,1,2,1,1,63),(1436,16,2,2,2,2,63),(1437,17,2,2,2,2,63),(1438,18,2,2,2,2,63),(1439,19,2,1,2,2,63),(1440,20,2,2,2,2,63),(1441,21,2,1,2,2,63),(1442,22,2,2,2,2,63),(1443,23,2,2,2,2,63),(1444,24,2,2,2,2,63),(1445,25,2,2,2,2,63),(1446,26,2,1,1,1,63),(1447,27,2,1,2,2,63),(1448,1,2,1,2,2,64),(1449,2,2,1,2,2,64),(1450,3,2,1,2,2,64),(1451,4,2,1,2,2,64),(1452,5,2,1,2,2,64),(1453,6,2,1,2,2,64),(1454,7,2,1,2,2,64),(1455,8,1,2,2,2,64),(1456,9,1,2,2,2,64),(1457,10,1,2,2,2,64),(1458,11,1,2,2,2,64),(1459,13,1,2,2,2,64),(1460,14,1,2,2,2,64),(1461,15,1,2,2,2,64),(1462,17,1,2,2,2,64),(1463,19,2,1,2,2,64),(1464,20,2,1,2,2,64),(1465,21,1,1,2,2,64),(1466,26,2,1,2,2,64),(1467,27,2,1,2,2,64),(1468,1,2,1,2,2,65),(1469,2,2,1,2,2,65),(1470,3,2,1,2,2,65),(1471,4,2,1,2,2,65),(1472,5,2,1,2,2,65),(1473,7,2,1,2,2,65),(1474,8,1,2,2,2,65),(1475,9,1,2,2,2,65),(1476,10,1,2,2,2,65),(1477,11,2,1,2,2,65),(1478,13,1,2,2,2,65),(1479,14,1,2,2,2,65),(1480,15,1,2,2,2,65),(1481,16,2,1,2,2,65),(1482,18,2,1,2,2,65),(1483,20,2,1,2,2,65),(1484,21,1,2,2,2,65),(1485,22,2,1,2,2,65),(1486,1,2,1,1,1,67),(1487,2,2,1,1,1,67),(1488,3,2,2,2,2,67),(1489,4,2,1,1,1,67),(1490,5,1,2,1,1,67),(1491,6,2,2,2,2,67),(1492,7,2,1,1,2,67),(1493,8,2,1,2,1,67),(1494,9,2,1,1,1,67),(1495,10,1,1,1,1,67),(1496,11,2,1,1,2,67),(1497,11,2,1,1,2,67),(1498,12,1,1,1,1,67),(1499,13,1,1,1,1,67),(1500,14,2,2,1,2,67),(1501,15,1,2,1,2,67),(1502,16,1,2,1,2,67),(1503,17,2,2,2,2,67),(1504,18,2,2,2,2,67),(1505,19,2,2,2,2,67),(1506,20,2,2,2,2,67),(1507,21,2,2,2,2,67),(1508,22,2,2,2,2,67),(1509,23,2,2,2,2,67),(1510,24,2,2,2,2,67),(1511,25,2,2,2,2,67),(1512,26,2,2,2,2,67),(1513,27,1,2,2,1,67),(1514,1,2,1,2,2,66),(1515,2,2,1,2,2,66),(1516,3,2,1,2,2,66),(1517,4,2,1,2,2,66),(1518,5,2,1,2,2,66),(1519,6,2,1,2,2,66),(1520,7,2,1,2,2,66),(1521,8,2,1,2,2,66),(1522,9,2,1,2,2,66),(1523,10,1,2,2,2,66),(1524,13,1,2,2,2,66),(1525,14,1,2,2,2,66),(1526,15,1,2,2,2,66),(1527,19,2,1,2,2,66),(1528,20,2,1,2,2,66),(1529,21,1,1,2,2,66),(1530,23,2,1,2,2,66),(1531,26,2,1,2,2,66),(1532,1,2,1,2,2,68),(1533,2,2,1,2,2,68),(1534,3,2,1,2,2,68),(1535,4,2,1,2,2,68),(1536,5,2,1,2,2,68),(1537,6,2,1,2,2,68),(1538,7,2,1,2,2,68),(1539,8,2,1,2,2,68),(1540,9,2,1,2,2,68),(1541,10,1,1,2,2,68),(1542,13,1,2,2,2,68),(1543,14,1,2,2,2,68),(1544,15,1,2,2,2,68),(1545,18,1,2,2,2,68),(1546,20,2,1,2,2,68),(1547,21,2,1,2,2,68),(1548,23,2,1,2,2,68),(1549,24,1,2,2,2,68),(1550,26,2,1,2,2,68),(1551,1,2,1,1,1,69),(1552,2,1,2,1,1,69),(1553,3,2,2,1,1,69),(1554,4,2,2,1,1,69),(1555,5,2,2,1,1,69),(1556,6,2,2,1,1,69),(1557,7,2,2,1,1,69),(1558,8,1,2,1,1,69),(1559,9,1,2,1,1,69),(1560,10,2,2,1,1,69),(1561,11,1,1,1,1,69),(1562,12,1,1,1,1,69),(1563,13,1,2,1,1,69),(1564,14,1,2,1,1,69),(1565,15,1,2,2,2,69),(1566,16,2,2,2,2,69),(1567,17,2,2,2,2,69),(1568,18,1,2,1,1,69),(1569,19,2,2,2,2,69),(1570,20,2,2,2,2,69),(1571,21,1,1,1,1,69),(1572,22,2,2,2,2,69),(1573,23,2,2,2,2,69),(1574,24,1,2,1,1,69),(1575,25,2,2,2,2,69),(1576,26,2,1,2,2,69),(1577,27,1,2,1,1,69),(1578,1,2,1,1,1,70),(1579,2,2,1,1,1,70),(1580,3,2,1,1,1,70),(1581,4,2,1,1,1,70),(1582,5,2,1,1,1,70),(1583,6,2,1,1,1,70),(1584,7,2,1,1,1,70),(1585,8,2,1,1,1,70),(1586,9,2,1,1,1,70),(1587,10,1,2,1,1,70),(1588,11,1,2,1,1,70),(1589,12,1,2,1,1,70),(1590,13,1,2,1,1,70),(1591,14,2,1,2,2,70),(1592,15,1,2,1,1,70),(1593,16,2,2,2,2,70),(1594,17,2,2,2,2,70),(1595,18,1,2,2,2,70),(1596,19,2,1,2,2,70),(1597,20,1,2,1,1,70),(1598,21,1,2,1,1,70),(1599,22,2,1,2,2,70),(1600,23,2,1,1,1,70),(1601,24,1,2,1,1,70),(1602,25,2,1,2,2,70),(1603,26,1,1,1,1,70),(1604,27,1,2,1,1,70),(1605,2,1,1,2,1,71),(1606,10,1,1,2,2,71),(1607,11,1,2,2,2,71),(1608,12,1,2,1,1,71),(1609,13,1,1,1,1,71),(1610,15,1,1,2,2,71),(1611,17,2,2,1,1,71),(1612,18,1,2,2,2,71),(1613,24,1,1,1,1,71);
/*!40000 ALTER TABLE `indicador18_seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador19_causa`
--

DROP TABLE IF EXISTS `indicador19_causa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador19_causa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador19_causa`
--

LOCK TABLES `indicador19_causa` WRITE;
/*!40000 ALTER TABLE `indicador19_causa` DISABLE KEYS */;
INSERT INTO `indicador19_causa` VALUES (1,'Fenómenos naturales'),(2,'Razones agrícolas'),(3,'Razones de mercados'),(4,'Inversión');
/*!40000 ALTER TABLE `indicador19_causa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador19_fenomeno`
--

DROP TABLE IF EXISTS `indicador19_fenomeno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador19_fenomeno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `causa_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador19_fenomeno_aae01110` (`causa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador19_fenomeno`
--

LOCK TABLES `indicador19_fenomeno` WRITE;
/*!40000 ALTER TABLE `indicador19_fenomeno` DISABLE KEYS */;
INSERT INTO `indicador19_fenomeno` VALUES (1,1,'Sequía'),(2,1,'Inundación'),(3,1,'Vientos'),(4,1,'Deslizamiento'),(5,2,'Falta de semilla'),(6,2,'Mala calidad de semilla'),(7,2,'Plagas y enfermedades'),(8,3,'Bajo precio'),(9,3,'Falta de venta'),(10,3,'Estafa de contrato'),(11,3,'Falta de calidad de producto'),(12,4,'Falta de crédito'),(13,4,'Altos interés'),(14,1,'Inundación');
/*!40000 ALTER TABLE `indicador19_fenomeno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador19_graves`
--

DROP TABLE IF EXISTS `indicador19_graves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador19_graves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador19_graves`
--

LOCK TABLES `indicador19_graves` WRITE;
/*!40000 ALTER TABLE `indicador19_graves` DISABLE KEYS */;
INSERT INTO `indicador19_graves` VALUES (1,'Año con año'),(2,'Cada 5 años'),(3,'Cada 10 años'),(4,'Nunca'),(5,'cada 3 años');
/*!40000 ALTER TABLE `indicador19_graves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador19_vulnerable`
--

DROP TABLE IF EXISTS `indicador19_vulnerable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador19_vulnerable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo_id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador19_vulnerable_d0cb0e62` (`motivo_id`),
  KEY `indicador19_vulnerable_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=827 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador19_vulnerable`
--

LOCK TABLES `indicador19_vulnerable` WRITE;
/*!40000 ALTER TABLE `indicador19_vulnerable` DISABLE KEYS */;
INSERT INTO `indicador19_vulnerable` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(721,3,61),(720,1,61),(719,13,62),(718,12,62),(717,11,62),(716,10,62),(715,9,62),(714,8,62),(713,7,62),(712,6,62),(711,5,62),(710,4,62),(709,3,62),(708,2,62),(707,1,62),(706,12,60),(705,9,60),(704,8,60),(703,7,60),(702,5,60),(701,4,60),(700,3,60),(699,2,60),(698,1,60),(37,1,2),(38,2,2),(39,3,2),(40,4,2),(41,5,2),(42,6,2),(43,7,2),(44,8,2),(45,9,2),(46,10,2),(47,11,2),(48,12,2),(49,13,2),(50,1,3),(51,2,3),(52,3,3),(53,4,3),(54,5,3),(55,6,3),(56,7,3),(57,8,3),(58,9,3),(59,10,3),(60,11,3),(61,12,3),(62,13,3),(63,1,5),(64,2,5),(65,3,5),(66,5,5),(67,6,5),(68,7,5),(69,8,5),(70,9,5),(71,10,5),(72,11,5),(73,12,5),(74,1,6),(75,2,6),(76,3,6),(77,4,6),(78,5,6),(79,6,6),(80,7,6),(81,8,6),(82,9,6),(83,10,6),(84,11,6),(85,12,6),(86,13,6),(87,1,7),(88,2,7),(89,3,7),(90,4,7),(91,5,7),(92,6,7),(93,7,7),(94,8,7),(95,9,7),(96,10,7),(97,11,7),(98,12,7),(99,13,7),(100,1,8),(101,2,8),(102,3,8),(103,4,8),(104,5,8),(105,6,8),(106,7,8),(107,8,8),(108,11,8),(109,1,9),(110,2,9),(111,3,9),(112,4,9),(113,5,9),(114,6,9),(115,7,9),(116,9,9),(117,10,9),(118,11,9),(119,12,9),(120,13,9),(121,1,10),(122,2,10),(123,3,10),(124,4,10),(125,5,10),(126,6,10),(127,7,10),(128,8,10),(129,9,10),(130,10,10),(131,11,10),(132,12,10),(133,13,10),(134,1,11),(135,2,11),(136,3,11),(137,4,11),(138,5,11),(139,6,11),(140,7,11),(141,8,11),(142,9,11),(143,10,11),(144,11,11),(145,12,11),(146,13,11),(147,1,12),(148,2,12),(149,3,12),(150,4,12),(151,5,12),(152,6,12),(153,7,12),(154,8,12),(155,9,12),(156,10,12),(157,11,12),(158,12,12),(159,13,12),(160,1,13),(161,2,13),(162,3,13),(163,4,13),(164,5,13),(165,6,13),(166,7,13),(167,8,13),(168,9,13),(169,10,13),(170,11,13),(171,12,13),(172,13,13),(173,1,14),(174,2,14),(175,5,14),(176,6,14),(177,7,14),(178,8,14),(179,9,14),(180,10,14),(181,11,14),(182,12,14),(183,13,14),(184,1,15),(185,2,15),(186,3,15),(187,4,15),(188,5,15),(189,7,15),(190,8,15),(191,9,15),(192,10,15),(193,11,15),(194,12,15),(195,13,15),(196,6,16),(197,7,16),(198,8,16),(199,9,16),(200,12,16),(201,13,16),(202,1,17),(203,2,17),(204,3,17),(205,4,17),(206,6,17),(207,7,17),(208,8,17),(209,9,17),(210,10,17),(211,11,17),(212,12,17),(213,13,17),(214,1,18),(215,2,18),(216,3,18),(217,4,18),(218,5,18),(219,6,18),(220,7,18),(221,9,18),(222,10,18),(223,11,18),(224,12,18),(225,1,19),(226,2,19),(227,3,19),(228,4,19),(229,5,19),(230,6,19),(231,7,19),(232,8,19),(233,11,19),(234,12,19),(235,13,19),(236,1,20),(237,2,20),(238,3,20),(239,4,20),(240,5,20),(241,6,20),(242,7,20),(243,8,20),(244,11,20),(245,12,20),(246,13,20),(247,1,21),(248,2,21),(249,3,21),(250,4,21),(251,5,21),(252,6,21),(253,7,21),(254,8,21),(255,9,21),(256,10,21),(257,11,21),(258,12,21),(259,13,21),(260,1,22),(261,2,22),(262,3,22),(263,4,22),(264,5,22),(265,6,22),(266,7,22),(267,8,22),(268,9,22),(269,10,22),(270,11,22),(271,12,22),(272,13,22),(273,1,23),(274,2,23),(275,3,23),(276,4,23),(277,5,23),(278,6,23),(279,7,23),(280,8,23),(281,9,23),(282,10,23),(283,11,23),(284,12,23),(285,13,23),(286,1,24),(287,2,24),(288,3,24),(289,4,24),(290,5,24),(291,6,24),(292,7,24),(293,8,24),(294,9,24),(295,10,24),(296,11,24),(297,12,24),(298,13,24),(299,1,25),(300,1,25),(301,3,25),(302,4,25),(303,5,25),(304,6,25),(305,7,25),(306,8,25),(307,9,25),(308,10,25),(309,11,25),(310,12,25),(311,13,25),(312,1,26),(313,2,26),(314,3,26),(315,4,26),(316,5,26),(317,6,26),(318,7,26),(319,8,26),(320,9,26),(321,10,26),(322,11,26),(323,12,26),(324,13,26),(325,1,27),(326,2,27),(327,3,27),(328,4,27),(329,5,27),(330,6,27),(331,7,27),(332,8,27),(333,9,27),(334,10,27),(335,11,27),(336,12,27),(337,13,27),(338,1,28),(339,2,28),(340,3,28),(341,4,28),(342,5,28),(343,6,28),(344,7,28),(345,8,28),(346,9,28),(347,10,28),(348,11,28),(349,12,28),(350,13,28),(351,1,29),(352,2,29),(353,3,29),(354,4,29),(355,5,29),(356,6,29),(357,7,29),(358,8,29),(359,9,29),(360,10,29),(361,11,29),(362,12,29),(363,13,29),(364,1,30),(365,2,30),(366,3,30),(367,4,30),(368,5,30),(369,6,30),(370,7,30),(371,8,30),(372,9,30),(373,10,30),(374,11,30),(375,12,30),(376,13,30),(377,1,32),(378,2,32),(379,3,32),(380,4,32),(381,5,32),(382,6,32),(383,7,32),(384,8,32),(385,9,32),(386,10,32),(387,11,32),(388,12,32),(389,13,32),(390,1,32),(391,2,32),(392,3,32),(393,4,32),(394,5,32),(395,6,32),(396,7,32),(397,8,32),(398,9,32),(399,10,32),(400,11,32),(401,12,32),(402,13,32),(403,1,33),(404,2,33),(405,3,33),(406,4,33),(407,5,33),(408,6,33),(409,7,33),(410,8,33),(411,9,33),(412,10,33),(413,11,33),(414,13,33),(415,1,34),(416,4,34),(417,8,34),(418,12,34),(419,1,36),(420,2,36),(421,3,36),(422,4,36),(423,5,36),(424,6,36),(425,7,36),(426,8,36),(427,9,36),(428,10,36),(429,11,36),(430,12,36),(431,13,36),(432,1,37),(433,2,37),(434,3,37),(435,4,37),(436,5,37),(437,6,37),(438,7,37),(439,8,37),(440,9,37),(441,10,37),(442,11,37),(443,12,37),(444,13,37),(445,1,35),(446,2,35),(447,3,35),(448,4,35),(449,5,35),(450,6,35),(451,7,35),(452,8,35),(453,9,35),(454,10,35),(455,11,35),(456,12,35),(457,13,35),(458,1,38),(459,2,38),(460,3,38),(461,5,38),(462,6,38),(463,7,38),(464,8,38),(465,9,38),(466,10,38),(467,11,38),(468,12,38),(469,13,38),(470,1,39),(471,5,39),(472,6,39),(473,7,39),(474,8,39),(475,9,39),(476,10,39),(477,11,39),(478,12,39),(479,13,39),(480,1,41),(481,2,41),(482,3,41),(483,4,41),(484,5,41),(485,6,41),(486,7,41),(487,8,41),(488,9,41),(489,10,41),(490,12,41),(491,13,41),(492,1,40),(493,3,40),(494,5,40),(495,6,40),(496,7,40),(497,8,40),(498,9,40),(499,10,40),(500,11,40),(501,12,40),(502,13,40),(503,1,42),(504,2,42),(505,3,42),(506,5,42),(507,6,42),(508,7,42),(509,8,42),(510,9,42),(511,10,42),(512,11,42),(513,12,42),(514,13,42),(515,1,44),(516,2,44),(517,3,44),(518,4,44),(519,5,44),(520,7,44),(521,8,44),(522,9,44),(523,10,44),(524,11,44),(525,1,43),(526,2,43),(527,3,43),(528,4,43),(529,5,43),(530,6,43),(531,7,43),(532,8,43),(533,9,43),(534,10,43),(535,11,43),(536,12,43),(537,13,43),(538,1,45),(539,7,45),(540,8,45),(541,12,45),(542,13,45),(543,1,46),(544,2,46),(545,3,46),(546,4,46),(547,5,46),(548,7,46),(549,8,46),(550,9,46),(551,10,46),(552,11,46),(553,12,46),(554,13,46),(555,1,47),(556,2,47),(557,3,47),(558,4,47),(559,5,47),(560,6,47),(561,7,47),(562,8,47),(563,9,47),(564,10,47),(565,11,47),(566,12,47),(567,13,47),(568,1,49),(569,2,49),(570,3,49),(571,4,49),(572,5,49),(573,7,49),(574,8,49),(575,9,49),(576,11,49),(577,12,49),(578,13,49),(579,1,48),(580,2,48),(581,3,48),(582,4,48),(583,5,48),(584,7,48),(585,8,48),(586,9,48),(587,11,48),(588,12,48),(589,13,48),(590,1,50),(591,2,50),(592,3,50),(593,4,50),(594,5,50),(595,6,50),(596,7,50),(597,8,50),(598,9,50),(599,10,50),(600,11,50),(601,12,50),(602,13,50),(603,1,51),(604,2,51),(605,3,51),(606,4,51),(607,5,51),(608,6,51),(609,7,51),(610,8,51),(611,9,51),(612,10,51),(613,11,51),(614,12,51),(615,13,51),(616,1,52),(617,2,52),(618,5,52),(619,6,52),(620,7,52),(621,8,52),(622,9,52),(623,10,52),(624,11,52),(625,12,52),(626,13,52),(627,1,53),(628,3,53),(629,4,53),(630,5,53),(631,6,53),(632,7,53),(633,8,53),(634,9,53),(635,10,53),(636,12,53),(637,13,53),(638,1,54),(639,3,54),(640,5,54),(641,7,54),(642,8,54),(643,11,54),(644,12,54),(645,13,54),(646,1,55),(647,2,55),(648,3,55),(649,4,55),(650,5,55),(651,6,55),(652,7,55),(653,8,55),(654,9,55),(655,10,55),(656,11,55),(657,12,55),(658,13,55),(659,1,56),(660,3,56),(661,4,56),(662,6,56),(663,7,56),(664,7,56),(665,11,56),(666,12,56),(667,13,56),(668,1,57),(669,2,57),(670,3,57),(671,4,57),(672,5,57),(673,6,57),(674,7,57),(675,8,57),(676,10,57),(677,11,57),(678,12,57),(679,13,57),(680,2,58),(681,3,58),(682,5,58),(683,7,58),(684,8,58),(685,12,58),(686,1,59),(687,2,59),(688,3,59),(689,4,59),(690,5,59),(691,6,59),(692,8,59),(693,9,59),(694,10,59),(695,11,59),(696,12,59),(697,13,59),(722,4,61),(723,5,61),(724,7,61),(725,8,61),(726,10,61),(727,11,61),(728,12,61),(729,13,61),(730,1,63),(731,2,63),(732,3,63),(733,4,63),(734,5,63),(735,6,63),(736,7,63),(737,8,63),(738,10,63),(739,11,63),(740,12,63),(741,13,63),(742,1,64),(743,2,64),(744,5,64),(745,6,64),(746,7,64),(747,8,64),(748,9,64),(749,10,64),(750,11,64),(751,12,64),(752,13,64),(753,1,65),(754,5,65),(755,6,65),(756,7,65),(757,8,65),(758,9,65),(759,10,65),(760,12,65),(761,13,65),(762,1,67),(763,2,67),(764,3,67),(765,4,67),(766,5,67),(767,6,67),(768,7,67),(769,8,67),(770,9,67),(771,10,67),(772,11,67),(773,12,67),(774,13,67),(775,1,66),(776,5,66),(777,8,66),(778,11,66),(779,12,66),(780,1,68),(781,2,68),(782,3,68),(783,4,68),(784,5,68),(785,7,68),(786,8,68),(787,9,68),(788,12,68),(789,13,68),(790,1,69),(791,2,69),(792,3,69),(793,4,69),(794,5,69),(795,6,69),(796,7,69),(797,8,69),(798,9,69),(799,10,69),(800,11,69),(801,12,69),(802,13,69),(803,1,70),(804,2,70),(805,3,70),(806,4,70),(807,5,70),(808,6,70),(809,7,70),(810,8,70),(811,9,70),(812,10,70),(813,11,70),(814,12,70),(815,13,70),(816,1,71),(817,2,71),(818,3,71),(819,5,71),(820,7,71),(821,8,71),(822,9,71),(823,10,71),(824,11,71),(825,12,71),(826,13,71);
/*!40000 ALTER TABLE `indicador19_vulnerable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador19_vulnerable_respuesta`
--

DROP TABLE IF EXISTS `indicador19_vulnerable_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador19_vulnerable_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vulnerable_id` int(11) NOT NULL,
  `graves_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indicador19_vulnerable_resp_vulnerable_id_6fc141297b16efb1_uniq` (`vulnerable_id`,`graves_id`),
  KEY `indicador19_vulnerable_respuesta_9267f6e` (`vulnerable_id`),
  KEY `indicador19_vulnerable_respuesta_277be174` (`graves_id`)
) ENGINE=MyISAM AUTO_INCREMENT=829 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador19_vulnerable_respuesta`
--

LOCK TABLES `indicador19_vulnerable_respuesta` WRITE;
/*!40000 ALTER TABLE `indicador19_vulnerable_respuesta` DISABLE KEYS */;
INSERT INTO `indicador19_vulnerable_respuesta` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,4),(5,5,4),(6,6,4),(7,7,1),(8,8,1),(9,9,4),(10,10,4),(11,11,4),(12,12,2),(723,721,1),(722,720,1),(721,719,1),(720,718,4),(719,717,1),(718,716,4),(717,715,4),(716,714,1),(715,713,1),(714,712,4),(713,711,4),(712,710,4),(711,709,1),(710,708,1),(709,707,1),(708,706,4),(707,705,4),(706,704,1),(705,703,2),(704,702,4),(703,701,3),(702,700,1),(701,699,2),(700,698,2),(37,37,2),(38,38,4),(39,39,4),(40,40,4),(41,41,4),(42,42,2),(43,43,2),(44,44,1),(45,45,4),(46,46,4),(47,47,4),(48,48,4),(49,49,2),(50,50,2),(51,51,1),(52,52,2),(53,53,4),(54,54,4),(55,55,4),(56,56,1),(57,57,1),(58,58,4),(59,59,4),(60,60,4),(61,61,1),(62,62,1),(63,63,1),(64,64,4),(65,65,4),(66,66,4),(67,67,4),(68,68,2),(69,69,1),(70,70,4),(71,71,4),(72,72,4),(73,73,4),(74,74,5),(75,75,3),(76,76,4),(77,77,4),(78,78,1),(79,79,1),(80,80,1),(81,81,1),(82,82,1),(83,83,4),(84,84,1),(85,85,1),(86,86,1),(87,87,1),(88,88,1),(89,89,1),(90,90,1),(91,91,1),(92,92,1),(93,93,1),(94,94,1),(95,95,1),(96,96,4),(97,97,1),(98,98,1),(99,99,1),(100,100,1),(101,101,1),(102,102,2),(103,103,4),(104,104,1),(105,105,4),(106,106,1),(107,107,1),(108,108,1),(109,109,1),(110,110,3),(111,111,4),(112,112,4),(113,113,2),(114,114,1),(115,115,1),(116,116,1),(117,117,1),(118,118,4),(119,119,2),(120,120,4),(121,121,1),(122,122,2),(123,123,1),(124,124,2),(125,125,4),(126,126,1),(127,127,1),(128,128,4),(129,129,4),(130,130,1),(131,131,4),(132,132,1),(133,133,1),(134,134,2),(135,135,1),(136,136,4),(137,137,4),(138,138,1),(139,139,1),(140,140,1),(141,141,1),(142,142,1),(143,143,4),(144,144,2),(145,145,1),(146,146,1),(147,147,2),(148,148,4),(149,149,1),(150,150,4),(151,151,2),(152,152,2),(153,153,1),(154,154,1),(155,155,4),(156,156,1),(157,157,2),(158,158,4),(159,159,2),(160,160,2),(161,161,1),(162,162,1),(163,163,1),(164,164,2),(165,165,2),(166,166,1),(167,167,1),(168,168,4),(169,169,1),(170,170,1),(171,171,2),(172,172,1),(173,173,1),(174,174,4),(175,175,2),(176,176,1),(177,177,2),(178,178,1),(179,179,4),(180,180,4),(181,181,4),(182,182,1),(183,183,1),(184,184,1),(185,185,1),(186,186,1),(187,187,4),(188,188,4),(189,189,1),(190,190,1),(191,191,4),(192,192,4),(193,193,4),(194,194,2),(195,195,1),(196,196,2),(197,197,1),(198,198,1),(199,199,1),(200,200,1),(201,201,1),(202,202,4),(203,203,3),(204,204,3),(205,205,4),(206,206,1),(207,207,4),(208,208,1),(209,209,1),(210,210,4),(211,211,1),(212,212,1),(213,213,4),(214,214,4),(215,215,4),(216,216,4),(217,217,3),(218,218,1),(219,219,4),(220,220,1),(221,221,1),(222,222,4),(223,223,4),(224,224,1),(225,225,1),(226,226,1),(227,227,1),(228,228,1),(229,229,4),(230,230,1),(231,231,1),(232,232,1),(233,233,1),(234,234,1),(235,235,1),(236,236,1),(237,237,1),(238,238,1),(239,239,1),(240,240,1),(241,241,1),(242,242,1),(243,243,1),(244,244,1),(245,245,1),(246,246,1),(247,247,2),(248,248,3),(249,249,1),(250,250,3),(251,251,1),(252,252,2),(253,253,1),(254,254,1),(255,255,2),(256,256,1),(257,257,2),(258,258,2),(259,259,3),(260,260,2),(261,261,2),(262,262,1),(263,263,4),(264,264,2),(265,265,2),(266,266,1),(267,267,1),(268,268,2),(269,269,1),(270,270,2),(271,271,2),(272,272,4),(273,273,2),(274,274,4),(275,275,1),(276,276,2),(277,277,1),(278,278,2),(279,279,1),(280,280,1),(281,281,4),(282,282,1),(283,283,2),(284,284,2),(285,285,4),(286,286,1),(287,287,2),(288,288,1),(289,289,3),(290,290,1),(291,291,2),(292,292,1),(293,293,1),(294,294,2),(295,295,1),(296,296,2),(297,297,2),(298,298,4),(299,299,1),(300,300,2),(301,301,1),(302,302,3),(303,303,1),(304,304,2),(305,305,1),(306,306,1),(307,307,2),(308,308,4),(309,309,2),(310,310,2),(311,311,4),(312,312,2),(313,313,4),(314,314,2),(315,315,4),(316,316,4),(317,317,4),(318,318,1),(319,319,4),(320,320,4),(321,321,4),(322,322,4),(323,323,4),(324,324,4),(325,325,1),(326,326,1),(327,327,1),(328,328,4),(329,329,4),(330,330,4),(331,331,1),(332,332,1),(333,333,4),(334,334,4),(335,335,4),(336,336,4),(337,337,4),(338,338,1),(339,339,1),(340,340,1),(341,341,4),(342,342,4),(343,343,4),(344,344,4),(345,345,4),(346,346,4),(347,347,4),(348,348,2),(349,349,4),(350,350,4),(351,351,1),(352,352,1),(353,353,1),(354,354,2),(355,355,1),(356,356,2),(357,357,1),(358,358,1),(359,359,4),(360,360,4),(361,361,4),(362,362,4),(363,363,4),(364,364,1),(365,365,4),(366,366,2),(367,367,4),(368,368,4),(369,369,2),(370,370,1),(371,371,1),(372,372,1),(373,373,4),(374,374,4),(375,375,4),(376,376,4),(377,377,1),(378,378,1),(379,379,1),(380,380,4),(381,381,4),(382,382,4),(383,383,1),(384,384,1),(385,385,1),(386,386,4),(387,387,4),(388,388,4),(389,389,4),(390,390,1),(391,391,1),(392,392,1),(393,393,4),(394,394,4),(395,395,4),(396,396,1),(397,397,1),(398,398,1),(399,399,4),(400,400,4),(401,401,4),(402,402,4),(403,403,1),(404,404,1),(405,405,1),(406,406,1),(407,407,1),(408,408,2),(409,409,1),(410,410,1),(411,411,1),(412,411,4),(413,412,1),(414,413,4),(415,414,4),(416,415,1),(417,416,1),(418,417,1),(419,418,4),(420,419,2),(421,420,4),(422,421,1),(423,422,4),(424,423,4),(425,424,4),(426,425,1),(427,426,1),(428,427,2),(429,428,4),(430,429,2),(431,430,1),(432,431,1),(433,432,2),(434,433,4),(435,434,1),(436,435,4),(437,436,4),(438,437,2),(439,438,1),(440,439,1),(441,440,2),(442,441,4),(443,442,2),(444,443,4),(445,444,1),(446,445,2),(447,446,4),(448,447,1),(449,447,3),(450,448,3),(451,449,4),(452,450,4),(453,451,1),(454,452,1),(455,453,4),(456,454,2),(457,455,4),(458,456,4),(459,457,4),(460,458,2),(461,459,4),(462,460,1),(463,461,2),(464,462,1),(465,463,1),(466,464,1),(467,465,4),(468,466,4),(469,467,1),(470,468,1),(471,469,2),(472,470,2),(473,471,1),(474,472,4),(475,473,2),(476,474,1),(477,475,4),(478,476,4),(479,477,4),(480,478,4),(481,479,4),(482,480,2),(483,481,4),(484,482,1),(485,483,4),(486,484,4),(487,485,4),(488,486,1),(489,487,1),(490,488,4),(491,489,4),(492,490,2),(493,491,1),(494,492,1),(495,493,1),(496,494,1),(497,495,1),(498,496,1),(499,497,1),(500,498,1),(501,499,1),(502,500,1),(503,501,1),(504,502,1),(505,503,2),(506,504,2),(507,505,2),(508,506,4),(509,507,4),(510,508,1),(511,509,1),(512,510,4),(513,511,1),(514,512,1),(515,513,1),(516,514,1),(517,515,3),(518,516,4),(519,517,4),(520,518,1),(521,519,4),(522,520,1),(523,521,1),(524,522,4),(525,523,2),(526,524,4),(527,525,2),(528,526,2),(529,527,1),(530,528,1),(531,529,2),(532,530,2),(533,531,1),(534,532,1),(535,533,2),(536,534,1),(537,535,2),(538,536,4),(539,537,2),(540,538,1),(541,539,1),(542,540,1),(543,541,1),(544,542,1),(545,543,1),(546,544,1),(547,545,2),(548,546,4),(549,547,1),(550,548,1),(551,549,1),(552,550,1),(553,551,4),(554,552,4),(555,553,2),(556,554,1),(557,555,2),(558,556,2),(559,557,4),(560,558,4),(561,559,4),(562,560,4),(563,561,1),(564,562,1),(565,563,4),(566,564,4),(567,565,4),(568,566,2),(569,567,2),(570,568,1),(571,569,1),(572,570,1),(573,571,4),(574,572,4),(575,573,1),(576,574,1),(577,575,4),(578,576,2),(579,577,4),(580,578,1),(581,579,2),(582,580,1),(583,581,1),(584,582,2),(585,583,2),(586,584,2),(587,585,2),(588,586,2),(589,587,2),(590,588,2),(591,589,1),(592,590,2),(593,591,2),(594,592,4),(595,593,4),(596,594,2),(597,595,4),(598,596,1),(599,597,1),(600,598,4),(601,599,3),(602,600,4),(603,601,4),(604,602,4),(605,603,2),(606,604,1),(607,605,1),(608,606,1),(609,607,4),(610,608,2),(611,609,1),(612,610,2),(613,611,1),(614,612,4),(615,613,4),(616,614,2),(617,615,1),(618,616,1),(619,617,3),(620,618,2),(621,619,2),(622,620,1),(623,621,2),(624,622,4),(625,623,1),(626,624,1),(627,625,2),(628,626,2),(629,627,2),(630,628,4),(631,629,4),(632,630,1),(633,631,1),(634,632,1),(635,633,2),(636,634,4),(637,635,4),(638,636,4),(639,637,4),(640,638,1),(641,639,1),(642,640,1),(643,641,1),(644,642,1),(645,643,1),(646,644,1),(647,645,1),(648,646,2),(649,647,2),(650,648,1),(651,649,4),(652,650,1),(653,651,2),(654,652,1),(655,653,1),(656,654,2),(657,655,2),(658,656,2),(659,657,2),(660,658,1),(661,659,1),(662,660,1),(663,661,1),(664,662,1),(665,663,1),(666,664,1),(667,665,1),(668,666,1),(669,667,1),(670,668,2),(671,669,1),(672,670,2),(673,671,3),(674,672,2),(675,673,2),(676,674,1),(677,675,1),(678,676,1),(679,677,1),(680,678,1),(681,679,1),(682,680,1),(683,681,1),(684,682,1),(685,683,1),(686,684,1),(687,685,1),(688,686,1),(689,687,1),(690,688,1),(691,689,1),(692,690,4),(693,691,2),(694,692,1),(695,693,4),(696,694,4),(697,695,1),(698,696,4),(699,697,4),(724,722,4),(725,723,1),(726,724,1),(727,725,1),(728,726,4),(729,727,1),(730,728,1),(731,729,1),(732,730,1),(733,731,1),(734,732,1),(735,733,4),(736,734,1),(737,735,1),(738,736,1),(739,737,1),(740,738,4),(741,739,1),(742,740,1),(743,741,1),(744,742,2),(745,743,3),(746,744,1),(747,745,1),(748,746,1),(749,747,1),(750,748,1),(751,749,1),(752,750,1),(753,751,1),(754,752,1),(755,753,2),(756,754,1),(757,755,1),(758,756,1),(759,757,1),(760,758,1),(761,759,1),(762,760,1),(763,761,1),(764,762,1),(765,763,1),(766,764,4),(767,765,4),(768,766,4),(769,767,4),(770,768,1),(771,769,1),(772,770,1),(773,771,4),(774,772,4),(775,773,4),(776,774,4),(777,775,2),(778,776,1),(779,777,1),(780,778,1),(781,779,1),(782,780,2),(783,781,4),(784,782,4),(785,783,4),(786,784,1),(787,785,1),(788,786,1),(789,787,1),(790,788,1),(791,789,1),(792,790,1),(793,791,2),(794,792,1),(795,793,4),(796,794,1),(797,795,1),(798,796,1),(799,797,1),(800,798,4),(801,799,4),(802,800,4),(803,801,4),(804,802,4),(805,803,1),(806,804,1),(807,805,1),(808,806,4),(809,807,2),(810,808,4),(811,809,1),(812,810,1),(813,811,1),(814,812,4),(815,813,4),(816,814,1),(817,815,4),(818,816,2),(819,817,4),(820,818,1),(821,819,2),(822,820,1),(823,821,1),(824,822,4),(825,823,4),(826,824,2),(827,825,1),(828,826,1);
/*!40000 ALTER TABLE `indicador19_vulnerable_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador20_preguntariesgo`
--

DROP TABLE IF EXISTS `indicador20_preguntariesgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador20_preguntariesgo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador20_preguntariesgo`
--

LOCK TABLES `indicador20_preguntariesgo` WRITE;
/*!40000 ALTER TABLE `indicador20_preguntariesgo` DISABLE KEYS */;
INSERT INTO `indicador20_preguntariesgo` VALUES (1,'¿Realiza monitoreo de plagas y enfermedades?'),(2,'¿Disponen suficiente recursos para manejo de finca?'),(3,'¿Cuenta con obras para almacenamiento de agua?'),(4,'¿Participan en cadena de distribución de productos?'),(5,'¿Cuenta con un contrato para la venta de productos?'),(6,'¿Dispone de tecnología para el secado y almacenamiento de cosecha?');
/*!40000 ALTER TABLE `indicador20_preguntariesgo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador20_riesgos`
--

DROP TABLE IF EXISTS `indicador20_riesgos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador20_riesgos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador20_riesgos_37c55af2` (`pregunta_id`),
  KEY `indicador20_riesgos_1de70ac4` (`encuesta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador20_riesgos`
--

LOCK TABLES `indicador20_riesgos` WRITE;
/*!40000 ALTER TABLE `indicador20_riesgos` DISABLE KEYS */;
INSERT INTO `indicador20_riesgos` VALUES (1,1,2,1),(2,2,2,1),(3,3,2,1),(4,4,1,1),(5,5,2,1),(6,6,2,1),(7,1,2,1),(8,2,2,1),(9,3,2,1),(10,4,1,1),(11,5,2,1),(12,6,2,1),(13,1,2,1),(14,2,2,1),(15,3,2,1),(16,4,1,1),(17,5,2,1),(18,6,2,1),(19,1,1,2),(20,2,2,2),(21,3,2,2),(22,4,2,2),(23,5,2,2),(24,6,2,2),(25,1,2,3),(26,2,2,3),(27,3,2,3),(28,4,2,3),(29,5,2,3),(30,6,1,3),(31,1,1,4),(32,2,1,4),(33,3,2,4),(34,4,2,4),(35,5,2,4),(36,6,1,4),(37,1,1,5),(38,2,1,5),(39,3,2,5),(40,4,1,5),(41,5,2,5),(42,6,1,5),(43,1,2,6),(44,2,2,6),(45,3,2,6),(46,4,2,6),(47,5,2,6),(48,6,2,6),(49,1,2,7),(50,2,2,7),(51,3,2,7),(52,4,2,7),(53,5,2,7),(54,6,2,7),(55,1,1,8),(56,2,2,8),(57,3,2,8),(58,4,2,8),(59,5,2,8),(60,6,2,8),(61,1,1,9),(62,2,2,9),(63,3,1,9),(64,4,2,9),(65,5,2,9),(66,6,1,9),(67,1,1,10),(68,2,2,10),(69,3,2,10),(70,4,2,10),(71,5,1,10),(72,6,2,10),(73,1,1,11),(74,2,2,11),(75,3,2,11),(76,4,2,11),(77,5,2,11),(78,6,2,11),(79,1,1,12),(80,2,2,12),(81,3,1,12),(82,4,2,12),(83,5,2,12),(84,6,1,12),(85,1,1,13),(86,2,2,13),(87,3,2,13),(88,4,2,13),(89,5,2,13),(90,6,1,13),(91,1,2,14),(92,2,2,14),(93,3,2,14),(94,4,2,14),(95,5,2,14),(96,6,2,14),(97,1,2,15),(98,2,2,15),(99,3,2,15),(100,4,2,15),(101,5,2,15),(102,6,2,15),(103,1,1,16),(104,2,2,16),(105,3,2,16),(106,4,1,16),(107,5,2,16),(108,6,2,16),(109,1,1,17),(110,2,2,17),(111,3,2,17),(112,4,1,17),(113,5,2,17),(114,6,2,17),(115,1,1,18),(116,2,2,18),(117,3,2,18),(118,4,1,18),(119,5,2,18),(120,6,2,18),(121,1,2,19),(122,2,2,19),(123,3,2,19),(124,4,2,19),(125,5,2,19),(126,6,2,19),(127,1,2,20),(128,2,2,20),(129,3,1,20),(130,4,2,20),(131,5,2,20),(132,6,2,20),(133,1,1,21),(134,2,2,21),(135,3,1,21),(136,4,2,21),(137,5,2,21),(138,6,2,21),(139,1,1,22),(140,2,2,22),(141,3,2,22),(142,4,2,22),(143,5,2,22),(144,6,1,22),(145,1,1,23),(146,2,2,23),(147,3,1,23),(148,4,2,23),(149,5,2,23),(150,6,2,23),(151,1,1,24),(152,2,1,24),(153,3,1,24),(154,4,2,24),(155,5,2,24),(156,6,2,24),(157,1,1,25),(158,2,2,25),(159,3,1,25),(160,4,2,25),(161,5,2,25),(162,6,2,25),(163,1,1,26),(164,2,1,26),(165,3,1,26),(166,4,1,26),(167,5,2,26),(168,6,2,26),(169,1,1,27),(170,2,2,27),(171,3,1,27),(172,4,2,27),(173,5,2,27),(174,6,2,27),(175,1,1,28),(176,2,2,28),(177,3,2,28),(178,4,2,28),(179,5,2,28),(180,6,2,28),(181,1,1,29),(182,2,2,29),(183,3,2,29),(184,4,2,29),(185,5,2,29),(186,6,2,29),(187,1,1,30),(188,2,1,30),(189,3,2,30),(190,4,1,30),(191,5,2,30),(192,6,2,30),(193,1,1,32),(194,2,1,32),(195,3,1,32),(196,4,2,32),(197,5,2,32),(198,6,2,32),(199,1,1,32),(200,2,1,32),(201,3,1,32),(202,4,2,32),(203,5,2,32),(204,6,2,32),(205,1,1,33),(206,2,1,33),(207,3,2,33),(208,4,2,33),(209,5,2,33),(210,6,2,33),(211,1,1,34),(212,2,2,34),(213,3,2,34),(214,4,2,34),(215,5,2,34),(216,6,2,34),(217,1,2,36),(218,2,2,36),(219,3,2,36),(220,4,2,36),(221,5,2,36),(222,6,2,36),(223,1,2,37),(224,2,2,37),(225,3,2,37),(226,4,2,37),(227,5,2,37),(228,6,2,37),(229,1,1,35),(230,2,2,35),(231,3,2,35),(232,4,2,35),(233,5,2,35),(234,6,1,35),(235,1,2,38),(236,2,2,38),(237,3,2,38),(238,4,2,38),(239,5,2,38),(240,6,2,38),(241,1,1,39),(242,2,1,39),(243,3,1,39),(244,4,2,39),(245,5,2,39),(246,6,1,39),(247,1,2,41),(248,2,2,41),(249,3,2,41),(250,5,2,41),(251,6,2,41),(252,1,1,40),(253,2,2,40),(254,3,2,40),(255,4,2,40),(256,5,2,40),(257,6,2,40),(258,1,1,42),(259,2,2,42),(260,3,2,42),(261,4,2,42),(262,5,2,42),(263,6,2,42),(264,1,2,44),(265,2,2,44),(266,3,2,44),(267,4,2,44),(268,5,2,44),(269,6,2,44),(270,1,1,43),(271,2,2,43),(272,3,2,43),(273,4,2,43),(274,5,2,43),(275,6,2,43),(276,1,1,45),(277,2,2,45),(278,3,2,45),(279,4,2,45),(280,5,2,45),(281,6,2,45),(282,1,1,46),(283,2,2,46),(284,3,2,46),(285,4,1,46),(286,5,2,46),(287,6,2,46),(288,1,1,47),(289,2,2,47),(290,3,2,47),(291,4,2,47),(292,5,2,47),(293,6,2,47),(294,1,1,49),(295,2,2,49),(296,3,2,49),(297,4,2,49),(298,5,2,49),(299,6,2,49),(300,1,1,48),(301,2,1,48),(302,3,2,48),(303,4,1,48),(304,5,2,48),(305,6,2,48),(306,1,1,50),(307,2,2,50),(308,3,1,50),(309,4,2,50),(310,5,2,50),(311,6,1,50),(312,1,1,51),(313,2,1,51),(314,3,1,51),(315,1,1,52),(316,2,2,52),(317,3,1,52),(318,4,2,52),(319,5,2,52),(320,6,1,52),(321,2,1,53),(322,1,1,54),(323,2,1,54),(324,3,1,54),(325,4,2,54),(326,5,2,54),(327,6,2,54),(328,1,1,56),(329,2,2,56),(330,3,2,56),(331,4,2,56),(332,5,2,56),(333,6,2,56),(334,3,1,57),(335,1,1,58),(336,2,1,58),(337,3,2,58),(338,4,2,58),(339,5,2,58),(340,6,2,58),(341,1,1,59),(342,2,1,59),(343,3,2,59),(344,4,2,59),(345,5,2,59),(346,6,2,59),(347,1,1,62),(348,1,2,61),(349,2,2,61),(350,3,1,61),(351,4,2,61),(352,5,2,61),(353,6,2,61),(354,1,2,63),(355,2,2,63),(356,3,2,63),(357,4,2,63),(358,5,2,63),(359,6,2,63),(360,1,1,64),(361,2,1,64),(362,1,1,65),(363,2,1,65),(364,1,1,67),(365,3,1,67),(366,1,1,66),(367,2,1,66),(368,1,1,68),(369,2,2,68),(370,3,2,68),(371,4,2,68),(372,5,2,68),(373,6,2,68),(374,1,1,69),(375,2,2,69),(376,3,2,69),(377,4,2,69),(378,5,2,69),(379,6,2,69),(380,1,1,70),(381,2,2,70),(382,3,1,70),(383,4,1,70),(384,5,1,70),(385,6,2,70),(386,1,1,71),(387,2,2,71),(388,3,2,71),(389,4,2,71),(390,5,2,71),(391,6,2,71);
/*!40000 ALTER TABLE `indicador20_riesgos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_comunidad`
--

DROP TABLE IF EXISTS `lugar_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_comunidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lugar_comunidad_f3143aaa` (`municipio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_comunidad`
--

LOCK TABLES `lugar_comunidad` WRITE;
/*!40000 ALTER TABLE `lugar_comunidad` DISABLE KEYS */;
INSERT INTO `lugar_comunidad` VALUES (1,7020,'El llano'),(2,7020,'Los Sirones'),(3,7020,'Pedro Joaquín Chamorro'),(4,7015,'Los Castillos'),(5,7535,'Los Castillos'),(6,7535,'Los Castillos'),(7,4015,'La Empresa'),(8,4045,'El Mojón'),(9,4045,'Monte Alegre'),(10,4045,'Chaparral'),(11,4045,'San Pedro'),(12,4055,'Susuli No 2'),(13,4055,'Susuli No 3'),(14,4055,'Susuli No 4'),(15,4050,'Pita Arriba'),(16,4050,'San Francisco'),(17,4050,'Cerro El padre'),(18,4030,'Samulalí No 1'),(19,4030,'Samulalí'),(20,1010,'La Esperanza-Pavona Abajo'),(21,4055,'Ocote Abajo'),(22,1010,'Castillo Norte-Pavona Abajo'),(23,1010,'Abisinia'),(24,4055,'Ocote Arriba'),(25,1035,'Pila del Horno'),(26,4055,'Ocote'),(27,1035,'Jocomico'),(28,1035,'Paso Ancho'),(29,1020,'La tejera'),(30,4025,'Tamarindo'),(31,4025,'Agua zarca'),(32,1035,'Yagualica'),(33,7535,'El sol'),(34,7535,'El Calishuate'),(35,7535,'La unión');
/*!40000 ALTER TABLE `lugar_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_departamento`
--

DROP TABLE IF EXISTS `lugar_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `extension` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_departamento`
--

LOCK TABLES `lugar_departamento` WRITE;
/*!40000 ALTER TABLE `lugar_departamento` DISABLE KEYS */;
INSERT INTO `lugar_departamento` VALUES (5,'Nueva Segovia','Nueva-segovia','3491.28'),(10,'Jinotega','jinotega','9222.40'),(20,'Madriz','madriz','1708.23'),(25,'Estelí','esteli','2229.69'),(30,'Chinandega','chinandega','4822.46'),(35,'León','leon','5138.03'),(40,'Matagalpa','matagalpa','6803.86'),(50,'Boaco','boaco','4176.68'),(55,'Managua','managua','3465.10'),(60,'Masaya','masaya','610.78'),(65,'Chontales','chontales','6481.27'),(70,'Granada','granada','1039.68'),(75,'Carazo','carazo','1081.40'),(80,'Rivas','rivas','2161.82'),(85,'Rí­o San Juan','Rio-san-juan','7540.90'),(91,'RAAN','RAAN','32819.68'),(93,'RAAS','RAAS','27546.32');
/*!40000 ALTER TABLE `lugar_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_municipio`
--

DROP TABLE IF EXISTS `lugar_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_municipio` (
  `id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `extension` decimal(10,2) DEFAULT NULL,
  `latitud` decimal(8,5) DEFAULT NULL,
  `longitud` decimal(8,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`),
  KEY `lugar_municipio_8865b15a` (`departamento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_municipio`
--

LOCK TABLES `lugar_municipio` WRITE;
/*!40000 ALTER TABLE `lugar_municipio` DISABLE KEYS */;
INSERT INTO `lugar_municipio` VALUES (505,5,'Jalapa','jalapa','0.00','13.92286','-86.12520'),(510,5,'Murra','murra','0.00','13.75900','-86.01799'),(515,5,'El Jí­caro','El-jicaro','0.00','13.72326','-86.13705'),(520,5,'San Fernando','San-fernando','0.00','13.67729','-86.31484'),(525,5,'Mozonte','mozonte','0.00','13.66168','-86.43706'),(530,5,'Dipilto','dipilto','0.00','13.72243','-86.50720'),(535,5,'Macuelizo','macuelizo','0.00','13.65239','-86.61380'),(540,5,'Santa Marí­a','santamaria','0.00','13.74753','-86.71077'),(545,5,'Ocotal','ocotal','0.00','13.63432','-86.47745'),(550,5,'Ciudad Antigua','Ciudad-antigua','0.00','13.64217','-86.30893'),(555,5,'Quilalí','quilali','0.00','13.56675','-86.02952'),(560,5,'Wiwili de Nueva Segovia','Wiwili-nuevasegovia','0.00','13.62667','-85.82369'),(1005,10,'Wiwilí','Wiwili','0.00','13.62130','-85.81864'),(1010,10,'El Cúa','El-cua','0.00','13.36764','-85.67330'),(1012,10,'San José Bocay','San-jose-bocay','0.00','13.61976','-85.50080'),(1015,10,'Sta. María de Pantasma','Santa-maria-pantasma','0.00','13.36667','-85.95000'),(1020,10,'San Rafael del Norte','San-rafael-del-norte','0.00','13.21391','-86.11043'),(1025,10,'San Sebastian de Yalí','yali','0.00','13.30500','-86.18636'),(1030,10,'La Concordia','La-concordia','0.00','13.19535','-86.16693'),(1035,10,'Jinotega','jinotega','0.00','13.09165','-86.00121'),(2005,20,'Somoto','somoto','0.00','13.48129','-86.58337'),(2010,20,'Totogalpa','totogalpa','0.00','13.56336','-86.49281'),(2015,20,'Telpaneca','telpaneca','0.00','13.53131','-86.28693'),(2020,20,'San Juan de Río Coco','San-juan-rio-coco','0.00','13.54458','-86.16537'),(2025,20,'Palacaguina','palacaguina','0.00','13.45597','-86.40710'),(2030,20,'Yalaguina','yalaguina','0.00','13.48351','-86.49344'),(2035,20,'San Lucas','San-lucas','0.00','13.41358','-86.61176'),(2040,20,'Las Sabanas','Las-sabanas','0.00','13.34324','-86.62194'),(2045,20,'San José de Cusmapa','San-jose-cusmapa','0.00','13.28847','-86.65489'),(2505,25,'Pueblo Nuevo','Pueblo-nuevo','0.00','13.37937','-86.48077'),(2510,25,'Condega','condega','0.00','13.36213','-86.39789'),(2515,25,'Estelí','esteli','0.00','13.08948','-86.35551'),(2520,25,'San Juan de Limay','Sanjuan-limay','0.00','13.17489','-86.61234'),(2525,25,'La Trinidad','trinidad','0.00','12.96823','-86.23604'),(2530,25,'San Nicolás','San-nicolas','0.00','12.93312','-86.34700'),(3005,30,'San Pedro del Norte','San-pedro-del-norte','0.00','13.27596','-86.87777'),(3010,30,'San Francisco del Norte','San-francisco-del-norte','0.00','13.20016','-86.77192'),(3015,30,'Cinco Pinos','Cinco-pinos','0.00','13.23036','-86.86719'),(3020,30,'Santo Tomás del Norte','Santo-tomas-del-norte','0.00','13.18701','-86.92352'),(3025,30,'El Viejo','El-viejo','0.00','12.66228','-87.16541'),(3030,30,'Pto. Morazán','Puerto-morazan','0.00','12.76721','-87.13388'),(3035,30,'Somotillo','somotillo','0.00','13.04495','-86.90499'),(3040,30,'Villanueva','villanueva','0.00','12.96391','-86.81468'),(3045,30,'Chinandega','chinandega','0.00','12.62872','-87.13149'),(3050,30,'El Realejo','El-realejo','0.00','12.54551','-87.16736'),(3055,30,'Corinto','corinto','0.00','12.48461','-87.17122'),(3060,30,'Chichigalpa','chichigalpa','0.00','12.57224','-87.02849'),(3065,30,'Posoltega','posotelga','0.00','12.54410','-86.98010'),(3505,35,'Achuapa','achuapa','0.00','13.05433','-86.59070'),(3510,35,'El Sauce','El-sauce','0.00','12.88694','-86.53952'),(3515,35,'Santa Rosa del Peñon','Santa-rosa-del-penon','0.00','12.80142','-86.37144'),(3520,35,'El Jicaral','El-jicaral','0.00','12.72672','-86.38134'),(3525,35,'Larreynaga','larreynaga','0.00','12.59311','-86.68015'),(3530,35,'Telica','telica','0.00','12.52152','-86.86030'),(3535,35,'Quezalguaque','quezalguaque','0.00','12.50614','-86.90366'),(3540,35,'León','leon','0.00','12.43481','-86.88174'),(3545,35,'La Paz Centro','La-paz-centro','0.00','12.34011','-86.67625'),(3550,35,'Nagarote','nagarote','0.00','12.26531','-86.56812'),(4005,40,'Rancho Grande','Rancho-grande','0.00','13.25352','-85.55268'),(4010,40,'Rí­o Blanco','Rio-blanco','0.00','12.93044','-85.22610'),(4015,40,'El Tuma - La Dalia','El-tuma','0.00','13.13735','-85.73788'),(4020,40,'San Isidro','San-isidro','0.00','12.92937','-86.19550'),(4025,40,'Sébaco','sebaco','0.00','12.85190','-86.09696'),(4030,40,'Matagalpa','matagalpa','0.00','12.92709','-85.91747'),(4035,40,'San Ramón','San-ramon','0.00','12.92254','-85.83968'),(4040,40,'Matiguás','matiguas','0.00','12.83710','-85.46079'),(4045,40,'Muy Muy','muymuy','0.00','12.76125','-85.63123'),(4050,40,'Esquipulas','esquipulas','0.00','12.66446','-85.78909'),(4055,40,'San Dionisio','San-dionisio','0.00','12.76190','-85.85091'),(4060,40,'Terrabona','terrabona','0.00','12.73009','-85.96487'),(4065,40,'Ciudad Darí­o','Ciudad-dario','0.00','12.73000','-86.12457'),(5005,50,'San José de los Remates','San-jose-de-los-remates','0.00','12.59748','-85.76253'),(5010,50,'Boaco','boaco','0.00','12.47160','-85.65952'),(5015,50,'Camoapa','camoapa','0.00','12.38377','-85.51465'),(5020,50,'Santa Lucía','Santa-lucia','0.00','12.53226','-85.71156'),(5025,50,'Teustepe','teustepe','0.00','12.41979','-85.79922'),(5030,50,'San  Lorenzo','San-lorenzo','0.00','12.37789','-85.66718'),(5505,55,'San Francisco Libre','San-francisco-libre','0.00','12.50458','-86.30105'),(5510,55,'Tipitapa','tipitapa','0.00','12.19662','-86.09682'),(5515,55,'Mateare','mateare','0.00','12.23536','-86.43013'),(5520,55,'Villa Carlos Fonseca','Villa-carlos-fonseca','0.00','11.97924','-86.50809'),(5522,55,'Ciudad Sandino','Ciudad-sandino','0.00','12.16082','-86.35004'),(5525,55,'Managua','managua','0.00','12.14746','-86.27339'),(5530,55,'Ticuantepe','ticuantepe','0.00','12.02125','-86.20288'),(5532,55,'El Crucero','El-crucero','0.00','11.97865','-86.31076'),(5535,55,'San Rafael del Sur','San-rafael-del-sur','0.00','11.84681','-86.43977'),(6005,60,'Nindirí','nindiri','0.00','12.00243','-86.12067'),(6010,60,'Masaya','masaya','0.00','11.97735','-86.09606'),(6015,60,'Tisma','tisma','0.00','12.08133','-86.01921'),(6020,60,'La Concepción','La-concepcion','0.00','11.93615','-86.19220'),(6025,60,'Masatepe','masatepe','0.00','11.91344','-86.14475'),(6030,60,'Nandasmo','nandasmo','0.00','11.90933','-86.13055'),(6035,60,'Catarina','catarina','0.00','11.91078','-86.07407'),(6040,60,'San Juan de Oriente','San-juan-de-oriente','0.00','11.90479','-86.07311'),(6045,60,'Niquinohomo','niquinomo','0.00','11.90408','-86.09472'),(6505,65,'Comalapa','comalapa','0.00','12.28340','-85.51142'),(6507,65,'San Francisco Cuapa','San-francisco-cuapa','0.00','12.26671','-85.38308'),(6510,65,'Juigalpa','juigalpa','0.00','12.10580','-85.36842'),(6515,65,'La Libertad','La-libertad','0.00','12.21539','-85.16549'),(6520,65,'Santo Domingo','Santo-domingo','0.00','12.26301','-85.08232'),(6525,65,'Santo Tomás','Santo-tomas','0.00','12.06902','-85.09340'),(6530,65,'San Pedro de Lóvago','San-pedro-de-lovago','0.00','12.12852','-85.11572'),(6535,65,'Acoyapa','acoyapa','0.00','11.96764','-85.17044'),(6540,65,'Villa Sandino','Villa-sandino','0.00','12.04779','-84.99334'),(6545,65,'El Coral','El-coral','0.00','11.91576','-84.65041'),(7005,70,'Diriá','diria','0.00','11.88416','-86.05565'),(7010,70,'Diriomo','diriomo','0.00','11.87494','-86.05110'),(7015,70,'Granada','granada','0.00','11.93095','-85.95696'),(7020,70,'Nandaime','nandaime','0.00','11.75630','-86.05345'),(7505,75,'San Marcos','San-marcos','0.00','11.90651','-86.20314'),(7510,75,'Jinotepe','jinotepe','0.00','11.84831','-86.19846'),(7515,75,'Dolores','dolores','0.00','11.85565','-86.21535'),(7520,75,'Diriamba','diriamba','0.00','11.85572','-86.24074'),(7525,75,'El Rosario','El-rosario','0.00','11.83224','-86.16484'),(7530,75,'La Paz de Carazo','La-paz-de-carazo','0.00','11.82206','-86.12750'),(7535,75,'Santa Teresa','Santa-tereza','0.00','11.80272','-86.16281'),(7540,75,'La Conquista','La-conquista','0.00','11.73336','-86.19297'),(8005,80,'Tola','tola','0.00','11.43868','-85.93907'),(8010,80,'Belén','belen','0.00','11.50081','-85.89014'),(8015,80,'Potosí','potosi','0.00','11.49320','-85.85709'),(8020,80,'Buenos Aires','Buenos-aires','0.00','11.46923','-85.81701'),(8025,80,'Moyogalpa','moyogalpa','0.00','11.53947','-85.69746'),(8030,80,'Altagracia','altagracia','0.00','11.56547','-85.57793'),(8035,80,'San Jorge','San-jorge','0.00','11.45532','-85.80074'),(8040,80,'Rivas','rivas','0.00','11.43975','-85.82880'),(8045,80,'San Juan del Sur','San-juan-del-sur','0.00','11.25384','-85.87177'),(8050,80,'Cárdenas','cardenas','0.00','11.19521','-85.50886'),(8505,85,'Morrito','morrito','0.00','11.62130','-85.08169'),(8510,85,'El Almendro','El-almendro','0.00','11.67684','-84.70362'),(8515,85,'San Miguelito','San-miguelito','0.00','11.40156','-84.90005'),(8520,85,'San Carlos','San-carlos','0.00','11.12088','-84.77837'),(8525,85,'El Castillo','El-castillo','0.00','11.03969','-84.47295'),(8530,85,'San Juan del Norte','San-juan-del-norte','0.00','10.94671','-83.73479'),(9105,91,'Waspán','waspan','0.00','14.74386','-83.96885'),(9110,91,'Puerto Cabezas','Puerto-cabezas','0.00','14.03313','-83.38223'),(9115,91,'Rosita','rosita','0.00','13.91060','-84.39153'),(9120,91,'Bonanza','bonanza','0.00','14.02584','-84.62088'),(9127,91,'Mulukuku','mulukuku','0.00','13.15000','-84.96667'),(9125,91,'Waslala','waslala','0.00','13.33465','-85.37099'),(9130,91,'Siuna','siuna','0.00','13.73857','-84.78491'),(9135,91,'Prinzapolka','prinzapolka','0.00','13.40611','-83.56229'),(9305,93,'Paiwas','paiwas','0.00','12.78548','-85.12402'),(9310,93,'La Cruz de Río Grande','La-cruz-rio-grande','0.00','13.11145','-84.18835'),(9312,93,'Desembocadura de Río Grande','Desembocadura-rio-grande','0.00','12.93208','-83.57697'),(9315,93,'Laguna de Perlas','Laguna-de-perlas','0.00','12.34096','-83.67052'),(9316,93,'El Tortuguero','El-tortuguero','0.00','12.82085','-84.19906'),(9320,93,'Rama','rama','0.00','12.16004','-84.21913'),(9323,93,'El Ayote','El-ayote','0.00','12.49486','-84.81943'),(9325,93,'Muelle de los Bueyes','Muelle-de-los-bueyes','0.00','12.06764','-84.53749'),(9330,93,'Kukra - Hill','Kukra-hill','0.00','12.24163','-83.74532'),(9335,93,'Corn Island','Corn-island','0.00','12.18017','-83.05975'),(9340,93,'Bluefields','bluefields','0.00','12.01144','-83.76388'),(9345,93,'Nueva Guinea','Nueva-guinea','0.00','11.68827','-84.45794'),(1040,10,'Altowangky','altowanky','0.00',NULL,NULL);
/*!40000 ALTER TABLE `lugar_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'lugar','0001_initial','2011-05-03 02:00:23'),(2,'grupo_gpae','0001_initial','2011-05-03 02:00:25'),(3,'indicador01','0001_initial','2011-05-03 02:00:28'),(4,'indicador01','0002_auto__add_usoagua','2011-05-03 02:00:28'),(5,'indicador02','0001_initial','2011-05-03 02:00:31'),(6,'indicador05','0001_initial','2011-05-03 02:00:32'),(7,'indicador06','0001_initial','2011-05-03 02:00:33'),(8,'indicador07','0001_initial','2011-05-03 02:00:34'),(9,'indicador08','0001_initial','2011-05-03 02:00:35'),(10,'indicador08','0002_auto__add_field_animalesfinca_perdida','2011-05-03 02:00:35'),(11,'indicador08','0003_auto__del_field_animalesfinca_perdida__add_field_animalesfinca_robo__a','2011-05-03 02:00:38'),(12,'indicador09','0001_initial','2011-05-03 02:00:39'),(13,'indicador09','0002_auto__add_excedente__del_field_cultivosfinca_total__add_field_cultivos','2011-05-03 02:00:45'),(14,'indicador09','0003_auto__del_field_cultivosfinca_manejo__del_field_cultivosfinca_total_pr','2011-05-03 02:00:48'),(15,'indicador10','0001_initial','2011-05-03 02:00:49'),(16,'indicador11','0001_initial','2011-05-03 02:00:49'),(17,'indicador12','0001_initial','2011-05-03 02:00:54'),(18,'indicador13','0001_initial','2011-05-03 02:00:55'),(19,'indicador13','0002_auto__add_field_ingresofamiliar_venta','2011-05-03 02:00:55'),(20,'indicador14','0001_initial','2011-05-03 02:00:56'),(21,'indicador15','0001_initial','2011-05-03 02:00:58'),(22,'indicador16','0001_initial','2011-05-03 02:00:59'),(23,'indicador17','0001_initial','2011-05-03 02:01:00'),(24,'indicador18','0001_initial','2011-05-03 02:01:01'),(25,'indicador19','0001_initial','2011-05-03 02:01:02'),(26,'indicador20','0001_initial','2011-05-03 02:01:02'),(27,'indicador13','0003_auto__chg_field_ingresofamiliar_cantidad__chg_field_ingresofamiliar_pr','2011-06-04 15:42:10');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-09 16:12:24
