CREATE DATABASE  IF NOT EXISTS `management` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `management`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: management
-- ------------------------------------------------------
-- Server version	5.5.32-MariaDB

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
-- Table structure for table `rdrelatedcodevalue`
--

DROP TABLE IF EXISTS `rdrelatedcodevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdrelatedcodevalue` (
  `FKCodeTypeFrom` varchar(20) NOT NULL,
  `FKCodeValueFrom` varchar(20) NOT NULL,
  `FKCodeTypeTo` varchar(20) NOT NULL,
  `FKCodeValueTo` varchar(20) NOT NULL,
  `FKRelatedCodeID` varchar(20) NOT NULL,
  PRIMARY KEY (`FKCodeTypeFrom`,`FKCodeValueFrom`,`FKCodeTypeTo`,`FKCodeValueTo`,`FKRelatedCodeID`),
  KEY `FK_Destination` (`FKCodeTypeTo`,`FKCodeValueTo`),
  KEY `fk_relatedcodevalue_relatedcode1` (`FKRelatedCodeID`),
  CONSTRAINT `FK_Destination` FOREIGN KEY (`FKCodeTypeTo`, `FKCodeValueTo`) REFERENCES `rdcodevalue` (`FKCodeType`, `ID`),
  CONSTRAINT `fk_relatedcodevalue_relatedcode1` FOREIGN KEY (`FKRelatedCodeID`) REFERENCES `rdrelatedcode` (`RelatedCodeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Source` FOREIGN KEY (`FKCodeTypeFrom`, `FKCodeValueFrom`) REFERENCES `rdcodevalue` (`FKCodeType`, `ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdrelatedcodevalue`
--

LOCK TABLES `rdrelatedcodevalue` WRITE;
/*!40000 ALTER TABLE `rdrelatedcodevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `rdrelatedcodevalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-19 18:09:48
