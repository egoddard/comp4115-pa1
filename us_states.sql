-- MySQL dump 10.15  Distrib 10.0.15-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: us_states
-- ------------------------------------------------------
-- Server version	10.0.15-MariaDB

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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(25) DEFAULT NULL,
  `state_abbr` enum('AK','AL','AR','AZ','CA','CO','CT','DC','DE','FL','GA','HI','IA','ID','IL','IN','KS','KY','LA','MA','MD','ME','MI','MN','MO','MS','MT','NC','ND','NE','NH','NJ','NM','NV','NY','OH','OK','OR','PA','RI','SC','SD','TN','TX','UT','VA','VT','WA','WI','WV','WY') DEFAULT NULL,
  `population` int(8) DEFAULT NULL,
  `craft_breweries` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Washington','WA',6724540,201),(2,'Delaware','DE',897934,10),(3,'District of Columbia','DC',601723,9),(4,'Wisconsin','WI',5686986,90),(5,'West Virginia','WV',1852994,7),(6,'Hawaii','HI',1360301,8),(7,'Florida','FL',18801310,66),(8,'Wyoming','WY',563626,18),(9,'New Hampshire','NH',1316470,22),(10,'New Jersey','NJ',8791894,26),(11,'Tennessee','TN',6346105,35),(12,'New Mexico','NM',2059179,31),(13,'Texas','TX',25145561,96),(14,'Louisiana','LA',4533372,11),(15,'North Carolina','NC',9535483,91),(16,'North Dakota','ND',672591,6),(17,'Nebraska','NE',1826341,22),(18,'New York','NY',19378102,165),(19,'Pennsylvania','PA',12702379,108),(20,'Rhode Island','RI',1052567,8),(21,'Nevada','NV',2700551,22),(22,'Virginia','VA',8001024,61),(23,'Colorado','CO',5029196,175),(24,'Alaska','AK',710231,22),(25,'Alabama','AL',4779736,13),(26,'Arkansas','AR',2915918,13),(27,'Vermont','VT',625741,29),(28,'Illinois','IL',12830632,83),(29,'Georgia','GA',9687653,28),(30,'Indiana','IN',6483802,63),(31,'Iowa','IA',3046355,40),(32,'Oklahoma','OK',3751351,13),(33,'Arizona','AZ',6392017,47),(34,'California','CA',37253956,381),(35,'Idaho','ID',1567582,34),(36,'Connecticut','CT',3574097,23),(37,'Maine','ME',1328361,47),(38,'Maryland','MD',5773552,34),(39,'Massachusetts','MA',6547629,57),(40,'Ohio','OH',11536504,76),(41,'Utah','UT',2763885,16),(42,'Missouri','MO',5988927,49),(43,'Minnesota','MN',5303925,52),(44,'Michigan','MI',9883640,131),(45,'Kansas','KS',2853118,20),(46,'Montana','MT',989415,39),(47,'Mississippi','MS',2967297,4),(48,'South Carolina','SC',4625364,20),(49,'Kentucky','KY',4339367,15),(50,'Oregon','OR',3831074,181),(51,'South Dakota','SD',814180,10);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-01 21:22:49
