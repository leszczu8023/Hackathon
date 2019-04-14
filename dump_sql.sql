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
  `typeActivity` varchar(64) NOT NULL,
  `activityId` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) NOT NULL,
  `POIname` varchar(64) NOT NULL,
  PRIMARY KEY (`activityId`) USING BTREE,
  UNIQUE KEY `activityId` (`activityId`),
  UNIQUE KEY `typeActivity_4` (`typeActivity`,`activityId`),
  KEY `activityId_2` (`activityId`),
  KEY `activityId_3` (`activityId`) USING BTREE,
  KEY `typeActivity_2` (`typeActivity`),
  KEY `activityId_4` (`activityId`),
  KEY `typeActivity_3` (`typeActivity`,`activityId`),
  FULLTEXT KEY `typeActivity` (`typeActivity`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_activities`
--

LOCK TABLES `hack_activities` WRITE;
/*!40000 ALTER TABLE `hack_activities` DISABLE KEYS */;
INSERT INTO `hack_activities` VALUES ('Bieganie',1,1,''),('łucznictwo',3,0,''),('lekkoatletyka',4,0,''),('badminton',5,0,''),('baseball',6,0,''),('koszykówka',7,0,''),('bilard',8,0,''),('kulturystyka',9,0,''),('boks',10,0,''),('kajakarstwo',13,0,''),('sporty walki',14,0,''),('kolarstwo',16,0,''),('taniec',17,0,''),('rzutki',18,0,''),('nurkowanie',20,0,''),('szermierka',21,0,''),('łyżwiarstwo figurowe',22,0,''),('piłka nożna',23,0,''),('golf',24,0,''),('gimnastyka',25,0,''),('piłka ręczna',27,0,''),('hokej',31,0,''),('judo - dżudo',32,0,''),('karate',33,0,''),('rugby',38,0,''),('jazda na deskorolce',39,0,''),('łyżwiarstwo',40,0,''),('narciarstwo',41,0,''),('skoki narciarskie',42,0,''),('jazda na snowboardzie',43,0,''),('squash',44,0,''),('pływanie',46,0,''),('tenis stołowy',47,0,''),('tenis ziemny',48,0,''),('siatkówka',49,0,''),('narciarstwo wodne',51,0,''),('sporty wodne',52,0,''),('podnoszenie ciężarów',54,0,''),('windsurfing',55,0,''),('zapasy',56,0,''),('yoga - joga',57,0,'');
/*!40000 ALTER TABLE `hack_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_activities_locations`
--

DROP TABLE IF EXISTS `hack_activities_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_activities_locations` (
  `activityId` int(11) NOT NULL,
  `location` varchar(64) NOT NULL,
  `locationName` varchar(512) NOT NULL,
  PRIMARY KEY (`activityId`,`location`),
  CONSTRAINT `hack_activities_locations_ibfk_1` FOREIGN KEY (`activityId`) REFERENCES `hack_activities` (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_activities_locations`
--

LOCK TABLES `hack_activities_locations` WRITE;
/*!40000 ALTER TABLE `hack_activities_locations` DISABLE KEYS */;
INSERT INTO `hack_activities_locations` VALUES (1,'54.354750,18.543889',''),(4,'aleja Grunwaldzka 244, 80-001 Gdańsk',''),(4,'aleja Grunwaldzka 244, 80-314 Gdańsk',''),(4,'Traugutta 29, 80-221 Gdańsk',''),(5,'Juliusza Słowackiego 21, 80-257 Gdańsk',''),(5,'Szklana Huta 7, 80-529 Gdańsk',''),(5,'Załogowa 1, 80-557 Gdańsk',''),(7,'aleja Zwycięstwa 51, 80-208 Gdańsk',''),(7,'Jelitkowski Dwór 2, 80-365 Gdańsk',''),(7,'Macieja Kamieńskiego, 80-980 Gdańsk',''),(8,'Gdyńska 4, 80-340 Gdańsk',''),(8,'Hynka 69, 80-465 Gdańsk',''),(8,'Plac Dominikański 7, 80-844 Gdańsk',''),(9,'Jaśkowa Dolina 105, 80-286 Gdańsk',''),(9,'Subisława 37, 80-354 Gdańsk',''),(10,'Niterów 31B, 80-001 Gdańsk',''),(10,'Traugutta 84, 80-229 Gdańsk',''),(10,'Zeusa 12/5, 80-180 Gdańsk',''),(13,'Żabi Kruk 15, 80-822 Gdańsk',''),(13,'Załogowa 1, 80-557 Gdańsk',''),(14,'Traugutta 84, 80-229 Gdańsk',''),(14,'Wyzwolenia 8, 80-001 Gdańsk',''),(16,'54.364166, 18.539128',''),(17,'aleja Grunwaldzka 301, 80-236 Gdańsk',''),(18,'Okopowa 7, 80-033 Gdańsk',''),(20,'Myśliwskie Wzgórze 4/9, 80-283 Gdańsk',''),(20,'Władysława Pniewskiego 7/1, 80-246 Gdańsk',''),(21,'VII Dwór 7, 80-301 Gdańsk',''),(22,'aleja Grunwaldzka 470 ,80-309 Gdańsk',''),(23,'Dąbrowszczaków 13, 80-365 Gdańsk',''),(23,'Uczniowska 22, 80-531 Gdańsk',''),(23,'Zaspa, 80-001 Gdańsk',''),(24,'Postołowo, 83-042 Ełganowo',''),(24,'Przodkowska 63, 83-304 Tokary',''),(25,'Kazimierza Górskiego 1, 80-336 Gdańsk',''),(25,'Piotra Czajkowskiego 1, 80-169 Gdańsk',''),(27,'Czarny Dwór 6, 80-365 Gdańsk',''),(27,'Kołobrzeska 77, 80-396 Gdańsk',''),(27,'Startowa 9, 80-461 Gdańsk',''),(31,'Al. Grunwaldzka 470, 80-309 Gdańsk',''),(31,'aleja Grunwaldzka 470, 80-309 Gdańsk',''),(32,'Józefa Czyżewskiego, 80-001 Gdańsk',''),(32,'Juliusza Słowackiego 101, 80-281 Gdańsk',''),(32,'Wodnika 57, 80-299 Gdańsk',''),(33,'Adama Mickiewicza 6A, 80-426 Gdańsk',''),(33,'Aksamitna 4, 80-001 Gdańsk',''),(38,'aleja Grunwaldzka 244, 80-001 Gdańsk',''),(39,'54.413851, 18.603414',''),(44,'Kazimierza Górskiego 1, 80-336 Gdańsk',''),(44,'Załogowa 17, 80-557 Gdańsk',''),(46,'Azaliowa 18, 80-177 Gdańsk',''),(46,'Heleny Marusarzówny 10, 80-288 Gdańsk',''),(46,'Subisława 22, 80-354 Gdańsk',''),(47,'aleja Rzeczypospolitej 1D/54, 80-369 Gdańsk',''),(47,'Meissnera 3, 80-462 Gdańsk',''),(48,'aleja Legionów 7, 80-441 Gdańsk',''),(48,'Dąbrowszczaków 13, 80-365 Gdańsk',''),(49,'aleja Grunwaldzka 244, 80-314 Gdańsk',''),(49,'Kołobrzeska 61, 80-396 Gdańsk',''),(51,'aleja Zwycięstwa 51, 80-208 Gdańsk',''),(52,'Jantarowa, 80-341 Gdańsk',''),(54,'Opolska 6, 80-395 Gdańsk',''),(55,'Hestii 3, 81-701 Sopot',''),(56,'Subisława 22, 80-354 Gdańsk','');
/*!40000 ALTER TABLE `hack_activities_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_activities_to_activities`
--

DROP TABLE IF EXISTS `hack_activities_to_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_activities_to_activities` (
  `parent_activity` int(11) NOT NULL,
  `related1` int(11) NOT NULL,
  `related2` int(11) NOT NULL,
  `related3` int(11) NOT NULL,
  `related4` int(11) NOT NULL,
  `related5` int(11) NOT NULL,
  PRIMARY KEY (`parent_activity`,`related1`,`related2`,`related3`,`related4`,`related5`),
  UNIQUE KEY `parent_activity` (`parent_activity`),
  KEY `related1` (`related1`),
  KEY `related2` (`related2`),
  KEY `related3` (`related3`),
  KEY `related4` (`related4`),
  KEY `related5` (`related5`),
  CONSTRAINT `hack_activities_to_activities_ibfk_1` FOREIGN KEY (`parent_activity`) REFERENCES `hack_activities` (`activityId`),
  CONSTRAINT `hack_activities_to_activities_ibfk_2` FOREIGN KEY (`related1`) REFERENCES `hack_activities` (`activityId`),
  CONSTRAINT `hack_activities_to_activities_ibfk_3` FOREIGN KEY (`related2`) REFERENCES `hack_activities` (`activityId`),
  CONSTRAINT `hack_activities_to_activities_ibfk_4` FOREIGN KEY (`related3`) REFERENCES `hack_activities` (`activityId`),
  CONSTRAINT `hack_activities_to_activities_ibfk_5` FOREIGN KEY (`related4`) REFERENCES `hack_activities` (`activityId`),
  CONSTRAINT `hack_activities_to_activities_ibfk_6` FOREIGN KEY (`related5`) REFERENCES `hack_activities` (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_activities_to_activities`
--

LOCK TABLES `hack_activities_to_activities` WRITE;
/*!40000 ALTER TABLE `hack_activities_to_activities` DISABLE KEYS */;
INSERT INTO `hack_activities_to_activities` VALUES (1,4,46,16,13,41),(3,4,5,18,49,13),(5,24,48,47,18,8),(13,1,3,4,51,52),(16,1,13,39,43,42),(17,22,25,57,46,40),(18,8,24,47,5,21),(21,14,10,3,56,44),(22,17,57,40,25,41),(23,49,44,7,27,4),(25,4,46,16,13,3),(27,6,38,7,31,44),(31,27,56,6,38,14),(32,33,14,10,56,31),(38,31,56,6,21,27),(47,48,18,8,24,31),(54,9,4,56,14,1),(55,52,51,20,46,40),(56,54,10,9,38,14),(57,17,22,20,18,42);
/*!40000 ALTER TABLE `hack_activities_to_activities` ENABLE KEYS */;
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
  CONSTRAINT `hack_user_activities_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `hack_users` (`uid`),
  CONSTRAINT `hack_user_activities_ibfk_2` FOREIGN KEY (`activityId`) REFERENCES `hack_activities` (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_user_activities`
--

LOCK TABLES `hack_user_activities` WRITE;
/*!40000 ALTER TABLE `hack_user_activities` DISABLE KEYS */;
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

-- Dump completed on 2019-04-14  4:01:11
