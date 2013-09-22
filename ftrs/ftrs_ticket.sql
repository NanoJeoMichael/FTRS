CREATE DATABASE  IF NOT EXISTS `ftrs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ftrs`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: ftrs
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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `startCity` varchar(45) DEFAULT NULL,
  `lastCity` varchar(45) DEFAULT NULL,
  `goDate` date DEFAULT NULL,
  `airlineCode` varchar(50) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `seatType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cc_t_idx` (`startCity`),
  KEY `ccc_t_idx` (`lastCity`),
  KEY `airccc_fk_idx` (`airlineCode`),
  CONSTRAINT `airccc_fk` FOREIGN KEY (`airlineCode`) REFERENCES `airlinetype` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ccc_t` FOREIGN KEY (`lastCity`) REFERENCES `city` (`Abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cc_t` FOREIGN KEY (`startCity`) REFERENCES `city` (`Abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-22 12:20:11
