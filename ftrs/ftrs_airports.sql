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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `city` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `abc_fk_idx` (`city`),
  CONSTRAINT `abc_fk` FOREIGN KEY (`city`) REFERENCES `city` (`Abbreviation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES ('AAT','阿勒泰机场'),('AKU','阿克苏机场'),('AQG','安庆机场'),('BAV','包头机场'),('BHY','福城机场'),('BJS','南苑机场'),('BJS','首都国际机场'),('BSD','云端机场'),('CAN','新白云国际机场'),('CGD','桃花源机场'),('CGO','新郑机场'),('CGQ','长春龙嘉国际机场'),('CIF','赤峰机场'),('CIH','长治机场'),('CKG','江北国际机场'),('CSX','黄花机场'),('CTU','双流国际机场'),('CZX','奔牛机场'),('DAQ','大庆萨尔图机场'),('DAT','大同机场'),('DAX','达县机场'),('DDG','浪头机场'),('DIG','迪庆香格里拉机场'),('DLC','周水子机场'),('DLU','大理机场'),('DYG','张家界机场'),('ENH','许家坪机场'),('ERD','鄂尔多斯机场'),('FOC','长乐机场'),('FUG','阜阳机场'),('GUY','广元机场'),('HAK','美兰机场'),('HDN','邯郸机场'),('HEK','黑河机场'),('HET','白塔机场'),('HFE','骆岗机场'),('HGH','萧山国际机场'),('HJJ','怀化芷江机场'),('HLD','东山机场'),('HMI','哈密机场'),('HRB','太平机场'),('HSN','舟山普陀山机场'),('HTN','和田机场'),('HYN','黄岩机场'),('HZH','黎平机场'),('INC','河东机场'),('IQM','且末机场'),('JDZ','景德镇机场'),('JGS','井冈山机场'),('JHG','西双版纳机场'),('JJN','泉州晋江机场'),('JMU','东郊机场'),('JNG','济宁曲阜机场'),('JUZ','衢州机场'),('JZH','九黄机场'),('KCA','库车机场'),('KHG','喀什机场'),('KHN','昌北机场'),('KMG','巫家坝国际机场'),('KOW','黄金机场'),('KRL','库尔勒机场'),('KRY','克拉玛依机场'),('KWE','龙洞堡机场'),('KWL','两江国际机场'),('LDS','伊春林都机场'),('LHW','中川机场'),('LJG','丽江机场'),('LLF','永州机场'),('LUM','德宏芒市机场'),('LXA','贡嘎机场'),('LYA','北郊机场'),('LYG','白塔阜机场'),('LYI','临沂机场'),('LZH','白莲机场'),('LZO','兰田坝机场'),('MDG','海浪机场'),('MIG','绵阳机场'),('MXZ','梅县机场'),('NAO','南充机场'),('NBS','长白山机场'),('NDG','三家子机场'),('NGB','栎社机场'),('NKG','禄口国际机场'),('NNG','吴圩机场'),('NNY',''),('NNY','姜营机场'),('NTG','兴东机场'),('NZH','满洲里机场'),('OHE','漠河机场'),('PZI','攀枝花机场'),('SHA','浦东国际机场'),('SHA','虹桥国际机场'),('SHE','桃仙机场'),('SIA','咸阳机场'),('SJW','正定国际机场'),('SWA','外砂机场'),('SYM','思茅机场'),('SYX','凤凰国际机场'),('SZX','宝安国际机场'),('TAO','流亭机场'),('TCZ','驼峰机场'),('TEN','铜仁机场'),('TGO','通辽机场'),('TNA','遥墙机场'),('TSN','滨海国际机场'),('TXN','屯溪机场'),('TYN','太原武宿机场'),('URC','地窝堡国际机场'),('UYN','榆阳机场'),('WEH','大水泊机场'),('WNZ','永强机场'),('WUH','天河机场'),('WUS','武夷山机场'),('WUX','硕放机场'),('WUZ','长洲机场'),('WXN','万州机场'),('XFN','刘集机场'),('XIC','青山机场'),('XIL','锡林浩特机场'),('XMN','高崎国际机场'),('XNN','曹家堡机场'),('XUZ','观音机场'),('YBP','莱坝机场'),('YCU','运城关公机场'),('YIH','三峡机场'),('YIN','伊宁机场'),('YIW','义乌机场'),('YNJ','朝阳川机场'),('YNT','莱山机场'),('YNZ','盐城南洋机场'),('ZHA','湛江机场'),('ZUH','三灶机场');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-22 12:20:10
