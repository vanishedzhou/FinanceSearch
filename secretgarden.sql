CREATE DATABASE  IF NOT EXISTS `secretgarden` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `secretgarden`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: secretgarden
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_updated_by_userid_idx` (`updated_by`),
  CONSTRAINT `fk_updated_by_userid` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'i love lmy~','2016-04-13 13:39:52.792000',1),(4,'new added record for test','2016-04-13 13:46:03.708000',2),(5,'test zzy love lmy','2016-04-14 13:46:03.708000',2),(9,'吵嘴要让着娘娘','2016-04-20 12:03:03.000000',1),(10,'test zzy love lmy ver2','2016-04-20 12:05:03.000000',2),(12,'test zzy love lmy ver3','2016-04-20 14:29:05.594000',1),(13,'是我的跟班妹 >.<','2016-04-20 14:30:35.561000',1),(15,'是我的跟班妹 >.< hahaha','2016-04-22 05:44:01.801000',1),(18,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<\r\n\r\ntest','2016-04-22 06:36:20.800000',1),(19,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<','2016-04-22 06:45:58.534000',1),(20,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<\r\n\r\ntest set updated_by as lmy','2016-04-22 07:45:05.915000',2),(21,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<\r\n\r\ntest set updated_by as zzy','2016-04-22 07:45:46.672000',1),(22,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<','2016-04-22 07:46:17.785000',1),(23,'吵嘴要让着娘娘\r\n\r\n是我的跟班妹 >.<\r\n\r\n我做错事的时候，给娘娘抱下就好，娘娘不生气~我来当抱枕~\r\n\r\n以后天天帮娘娘吹头发~\r\n\r\n资金卡都归娘娘管，然后设置成大额需要手机密码，用我手机号······\r\n\r\n娘娘很容易吃醋的，要顺着她来~\r\n\r\n保证不摸别人的小手 >.<\r\n\r\nlmy love zzy.','2016-04-22 13:38:50.521000',2),(24,'吵嘴要让着老婆\r\n\r\n是老公的跟班妹~\r\n\r\n老公做错事的时候，给老婆抱下就好，老婆不生气~老公来当抱枕~\r\n\r\n以后天天帮老婆吹头发~\r\n\r\n资金卡都归老婆管，然后设置成大额需要手机密码，用老公手机号······\r\n\r\n老婆很容易吃醋的，要顺着她来~\r\n\r\n老公保证不摸别人的小手~','2016-05-09 06:36:32.653000',1),(25,'testing...','2016-05-09 07:43:29.272000',1);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lmy','ilovezhoushuai','Wife',0),(2,'zzy','metoolovezhoushuai','Husband',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'secretgarden'
--

--
-- Dumping routines for database 'secretgarden'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-23 12:25:07
