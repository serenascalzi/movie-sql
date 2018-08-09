# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: movielens
# Generation Time: 2018-08-08 22:42:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table actors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `actors`;

CREATE TABLE `actors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `charName` varchar(255) DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL,
  `birthDate` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;

INSERT INTO `actors` (`id`, `name`, `charName`, `movieID`, `birthDate`)
VALUES
	(1,'Mark Hamill','Luke Skywalker',260,9251951),
	(2,'Carrie Fisher','Leia Organa',260,10211956),
	(3,'Harrison Ford','Han Solo',260,7131942),
	(4,'Alec Guinness','Obi-Wan Kenobi',260,4021914),
	(5,'Anthony Daniels','C-3PO',260,2211946),
	(6,'Kenny Baker','R2-D2',260,8241934),
	(7,'Peter Mayhew','Chewbacca',260,5191944),
	(8,'Frank Oz','Yoda',260,5251944),
	(9,'Billy Dee Williams','Lando Calrissian',260,4061937),
	(10,'James Earl Jones','Darth Vader',260,1171931),
	(11,'Mark Hamill','Luke Skywalker',1196,9251951),
	(12,'Carrie Fisher','Leia Organa',1196,10211956),
	(13,'Harrison Ford','Han Solo',1196,7131942),
	(14,'Alec Guinness','Obi-Wan Kenobi',1196,4021914),
	(15,'Anthony Daniels','C-3PO',1196,2211946),
	(16,'Kenny Baker','R2-D2',1196,8241934),
	(17,'Peter Mayhew','Chewbacca',1196,5191944),
	(18,'Frank Oz','Yoda',1196,5251944),
	(19,'Billy Dee Williams','Lando Calrissian',1196,4061937),
	(20,'James Earl Jones','Darth Vader',1196,1171931),
	(21,'Mark Hamill','Luke Skywalker',1210,9251951),
	(22,'Carrie Fisher','Leia Organa',1210,10211956),
	(23,'Harrison Ford','Han Solo',1210,7131942),
	(24,'Alec Guinness','Obi-Wan Kenobi',1210,4021914),
	(25,'Anthony Daniels','C-3PO',1210,2211946),
	(26,'Kenny Baker','R2-D2',1210,8241934),
	(27,'Peter Mayhew','Chewbacca',1210,5191944),
	(28,'Frank Oz','Yoda',1210,5251944),
	(29,'Billy Dee Williams','Lando Calrissian',1210,4061937),
	(30,'James Earl Jones','Darth Vader',1210,1171931);

/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
