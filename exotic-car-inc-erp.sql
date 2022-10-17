-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: exotic_cars_inc_erp
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areas_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Sales/Tradein Area','2022-10-17 09:19:44','2022-10-17 09:19:44'),(2,'Shop/Repair Area','2022-10-17 09:19:45','2022-10-17 09:19:45'),(3,'Service Area','2022-10-17 09:19:45','2022-10-17 09:19:45');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_makes`
--

DROP TABLE IF EXISTS `car_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_makes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_makes`
--

LOCK TABLES `car_makes` WRITE;
/*!40000 ALTER TABLE `car_makes` DISABLE KEYS */;
INSERT INTO `car_makes` VALUES (1,'Kia','2022-10-17 09:19:42','2022-10-17 09:19:42'),(2,'Toyota','2022-10-17 09:19:42','2022-10-17 09:19:42'),(3,'Jeep','2022-10-17 09:19:42','2022-10-17 09:19:42'),(4,'GMC','2022-10-17 09:19:42','2022-10-17 09:19:42'),(5,'Mazda','2022-10-17 09:19:42','2022-10-17 09:19:42'),(6,'Volvo','2022-10-17 09:19:42','2022-10-17 09:19:42'),(7,'Subaru','2022-10-17 09:19:42','2022-10-17 09:19:42'),(8,'Hyundai','2022-10-17 09:19:42','2022-10-17 09:19:42');
/*!40000 ALTER TABLE `car_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_models`
--

DROP TABLE IF EXISTS `car_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_models` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_models`
--

LOCK TABLES `car_models` WRITE;
/*!40000 ALTER TABLE `car_models` DISABLE KEYS */;
INSERT INTO `car_models` VALUES (1,'Avalon','2022-10-17 09:19:42','2022-10-17 09:19:42'),(2,'Camry','2022-10-17 09:19:42','2022-10-17 09:19:42'),(3,'Corolla','2022-10-17 09:19:42','2022-10-17 09:19:42'),(4,'Prius','2022-10-17 09:19:42','2022-10-17 09:19:42'),(5,'Yaris','2022-10-17 09:19:42','2022-10-17 09:19:42'),(6,'86','2022-10-17 09:19:42','2022-10-17 09:19:42'),(7,'Sienna','2022-10-17 09:19:42','2022-10-17 09:19:42'),(8,'C-HR','2022-10-17 09:19:43','2022-10-17 09:19:43'),(9,'MX-04','2022-10-17 09:19:43','2022-10-17 09:19:43'),(10,'MX-5 Superlight','2022-10-17 09:19:43','2022-10-17 09:19:43'),(11,'MX-81','2022-10-17 09:19:43','2022-10-17 09:19:43'),(12,'MX-Crossport','2022-10-17 09:19:43','2022-10-17 09:19:43'),(13,'MX-Flexa','2022-10-17 09:19:43','2022-10-17 09:19:43'),(14,'MX-Micro Sport','2022-10-17 09:19:43','2022-10-17 09:19:43');
/*!40000 ALTER TABLE `car_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_parts`
--

DROP TABLE IF EXISTS `car_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_parts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `car_type_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_parts_car_type_id_foreign` (`car_type_id`),
  CONSTRAINT `car_parts_car_type_id_foreign` FOREIGN KEY (`car_type_id`) REFERENCES `car_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_parts`
--

LOCK TABLES `car_parts` WRITE;
/*!40000 ALTER TABLE `car_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_types`
--

DROP TABLE IF EXISTS `car_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `car_make_id` bigint(20) unsigned DEFAULT NULL,
  `car_model_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `year_of_manufacture` year(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_types_car_make_id_foreign` (`car_make_id`),
  KEY `car_types_car_model_id_foreign` (`car_model_id`),
  CONSTRAINT `car_types_car_make_id_foreign` FOREIGN KEY (`car_make_id`) REFERENCES `car_makes` (`id`),
  CONSTRAINT `car_types_car_model_id_foreign` FOREIGN KEY (`car_model_id`) REFERENCES `car_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_types`
--

LOCK TABLES `car_types` WRITE;
/*!40000 ALTER TABLE `car_types` DISABLE KEYS */;
INSERT INTO `car_types` VALUES (1,NULL,NULL,'Nissan Altima',NULL,1975,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(2,NULL,NULL,'Mazda CX-5',NULL,1988,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(3,NULL,NULL,'Honda CR-V',NULL,1999,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(4,NULL,NULL,'Toyota RAV4',NULL,1988,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(5,NULL,NULL,'Toyota Highlander',NULL,2007,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(6,NULL,NULL,'Subaru Forrester',NULL,1985,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(7,NULL,NULL,'Kia Sorento',NULL,1975,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(8,NULL,NULL,'Toyota Camry',NULL,2000,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(9,NULL,NULL,'Honda Accord',NULL,1991,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(10,NULL,NULL,'Subaru Outback',NULL,1983,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(11,NULL,NULL,'Subaru Crosstrek',NULL,1978,'2022-10-17 09:19:44','2022-10-17 09:19:44');
/*!40000 ALTER TABLE `car_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `car_type_id` bigint(20) unsigned NOT NULL,
  `plate_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_user_id_foreign` (`user_id`),
  KEY `cars_car_type_id_foreign` (`car_type_id`),
  CONSTRAINT `cars_car_type_id_foreign` FOREIGN KEY (`car_type_id`) REFERENCES `car_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,NULL,11,'750865f2-1672-4a58-a04a-c0ee41a7c218','2022-10-17 09:19:46','2022-10-17 09:19:46'),(2,NULL,6,'a15368a1-3659-40de-8a9e-ef89f5bae2e9','2022-10-17 09:19:46','2022-10-17 09:19:46'),(3,NULL,6,'0164ed97-ad6e-4e05-bb7e-63ff7bef67b0','2022-10-17 09:19:46','2022-10-17 09:19:46'),(4,NULL,1,'fd0832b0-5c1e-4726-a0bb-47765efe3317','2022-10-17 09:19:46','2022-10-17 09:19:46'),(5,NULL,5,'070bd643-55c3-4d7c-aa8b-4d64595cd7bb','2022-10-17 09:19:46','2022-10-17 09:19:46'),(6,NULL,10,'86b30dbf-4604-4e46-8445-7bcf4a7322b4','2022-10-17 09:19:46','2022-10-17 09:19:46'),(7,NULL,10,'a6a6443c-fe47-40a2-aeb4-ae0f6666ab51','2022-10-17 09:19:46','2022-10-17 09:19:46'),(8,NULL,4,'cd157ab8-bd04-4eed-be07-ee3b60f750a9','2022-10-17 09:19:46','2022-10-17 09:19:46'),(9,NULL,8,'78d24af3-e083-44c7-bcba-3bbe03f604c8','2022-10-17 09:19:46','2022-10-17 09:19:46'),(10,NULL,1,'bab175fd-f046-4115-ba45-d66859b7538a','2022-10-17 09:19:46','2022-10-17 09:19:46'),(11,NULL,10,'3a26b55e-e86c-489c-a07d-f9b6b60efc16','2022-10-17 09:19:46','2022-10-17 09:19:46'),(12,NULL,11,'92a7b9a7-1b80-4ea7-9602-c375cc1304a1','2022-10-17 09:19:46','2022-10-17 09:19:46'),(13,NULL,5,'1693fd35-3575-4764-af91-7a46005e4f30','2022-10-17 09:19:46','2022-10-17 09:19:46'),(14,NULL,11,'766a14a2-060d-4f74-baaa-e807fd47d36b','2022-10-17 09:19:46','2022-10-17 09:19:46'),(15,NULL,3,'11058110-e3c0-4b12-a756-941a9910ede2','2022-10-17 09:19:46','2022-10-17 09:19:46'),(16,NULL,9,'cb240d03-f882-49b1-996b-5baf642c8f41','2022-10-17 09:19:46','2022-10-17 09:19:46'),(17,NULL,9,'4b97526e-91b7-4361-b598-c8c5a017b1fc','2022-10-17 09:19:46','2022-10-17 09:19:46'),(18,NULL,1,'9bbcec6b-cc98-4eed-b695-d4b3ae76256c','2022-10-17 09:19:46','2022-10-17 09:19:46'),(19,NULL,10,'c641f9fd-b1fb-45ec-ad38-a68223284d78','2022-10-17 09:19:47','2022-10-17 09:19:47'),(20,NULL,7,'8ae7f340-0df8-41f2-a34c-c4ff844ebec5','2022-10-17 09:19:47','2022-10-17 09:19:47');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Hintz-Kub','Dealers','2022-10-17 09:19:45','2022-10-17 09:19:45'),(2,'Douglas and Sons','Dealers','2022-10-17 09:19:45','2022-10-17 09:19:45'),(3,'Keeling, Steuber and Lind','Dealers','2022-10-17 09:19:45','2022-10-17 09:19:45'),(4,'Dach PLC','Dealers','2022-10-17 09:19:45','2022-10-17 09:19:45'),(5,'Raynor, Harris and Lockman','Manufactuerer','2022-10-17 09:19:45','2022-10-17 09:19:45'),(6,'Abernathy Group','Manufactuerer','2022-10-17 09:19:45','2022-10-17 09:19:45');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `since_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_user_id_foreign` (`user_id`),
  CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1,'2012-10-17','2022-10-17 11:31:35','2022-10-17 11:31:35'),(2,2,'2021-12-17','2022-10-17 11:31:49','2022-10-17 11:31:49'),(3,5,'2021-12-17','2022-10-17 11:32:03','2022-10-17 11:32:03'),(4,3,'2017-10-17','2022-10-17 11:32:21','2022-10-17 11:32:21');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_job`
--

DROP TABLE IF EXISTS `employee_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_job` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) unsigned NOT NULL,
  `job_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_job_employee_id_foreign` (`employee_id`),
  KEY `employee_job_job_id_foreign` (`job_id`),
  CONSTRAINT `employee_job_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_job`
--

LOCK TABLES `employee_job` WRITE;
/*!40000 ALTER TABLE `employee_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_user_id_foreign` (`user_id`),
  CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,4,NULL,'2021-12-17','2022-10-17 11:42:17','2022-10-17 11:42:17'),(2,7,NULL,'2012-10-17','2022-10-17 11:42:39','2022-10-17 11:42:39'),(3,8,NULL,'2012-05-16','2022-10-17 11:43:36','2022-10-17 11:43:36');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `launch_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locations_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Washington, DC',NULL,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(2,'Richmond, VA',NULL,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(3,'Virginia Beach, VA',NULL,'2022-10-17 09:19:44','2022-10-17 09:19:44');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_10_14_215755_create_car_makes_table',1),(6,'2022_10_14_220558_create_car_models_table',1),(7,'2022_10_14_221615_create_car_types_table',1),(8,'2022_10_15_084804_create_services_table',1),(9,'2022_10_15_205116_create_car_parts_table',1),(10,'2022_10_15_212440_create_products_table',1),(11,'2022_10_16_045730_create_locations_table',1),(12,'2022_10_16_052612_create_areas_table',1),(13,'2022_10_16_105452_create_jobs_table',1),(14,'2022_10_17_052829_create_employees_table',1),(15,'2022_10_17_060803_create_employee_job_table',1),(16,'2022_10_17_063523_create_companies_table',1),(17,'2022_10_17_064746_create_customers_table',1),(18,'2022_10_17_074331_create_cars_table',1),(19,'2022_10_17_093405_create_purchases_table',1),(20,'2022_10_17_105352_create_sales_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productable_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approximate_unit_price` double(8,2) DEFAULT NULL,
  `quantity` bigint(20) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  KEY `products_productable_type_productable_id_index` (`productable_type`,`productable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'car-type',1,'Nissan Altima',8179.00,95,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(2,'car-type',2,'Mazda CX-5',6803.00,53,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(3,'car-type',3,'Honda CR-V',7541.00,47,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(4,'car-type',4,'Toyota RAV4',8787.00,91,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(5,'car-type',5,'Toyota Highlander',3682.00,36,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(6,'car-type',6,'Subaru Forrester',6402.00,35,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(7,'car-type',7,'Kia Sorento',14821.00,35,'2022-10-17 09:19:43','2022-10-17 09:19:43'),(8,'car-type',8,'Toyota Camry',15135.00,60,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(9,'car-type',9,'Honda Accord',12684.00,56,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(10,'car-type',10,'Subaru Outback',18725.00,53,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(11,'car-type',11,'Subaru Crosstrek',15426.00,31,'2022-10-17 09:19:44','2022-10-17 09:19:44');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchasable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchasable_id` bigint(20) unsigned NOT NULL,
  `employee_id` bigint(20) unsigned NOT NULL,
  `car_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `amount` double(8,2) NOT NULL,
  `dealable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealable_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_purchasable_type_purchasable_id_index` (`purchasable_type`,`purchasable_id`),
  KEY `purchases_employee_id_foreign` (`employee_id`),
  KEY `purchases_car_id_foreign` (`car_id`),
  KEY `purchases_dealable_type_dealable_id_index` (`dealable_type`,`dealable_id`),
  CONSTRAINT `purchases_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchases_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `salable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salable_id` bigint(20) unsigned NOT NULL,
  `employee_id` bigint(20) unsigned NOT NULL,
  `car_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `amount` double(8,2) NOT NULL,
  `dealable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealable_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_salable_type_salable_id_index` (`salable_type`,`salable_id`),
  KEY `sales_employee_id_foreign` (`employee_id`),
  KEY `sales_car_id_foreign` (`car_id`),
  KEY `sales_dealable_type_dealable_id_index` (`dealable_type`,`dealable_id`),
  CONSTRAINT `sales_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Engine turn-up',300.00,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(2,'Tyre rotation',200.00,'2022-10-17 09:19:44','2022-10-17 09:19:44'),(3,'Oil change',200.00,'2022-10-17 09:19:44','2022-10-17 09:19:44');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Linnie Satterfield','waelchi.demarcus@example.org','2022-10-17 09:19:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','b3SM50lor8','2022-10-17 09:19:45','2022-10-17 09:19:45'),(2,'Carli Haley','champlin.florine@example.com','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3kB5yAjmno','2022-10-17 11:06:28','2022-10-17 11:06:28'),(3,'Prof. King Stamm','keenan.crona@example.org','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JELxlUMVRm','2022-10-17 11:06:28','2022-10-17 11:06:28'),(4,'Susie Willms','lonnie09@example.org','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TgT0pKqdPA','2022-10-17 11:06:28','2022-10-17 11:06:28'),(5,'Presley Upton','zberge@example.org','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','u2RddlLi8N','2022-10-17 11:06:28','2022-10-17 11:06:28'),(6,'Lillie Turcotte','margarett.spencer@example.org','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JJeM3BWN2L','2022-10-17 11:06:28','2022-10-17 11:06:28'),(7,'Mr. Consuelo Hilpert','wehner.elinore@example.org','2022-10-17 11:06:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nXRqygMP0S','2022-10-17 11:06:28','2022-10-17 11:06:28'),(8,'Marianna Predovic','klocko.amari@example.com','2022-10-17 11:43:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','72vPXGx51V','2022-10-17 11:43:36','2022-10-17 11:43:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17 22:07:10
