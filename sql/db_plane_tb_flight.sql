CREATE DATABASE  IF NOT EXISTS `db_plane` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_plane`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: db_plane
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `tb_flight`
--

DROP TABLE IF EXISTS `tb_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_flight` (
  `id` varchar(30) NOT NULL,
  `com_id` varchar(10) DEFAULT NULL,
  `depdate` time DEFAULT NULL,
  `reachdate` time DEFAULT NULL,
  `deport` varchar(10) DEFAULT NULL,
  `reachport` varchar(10) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_fk_idx` (`com_id`),
  KEY `deport_fk_idx` (`deport`),
  KEY `report_fk_idx` (`reachport`),
  CONSTRAINT `com_fk` FOREIGN KEY (`com_id`) REFERENCES `tb_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deport_fk` FOREIGN KEY (`deport`) REFERENCES `tb_airport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `report_fk` FOREIGN KEY (`reachport`) REFERENCES `tb_airport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_flight`
--

LOCK TABLES `tb_flight` WRITE;
/*!40000 ALTER TABLE `tb_flight` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-16 10:47:05
