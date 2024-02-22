-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: blog_entries
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
  `entry_number` int NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `entry` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`entry_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (4,'2024-02-02 23:22:53','\nSo I’ve read that one of the better ways to get your foot in the door in the tech industry is to make your educational process and experience more public—blogging. I was skeptical at first, “it sounds outdated” was my first thought. However, upon giving it a week or two of thought, I think it doesn’t matter that blogging is a bit outdated as a form of education and entertainment, for the use case of documenting my learning process I think it’s a great choice. So here we go.\n\nI’m starting to actually do some relevant classes now rather than… You know, “Anatomy and Physiology I.” Up until now I’ve pretty much just been grinding through the general education classes that need to get done, working on some really basic Python and Java, and probably most importantly at this stage in my development, my physical health. I picked up distance running back in October and it’s been overwhelmingly helpful. I’ve been running about 25 miles per week and even got a couple half-marathons under my belt. It took me a long time to understand how taking care of my body can also help me to keep a clear mind, but I’m actually seeing results now. It’s nice.\n\nAs I move into genuinely helpful classes, I’ll be attempting—where reasonable—to build some sort of practical skills and/or project alongside the class. So for example, I just started really working on is “Data Management – Applications,” or more accurately “Intermediate SQL and Database Management.” So the personal project I’ll be building alongside this class is (part of) this blog. I’ve just spent the better part of 4 hours setting up a Linux VM to get a MySQL Database up, running, and structured for some blog entries. There’s absolutely no reason I needed to use a Linux VM for this, I actually already had a local MySQL DB on my Windows box, but I really need the Linux experience so I think part of the process right now is doing hard things just for the sake of doing hard things.\n\nAs I make entries now they’re just in the terminal and going directly to the DB, there’s no front end yet which is quite odd, but I guess that’s part of the fun. I’ve also got some other ideas I want to bring to life in the next few months. I have this problem where I often build skills and/or knowledge, but then in the coming days or weeks I have no practical problem that demands those skills or that knowledge, and so it fades away. I’d like to come up with some sort of solution that I work into my routine a few times a week that forces me to use those skills—kind of like a self-imposed quiz, but that I can continuously fill with things that I want to retain in the long term. I’m not exactly sure what the applied side of that looks like yet, but I really need a solution to this problem.'),(5,'2024-02-16 13:58:47','Over the past couple weeks I\'ve been deploying MySQL servers locally, messing around in SSMS and DBeaver, learning a little bit of Docker, and grinding through some academic SQL practice tools, it\'s been a lot of fun. Many of these tools seem to focus heavily on reading data from databases rather than writing data to them or editing them which is causing me a bit of trouble filling in the gaps, but at this point I can essentially create read queries in my sleep, so that’s a plus. Probably a couple more weeks and then I can move on to other skills.');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-22 11:11:21
