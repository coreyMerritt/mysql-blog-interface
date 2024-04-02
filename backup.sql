-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: blog_entries
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (4,'2024-02-02 23:22:53','	So I\'ve read that one of the better ways to get your foot in the foor in the tech industry is to make your educational process and experience more public by blogging. I was skeptical at first but after a couple weeks consideration, I think for the use case of documenting my learning process I think it\'s a very reasonable choice. So here we go.\n\n	I\'m starting to actually do some relevant classes now rather than silly gen ed stuff. Up until now I\'ve pretty much just been working on some really basic Python & Java, and probably most importantly at this stage in my development, my physical health. I picked up distance running back in October and it\'s been overwhelmingly helpful. I\'ve been running about 25 miles per week and I\'ve even gotten a couple half marathons under my belt. It took me a long time to understand how taking care of my body can also help me maintain a clear mind, but I\'m actually seeing results now and it\'s nice. As I move into engineering-adjacent classes, I\'ll be attempting where reasonable to build some sort of practical skills/projects along side the classes. So for example, I just started really working on \"Data Management - Applications,\" which is essentially a SQL memorization class with a bit of database theory. So the personal project I\'ll be building alongside this class is (part of) this blog.\n\n	I\'ve just spent the better part of 4 hours setting up and configuring a MySQL Database in a VM. There\'s absolutely no reason I needed to use VMWare for this, I actually already had a local MySQL DB on my Windows machine, but I really need the Linux experience so I think part of the process right now is doing hard things just for the sake of doing hard things. As I write entries currently I\'m baking them right into the SQL in the DBMS; there\'s no front end yet, but I guess that\'s part of the fun. I\'m not even sure if this blog will all come together as a comprehensive whole but either way what I\'m doing right now is almost certainly helping me grow and I\'m having a lot of fun with it.'),(5,'2024-02-16 13:58:47','	Over the past couple weeks I\'ve been deploying MySQL servers locally, messing around in SSMS and DBeaver, learning a little bit of Docker, and grinding through some academic SQL practice tools; it\'s been a lot of fun. Many of these tools seem to focus heavily on reading data from databases rather than writing data to them or editing their structure which is causing me a bit of trouble filling in the gaps, but a this point I can essentially create read/select queries in my sleep, so that\'s a plus. Probably a couple more weeks and then I can move on to other skills.'),(6,'2024-03-12 20:34:52','	The focus of this month is Version Control aka Git. I\'ve been using git religiously for a little over a week and I\'ve been building a python project called rPete to pratice. To introduce rPete I\'ll have to go on a little bit of a rant -- competitive gaming demanded a long time ago that I adjusted my keyboard\'s repeat rate in the windows registry settings to accomodate. That\'s all fine except skip ahead to now and I\'m very acustomed to this a-typical, very sensitive repeat rate. Trying to type or code with traditional environment settings makes me feel a bit shackled. The worst part is when I move to a new OS like Ubuntu the numbers relating to those settings is different and it\'s very time consuming to try to match up the repeat rate by playing around with arbitrary numbers. Enter rPete -- a lightweight little python program that I just got into stable shape today that\'s designed to tell you what your repeat rate is measured in ms in most modern operating systems. I\'ll be using this tool tomorrow to sync up my settings, and I learned plenty of python, git, and github in the process.'),(13,'2024-03-26 18:35:56','	Version Control is officially wrapped up, I\'m feeling relatively good about my git skills at the moment, and wow does it make a surprising amount of sense why people do things this way--extremely powerful and very simple to start using. Over the past week or so I\'ve been learning the absolute basic 101 of a lot of different technologies to prep for employment opportunities. It\'s been a lot of fun and the hardest part by a mile is trying to find that proper stopping point before I\'m too far down the rabbit hole. Tech I\'ve been learning the basics of are: Kickstart, Cloud-Init, Docker-Compose, some APIs, and a couple specific Python libraries. While juggling this work to-do list I\'ve also begun learning C++ for school. I learned basic C++ syntax and functionality back when I was like 16, so relearning this is almost nostalgic. C++ is something I\'ll obviously use a lot in my career so I\'m trying my damndest to really interalize this one even more than usual. April will really be the month of C++ above all else I suspect--and I look forward to really taking a lot away from this one. Should be fun.'),(19,'2024-03-27 15:25:07','	I\'ve been having this issue regarding how I interface with the MySQL database for these blog entries. On one hand I could use some bulky comprehensive software like SSMS, I did do this a bit back when I first started, but something feels so impersonal about it, so detatched from the actual technology. What I\'ve been doing instead is actually going into the DBMS through the command-line and doing things that way, and while that satisfies some silly desire in me, it can be a bit painful. Doing things this way means every single time I am: \n	\n	- Manually signing into the DBMS.\n	- Manually entering the database name.\n	- Manually writing queries.\n	- Manually baking the entry into the query.\n\n	That last one is really the worst part of it all. If you\'ve never written a multi-paragraph plain english entry into a DBMS with SQL around it, let me tell you it\'s not pretty. The system isn\'t set up to wrap text properly and god forbid you have a typo somewhere in the syntax and have to rewrite the whole thing. For one of my entries in Feburary I even wrote the whole thing in gedit and c/p\'d it into the system. It worked I guess but yikes. So throughout yesterday and this morning I put together some Bash script tools that I can use to cleanly interface with the database to handle these entries going forward. Solid enough enough to be practical to use while still satisfying my inner nerd, nice. This was a fun little project and I\'m fairly happy with the results.'),(27,'2024-04-02 20:24:45',' Well that got out of hand. Okay I thought I was done with this mysql bash tool almost a week ago but I just kept finding little things here and there that needed to be added, and of course as I\'d do that I would introduce new bugs too, but finally I think it\'s actually in good shape and I\'m ready to call it done and move on. Over this past week I would get stuck on problems or trying to sort out some bug, go to sleep unsure, and wake up with the answer in mind. It\'s a very enjoyable and rewarding process. I\'m a bit excited to start building something new but unfortunately I\'m going to be buried in school for the next month or so I think.');
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

-- Dump completed on 2024-04-02 20:25:24
