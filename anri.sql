-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: anri
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Баннер',7,'add_banner'),(26,'Can change Баннер',7,'change_banner'),(27,'Can delete Баннер',7,'delete_banner'),(28,'Can view Баннер',7,'view_banner'),(29,'Can add Баннер (блок по 3)',8,'add_banner3'),(30,'Can change Баннер (блок по 3)',8,'change_banner3'),(31,'Can delete Баннер (блок по 3)',8,'delete_banner3'),(32,'Can view Баннер (блок по 3)',8,'view_banner3'),(33,'Can add Баннер (длинный)',9,'add_bannerl'),(34,'Can change Баннер (длинный)',9,'change_bannerl'),(35,'Can delete Баннер (длинный)',9,'delete_bannerl'),(36,'Can view Баннер (длинный)',9,'view_bannerl'),(37,'Can add Бренд',10,'add_brand'),(38,'Can change Бренд',10,'change_brand'),(39,'Can delete Бренд',10,'delete_brand'),(40,'Can view Бренд',10,'view_brand'),(41,'Can add Баннер в категориях',11,'add_catbanner'),(42,'Can change Баннер в категориях',11,'change_catbanner'),(43,'Can delete Баннер в категориях',11,'delete_catbanner'),(44,'Can view Баннер в категориях',11,'view_catbanner'),(45,'Can add Контакт',12,'add_contact'),(46,'Can change Контакт',12,'change_contact'),(47,'Can delete Контакт',12,'delete_contact'),(48,'Can view Контакт',12,'view_contact'),(49,'Can add Контактная форма',13,'add_contactform'),(50,'Can change Контактная форма',13,'change_contactform'),(51,'Can delete Контактная форма',13,'delete_contactform'),(52,'Can view Контактная форма',13,'view_contactform'),(53,'Can add Страница',14,'add_page'),(54,'Can change Страница',14,'change_page'),(55,'Can delete Страница',14,'delete_page'),(56,'Can view Страница',14,'view_page'),(57,'Can add Слайдер',15,'add_slider'),(58,'Can change Слайдер',15,'change_slider'),(59,'Can delete Слайдер',15,'delete_slider'),(60,'Can view Слайдер',15,'view_slider'),(61,'Can add Электронная почта',16,'add_subscribe'),(62,'Can change Электронная почта',16,'change_subscribe'),(63,'Can delete Электронная почта',16,'delete_subscribe'),(64,'Can view Электронная почта',16,'view_subscribe');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$9Cnatkri5fF2$hVwdb1q72XXPew4MiYIhLCWo8f6MV07lFzkej9Fu8Yg=','2020-07-29 17:12:00.499415',1,'admin','','','mfalcon@mail.ru',1,1,'2020-07-29 14:37:56.666487');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-07-29 15:28:38.283023','1','Магазин АНРИ',1,'[{\"added\": {}}]',12,1),(2,'2020-07-29 17:28:43.910953','1','Слайдер 1',1,'[{\"added\": {}}]',15,1),(3,'2020-07-29 17:30:09.118559','2','Слайдер 2',1,'[{\"added\": {}}]',15,1),(4,'2020-07-29 17:32:51.746348','1','Баннер',1,'[{\"added\": {}}]',7,1),(5,'2020-07-29 17:32:56.639406','1','Баннер',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439\"]}}]',7,1),(6,'2020-07-29 17:33:28.717460','1','Баннер',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440\\u0430\"]}}]',7,1),(7,'2020-07-29 17:34:11.099259','1','Баннер 1',1,'[{\"added\": {}}]',8,1),(8,'2020-07-29 17:34:33.000274','2','Баннер 2',1,'[{\"added\": {}}]',8,1),(9,'2020-07-29 17:34:51.360415','3','Баннер 3',1,'[{\"added\": {}}]',8,1),(10,'2020-07-29 17:35:32.916824','1','Баннер 4',1,'[{\"added\": {}}]',9,1),(11,'2020-07-29 17:36:18.815375','1','Бренд 1',1,'[{\"added\": {}}]',10,1),(12,'2020-07-29 17:36:33.043928','2','Бренд 2',1,'[{\"added\": {}}]',10,1),(13,'2020-07-29 17:36:44.068315','3','Бренд 3',1,'[{\"added\": {}}]',10,1),(14,'2020-07-29 17:36:54.478163','4','Бренд 4',1,'[{\"added\": {}}]',10,1),(15,'2020-07-29 17:37:04.126526','5','Бренд 5',1,'[{\"added\": {}}]',10,1),(16,'2020-07-29 17:37:15.021759','6','Бренд 6',1,'[{\"added\": {}}]',10,1),(17,'2020-07-29 17:37:47.654815','1','Баннер категория',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'shop','banner'),(8,'shop','banner3'),(9,'shop','bannerl'),(10,'shop','brand'),(11,'shop','catbanner'),(12,'shop','contact'),(13,'shop','contactform'),(14,'shop','page'),(15,'shop','slider'),(16,'shop','subscribe');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-07-29 14:28:38.899032'),(2,'auth','0001_initial','2020-07-29 14:28:38.964542'),(3,'admin','0001_initial','2020-07-29 14:28:39.127534'),(4,'admin','0002_logentry_remove_auto_add','2020-07-29 14:28:39.177663'),(5,'admin','0003_logentry_add_action_flag_choices','2020-07-29 14:28:39.189292'),(6,'contenttypes','0002_remove_content_type_name','2020-07-29 14:28:39.239422'),(7,'auth','0002_alter_permission_name_max_length','2020-07-29 14:28:39.262701'),(8,'auth','0003_alter_user_email_max_length','2020-07-29 14:28:39.285325'),(9,'auth','0004_alter_user_username_opts','2020-07-29 14:28:39.293858'),(10,'auth','0005_alter_user_last_login_null','2020-07-29 14:28:39.312541'),(11,'auth','0006_require_contenttypes_0002','2020-07-29 14:28:39.314468'),(12,'auth','0007_alter_validators_add_error_messages','2020-07-29 14:28:39.325518'),(13,'auth','0008_alter_user_username_max_length','2020-07-29 14:28:39.350255'),(14,'auth','0009_alter_user_last_name_max_length','2020-07-29 14:28:39.370798'),(15,'auth','0010_alter_group_name_max_length','2020-07-29 14:28:39.389911'),(16,'auth','0011_update_proxy_permissions','2020-07-29 14:28:39.397957'),(17,'sessions','0001_initial','2020-07-29 14:28:39.407171'),(18,'shop','0001_initial','2020-07-29 14:28:39.521565');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gp9qsthrwyry77a79u884ccmx1wx684n','MjlhYjk5NzM1ZWNlZmQxYTM4MTljYWNhYzgzZjExZjI0YjBiOWZlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkyYzk4M2EyOTAxYjcyMDIyMWM0YTFjMWU4M2UwMDVhNTg0MWI1In0=','2020-08-12 17:12:00.502421'),('xukynvud12gna45zhfy9h33ervkruhiy','MjlhYjk5NzM1ZWNlZmQxYTM4MTljYWNhYzgzZjExZjI0YjBiOWZlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkyYzk4M2EyOTAxYjcyMDIyMWM0YTFjMWU4M2UwMDVhNTg0MWI1In0=','2020-08-12 14:38:08.510103'),('zwvuvmfmn22lmk8oszvx1o1xcd2z19zp','MjlhYjk5NzM1ZWNlZmQxYTM4MTljYWNhYzgzZjExZjI0YjBiOWZlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjkyYzk4M2EyOTAxYjcyMDIyMWM0YTFjMWU4M2UwMDVhNTg0MWI1In0=','2020-08-12 15:26:09.659119');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_banner`
--

DROP TABLE IF EXISTS `shop_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_banner_image_4c9222d5` (`image`),
  KEY `shop_banner_link_e7712c97` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_banner`
--

LOCK TABLES `shop_banner` WRITE;
/*!40000 ALTER TABLE `shop_banner` DISABLE KEYS */;
INSERT INTO `shop_banner` VALUES (1,'Баннер','banners/banner_upper/rhs-banner_A8D7bLj.jpg','',1);
/*!40000 ALTER TABLE `shop_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_banner3`
--

DROP TABLE IF EXISTS `shop_banner3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_banner3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_banner3_image_db839a37` (`image`),
  KEY `shop_banner3_link_a3eabb86` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_banner3`
--

LOCK TABLES `shop_banner3` WRITE;
/*!40000 ALTER TABLE `shop_banner3` DISABLE KEYS */;
INSERT INTO `shop_banner3` VALUES (1,'Баннер 1','banners/3_in_block/offer-banner1_XUPkGyz.jpg','',1),(2,'Баннер 2','banners/3_in_block/offer-banner1_nZYhQsN.jpg','',1),(3,'Баннер 3','banners/3_in_block/offer-banner1_QBbvPYV.jpg','',1);
/*!40000 ALTER TABLE `shop_banner3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_bannerl`
--

DROP TABLE IF EXISTS `shop_bannerl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_bannerl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_bannerl_image_f6cb68e1` (`image`),
  KEY `shop_bannerl_link_85b57464` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_bannerl`
--

LOCK TABLES `shop_bannerl` WRITE;
/*!40000 ALTER TABLE `shop_bannerl` DISABLE KEYS */;
INSERT INTO `shop_bannerl` VALUES (1,'Баннер 4','banners/banner_large/jewelry-banner_oOoMnbC.jpg','',1);
/*!40000 ALTER TABLE `shop_bannerl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_brand`
--

DROP TABLE IF EXISTS `shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `name_slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_slug` (`name_slug`),
  KEY `shop_brand_name_048a0bbd` (`name`),
  KEY `shop_brand_image_0acab4d1` (`image`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_brand`
--

LOCK TABLES `shop_brand` WRITE;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` VALUES (1,'Бренд 1','brend1','brands_logo/b-logo1_PiU69xS.png'),(2,'Бренд 2','brend2','brands_logo/b-logo2_BG55UmP.png'),(3,'Бренд 3','brend3','brands_logo/b-logo3_hMky0sW.png'),(4,'Бренд 4','brend4','brands_logo/b-logo4_cQUfisk.png'),(5,'Бренд 5','brend5','brands_logo/b-logo5_K47XgZ5.png'),(6,'Бренд 6','brend6','brands_logo/b-logo6_OVAR1Od.png');
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_catbanner`
--

DROP TABLE IF EXISTS `shop_catbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_catbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_catbanner_image_9996b6b0` (`image`),
  KEY `shop_catbanner_link_0f0d631b` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_catbanner`
--

LOCK TABLES `shop_catbanner` WRITE;
/*!40000 ALTER TABLE `shop_catbanner` DISABLE KEYS */;
INSERT INTO `shop_catbanner` VALUES (1,'Баннер категория','banners/category_banners/category-banner1_1vBZlkI.jpg','',1);
/*!40000 ALTER TABLE `shop_catbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_contact`
--

DROP TABLE IF EXISTS `shop_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `image` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `adress` varchar(150) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `webphone` varchar(50) NOT NULL,
  `inn` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_contact_image_ce39e93e` (`image`),
  KEY `shop_contact_adress_01b623b9` (`adress`),
  KEY `shop_contact_mail_8b3dbaca` (`mail`),
  KEY `shop_contact_phone_de057bb6` (`phone`),
  KEY `shop_contact_webphone_f81b5ff1` (`webphone`),
  KEY `shop_contact_inn_fb1451f9` (`inn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_contact`
--

LOCK TABLES `shop_contact` WRITE;
/*!40000 ALTER TABLE `shop_contact` DISABLE KEYS */;
INSERT INTO `shop_contact` VALUES (1,'Магазин АНРИ','logo/logo_iYsQEic.png','<p>Магазин косметики<br />\r\nПрофессиональные краски для волос<br />\r\nШампуни. Косметика. Инструменты</p>','МО, Железнодорожный, ул Советская, д. 7, ТЦ \"Эдельвейс\"','info@anri-shop.ru','+7 (495) 555 44 66','+7 (909) 256 25 36','9517531264');
/*!40000 ALTER TABLE `shop_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_contactform`
--

DROP TABLE IF EXISTS `shop_contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_contactform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `company` varchar(1501) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `message` longtext NOT NULL,
  `agreement` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_contactform_first_name_4640fffa` (`first_name`),
  KEY `shop_contactform_mail_c6579c6e` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_contactform`
--

LOCK TABLES `shop_contactform` WRITE;
/*!40000 ALTER TABLE `shop_contactform` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_page`
--

DROP TABLE IF EXISTS `shop_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `name_slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_slug` (`name_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_page`
--

LOCK TABLES `shop_page` WRITE;
/*!40000 ALTER TABLE `shop_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_slider`
--

DROP TABLE IF EXISTS `shop_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title_1` varchar(50) NOT NULL,
  `title_2` varchar(50) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `good_link` varchar(100) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_slider`
--

LOCK TABLES `shop_slider` WRITE;
/*!40000 ALTER TABLE `shop_slider` DISABLE KEYS */;
INSERT INTO `shop_slider` VALUES (1,'Слайдер 1','ВЕСЬ АВГУСТ!','Скидка на косметику 10%','только для держателей дисконтных карт','slider/slide-img1_85NjECe.jpg','',1,'',1),(2,'Слайдер 2','НОВИНКИ!','Новое пополнение коллекций','','slider/slide-img2_mXseCZo.jpg','',1,'',1);
/*!40000 ALTER TABLE `shop_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_subscribe`
--

DROP TABLE IF EXISTS `shop_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) NOT NULL,
  `agreement` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_subscribe`
--

LOCK TABLES `shop_subscribe` WRITE;
/*!40000 ALTER TABLE `shop_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_subscribe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-29 22:40:51
