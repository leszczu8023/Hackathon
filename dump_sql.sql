-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hack
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hack_activities`
--

DROP TABLE IF EXISTS `hack_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_activities` (
  `activityId` int(32) NOT NULL AUTO_INCREMENT,
  `typeActivity` varchar(256) NOT NULL,
  `points` int(11) NOT NULL,
  `POIname` varchar(64) NOT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `activityId` (`activityId`),
  KEY `activityId_2` (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_activities`
--

LOCK TABLES `hack_activities` WRITE;
/*!40000 ALTER TABLE `hack_activities` DISABLE KEYS */;
INSERT INTO `hack_activities` VALUES (1,'Bieganie',1,''),(2,'aerobik',0,''),(3,'łucznictwo',0,''),(4,'lekkoatletyka',0,''),(5,'badminton',0,''),(6,'baseball',0,''),(7,'koszykówka',0,''),(8,'bilard',0,''),(9,'kulturystyka',0,''),(10,'boks',0,''),(11,'brydż',0,''),(12,'skok na bungee',0,''),(13,'kajakarstwo',0,''),(14,'sporty walki',0,''),(15,'krykiet',0,''),(16,'kolarstwo',0,''),(17,'taniec',0,''),(18,'rzutki',0,''),(19,'rzut dyskiem',0,''),(20,'nurkowanie',0,''),(21,'szermierka',0,''),(22,'łyżwiarstwo figurowe',0,''),(23,'piłka nożna',0,''),(24,'golf',0,''),(25,'gimnastyka',0,''),(26,'rzut młotem',0,''),(27,'piłka ręczna',0,''),(28,'skok wzwyż',0,''),(29,'skok w dal',0,''),(30,'skok o tyczce',0,''),(31,'hokej',0,''),(32,'judo - dżudo',0,''),(33,'karate',0,''),(34,'biegi długodystansowe',0,''),(35,'maraton',0,''),(36,'bieg',0,''),(37,'jazda na łyżworolkach',0,''),(38,'rugby',0,''),(39,'jazda na deskorolce',0,''),(40,'łyżwiarstwo',0,''),(41,'narciarstwo',0,''),(42,'skoki narciarskie',0,''),(43,'jazda na snowboardzie',0,''),(44,'squash',0,''),(45,'pływanie na desce',0,''),(46,'pływanie',0,''),(47,'tenis stołowy',0,''),(48,'tenis ziemny',0,''),(49,'siatkówka',0,''),(50,'chód',0,''),(51,'narciarstwo wodne',0,''),(52,'sporty wodne',0,''),(53,'piłka wodna',0,''),(54,'podnoszenie ciężarów',0,''),(55,'windsurfing',0,''),(56,'zapasy',0,''),(57,'yoga - joga',0,'');
/*!40000 ALTER TABLE `hack_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_user_activities`
--

DROP TABLE IF EXISTS `hack_user_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_user_activities` (
  `userid` int(11) NOT NULL,
  `activityId` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`activityId`),
  KEY `activityId` (`activityId`),
  CONSTRAINT `hack_user_activities_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `hack_users` (`uid`),
  CONSTRAINT `hack_user_activities_ibfk_3` FOREIGN KEY (`activityId`) REFERENCES `hack_activities` (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_user_activities`
--

LOCK TABLES `hack_user_activities` WRITE;
/*!40000 ALTER TABLE `hack_user_activities` DISABLE KEYS */;
INSERT INTO `hack_user_activities` VALUES (1,1),(1,2),(1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `hack_user_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_users`
--

DROP TABLE IF EXISTS `hack_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `regTimestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(128) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `username` (`username`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_users`
--

LOCK TABLES `hack_users` WRITE;
/*!40000 ALTER TABLE `hack_users` DISABLE KEYS */;
INSERT INTO `hack_users` VALUES (1,'admin','qwerty','2019-04-13 15:27:43','admin@example.com');
/*!40000 ALTER TABLE `hack_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vUsersToActivities`
--

DROP TABLE IF EXISTS `vUsersToActivities`;
/*!50001 DROP VIEW IF EXISTS `vUsersToActivities`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vUsersToActivities` (
  `userid` tinyint NOT NULL,
  `activityType` tinyint NOT NULL,
  `POIname` tinyint NOT NULL,
  `activityPoints` tinyint NOT NULL,
  `activityId` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `regTimestamp` tinyint NOT NULL,
  `mail` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vUsersToActivities`
--

/*!50001 DROP TABLE IF EXISTS `vUsersToActivities`*/;
/*!50001 DROP VIEW IF EXISTS `vUsersToActivities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vUsersToActivities` AS select `act`.`userid` AS `userid`,`ac`.`typeActivity` AS `activityType`,`ac`.`POIname` AS `POIname`,`ac`.`points` AS `activityPoints`,`act`.`activityId` AS `activityId`,`usr`.`username` AS `username`,`usr`.`password` AS `password`,`usr`.`regTimestamp` AS `regTimestamp`,`usr`.`mail` AS `mail` from ((`hack_user_activities` `act` left join `hack_users` `usr` on((`usr`.`uid` = `act`.`userid`))) left join `hack_activities` `ac` on((`act`.`activityId` = `ac`.`activityId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-13 23:09:21
