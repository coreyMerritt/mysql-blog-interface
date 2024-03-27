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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (4,'2024-02-02 23:22:53','So I’ve read that one of the better ways to get your foot in the door in the tech industry is to make your educational process and experience more public—blogging. I was skeptical at first; “it sounds outdated” was my first thought. However, upon giving it a week or two of my time, I think it doesn’t matter that blogging is a bit outdated as a form of  education and entertainment, for the use case of documenting my learning process I think it’s a plenty good enough choice. So here we go. I’m starting to actually do some relevant classes now rather than “Anatomy and Physiology.” Up until now I’ve pretty much just been grinding through the gen ed classes that need to get done, working on some really basic Python & Java, and probably most importantly at this stage in my development, my physical health. I picked up distance running back in October and it’s been overwhelmingly helpful. I’ve been running about 25 miles per week and even got a couple half-marathons under my belt. It took me a long time to understand how taking care of my body can also help me to keep a clear mind, but I’m actually seeing results now. It’s nice. As I move into engineering-adjacent classes, I’ll be attempting—where reasonable—to build some sort of practical skills/projects along side the classes. So for example, I just started really working on “Data Management - Applications,” or more accurately “Intermediate SQL and Database Management.” So the personal project I’ll be building alongside this class is (part of) this blog! I’ve just spent the better part of 4 hours setting up and configuring a MySQL Database in a VM. There’s absolutely no reason I needed to use VM for this, I actually already had a local MySQL DB on my Windows box, but I really need the Linux experience so I think part of the process right now is doing hard things just for the sake of doing hard things. As I make entries now they’re just in the terminal and going directly to the DB. There’s no front end yet which is quite odd, but I guess that’s part of the fun. I’ve also got some other ideas I want to bring to life in the next few months. I have this problem where I often build skills and/or knowledge, but then in the coming days or weeks I have no practical problem that demands those skills or that knowledge, and so it fades away. I’d like to come up with some sort of solution that I work into my routine a few times a week that forces me to use those skills—kind of like a self imposed quiz, but that I can continuously fill with things that I want to retain in the long term. I’m not exactly sure what the applied side of that looks like yet, but I really need a solution to this problem.'),(5,'2024-02-16 13:58:47','Over the past couple weeks I\'ve been deploying MySQL servers locally, messing around in SSMS and DBeaver, learning a little bit of Docker, and grinding through some academic SQL practice tools, it\'s been a lot of fun. Many of these tools seem to focus heavily on reading data from databases rather than writing data to them or editing them which is causing me a bit of trouble filling in the gaps, but at this point I can essentially create read queries in my sleep, so that’s a plus. Probably a couple more weeks and then I can move on to other skills.'),(6,'2024-03-12 20:34:52','The focus of this month is Version Control aka Git! I\'ve been using git religiously for a little over a week and I\'ve been building a python project called rpete to pratice. To introduce rpete I\'ll have to go on a little bit of a rant -- competitive gaming demanded a long time ago that I adjusted my keyboard\'s repeat rate in the windows registry settings to accomodate. That\'s all fine except skip ahead to now and I\'m very acustomed to this a-typical very sensitive repeat rate. Trying to type or code with traditional environment settings just feels like I\'m in quicksand. The worst part is when I move to a new OS like Ubuntu the method for adjusting those settings is different and it\'s infuriating to try to match up the repeat rate by playing around with arbitrary numbers. Enter rpete -- a lightweight little python program that I just got into stable shape today that\'s designed to tell you what your repeat rate is in miliseconds in almost any operating system or machine. I\'ll be using this tool tomorrow to sync up my settings, and I learned plenty of python, git, and github skills along the way.'),(13,'2024-03-26 18:35:56','Version Control is officially wrapped up, feeling relatively good about my git skills now, and wow it makes a surprising amount of sense why people do things this way--extremely powerful and very simple to start using. Over the past week or so I\'ve been learning the absolute basic 101 of a lot of different technologies to prep for a potential role as a generalist at an engineering company. It\'s been a lot of fun and the hardest part by a mile is trying to find that proper stopping point before I\'m down the rabbit hole. Tech I\'ve been learning the basics of are: Kickstart (ks), Cloud-Init, Docker-Compose, APIs, and a couple specific Python libraries. On the to-do list is: K8s, node.js, Angular, and Ansible. While juggling this intimidating work to-do list I\'ve also begun learning C++ for school. I learned basic C++ syntax and functionality back when I was like 16, so relearning this is almost nostalgic. C++ is something I\'ll obviously use a lot in my career so I\'m trying my damndest to really interalize this one even more than usual. April will really be the month of C++ above all else I suspect--and I look forward to really getting my hands dirty with this one. Should be a lot of fun.'),(19,'2024-03-27 15:25:07','I\'ve been having this issue regarding how I interface with the MySQL database for these blog entries. On one hand I could use some high level software like SSMS, I did do this a bit back when I first started, but something feels so impersonal about it, so detatched from the actual technology. What I\'ve been doing instead is actually going into the DBMS through the command-line and and doing that\'s the way, and while that satisfies my silly desire for low level interaction, it can be a bit painful. Doing things this way means every single time I\'m manually signing into the dbms system, manually entering the database name, and manually writing queries. That last one is really the worst part and not for the reason you\'d think, the SQL itself isn\'t the problem, but rather entering these entries was. If you\'ve never written a multi-paragraph plain english entry into a dbms with SQL around it, let me tell you it\'s not pretty. The system isn\'t set up to wrap text properly and god forbid you had a type somewhere in the syntax and have to rewrite the whole thing. For one of my entries in feb I even wrote the whole thing in gedit and c/p\'d it into the system. It worked I guess but yikes. So yesterday and a bit of today I put together some Bash script tools that I can use to cleanly interface with the database to handle these entries going forward. High level enough to be practical to use, low level enough to satisfy my inner nerd; win/win. This was a fun little endeavor and I\'m fairly happy with the results.');
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

-- Dump completed on 2024-03-27 15:25:27
