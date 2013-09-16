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
-- Table structure for table `tb_client`
--

DROP TABLE IF EXISTS `tb_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_client` (
  `id` varchar(30) NOT NULL,
  `ct_id` varchar(7) DEFAULT NULL,
  `id_num` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `address` varchar(256) NOT NULL,
  `amount` decimal(7,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_client`
--

LOCK TABLES `tb_client` WRITE;
/*!40000 ALTER TABLE `tb_client` DISABLE KEYS */;
INSERT INTO `tb_client` VALUES ('001','123','430581199209075537','258456','13527443907','NanoJeoMichael@hotmail.com','Nano',22,'男','重庆理工大学',0.0),('1213','123','4156465','546465','4653153','456465','136541',21,'on','xxx',0.0),('13156','123','4165465','132456','56416146','465465','1634165',31,'on','213',0.0),('321','123','2341','1241','341243','312432','nano',21,'on','xxx',0.0),('nanomichael','123','430581199209075537','123456','15923214110','328846994@qq.com','Nano.Michael',21,'on','',0.0),('woca','123','314','8080','8008','0898-','蒋开建',43,'on','xxx',0.0);
/*!40000 ALTER TABLE `tb_client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-16 10:47:04
