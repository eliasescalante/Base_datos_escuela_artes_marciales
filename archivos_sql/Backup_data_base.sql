-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shenxinglin
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
-- Table structure for table `graduation`
--

DROP TABLE IF EXISTS `graduation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduation` (
  `id_graduation` int NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`id_graduation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduation`
--

LOCK TABLES `graduation` WRITE;
/*!40000 ALTER TABLE `graduation` DISABLE KEYS */;
INSERT INTO `graduation` VALUES (1,'punta-amarillo','2000-02-10'),(2,'amarillo','2001-02-10'),(3,'amarillo-punta-naranja','2002-02-10'),(4,'naranja','2003-02-10'),(5,'naranja-punta-verde','2004-02-10'),(6,'verde','2005-02-10'),(7,'verde-punta-azul','2006-02-10'),(8,'azul','2007-02-10'),(9,'azul-punta-roja','2008-02-10'),(10,'rojo','2010-02-10'),(11,'rojo-punta-negro','2012-02-10'),(12,'negro','2013-02-10'),(13,'negro-I','2014-02-10'),(14,'negro-II','2015-02-10'),(15,'maestro','2016-02-10');
/*!40000 ALTER TABLE `graduation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria`
--

DROP TABLE IF EXISTS `log_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `modification_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'root@localhost','style','2024-01-13 19:28:20',NULL),(2,'root@localhost','style','2024-01-13 19:40:29','insert'),(6,'root@localhost','style','2024-01-13 19:53:31','delete'),(7,'root@localhost','student','2024-01-13 20:23:06','update'),(8,'root@localhost','student','2024-01-13 20:32:15',NULL),(9,'root@localhost','student','2024-01-13 20:32:15','delete'),(10,'root@localhost','student','2024-01-13 20:32:24',NULL),(11,'root@localhost','student','2024-01-13 20:32:24','insert'),(12,'root@localhost','style','2024-01-22 21:32:57','insert'),(13,'root@localhost','style','2024-01-22 21:32:57','insert');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master` (
  `master_file` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(25) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `adress` varchar(75) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `graduation` int DEFAULT NULL,
  `school_in_charge` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`master_file`),
  KEY `graduation` (`graduation`),
  CONSTRAINT `master_ibfk_1` FOREIGN KEY (`graduation`) REFERENCES `graduation` (`id_graduation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
INSERT INTO `master` VALUES (1,'emilio giordano','1985-02-10','11-38107145','Av Rafael Núñez 5019','emilio@gmail.com',15,'shen xing lin'),(2,'carlos peralta','1991-03-02','11-38234564','Av Colón 788','carlos@gmail.com',15,'tien long hu'),(3,'matias pedrano','1989-01-10','11-43598102','Av Circunvalación 2321','matias@gmail.com',15,'shen quan'),(4,'ayelen di nardo','2000-03-10','11-37107345','Av de Mayo 825','ayelen@gmail.com',15,'she quan'),(5,'gerardo aguin','0198-04-23','11-38234864','Av Monseñor Pablo Cabrera 6080\n','gerado@gmail.com',15,'hao mei'),(6,'carlos cain','2001-02-12','11-43598102','El Salvador 4735','carlos@gmail.com',15,'shuan pei tou'),(7,'marcos escalante','2000-05-30','11-48107135','Juan Julián Lastra 176','marcos@gmail.com',15,'long hua'),(8,'david romero','2007-06-11','11-38214564','Rivadavia 724','david@gmail.com',15,'shen xing lian'),(9,'elias escalante','1985-02-10','11-43598102','San Pedro 2930','elias@gmail.com',15,'lian hua'),(10,'fernanda di zoccolo','1988-06-06','11-36107115','Honduras 5303','fernanda@gmail.com',15,'dragones'),(11,'giavani gonzales','1978-03-12','11-39234564','Habana 4836','giavani@gmail.com',15,'ma shuan dao'),(12,'alberto escalante','1990-04-09','11-43598102','Cassanello 1086','alberto@gmail.com',15,'zhi chuan'),(13,'lucas martin','1992-08-12','11-32107149','Av Santa Ana 2353','lucas@gmail.com',15,'tao'),(14,'cintia fernandez','1986-02-03','11-36234564','9 de Julio 501','cintia@gmail.com',15,'tien tai chien'),(15,'julian conte','1996-06-04','11-43598102','Dr R Hellman Gauna 107','julian@gmail.com',15,'chuen');
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `teacher_in_charge` int DEFAULT NULL,
  `style_id` int DEFAULT NULL,
  `sede` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_in_charge` (`teacher_in_charge`),
  KEY `sede` (`sede`),
  KEY `school_ibfk_2` (`style_id`),
  CONSTRAINT `school_ibfk_1` FOREIGN KEY (`teacher_in_charge`) REFERENCES `teacher` (`teacher_file`),
  CONSTRAINT `school_ibfk_2` FOREIGN KEY (`style_id`) REFERENCES `style` (`id_style`) ON DELETE CASCADE,
  CONSTRAINT `school_ibfk_3` FOREIGN KEY (`sede`) REFERENCES `sede` (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'shen xing lin',1,2,1),(2,'tien long hu',2,2,3),(4,'she quan',5,5,4),(6,'shuan pei tou',6,11,5),(7,'long hua',7,4,7),(12,'zhi chuan',14,15,13),(13,'tao',13,15,14),(14,'tien tai chien',12,12,15),(15,'chuen',11,11,8);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `id_sede` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `adress` varchar(75) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'centro 12 de octubre bis','12 de octubre 44',NULL),(2,'Centro cultural cane','miguel cane 1652',NULL),(3,'Club deportivo quilmes','1 de mayo 325',NULL),(4,'Club 12 de octubre','12 de octubre 432',NULL),(5,'Club Ameghino','pellegrini 1002',NULL),(6,'Club campal','guido 100',NULL),(7,'Centro comunitario Qui','entre rios 1342',NULL),(8,'Colegio XII','puan 2312',NULL),(10,'Plaza Los Rosales','pringles 23',NULL),(12,'GYM Titan','irigoyen 100',NULL),(13,'GYM mitre','mitre 12',NULL),(14,'Sociedad de fomento Lopez','vicente lopez 521',NULL),(15,'GYM Gigantes','rodolfo lopez 476',NULL);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_file` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(75) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `adress` varchar(75) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `graduation` int DEFAULT NULL,
  `teacher_in_charge` int DEFAULT NULL,
  PRIMARY KEY (`student_file`),
  KEY `graduation` (`graduation`),
  KEY `teacher_in_charge` (`teacher_in_charge`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`graduation`) REFERENCES `graduation` (`id_graduation`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`teacher_in_charge`) REFERENCES `teacher` (`teacher_file`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Carla Palermo','1986-05-25','Av San Martï¿½n 491','11-38107145','joshua@gmail.com',2,1),(2,'Manuel Alejandro','1995-05-26','Salta 431','11-29002331','manuel@gmail.com',2,1),(4,'Sara Crespo','2009-02-28','Av Bolivia 2602','11-23425675','sara@gmail.com',3,3),(5,'Ivan Muï¿½oz','2018-05-29','Avenida de La Costa Brigadier Estanislao Lï¿½pez 2550','11-81073460','ivan@gmail.com',6,1),(6,'Juana Muï¿½oz','2015-06-30','Avenida de La Costa Brigadier Estanislao Lï¿½pez 2550','11-23459012','juana@gmail.com',6,1),(7,'Valentina Alvarado','2000-03-31','Lima 278','11-42804577','valentina@gmail.com',7,6),(8,'Jerï¿½nimo Suï¿½rez','1997-07-01','Cordoba 33','11-12122433','jeronimo@gmail.com',1,15),(9,'Esteban Munguï¿½a Segundo','1995-01-02','Av Colon 1506','11-38107145','esteban@gmail.com',4,15),(10,'Sergio Lucero','1996-08-03','Obispo 323','11-29102334','sergio@gmail.com',2,8),(11,'Valentina Olvera','2015-06-30','Junin 357','11-32678759','valentina1@gmail.com',4,8),(12,'Irene Casanova','2000-03-31','24 de Septiembre 387','11-23425973','irene@gmail.com',4,6),(13,'Axel Razo','1997-07-01','Av Colon 3836','11-81073461','axel@gmail.com',8,3),(14,'Joaquï¿½n Gallardo','1995-01-02','Rodriguez Pena 1967','11-23459212','joaquin@gmail.com',1,1),(15,'Miguel ï¿½ngel Rosario','1996-08-03','Belgrano 663','11-42804677','miguel@gmail.com',1,1),(16,'Mirian gel Rosario','1996-08-03','Belgrano 663','11-42804677','mili@gmail.com',1,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style` (
  `id_style` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_style`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (2,'puño sur','mano cuchillo'),(3,'mantis','apariencia'),(4,'tigre','apariencia'),(5,'dragon','apariencia'),(6,'doble golpe','golpe continuo'),(7,'borracho','apariencia'),(8,'grulla','apariencia'),(9,'perro','apariencia'),(10,'pollera','estilo de mujeres'),(11,'aguila','apariencia'),(12,'nanquan','estilo del sur'),(13,'chanquan','estilo del norte'),(14,'taichi','estilo interno'),(15,'taichi chen','estilo interno'),(16,'leon dorado','apariencia'),(17,'serpiente-borracha','estilo interno'),(18,'pez dorado','estilo sureño'),(19,'camada','coloquio'),(20,'tai chi wudang','variante del tai chi chuan estilo yang'),(21,'puño volador','variante del puño norte');
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_file` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(25) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `adress` varchar(75) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `graduation` int DEFAULT NULL,
  `master` int DEFAULT NULL,
  PRIMARY KEY (`teacher_file`),
  KEY `graduation` (`graduation`),
  KEY `master` (`master`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`graduation`) REFERENCES `graduation` (`id_graduation`),
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`master`) REFERENCES `master` (`master_file`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Miguel Vega','1980-03-11','11-38107156','Zabala 1837','miguel@gmail.com',14,1),(2,'Tomas Riojas','1978-10-09','11-93107157','Buenos Aires 930','tomas@gmail.com',14,1),(3,'Bautista Nazario Hijo','1982-12-21','11-78507158','Arribeï¿½os 3676','bautista@gmail.com',14,5),(4,'Sophie Gutiï¿½rrez','1989-02-23','11-38607159','Cassanello 1086','sophie@gmail.com',14,5),(5,'Montserrat Mendoza','1996-06-13','11-28907160','AV.VELEZ SARSFIELD 4621','montserrat@gmail.com',14,3),(6,'Damiï¿½n Soria','1990-02-10','11-39907161','Av Corrientes 1334','damian@gmail.com',14,3),(7,'Aarï¿½n Zï¿½ï¿½iga','1986-02-01','11-38107160','25 de Mayo 2676','aaron@gmail.com',14,14),(8,'Alonso Mares','1995-05-19','11-38107169','25 de Mayo 2697','alonso@gmail.com',14,15),(9,'Marï¿½a Josï¿½ Tello','1993-03-31','11-38107164','San Martï¿½n 2898','maria@gmail.com',14,15),(10,'Anthony Tapia','1982-10-15','11-38108165','9 de Julio 674','anthony@gmail.com',14,8),(11,'Valery Colï¿½n','1982-09-28','11-38107966','Av Josï¿½ Marï¿½a Moreno 1483','valery@gmail.com',14,9),(12,'Adriana Nevï¿½rez','1994-03-03','11-88707160','Av Santa Fe 4636','adriana@gmail.com',14,6),(13,'Mateo Lï¿½pez','1990-08-12','11-38107168','Defensa 855','mateo@gmail.com',14,7),(14,'Adriï¿½n Caldera','1999-09-04','11-38707160','Rivadavia 724','adrian@gmail.com',14,2),(15,'Emmanuel Ruvalcaba','1982-03-29','11-36607170','Lavalle 757','emmanuel@gmail.com',14,2);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23 22:16:49
