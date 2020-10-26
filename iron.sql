-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: iron
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name_en` varchar(45) DEFAULT NULL,
  `intro_en` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_img`
--

DROP TABLE IF EXISTS `blog_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(1024) DEFAULT NULL,
  `big` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_img`
--

LOCK TABLES `blog_img` WRITE;
/*!40000 ALTER TABLE `blog_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `detail` text,
  `namee` text,
  `cover` text,
  `carousel` text,
  `is_index` tinyint(1) DEFAULT '0',
  `detail_en` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (65,'q','q','q','CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce',NULL,1,'CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce'),(66,'q','q','q','CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce',NULL,1,'CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ceCategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce'),(67,'q','q','q','CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce',NULL,1,'CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ceCategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce'),(68,'q','q','q','CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce',NULL,1,'CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ceCategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce'),(69,'q','q','q','CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce',NULL,1,'CategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ceCategoriesCover_Sat Sep 12 10:19:10 CST 2020c677b2d6-990d-4b57-8d92-7666763907ce');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_img`
--

DROP TABLE IF EXISTS `categories_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_img`
--

LOCK TABLES `categories_img` WRITE;
/*!40000 ALTER TABLE `categories_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (5,'QQ','94463247@qq.com'),(6,'微信','17166843885'),(7,'网易云','94463247@qq.com');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(2012) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_attr`
--

DROP TABLE IF EXISTS `home_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_attr`
--

LOCK TABLES `home_attr` WRITE;
/*!40000 ALTER TABLE `home_attr` DISABLE KEYS */;
INSERT INTO `home_attr` VALUES (18,'title','园艺和庭院护理工具'),(24,'content','你的健康对我们很重要!你的健康对我们很重要!你的健康对我们很重要!你的健康对我们很重要!你的健康对我们很重要!重要的我们!你的健康对我们很重要!你对我们很重要!你的健康对我们很重要!你的身体对我们很重要!你的健康对我们很重要!你的头脑'),(25,'img','HomeImgAttr_Wed Sep 09 19:59:22 CST 2020a129ff7f-185c-474d-9938-3774c0649e52'),(26,'detail_img','HomeDetailImgAttr_Wed Sep 09 20:02:13 CST 202046f16c53-86c8-4f46-9c70-e97f66429d70'),(27,'detail_img_link','http://www.baidu.com'),(28,'email','94463247@qq.com'),(29,'twitter','https://twitter.com/'),(30,'youtube','https://www.youtube.com/'),(31,'facebook','https://www.facebook.com/'),(32,'linked','https://linked.com/'),(33,'followUs','http://www.baidu.com'),(34,'foot','Copyright © 2006-2016 SHOPYY INC. All Rights Reserved.ssss'),(35,'title_en','Gardening & Yard Care Toolssssss'),(36,'content_en','Gardening & Yard Care Toolsssss');
/*!40000 ALTER TABLE `home_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeimg`
--

DROP TABLE IF EXISTS `homeimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeimg`
--

LOCK TABLES `homeimg` WRITE;
/*!40000 ALTER TABLE `homeimg` DISABLE KEYS */;
/*!40000 ALTER TABLE `homeimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'root','root','root');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `name_en` text,
  `intro` text,
  `intro_en` text,
  `simple_intro` text,
  `simple_intro_en` text,
  `prize` double DEFAULT NULL,
  `max_prize` int(10) unsigned DEFAULT '0',
  `cid` int(11) unsigned DEFAULT NULL,
  `cover` text,
  `model` text,
  `model_en` text,
  `access_total` int(11) unsigned DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  `piece` int(10) DEFAULT '0',
  `three_d` text,
  `is_new` tinyint(1) DEFAULT '0',
  `is_hot` tinyint(1) DEFAULT '0',
  `amazon` text,
  `weight` int(11) DEFAULT NULL,
  `prize_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (632,'1','1','1','1','undefined','undefined',1,NULL,65,'ProductCover_Sat Sep 12 14:54:34 CST 20209b556553-b764-4e0f-a0dc-0fb00a547671','1','1',NULL,NULL,'2020-09-12 06:55:25',0,4111111,' ',0,0,'http://11',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attr`
--

DROP TABLE IF EXISTS `product_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `name_en` varchar(45) DEFAULT NULL,
  `value_en` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attr`
--

LOCK TABLES `product_attr` WRITE;
/*!40000 ALTER TABLE `product_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail_img`
--

DROP TABLE IF EXISTS `product_detail_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail_img`
--

LOCK TABLES `product_detail_img` WRITE;
/*!40000 ALTER TABLE `product_detail_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_detail_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_img`
--

DROP TABLE IF EXISTS `products_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_img`
--

LOCK TABLES `products_img` WRITE;
/*!40000 ALTER TABLE `products_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_img` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-25 11:43:17
