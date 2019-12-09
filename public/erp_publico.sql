CREATE DATABASE  IF NOT EXISTS `erp_publico` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `erp_publico`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: erp_publico
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `properties` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (60,'default','created',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto da Silva\"}}','2018-10-18 14:22:16','2018-10-18 14:22:16'),(61,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 16:02:54','2018-10-18 16:02:54'),(62,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 17:16:55','2018-10-18 17:16:55'),(63,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 18:35:54','2018-10-18 18:35:54'),(64,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 19:34:59','2018-10-18 19:34:59'),(65,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 19:50:03','2018-10-18 19:50:03'),(66,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 19:51:14','2018-10-18 19:51:14'),(67,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Marcos Paulo\"},\"old\":{\"nome\":\"2_admin_empresa\"}}','2018-10-18 23:16:29','2018-10-18 23:16:29'),(68,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto\"},\"old\":{\"nome\":\"Diogo Noleto da Silva\"}}','2018-10-18 23:40:17','2018-10-18 23:40:17'),(69,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto da silva\"},\"old\":{\"nome\":\"Diogo Noleto\"}}','2018-10-18 23:45:38','2018-10-18 23:45:38'),(70,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto\"},\"old\":{\"nome\":\"Diogo Noleto da silva\"}}','2018-10-18 23:47:20','2018-10-18 23:47:20'),(71,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto da Silva\"},\"old\":{\"nome\":\"Diogo Noleto\"}}','2018-10-18 23:54:09','2018-10-18 23:54:09'),(72,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Marcos Paulo de Souza Catro\"},\"old\":{\"nome\":\"Marcos Paulo\"}}','2018-10-18 23:55:51','2018-10-18 23:55:51'),(73,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-18 23:59:03','2018-10-18 23:59:03'),(74,'default','updated',3,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Marcos Paulo\"},\"old\":{\"nome\":\"Marcos Paulo de Souza Catro\"}}','2018-10-19 00:07:02','2018-10-19 00:07:02'),(75,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Diogo Noleto\"},\"old\":{\"nome\":\"Diogo Noleto da Silva\"}}','2018-10-19 00:09:06','2018-10-19 00:09:06'),(76,'default','updated',4,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:09:39','2018-10-19 00:09:39'),(77,'default','created',5,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Renan Arce\"}}','2018-10-19 00:14:23','2018-10-19 00:14:23'),(78,'default','created',6,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"teste\"}}','2018-10-19 00:15:03','2018-10-19 00:15:03'),(79,'default','updated',6,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:15:13','2018-10-19 00:15:13'),(80,'default','created',7,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"akice\"}}','2018-10-19 00:17:41','2018-10-19 00:17:41'),(81,'default','created',8,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"mayxs\"}}','2018-10-19 00:21:52','2018-10-19 00:21:52'),(82,'default','created',9,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"asdfads\"}}','2018-10-19 00:24:31','2018-10-19 00:24:31'),(83,'default','updated',7,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"ahice\"},\"old\":{\"nome\":\"akice\"}}','2018-10-19 00:31:23','2018-10-19 00:31:23'),(84,'default','updated',9,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"aaadd\"},\"old\":{\"nome\":\"asdfads\"}}','2018-10-19 00:31:56','2018-10-19 00:31:56'),(85,'default','updated',7,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"ahice adsfasdf\"},\"old\":{\"nome\":\"ahice\"}}','2018-10-19 00:32:21','2018-10-19 00:32:21'),(86,'default','created',10,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"fsadfasd\"}}','2018-10-19 00:32:53','2018-10-19 00:32:53'),(87,'default','updated',5,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:35:01','2018-10-19 00:35:01'),(88,'default','updated',8,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:36:13','2018-10-19 00:36:13'),(89,'default','updated',10,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:36:33','2018-10-19 00:36:33'),(90,'default','created',11,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"1231234132\"}}','2018-10-19 00:48:44','2018-10-19 00:48:44'),(91,'default','updated',7,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 00:52:05','2018-10-19 00:52:05'),(92,'default','updated',7,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"ahice a\"},\"old\":{\"nome\":\"ahice adsfasdf\"}}','2018-10-19 00:52:13','2018-10-19 00:52:13'),(93,'default','updated',9,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"aaaddewq qer\"},\"old\":{\"nome\":\"aaadd\"}}','2018-10-19 00:52:23','2018-10-19 00:52:23'),(94,'default','updated',11,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"linton junior\"},\"old\":{\"nome\":\"1231234132\"}}','2018-10-19 13:46:37','2018-10-19 13:46:37'),(95,'default','created',12,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":{\"nome\":\"Linton Junior\"}}','2018-10-19 13:47:20','2018-10-19 13:47:20'),(96,'default','updated',10,'App\\Models\\Sistema\\SisCrud',2,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 13:47:34','2018-10-19 13:47:34'),(97,'default','created',13,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"marcos teste\"}}','2018-10-19 13:53:12','2018-10-19 13:53:12'),(98,'default','updated',13,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"marcos teste xxx\"},\"old\":{\"nome\":\"marcos teste\"}}','2018-10-19 13:53:40','2018-10-19 13:53:40'),(99,'default','updated',13,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 13:53:56','2018-10-19 13:53:56'),(100,'default','created',14,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"marcos teste ccfd\"}}','2018-10-19 13:55:32','2018-10-19 13:55:32'),(101,'default','updated',14,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"marcos teste ccfd vvv\"},\"old\":{\"nome\":\"marcos teste ccfd\"}}','2018-10-19 13:55:43','2018-10-19 13:55:43'),(102,'default','updated',14,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 13:56:21','2018-10-19 13:56:21'),(103,'default','created',15,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"teste final\"}}','2018-10-19 13:57:31','2018-10-19 13:57:31'),(104,'default','created',16,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":{\"nome\":\"teste final 2\"}}','2018-10-19 13:58:12','2018-10-19 13:58:12'),(105,'default','updated',16,'App\\Models\\Sistema\\SisCrud',26,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-19 13:58:22','2018-10-19 13:58:22'),(106,'default','updated',15,'App\\Models\\Sistema\\SisCrud',114,'App\\User','{\"attributes\":[],\"old\":[]}','2018-10-23 11:26:57','2018-10-23 11:26:57');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_categorias`
--

DROP TABLE IF EXISTS `empresa_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_poder_id` int(10) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_categorias_empresa_poder_id_foreign` (`empresa_poder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_categorias`
--

LOCK TABLES `empresa_categorias` WRITE;
/*!40000 ALTER TABLE `empresa_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_cfops`
--

DROP TABLE IF EXISTS `empresa_cfops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_cfops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_cfops`
--

LOCK TABLES `empresa_cfops` WRITE;
/*!40000 ALTER TABLE `empresa_cfops` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_cfops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_cnaes`
--

DROP TABLE IF EXISTS `empresa_cnaes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_cnaes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_cnaes`
--

LOCK TABLES `empresa_cnaes` WRITE;
/*!40000 ALTER TABLE `empresa_cnaes` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_cnaes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_contas`
--

DROP TABLE IF EXISTS `empresa_contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_contas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(10) unsigned NOT NULL,
  `uni_banco_id` int(10) unsigned NOT NULL,
  `tipo_conta` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `codigo` int(11) NOT NULL,
  `agencia` varchar(10) NOT NULL,
  `conta` varchar(15) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_contas_empresa_id_foreign` (`empresa_id`),
  KEY `empresa_contas_uni_banco_id_foreign` (`uni_banco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_contas`
--

LOCK TABLES `empresa_contas` WRITE;
/*!40000 ALTER TABLE `empresa_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_contatos`
--

DROP TABLE IF EXISTS `empresa_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_contatos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(10) unsigned NOT NULL,
  `tipo_contato` tinyint(4) NOT NULL,
  `tipo_cadastro` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  `detalhe` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_contatos_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_contatos`
--

LOCK TABLES `empresa_contatos` WRITE;
/*!40000 ALTER TABLE `empresa_contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_enderecos`
--

DROP TABLE IF EXISTS `empresa_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_enderecos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(10) unsigned NOT NULL,
  `tipo_endereco` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado_uf` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_enderecos_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_enderecos`
--

LOCK TABLES `empresa_enderecos` WRITE;
/*!40000 ALTER TABLE `empresa_enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_entidades`
--

DROP TABLE IF EXISTS `empresa_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_entidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_entidades`
--

LOCK TABLES `empresa_entidades` WRITE;
/*!40000 ALTER TABLE `empresa_entidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_entidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_esferas`
--

DROP TABLE IF EXISTS `empresa_esferas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_esferas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_entidade_id` int(10) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_esferas_empresa_entidade_id_foreign` (`empresa_entidade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_esferas`
--

LOCK TABLES `empresa_esferas` WRITE;
/*!40000 ALTER TABLE `empresa_esferas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_esferas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_mais_infos`
--

DROP TABLE IF EXISTS `empresa_mais_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_mais_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(10) unsigned NOT NULL,
  `meta` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_mais_infos_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_mais_infos`
--

LOCK TABLES `empresa_mais_infos` WRITE;
/*!40000 ALTER TABLE `empresa_mais_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_mais_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_poders`
--

DROP TABLE IF EXISTS `empresa_poders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa_poders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_esfera_id` int(10) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_poders_empresa_esfera_id_foreign` (`empresa_esfera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_poders`
--

LOCK TABLES `empresa_poders` WRITE;
/*!40000 ALTER TABLE `empresa_poders` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_poders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_account_id` int(10) unsigned NOT NULL,
  `uni_tipo_id` int(10) unsigned NOT NULL,
  `empresa_entidade_id` int(10) unsigned NOT NULL,
  `empresa_esfera_id` int(10) unsigned DEFAULT NULL,
  `empresa_poder_id` int(10) unsigned DEFAULT NULL,
  `empresa_categoria_id` int(10) unsigned DEFAULT NULL,
  `empresa_cnae_id` int(10) unsigned DEFAULT NULL,
  `empresa_cfop_id` int(10) unsigned DEFAULT NULL,
  `cnpj_cpf` varchar(255) DEFAULT NULL,
  `razao_social` varchar(255) NOT NULL,
  `nome_fantasia` varchar(255) DEFAULT NULL,
  `inscricao_estadual` varchar(255) DEFAULT NULL,
  `inscricao_municipal` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresas_sis_account_id_foreign` (`sis_account_id`),
  KEY `empresas_empresa_entidade_id_foreign` (`empresa_entidade_id`),
  KEY `empresas_empresa_esfera_id_foreign` (`empresa_esfera_id`),
  KEY `empresas_empresa_poder_id_foreign` (`empresa_poder_id`),
  KEY `empresas_empresa_categoria_id_foreign` (`empresa_categoria_id`),
  KEY `empresas_empresa_cnae_id_foreign` (`empresa_cnae_id`),
  KEY `empresas_empresa_cfop_id_foreign` (`empresa_cfop_id`),
  KEY `empresas_uni_tipo_id_foreign` (`uni_tipo_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_account_uni_tipo`
--

DROP TABLE IF EXISTS `sis_account_uni_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_account_uni_tipo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_account_id` int(10) unsigned NOT NULL,
  `uni_tipo_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_account_uni_tipo_sis_account_id_foreign` (`sis_account_id`),
  KEY `sis_account_uni_tipo_uni_tipo_id_foreign` (`uni_tipo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_account_uni_tipo`
--

LOCK TABLES `sis_account_uni_tipo` WRITE;
/*!40000 ALTER TABLE `sis_account_uni_tipo` DISABLE KEYS */;
INSERT INTO `sis_account_uni_tipo` VALUES (1,2,1,NULL,NULL),(2,2,2,NULL,NULL),(3,2,3,NULL,NULL),(4,2,4,NULL,NULL),(5,2,5,NULL,NULL),(6,2,6,NULL,NULL),(7,2,7,NULL,NULL),(8,2,8,NULL,NULL),(9,2,9,NULL,NULL),(10,2,10,NULL,NULL),(11,2,11,NULL,NULL),(12,2,12,NULL,NULL);
/*!40000 ALTER TABLE `sis_account_uni_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_accounts`
--

DROP TABLE IF EXISTS `sis_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `qtde_empresa` int(11) DEFAULT NULL,
  `qtde_funcionario` int(11) DEFAULT NULL,
  `qtde_cliente` int(11) DEFAULT NULL,
  `qtde_fornecedor` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_accounts`
--

LOCK TABLES `sis_accounts` WRITE;
/*!40000 ALTER TABLE `sis_accounts` DISABLE KEYS */;
INSERT INTO `sis_accounts` VALUES (1,'Administrador',1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(2,'Diretório Digital',33,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-18 09:01:45','2018-07-18 09:01:45');
/*!40000 ALTER TABLE `sis_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_cruds`
--

DROP TABLE IF EXISTS `sis_cruds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_cruds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_account_id` int(10) unsigned NOT NULL,
  `nome` varchar(2555) DEFAULT NULL,
  `cnpj_cpf` varchar(18) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `select` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_roles_sis_account_id_foreign` (`sis_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_cruds`
--

LOCK TABLES `sis_cruds` WRITE;
/*!40000 ALTER TABLE `sis_cruds` DISABLE KEYS */;
INSERT INTO `sis_cruds` VALUES (3,2,'Marcos Paulo','33333333333','22222222222','cro',NULL,'2018-07-18 09:01:45','2018-10-19 00:07:02'),(4,2,'Diogo Noleto','74036807234','92981584393','rg',NULL,'2018-10-18 14:22:16','2018-10-19 00:09:39'),(5,2,'Renan Arce','11111111111','22222222222','crm',NULL,'2018-10-19 00:14:23','2018-10-19 00:35:01'),(6,2,'teste','33333333333','9281584393','cnh',NULL,'2018-10-19 00:15:03','2018-10-19 00:15:13'),(7,2,'ahice a','26666666666','88888888888','rg',NULL,'2018-10-19 00:17:41','2018-10-19 00:52:13'),(8,2,'mayxs','11111111111','12323','cnh',NULL,'2018-10-19 00:21:52','2018-10-19 00:36:13'),(9,2,'aaaddewq qer','22211111111','92981584393','rg',NULL,'2018-10-19 00:24:31','2018-10-19 00:52:23'),(10,2,'fsadfasd','2323424','23242334234',NULL,'2018-10-19 13:47:34','2018-10-19 00:32:53','2018-10-19 13:47:34'),(11,2,'linton junior','31212341234','412341234','rg',NULL,'2018-10-19 00:48:44','2018-10-19 13:46:37'),(12,2,'Linton Junior','76494772234','92994388769','cnh',NULL,'2018-10-19 13:47:20','2018-10-19 13:47:20'),(13,2,'marcos teste xxx','99999999999','99999999999','rg','2018-10-19 13:53:56','2018-10-19 13:53:12','2018-10-19 13:53:56'),(14,2,'marcos teste ccfd vvv','99999999999','99999999999','crm','2018-10-19 13:56:21','2018-10-19 13:55:32','2018-10-19 13:56:21'),(15,2,'teste final','99999999999','99999999999','cnh','2018-10-23 11:26:57','2018-10-19 13:57:31','2018-10-23 11:26:57'),(16,2,'teste final 2','88888888888','00000000000','crm','2018-10-19 13:58:22','2018-10-19 13:58:12','2018-10-19 13:58:22');
/*!40000 ALTER TABLE `sis_cruds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_permission_sis_role`
--

DROP TABLE IF EXISTS `sis_permission_sis_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_permission_sis_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_permission_id` int(10) unsigned NOT NULL,
  `sis_role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_permission_sis_role_sis_permission_id_foreign` (`sis_permission_id`),
  KEY `sis_permission_sis_role_sis_role_id_foreign` (`sis_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_permission_sis_role`
--

LOCK TABLES `sis_permission_sis_role` WRITE;
/*!40000 ALTER TABLE `sis_permission_sis_role` DISABLE KEYS */;
INSERT INTO `sis_permission_sis_role` VALUES (1,13,3,NULL,NULL),(2,5,2,NULL,NULL),(3,6,2,NULL,NULL),(4,7,2,NULL,NULL),(5,8,2,NULL,NULL);
/*!40000 ALTER TABLE `sis_permission_sis_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_permissions`
--

DROP TABLE IF EXISTS `sis_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_module_id` int(10) unsigned NOT NULL,
  `area` varchar(100) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_permissions_sis_module_id_foreign` (`sis_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_permissions`
--

LOCK TABLES `sis_permissions` WRITE;
/*!40000 ALTER TABLE `sis_permissions` DISABLE KEYS */;
INSERT INTO `sis_permissions` VALUES (1,1,'configuracao','config_create','Configurações',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(2,1,'configuracao','config_read','Configurações',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(3,1,'configuracao','config_update','Configurações',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(4,1,'configuracao','config_delete','Configurações',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(5,2,'usuario','usuario_create','Usuário',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(6,2,'usuario','usuario_read','Usuário',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(7,2,'usuario','usuario_update','Usuário',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(8,2,'usuario','usuario_delete','Usuário',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(9,3,'empresa','empresa_create','Empresa',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(10,3,'empresa','empresa_read','Empresa',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(11,3,'empresa','empresa_update','Empresa',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(12,3,'empresa','empresa_delete','Empresa',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(13,3,'Crud','crud_read','Crud',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07');
/*!40000 ALTER TABLE `sis_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_role_user`
--

DROP TABLE IF EXISTS `sis_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_role_user_sis_role_id_foreign` (`sis_role_id`),
  KEY `sis_role_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_role_user`
--

LOCK TABLES `sis_role_user` WRITE;
/*!40000 ALTER TABLE `sis_role_user` DISABLE KEYS */;
INSERT INTO `sis_role_user` VALUES (61,1,1,NULL,NULL),(62,1,2,NULL,NULL),(63,1,26,NULL,NULL),(64,1,114,NULL,NULL);
/*!40000 ALTER TABLE `sis_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sis_roles`
--

DROP TABLE IF EXISTS `sis_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sis_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_account_id` int(10) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sis_roles_sis_account_id_foreign` (`sis_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sis_roles`
--

LOCK TABLES `sis_roles` WRITE;
/*!40000 ALTER TABLE `sis_roles` DISABLE KEYS */;
INSERT INTO `sis_roles` VALUES (1,1,'1_administrador','Administrador do Sistema',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(2,1,'1_admin_empresa','Administrador da Empresa',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(3,2,'2_admin_empresa','Administrador da Empresa',NULL,'2018-07-18 09:01:45','2018-07-18 09:01:45');
/*!40000 ALTER TABLE `sis_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_bancos`
--

DROP TABLE IF EXISTS `uni_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `uni_bancos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_bancos`
--

LOCK TABLES `uni_bancos` WRITE;
/*!40000 ALTER TABLE `uni_bancos` DISABLE KEYS */;
INSERT INTO `uni_bancos` VALUES (1,'001','BANCO DO BRASIL S/A','img/bancos/bbb.jpg',NULL,NULL,NULL),(2,'002','BANCO CENTRAL DO BRASIL','img/bancos/default1.png',NULL,NULL,NULL),(3,'003','BANCO DA AMAZONIA S.A','img/bancos/bam.jpg',NULL,NULL,NULL),(4,'004','BANCO DO NORDESTE DO BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(5,'007','BANCO NAC DESENV. ECO. SOCIAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(6,'008','BANCO MERIDIONAL DO BRASIL','img/bancos/default1.png',NULL,NULL,NULL),(7,'020','BANCO DO ESTADO DE ALAGOAS S.A','img/bancos/default1.png',NULL,NULL,NULL),(8,'021','BANCO DO ESTADO DO ESPIRITO SANTO S.A','img/bancos/default1.png',NULL,NULL,NULL),(9,'022','BANCO DE CREDITO REAL DE MINAS GERAIS SA','img/bancos/default1.png',NULL,NULL,NULL),(10,'024','BANCO DO ESTADO DE PERNAMBUCO','img/bancos/default1.png',NULL,NULL,NULL),(11,'025','BANCO ALFA S/A','img/bancos/default1.png',NULL,NULL,NULL),(12,'026','BANCO DO ESTADO DO ACRE S.A','img/bancos/default1.png',NULL,NULL,NULL),(13,'027','BANCO DO ESTADO DE SANTA CATARINA S.A','img/bancos/default1.png',NULL,NULL,NULL),(14,'028','BANCO DO ESTADO DA BAHIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(15,'029','BANCO DO ESTADO DO RIO DE JANEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(16,'030','BANCO DO ESTADO DA PARAIBA S.A','img/bancos/default1.png',NULL,NULL,NULL),(17,'031','BANCO DO ESTADO DE GOIAS S.A','img/bancos/default1.png',NULL,NULL,NULL),(18,'032','BANCO DO ESTADO DO MATO GROSSO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(19,'033','BANCO DO ESTADO DE SAO PAULO S.A','img/bancos/default1.png',NULL,NULL,NULL),(20,'034','BANCO DO ESADO DO AMAZONAS S.A','img/bancos/default1.png',NULL,NULL,NULL),(21,'035','BANCO DO ESTADO DO CEARA S.A','img/bancos/default1.png',NULL,NULL,NULL),(22,'036','BANCO DO ESTADO DO MARANHAO S.A','img/bancos/default1.png',NULL,NULL,NULL),(23,'037','BANCO DO ESTADO DO PARA S.A','img/bancos/default1.png',NULL,NULL,NULL),(24,'038','BANCO DO ESTADO DO PARANA S.A','img/bancos/default1.png',NULL,NULL,NULL),(25,'039','BANCO DO ESTADO DO PIAUI S.A','img/bancos/default1.png',NULL,NULL,NULL),(26,'041','BANCO DO ESTADO DO RIO GRANDE DO SUL S.A','img/bancos/default1.png',NULL,NULL,NULL),(27,'047','BANCO DO ESTADO DE SERGIPE S.A','img/bancos/default1.png',NULL,NULL,NULL),(28,'048','BANCO DO ESTADO DE MINAS GERAIS S.A','img/bancos/default1.png',NULL,NULL,NULL),(29,'059','BANCO DO ESTADO DE RONDONIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(30,'070','BANCO DE BRASILIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(31,'104','CAIXA ECONOMICA FEDERAL','img/bancos/bcai.jpg',NULL,NULL,NULL),(32,'106','BANCO ITABANCO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(33,'107','BANCO BBM S.A','img/bancos/default1.png',NULL,NULL,NULL),(34,'109','BANCO CREDIBANCO S.A','img/bancos/default1.png',NULL,NULL,NULL),(35,'116','BANCO B.N.L DO BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(36,'148','MULTI BANCO S.A','img/bancos/default1.png',NULL,NULL,NULL),(37,'151','CAIXA ECONOMICA DO ESTADO DE SAO PAULO','img/bancos/bcai.jpg',NULL,NULL,NULL),(38,'153','CAIXA ECONOMICA DO ESTADO DO R.G.SUL','img/bancos/bcai.jpg',NULL,NULL,NULL),(39,'165','BANCO NORCHEM S.A','img/bancos/default1.png',NULL,NULL,NULL),(40,'166','BANCO INTER-ATLANTICO S.A','img/bancos/default1.png',NULL,NULL,NULL),(41,'168','BANCO C.C.F. BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(42,'175','CONTINENTAL BANCO S.A','img/bancos/default1.png',NULL,NULL,NULL),(43,'184','BBA -CREDITANSTALT S.A','img/bancos/default1.png',NULL,NULL,NULL),(44,'199','BANCO FINANCIAL PORTUGUES','img/bancos/default1.png',NULL,NULL,NULL),(45,'200','BANCO FRICRISA AXELRUD S.A','img/bancos/default1.png',NULL,NULL,NULL),(46,'201','BANCO AUGUSTA INDUSTRIA E COMERCIAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(47,'204','BANCO S.R.L S.A','img/bancos/default1.png',NULL,NULL,NULL),(48,'205','BANCO SUL AMERICA S.A','img/bancos/default1.png',NULL,NULL,NULL),(49,'206','BANCO MARTINELLI S.A','img/bancos/default1.png',NULL,NULL,NULL),(50,'208','BANCO PACTUAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(51,'210','DEUTSCH SUDAMERIKANICHE BANK AG','img/bancos/default1.png',NULL,NULL,NULL),(52,'211','BANCO SISTEMA S.A','img/bancos/default1.png',NULL,NULL,NULL),(53,'212','BANCO MATONE S.A','img/bancos/default1.png',NULL,NULL,NULL),(54,'213','BANCO ARBI S.A','img/bancos/default1.png',NULL,NULL,NULL),(55,'214','BANCO DIBENS S.A','img/bancos/default1.png',NULL,NULL,NULL),(56,'215','BANCO AMERICA DO SUL S.A','img/bancos/default1.png',NULL,NULL,NULL),(57,'216','BANCO REGIONAL MALCON S.A','img/bancos/default1.png',NULL,NULL,NULL),(58,'217','BANCO AGROINVEST S.A','img/bancos/default1.png',NULL,NULL,NULL),(59,'218','BBS -BANCO BONSUCESSO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(60,'219','BANCO DE CREDITO DE SAO PAULO S.A','img/bancos/default1.png',NULL,NULL,NULL),(61,'220','BANCO CREFISUL','img/bancos/default1.png',NULL,NULL,NULL),(62,'221','BANCO GRAPHUS S.A','img/bancos/default1.png',NULL,NULL,NULL),(63,'222','BANCO AGF BRASIL S. A.','img/bancos/default1.png',NULL,NULL,NULL),(64,'223','BANCO INTERUNION S.A','img/bancos/default1.png',NULL,NULL,NULL),(65,'224','BANCO FIBRA S.A','img/bancos/default1.png',NULL,NULL,NULL),(66,'225','BANCO BRASCAN S.A','img/bancos/default1.png',NULL,NULL,NULL),(67,'228','BANCO ICATU S.A','img/bancos/default1.png',NULL,NULL,NULL),(68,'229','BANCO CRUZEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(69,'230','BANCO BANDEIRANTES S.A','img/bancos/default1.png',NULL,NULL,NULL),(70,'231','BANCO BOAVISTA S.A','img/bancos/default1.png',NULL,NULL,NULL),(71,'232','BANCO INTERPART S.A','img/bancos/default1.png',NULL,NULL,NULL),(72,'233','BANCO MAPPIN S.A','img/bancos/default1.png',NULL,NULL,NULL),(73,'234','BANCO LAVRA S.A.','img/bancos/default1.png',NULL,NULL,NULL),(74,'235','BANCO LIBERAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(75,'236','BANCO CAMBIAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(76,'237','BANCO BRADESCO S.A','img/bancos/bbra.jpg',NULL,NULL,NULL),(77,'239','BANCO BANCRED S.A','img/bancos/default1.png',NULL,NULL,NULL),(78,'240','BANCO DE CREDITO REAL DE MINAS GERAIS S.','img/bancos/default1.png',NULL,NULL,NULL),(79,'241','BANCO CLASSICO S.A','img/bancos/default1.png',NULL,NULL,NULL),(80,'242','BANCO EUROINVEST S.A','img/bancos/default1.png',NULL,NULL,NULL),(81,'243','BANCO STOCK S.A','img/bancos/default1.png',NULL,NULL,NULL),(82,'244','BANCO CIDADE S.A','img/bancos/default1.png',NULL,NULL,NULL),(83,'245','BANCO EMPRESARIAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(84,'246','BANCO ABC ROMA S.A','img/bancos/default1.png',NULL,NULL,NULL),(85,'247','BANCO OMEGA S.A','img/bancos/default1.png',NULL,NULL,NULL),(86,'249','BANCO INVESTCRED S.A','img/bancos/default1.png',NULL,NULL,NULL),(87,'250','BANCO SCHAHIN CURY S.A','img/bancos/default1.png',NULL,NULL,NULL),(88,'251','BANCO SAO JORGE S.A.','img/bancos/default1.png',NULL,NULL,NULL),(89,'252','BANCO FININVEST S.A','img/bancos/default1.png',NULL,NULL,NULL),(90,'254','BANCO PARANA BANCO S.A','img/bancos/default1.png',NULL,NULL,NULL),(91,'255','MILBANCO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(92,'256','BANCO GULVINVEST S.A','img/bancos/default1.png',NULL,NULL,NULL),(93,'258','BANCO INDUSCRED S.A','img/bancos/default1.png',NULL,NULL,NULL),(94,'261','BANCO VARIG S.A','img/bancos/default1.png',NULL,NULL,NULL),(95,'262','BANCO BOREAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(96,'263','BANCO CACIQUE','img/bancos/default1.png',NULL,NULL,NULL),(97,'264','BANCO PERFORMANCE S.A','img/bancos/default1.png',NULL,NULL,NULL),(98,'265','BANCO FATOR S.A','img/bancos/default1.png',NULL,NULL,NULL),(99,'266','BANCO CEDULA S.A','img/bancos/default1.png',NULL,NULL,NULL),(100,'267','BANCO BBM-COM.C.IMOB.CFI S.A.','img/bancos/default1.png',NULL,NULL,NULL),(101,'275','BANCO REAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(102,'277','BANCO PLANIBANC S.A','img/bancos/default1.png',NULL,NULL,NULL),(103,'282','BANCO BRASILEIRO COMERCIAL','img/bancos/default1.png',NULL,NULL,NULL),(104,'291','BANCO DE CREDITO NACIONAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(105,'294','BCR -BANCO DE CREDITO REAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(106,'295','BANCO CREDIPLAN S.A','img/bancos/default1.png',NULL,NULL,NULL),(107,'300','BANCO DE LA NACION ARGENTINA S.A','img/bancos/default1.png',NULL,NULL,NULL),(108,'302','BANCO DO PROGRESSO S.A','img/bancos/default1.png',NULL,NULL,NULL),(109,'303','BANCO HNF S.A.','img/bancos/default1.png',NULL,NULL,NULL),(110,'304','BANCO PONTUAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(111,'308','BANCO COMERCIAL BANCESA S.A.','img/bancos/default1.png',NULL,NULL,NULL),(112,'318','BANCO B.M.G. S.A','img/bancos/default1.png',NULL,NULL,NULL),(113,'320','BANCO INDUSTRIAL E COMERCIAL','img/bancos/default1.png',NULL,NULL,NULL),(114,'341','BANCO ITAU S.A','img/bancos/bita.jpg',NULL,NULL,NULL),(115,'346','BANCO FRANCES E BRASILEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(116,'347','BANCO SUDAMERIS BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(117,'351','BANCO BOZANO SIMONSEN S.A','img/bancos/default1.png',NULL,NULL,NULL),(118,'353','BANCO GERAL DO COMERCIO S.A','img/bancos/default1.png',NULL,NULL,NULL),(119,'356','ABN AMRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(120,'366','BANCO SOGERAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(121,'369','PONTUAL','img/bancos/default1.png',NULL,NULL,NULL),(122,'370','BEAL -BANCO EUROPEU PARA AMERICA LATINA','img/bancos/default1.png',NULL,NULL,NULL),(123,'372','BANCO ITAMARATI S.A','img/bancos/default1.png',NULL,NULL,NULL),(124,'375','BANCO FENICIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(125,'376','CHASE MANHATTAN BANK S.A','img/bancos/default1.png',NULL,NULL,NULL),(126,'388','BANCO MERCANTIL DE DESCONTOS S/A','img/bancos/default1.png',NULL,NULL,NULL),(127,'389','BANCO MERCANTIL DO BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(128,'392','BANCO MERCANTIL DE SAO PAULO S.A','img/bancos/default1.png',NULL,NULL,NULL),(129,'394','BANCO B.M.C. S.A','img/bancos/default1.png',NULL,NULL,NULL),(130,'399','BANCO BAMERINDUS DO BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(131,'409','UNIBANCO -UNIAO DOS sis_BANCOS BRASILEIROS','img/bancos/default1.png',NULL,NULL,NULL),(132,'412','BANCO NACIONAL DA BAHIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(133,'415','BANCO NACIONAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(134,'420','BANCO NACIONAL DO NORTE S.A','img/bancos/default1.png',NULL,NULL,NULL),(135,'422','BANCO SAFRA S.A','img/bancos/default1.png',NULL,NULL,NULL),(136,'424','BANCO NOROESTE S.A','img/bancos/default1.png',NULL,NULL,NULL),(137,'434','BANCO FORTALEZA S.A','img/bancos/default1.png',NULL,NULL,NULL),(138,'453','BANCO RURAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(139,'456','BANCO TOKIO S.A','img/bancos/default1.png',NULL,NULL,NULL),(140,'464','BANCO SUMITOMO BRASILEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(141,'466','BANCO MITSUBISHI BRASILEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(142,'472','LLOYDS BANK PLC','img/bancos/default1.png',NULL,NULL,NULL),(143,'473','BANCO FINANCIAL PORTUGUES S.A','img/bancos/default1.png',NULL,NULL,NULL),(144,'477','CITIBANK N.A','img/bancos/default1.png',NULL,NULL,NULL),(145,'479','BANCO DE BOSTON S.A','img/bancos/default1.png',NULL,NULL,NULL),(146,'480','BANCO PORTUGUES DO ATLANTICO-BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(147,'483','BANCO AGRIMISA S.A.','img/bancos/default1.png',NULL,NULL,NULL),(148,'487','DEUTSCHE BANK S.A -BANCO ALEMAO','img/bancos/default1.png',NULL,NULL,NULL),(149,'488','BANCO J. P. MORGAN S.A','img/bancos/default1.png',NULL,NULL,NULL),(150,'489','BANESTO BANCO URUGAUAY S.A','img/bancos/default1.png',NULL,NULL,NULL),(151,'492','INTERNATIONALE NEDERLANDEN BANK N.V.','img/bancos/default1.png',NULL,NULL,NULL),(152,'493','BANCO UNION S.A.C.A','img/bancos/default1.png',NULL,NULL,NULL),(153,'494','BANCO LA REP. ORIENTAL DEL URUGUAY','img/bancos/default1.png',NULL,NULL,NULL),(154,'495','BANCO LA PROVINCIA DE BUENOS AIRES','img/bancos/default1.png',NULL,NULL,NULL),(155,'496','BANCO EXTERIOR DE ESPANA S.A','img/bancos/default1.png',NULL,NULL,NULL),(156,'498','CENTRO HISPANO BANCO','img/bancos/default1.png',NULL,NULL,NULL),(157,'499','BANCO IOCHPE S.A','img/bancos/default1.png',NULL,NULL,NULL),(158,'501','BANCO BRASILEIRO IRAQUIANO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(159,'502','BANCO SANTANDER S.A','img/bancos/bsan.jpg',NULL,NULL,NULL),(160,'504','BANCO MULTIPLIC S.A','img/bancos/default1.png',NULL,NULL,NULL),(161,'505','BANCO GARANTIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(162,'600','BANCO LUSO BRASILEIRO S.A','img/bancos/default1.png',NULL,NULL,NULL),(163,'601','BFC BANCO S.A.','img/bancos/default1.png',NULL,NULL,NULL),(164,'602','BANCO PATENTE S.A','img/bancos/default1.png',NULL,NULL,NULL),(165,'604','BANCO INDUSTRIAL DO BRASIL S.A','img/bancos/default1.png',NULL,NULL,NULL),(166,'607','BANCO SANTOS NEVES S.A','img/bancos/default1.png',NULL,NULL,NULL),(167,'608','BANCO OPEN S.A','img/bancos/default1.png',NULL,NULL,NULL),(168,'610','BANCO V.R. S.A','img/bancos/default1.png',NULL,NULL,NULL),(169,'611','BANCO PAULISTA S.A','img/bancos/default1.png',NULL,NULL,NULL),(170,'612','BANCO GUANABARA S.A','img/bancos/default1.png',NULL,NULL,NULL),(171,'613','BANCO PECUNIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(172,'616','BANCO INTERPACIFICO S.A','img/bancos/default1.png',NULL,NULL,NULL),(173,'617','BANCO INVESTOR S.A.','img/bancos/default1.png',NULL,NULL,NULL),(174,'618','BANCO TENDENCIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(175,'621','BANCO APLICAP S.A.','img/bancos/default1.png',NULL,NULL,NULL),(176,'622','BANCO DRACMA S.A','img/bancos/default1.png',NULL,NULL,NULL),(177,'623','BANCO PANAMERICANO S.A','img/bancos/default1.png',NULL,NULL,NULL),(178,'624','BANCO GENERAL MOTORS S.A','img/bancos/default1.png',NULL,NULL,NULL),(179,'625','BANCO ARAUCARIA S.A','img/bancos/default1.png',NULL,NULL,NULL),(180,'626','BANCO FICSA S.A','img/bancos/default1.png',NULL,NULL,NULL),(181,'627','BANCO DESTAK S.A','img/bancos/default1.png',NULL,NULL,NULL),(182,'628','BANCO CRITERIUM S.A','img/bancos/default1.png',NULL,NULL,NULL),(183,'629','BANCORP BANCO COML. E. DE INVESTMENTO','img/bancos/default1.png',NULL,NULL,NULL),(184,'630','BANCO INTERCAP S.A','img/bancos/default1.png',NULL,NULL,NULL),(185,'633','BANCO REDIMENTO S.A','img/bancos/default1.png',NULL,NULL,NULL),(186,'634','BANCO TRIANGULO S.A','img/bancos/default1.png',NULL,NULL,NULL),(187,'635','BANCO DO ESTADO DO AMAPA S.A','img/bancos/default1.png',NULL,NULL,NULL),(188,'637','BANCO SOFISA S.A','img/bancos/default1.png',NULL,NULL,NULL),(189,'638','BANCO PROSPER S.A','img/bancos/default1.png',NULL,NULL,NULL),(190,'639','BIG S.A. -BANCO IRMAOS GUIMARAES','img/bancos/default1.png',NULL,NULL,NULL),(191,'640','BANCO DE CREDITO METROPOLITANO S.A','img/bancos/default1.png',NULL,NULL,NULL),(192,'641','BANCO EXCEL ECONOMICO S/A','img/bancos/default1.png',NULL,NULL,NULL),(193,'643','BANCO SEGMENTO S.A','img/bancos/default1.png',NULL,NULL,NULL),(194,'645','BANCO DO ESTADO DE RORAIMA S.A','img/bancos/default1.png',NULL,NULL,NULL),(195,'647','BANCO MARKA S.A','img/bancos/default1.png',NULL,NULL,NULL),(196,'648','BANCO ATLANTIS S.A','img/bancos/default1.png',NULL,NULL,NULL),(197,'649','BANCO DIMENSAO S.A','img/bancos/default1.png',NULL,NULL,NULL),(198,'650','BANCO PEBB S.A','img/bancos/default1.png',NULL,NULL,NULL),(199,'652','BANCO FRANCES E BRASILEIRO SA','img/bancos/default1.png',NULL,NULL,NULL),(200,'653','BANCO INDUSVAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(201,'654','BANCO A. J. RENNER S.A','img/bancos/default1.png',NULL,NULL,NULL),(202,'655','BANCO VOTORANTIM S.A.','img/bancos/default1.png',NULL,NULL,NULL),(203,'656','BANCO MATRIX S.A','img/bancos/default1.png',NULL,NULL,NULL),(204,'657','BANCO TECNICORP S.A','img/bancos/default1.png',NULL,NULL,NULL),(205,'658','BANCO PORTO REAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(206,'702','BANCO SANTOS S.A','img/bancos/default1.png',NULL,NULL,NULL),(207,'705','BANCO INVESTCORP S.A.','img/bancos/default1.png',NULL,NULL,NULL),(208,'707','BANCO DAYCOVAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(209,'711','BANCO VETOR S.A.','img/bancos/default1.png',NULL,NULL,NULL),(210,'713','BANCO CINDAM S.A','img/bancos/default1.png',NULL,NULL,NULL),(211,'715','BANCO VEGA S.A','img/bancos/default1.png',NULL,NULL,NULL),(212,'718','BANCO OPERADOR S.A','img/bancos/default1.png',NULL,NULL,NULL),(213,'719','BANCO PRIMUS S.A','img/bancos/default1.png',NULL,NULL,NULL),(214,'720','BANCO MAXINVEST S.A','img/bancos/default1.png',NULL,NULL,NULL),(215,'721','BANCO CREDIBEL S.A','img/bancos/default1.png',NULL,NULL,NULL),(216,'722','BANCO INTERIOR DE SAO PAULO S.A','img/bancos/default1.png',NULL,NULL,NULL),(217,'724','BANCO PORTO SEGURO S.A','img/bancos/default1.png',NULL,NULL,NULL),(218,'725','BANCO FINABANCO S.A','img/bancos/default1.png',NULL,NULL,NULL),(219,'726','BANCO UNIVERSAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(220,'728','BANCO FITAL S.A','img/bancos/default1.png',NULL,NULL,NULL),(221,'729','BANCO FONTE S.A','img/bancos/default1.png',NULL,NULL,NULL),(222,'730','BANCO COMERCIAL PARAGUAYO S.A','img/bancos/default1.png',NULL,NULL,NULL),(223,'731','BANCO GNPP S.A.','img/bancos/default1.png',NULL,NULL,NULL),(224,'732','BANCO PREMIER S.A.','img/bancos/default1.png',NULL,NULL,NULL),(225,'733','BANCO NACOES S.A.','img/bancos/default1.png',NULL,NULL,NULL),(226,'734','BANCO GERDAU S.A','img/bancos/default1.png',NULL,NULL,NULL),(227,'735','BACO POTENCIAL','img/bancos/default1.png',NULL,NULL,NULL),(228,'736','BANCO UNITED S.A','img/bancos/default1.png',NULL,NULL,NULL),(229,'737','THECA','img/bancos/default1.png',NULL,NULL,NULL),(230,'738','MARADA','img/bancos/default1.png',NULL,NULL,NULL),(231,'739','BGN','img/bancos/default1.png',NULL,NULL,NULL),(232,'740','BCN BARCLAYS','img/bancos/default1.png',NULL,NULL,NULL),(233,'741','BRP','img/bancos/default1.png',NULL,NULL,NULL),(234,'742','EQUATORIAL','img/bancos/default1.png',NULL,NULL,NULL),(235,'743','BANCO EMBLEMA S.A','img/bancos/default1.png',NULL,NULL,NULL),(236,'744','THE FIRST NATIONAL BANK OF BOSTON','img/bancos/default1.png',NULL,NULL,NULL),(237,'745','CITIBAN N.A.','img/bancos/default1.png',NULL,NULL,NULL),(238,'746','MODAL SA','img/bancos/default1.png',NULL,NULL,NULL),(239,'747','RAIBOBANK DO BRASIL','img/bancos/default1.png',NULL,NULL,NULL),(240,'748','SICREDI','img/bancos/default1.png',NULL,NULL,NULL),(241,'749','BRMSANTIL SA','img/bancos/default1.png',NULL,NULL,NULL),(242,'750','BANCO REPUBLIC NATIONAL OF NEW YORK (BRA','img/bancos/default1.png',NULL,NULL,NULL),(243,'751','DRESDNER BANK LATEINAMERIKA-BRASIL S/A','img/bancos/default1.png',NULL,NULL,NULL),(244,'752','BANCO BANQUE NATIONALE DE PARIS BRASIL S','img/bancos/default1.png',NULL,NULL,NULL),(245,'753','BANCO COMERCIAL URUGUAI S.A.','img/bancos/default1.png',NULL,NULL,NULL),(246,'755','BANCO MERRILL LYNCH S.A','img/bancos/default1.png',NULL,NULL,NULL),(247,'756','BANCO COOPERATIVO DO BRASIL S.A.','img/bancos/default1.png',NULL,NULL,NULL),(248,'757','BANCO KEB DO BRASIL S.A.','img/bancos/default1.png',NULL,NULL,NULL),(250,'102','XP INVESTIMENTO CCTVM S/A','img/bancos/xp.png',NULL,NULL,NULL),(251,'000','Outros','img/bancos/default1.png','2017-08-31 07:00:00',NULL,NULL);
/*!40000 ALTER TABLE `uni_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_tipos`
--

DROP TABLE IF EXISTS `uni_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `uni_tipos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tabela` varchar(100) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_tipos`
--

LOCK TABLES `uni_tipos` WRITE;
/*!40000 ALTER TABLE `uni_tipos` DISABLE KEYS */;
INSERT INTO `uni_tipos` VALUES (1,'admin','Administrador',NULL,NULL,NULL,NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(2,'usuario','Cliente',NULL,'mdi-account-box','Cli',NULL,'2018-07-05 17:25:07','2018-07-05 17:25:07'),(3,'usuario','Funcionário',NULL,'mdi-account-box','Fun',NULL,'2018-07-05 17:25:07','2018-07-05 17:25:07'),(4,'usuario','Consultor-AM',NULL,'mdi-account-box','CAM',NULL,'2018-07-05 17:25:07','2018-07-05 17:25:07'),(5,'usuario','Consultor-PA',NULL,'mdi-account-box','CPA',NULL,'2018-07-05 17:25:07','2018-07-05 17:25:07'),(6,'empresa','Empresa',NULL,'mdi-store','',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(7,'empresa','Fornecedor',NULL,'mdi-truck',NULL,NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(8,'empresa','Cliente',NULL,'mdi-account-multiple',NULL,NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(9,'empresa','Detran-AM',NULL,'mdi-account-multiple','EAM',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(10,'empresa','Detran-PA',NULL,'mdi-account-multiple','EPA',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(11,'empresa','Detran-Parceiro',NULL,'mdi-account-multiple','EDP',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(12,'usuario','Consultor-Parceiro',NULL,'mdi-account-box','CDP',NULL,'2018-07-05 17:25:07','2018-07-05 17:25:07');
/*!40000 ALTER TABLE `uni_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contas`
--

DROP TABLE IF EXISTS `user_contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_contas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `uni_banco_id` int(10) unsigned NOT NULL,
  `tipo_conta` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `codigo` int(11) NOT NULL,
  `agencia` varchar(10) NOT NULL,
  `conta` varchar(15) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_contas_user_id_foreign` (`user_id`),
  KEY `user_contas_uni_banco_id_foreign` (`uni_banco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contas`
--

LOCK TABLES `user_contas` WRITE;
/*!40000 ALTER TABLE `user_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contatos`
--

DROP TABLE IF EXISTS `user_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_contatos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `tipo_contato` tinyint(4) NOT NULL,
  `tipo_cadastro` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  `detalhe` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_contatos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contatos`
--

LOCK TABLES `user_contatos` WRITE;
/*!40000 ALTER TABLE `user_contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_enderecos`
--

DROP TABLE IF EXISTS `user_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_enderecos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `tipo_endereco` tinyint(4) NOT NULL,
  `principal` tinyint(4) NOT NULL DEFAULT '0',
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado_uf` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_enderecos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_enderecos`
--

LOCK TABLES `user_enderecos` WRITE;
/*!40000 ALTER TABLE `user_enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mais_infos`
--

DROP TABLE IF EXISTS `user_mais_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_mais_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `meta` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_mais_infos_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mais_infos`
--

LOCK TABLES `user_mais_infos` WRITE;
/*!40000 ALTER TABLE `user_mais_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mais_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sis_account_id` int(10) unsigned NOT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `uni_tipo_id` int(10) unsigned NOT NULL,
  `cnpj_cpf` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foto_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_sis_account_id_foreign` (`sis_account_id`),
  KEY `users_empresa_id_foreign` (`empresa_id`),
  KEY `users_user_tipo_id_foreign` (`uni_tipo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,1,'00000000000','Administrador do Sistema','admin@diretoriodigital.com.br',NULL,NULL,'$2y$10$AfPf8Km1IC9fMPQQH1Fp/.5uZQGFpTaIXNrQJQcvIgOlJO0FSEByu','5ngWHBHKYgEfmrU4iAhEcZhB69wzO9BAcTxVJyo068Aemo36HM1XPByVMCBc',NULL,'2018-07-05 21:25:07','2018-07-05 21:25:07'),(2,2,2,1,'74036807234','Diogo Noleto Da Silva','diogonoletodasilva@gmail.com',NULL,NULL,'$2y$10$jPxM/gbxnqyR0H6KUpsaf.YCMzQIeR8XtWGZ0h3cl93NU3p7PYKwS','N1FR1sOgz7P42m552e6cuLQKIwtQvwywwDClvwC0g9iVB6SbXzNtkgKa6yGu',NULL,'2018-01-10 02:14:00','2018-09-19 18:20:48'),(25,2,1436,3,'94474443268','Andreza Silva','andreza.silva@nyata.com.br','storage/accounts/5/img/avatars/25/avatar20180611073536.png',NULL,'$2y$10$xdntI8KIoIeu7BB8BRwL5u1ngv8o5e5ZLf98CXgbA0dxgCYZiYB9y','IlyWDRt5jmhEgKIsM2bwTqGr1pgEIBpcFBjOhFwmcw1Rf0Kjp59s5Lo8xYoz',NULL,'2018-05-15 07:33:03','2018-07-19 23:02:50'),(26,2,2092,3,'74317016249','Marcos Paulo','marcosp.castro@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$fI.rWwoT6cOOPTh/Gce/uONYFCOgo69QRMJzpVCgP/3ZttGpqn3Ki','AzGk7pezS5z6yH3W3P5lTJLpVo7OYEFym0Lqh9pAw9HShK0vyVS0k7Es513W',NULL,'2018-05-15 07:51:52','2018-07-19 23:19:56'),(27,2,2092,3,'74590162253','Renan Arce','renan.arce@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$f5l.ywI8VEbfK4atq9.P/ufoL9aSQl4E7TXL61aPqm1J/w27uMe9a','qP2HA54GuEakdAgBVx5Bf3VXX42OHPhh2kgsJ4cU1NP0pZg4ZSX8HSrnzmyB',NULL,'2018-05-15 07:52:50','2018-08-14 15:33:58'),(29,2,1737,5,'84347864272','Mauricelia Paes Americo','mauryamerico@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$Ah/7l0CshdHVsEcWzSpQmOGMXgbaXy727NjZronbGUmC9Z3K.kjHa','y0fEiNGS0KQCOHUMxhqbPwalzRk7k3G8zkxxj5L80zaychobAnpVfd7LJyJu',NULL,'2018-05-15 15:37:04','2018-08-16 13:00:07'),(30,2,1731,5,'87170876272','Gleise Moura Chavier da Silva','moura_gleice@yahoo.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$//KgZLR//dmpxWrbecH4d.uw1YHRp/VKDktRbamN5/PkSHQHnP3dq','9g98RMiiwjTI5fLsTIIpd1FyQ9q3h7WtzA62lPyzKOaJbBWP3ukkyAI1pQjp',NULL,'2018-05-15 15:39:57','2018-08-13 10:12:33'),(31,2,1436,5,'80430651287','Carlos Alberto Brasil Ferreira Jr.','cbrasilferreira@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$HdF9Ap4MlsXeGFjPjGNuUu6Xtmc4ocGdw93u3nspJUUM4VQzToD4S','Gcd9JKhvVPDWPlu4ueM1m0swPlmMVn2E9Ek4HZdffTDAwyVrIdsWIR8uSeFN','2018-08-14 02:07:13','2018-05-15 15:42:25','2018-08-14 02:07:13'),(32,2,1730,5,'79894631215','Glauce Fontes','glaucefcbarroso@gmail.com','storage/accounts/1/img/avatars/32/avatar20180613231918.png',NULL,'$2y$10$F2mvuXydynDxocLEkAZBs.aYtP6NJ9SgfnL9Ph47HY37IPNzlknj6','ENFuk13Bm32yj93BcP7hwRRh8iungIboxdKIiyR3LidBGBepzQAB7xkIjrwI',NULL,'2018-05-15 20:58:42','2018-08-13 10:12:23'),(33,2,1436,3,'10304854883','RICARDO BORGES','ricardo.borges@nyata.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$xQqk/AQC85qy.2.kJnjLTuR00W.BfM6142nOz8yt2WixN.OeTbEO6','HQH2zQwMlQg88hv7zAHMh2pa7SWi5fZoXOmltm9nDL2fxGl4ZFWNPDvLPBgi',NULL,'2018-05-15 21:02:23','2018-08-13 12:00:51'),(34,2,1436,3,'41564797813','Henrique Bondi','henrique.bondi@nyata.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$KwEqhp6qRRnenYfg1vpC7eJ3wnkKuh5LhItwGpB83XG/iNvxC1U3K','UAsw6qp6ZjSbHRf5kLIuy5OzoH2QtYc2Rc3SI8xiVQLW0SXjnjj1gGMZ5QfW',NULL,'2018-05-15 21:03:40','2018-09-18 13:40:15'),(35,2,1436,3,'10108455866','Sandra Bondi','sandra.bondi@nyata.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$06lADPnGo5UTeTVqwCvxB.PyiAAnypmQcivVunfSsOBTDF8h29a9.','9EVWtiB5aDTq19E1zAZklXMUi3W4hiVrBDirH0VpYxh0LklBYJrYtcfgIvy3',NULL,'2018-05-15 21:05:26','2018-07-19 23:20:25'),(36,2,1436,3,'78472849287','Kelly Enes','atendimento@nyata.com.br','storage/accounts/1/img/avatars/36/avatar20180717171103.jpg',NULL,'$2y$10$sBGmH/1ElN63fPs1JJ108eR4QgVknqiIHniv8oz/7e.8e8NK7ty6W','7hyeYgIfBmn5WpDG97PGUIG9GexLWTQIKzBQCOaFEDsXIEFo1zDgtckiASHv',NULL,'2018-05-15 21:07:24','2018-08-16 13:40:17'),(37,2,1436,3,'02421947294','Igor de Araujo','igor.idaf@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$aFUnrkY3NpvBQxYWGNQmreOBRD6cfjdgot6LJgEuE499DO69r4Uwq','1GNsosVPmcMgL84kIWF2dZ55nbF2r3ZI4bq4hWBb9F8ZjDAXhs3oO3FwxxDu',NULL,'2018-05-15 21:09:11','2018-07-19 23:19:29'),(38,2,1436,3,'02496078242','Agatha Pimentel','agatha.pimentel@nyata.com.br','storage/accounts/2/img/avatars/38/avatar20180718023142.png',NULL,'$2y$10$AcMlyK37Dlguz066TRDT2.SoZzDpoIPlOVMT7NSIj16xIv8BXx3ze',NULL,NULL,'2018-05-15 21:10:44','2018-07-19 23:03:32'),(39,2,1732,5,'60613017234','Elke Helena Paz Vieira','paeselke1@Hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$BCUx132/szkLpeOqTFCikOGi.pwCsi.s1PqysojRoGQ4JR1tibyS.','gTQYtep56Xst8uV1XWEK7HvVXvUXQuQiEXVlgpAe5soFOnxdW4HI0n82tiv9',NULL,'2018-05-16 01:41:04','2018-08-13 10:12:02'),(40,2,1728,5,'91883512204','Rosana Quemmila Ferreira Castro','rosanaquemmila@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$LXv3E3DOgj/mGMV3VMI4N.1TjSxorKUxzxum4J.FF44T1HiHoC1eS','EXHmvMGXz4YAMcezm7lDPBECXUHiWWLACJyV4zD0mONbSGVbd99ivIL2H9pM',NULL,'2018-05-17 20:21:35','2018-08-13 10:09:54'),(41,2,1727,5,'88682676249','Valdineia de Sousa bentos','valbentes2010@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$tpnouSD/pQ5.LKaJSaENIO5pqlx/qvEkA.7kwNxKdWR/fM.csNDWC','NCyZPZXSN0nqgtIQlrVFQ99uUdYwas9QTwtaYmmCYNqbbGZ25aRhT5c7bbJB',NULL,'2018-05-18 10:23:45','2018-08-13 10:09:35'),(42,2,1727,5,'02073886280','Anna Kelly dos Santos Silva','anna.s.tm@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$uEzYbRGGfUOvkmL0YlgUPOlSA3mvvh8v0jb5L6xzWiutm.FI8GtqG','qm4ZvKcO4jlzbtCoyKJGeye8S0f5m59brSppuArjx3KRrfRnj8fK8REqnlc6',NULL,'2018-05-18 10:26:07','2018-07-20 02:00:04'),(43,2,1427,5,'00895654369','Dorilene Carvalho de Araujo','doryhta@hotmail.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$C/g8q8E7mH0dCVlqi9LdD.0XuVSpwnkpWI72/dKN0n4.vdpBpC8Ue','QMbNXYJLrazhEbIpTtjsJaWk5ujZAefayAORjfTaA0e77HofI8FufL8opSCP',NULL,'2018-05-19 12:53:45','2018-08-13 10:11:53'),(44,2,1427,5,'97524948204','Arnailma Selma Ferreira Gomes','ilma_selma@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$QXxUMvpgiBVdxClCUTWPI.Bwvyf5UCcwoPAfjjknT7YLWYuunWCHq','eMCyCdsuLZjcsH6QjtDNtHjjFi4bb6rE1e7XkzNpUxFOIzEcjlb0xiEGiBeL',NULL,'2018-05-19 12:55:53','2018-07-20 02:02:18'),(45,2,1432,5,'70112280200','Mariany Campelo','marianyrego@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$AwUnv1yOw5rJAoDvPlEWS.O3EPvtpLmYY5DGXuP1Gr1d/Ksw3ToZq','9X4dYtAwvA09wnjmzAJ0rybNL2u0hRb7kyJfJqCeAQgtJo84D7nSiBz8hxqY',NULL,'2018-05-25 11:04:53','2018-08-13 10:10:14'),(46,2,1431,5,'55678602268','Juliane Rodrigues Brito','rodrigues.juliane215@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$3eN7PW2zQMe2DkEybECtmusAUQVocPRruL0C7gXLP05EPmsKoIPZi','CS6CTwc0NGjRHAVCmZPdqQcs03Q0Q28CP6lKgCv6vaevgHfU8tOcfXXWHywE',NULL,'2018-05-28 07:05:22','2018-08-13 10:12:51'),(47,2,1429,5,'99306824149','Divina Meiri Cordeiro da Costa','divinameiri@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$G27KEE1qLl98gIiufAc9e.jl5HdxRCmTgM82190R53qd6ClQHwGR2','dvUEa05mzeN4MxRJAXIw8tsXQHqHv4Gt4CvNoPWDI84lRqG5MjiXCO8RHv1b',NULL,'2018-05-28 07:11:27','2018-08-13 10:11:41'),(48,2,1428,5,'03202958267','Diego Américo Ribeiro','diegoamerico835@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$BhLaCSGnW6gtilioC9ycJuGjD8k1GuYBK7sPVzIZVE0IhyzV11WYy','1q2RbZGBYI4ni5zjaat6yM0g2fqzCvlwuNtSZxaF4btuEL7TYfyilt2p9ufB',NULL,'2018-05-28 07:14:05','2018-08-13 10:11:32'),(49,2,1735,5,'00035147229','Simone Queiroz Santos','simonequeirozsantos302@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$bDfMHuX9Y04hgb.Mz7KgduGAs3wuV3Uz4H2by17psPBYoRl0fj0eS','oA3TkUbupuMzvD9L2TPxuakNdthz3KNkhLqMLvUQaiKVrdav4FTGwpwO1tbU',NULL,'2018-05-29 10:54:14','2018-08-13 10:09:44'),(50,2,1730,5,'04222701211','Andressa Marcely Nunes de Oliveira','dressamarcely92@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$0D6S/YbKtn1SxSe5SOSgl.Qnx5aeNERVNEWRIm9BW0aZYXe586Ady','0C2Eb90yJGQ2pnmSmLi5N9gfPGHmSB9h7drCUKmOiDSXjc56Ud7k88moAYK0',NULL,'2018-05-29 22:30:23','2018-07-20 01:59:49'),(51,2,1733,5,'00273089285','Emilia da Silva Nascimento','emiliasn92@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$v72N1/nVVQGL3YTmVj8/wuM1u4PBYuCeFWgVmVv2DTmehNRCmecKi','nJuZNZAoxHEws8VVkdzquz3fjsWTngAMbph6mwqI5yryWBMZbKOxe3s8UHv4',NULL,'2018-05-29 23:16:15','2018-08-13 10:12:11'),(52,2,1433,5,'02992815233','Lorena Gabriela Silva Santos','loorepayxao@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$dzuOo3x.8t6gihgJ62lXgOcV8CvRiHdNis3E//rEgfCTzOfIZkRZC','wx2xVREFTL5wHjqoE6ytEc5qmi82RxeUJYoYkcFkfG5ignf9oABcZzP0arZG',NULL,'2018-06-09 00:33:55','2018-08-13 10:10:27'),(53,2,1730,5,'75293161253','Vanessa de Castro Batista','vanessabiju50@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$kulaad/lAzeTH0B.o5ZvmeWHkXYQ4AE7zPVyMdmkVlQcmbSHx72jG','Kf4Cr1JQGcGrI3XSzI1kH1PVX9ebGreuJlQK88QI5fBXdtgmN8JpsFAuBgCx',NULL,'2018-06-09 00:35:12','2018-08-13 10:09:25'),(86,2,5660,5,'02447907281','Crislene Machado Queiroz (Breves)','crislene_irislene@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$8RYVx3o/GAHkQjTgiz3iF.oRENLrdPPFQ2/4IZZd9de8LcjcYYRdy','XskiPsHruTYNxvAQMpdhbuO4gIBXLF1KmakEOxS3GCOrc9trVfRQSXlegTf3',NULL,'2018-06-19 09:37:54','2018-08-13 20:39:00'),(87,2,2226,5,'01171746296','Marcos Lourenço Nascimento dos Reis','1lourereis@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$Fc3Mna8dl58pmeWvkozK8.LgaL2hC4okNnO6nIz/1kYpdo6DJvmim','efSV6WgOrSObXeF4tU7Qt4GoYBdsk6dLjnKyv5T5uGXllgAQ4cizM4ElbLAQ',NULL,'2018-06-26 20:11:40','2018-08-13 10:22:53'),(88,2,2387,4,'02713805279','Annelisse de Paula Martins Silva','annelissesilva@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$KktkyRnOrDH4/NrWhb/6wOkIjHR7vkpk09qetKKMMMQlAizgoPiUu','jOX556NdcJwBB04Pjvvi6fWPWHyWJLjhGMDqtZk2nJjoqWoIAhCev6i06vPM',NULL,'2018-06-29 03:18:36','2018-08-20 13:55:40'),(89,2,2393,4,'52435660200','Lidianne dos Santos Enis','izabellygeovana200711@outlook.com','img/avatars/avatar-blank.png',NULL,'$2y$10$fQBDcBDhRZni3IAfQusy9u04qY.koGkh0fwBXjoiEPAzqV.o5gXr2',NULL,NULL,'2018-06-29 23:15:23','2018-08-13 10:21:53'),(90,2,2392,4,'83001662204','Leilane dos Santos Enes','enesleilane@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$oE9oihcm/pSE6HUZLluomeLnzKzrbt0rQYEUrEPM9ilmHQAMGej36','juxRU7e1QIgyVkQkk8OM0OdoHSvE0PkRpORZmxuBzXy1njTbUgI5fKzOPfJm',NULL,'2018-06-29 23:22:35','2018-07-20 02:07:22'),(91,2,2475,4,'02094802205','Jessica Rocha do Carmo','rocha.jessica311@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$S6cgJP5GaIb8IsNugqr9hua7OaasiYVPIjIbt0S/iVuMO8o7.vsha',NULL,NULL,'2018-06-29 23:31:16','2018-08-13 10:13:50'),(92,2,2229,4,'00713621265','Leandro Beckman Medeiros','leandro_beckmanmedeiros@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$WoA7brwS/SNOruRZntkVf.KBNZORb/H25qZM7zwlqn2Hn7J2J.Ir.','LIVMv8d8xhBRQ44vtCxJOH9RTbuwO7EpFv4sMKEjSmEfz1mt5gaWjVOW1z9c',NULL,'2018-06-29 23:41:14','2018-08-13 10:14:00'),(93,2,2388,4,'01210064251','Dieison Freire da Silva','amanda.nanda123@outlook.com','img/avatars/avatar-blank.png',NULL,'$2y$10$jecYS5k2Cvh3TVZbVxRSxefSEhUziht2aX2kmm52nIWkXKnmmwvJW','geyIDHn079PBicuNsD0aCgY7LM0smCGKcumkaU6TEMqBhsj8TntK4Qai4RQK',NULL,'2018-06-29 23:45:08','2018-08-13 10:13:27'),(94,2,2390,4,'97556947220','Quelem Brandão Pina','quelembrandao@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$c/eGgNk/fdYid30nsXWd8utRYr5jnzzLWFsXGI6hGcDy6XMlFo5jK',NULL,NULL,'2018-06-30 00:24:15','2018-08-13 10:22:32'),(95,2,2229,4,'02059841267','Daniel Rodrigues Santana','nix-daniel@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$qZFeSIn0mrgoBuqCuk0Y.ejYxQWzNWSDJ5YP3rrCUsLRariu6v4s6',NULL,NULL,'2018-06-30 00:30:03','2018-07-25 22:10:12'),(96,2,2389,4,'74804006249','Maria de Jesus da Silva Pereira','manabonita@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$U.ahIbU3LUbxrPBOf1WvQ.uz38UlJuNhLxxIGlYUO4zGjH3578zHm',NULL,NULL,'2018-06-30 00:36:23','2018-08-13 10:22:11'),(97,2,2385,4,'05081199281','Adriele Ferreira da Silva','adriely5796@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$rh4sJWjzB/Z3X9UzvJ.fUOGhTzJd81ZiKoO3KJua/6TGa./Ts3/1G',NULL,NULL,'2018-06-30 00:42:39','2018-08-17 20:32:48'),(98,2,2384,4,'00753115263','Raullison Santos Farias','raullisonsantos62@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$e8dTn5hyQqyQJGAtcKhhHu5v4SFrqr3/lzgD6JYSsXMTXZJPKO5V.',NULL,NULL,'2018-06-30 01:13:02','2018-08-13 10:22:21'),(99,2,1436,3,'64182517253','Cleiton Moura Xavier','Cleitonmouraxavier@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$XjkNuige45pMrkVswoFpQ.jpdwhpJ6Myz2NBCe6We.6159IVBOwjS','uApfOqIXGfE193AlNYPJU7cf0FY78IYwSt6sBbZFjeJZIKRC6G7dh2zHtjib',NULL,'2018-07-05 23:08:23','2018-07-19 23:02:36'),(100,2,2850,4,'04141370274','Luiz Ricardo de Souza Sena','necasena2010@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$L7dTosh0Z.pJkbmfQ7M2guM0Oi5l.48klZFEhV/Jk7Ev/tojiD5Qy',NULL,'2018-07-06 22:56:34','2018-07-06 21:05:13','2018-07-06 22:56:34'),(101,2,2851,5,'01593894295','Lenilson de souza de Sena','jp93@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$APQPR.7NYpdkREPTKO4XxepjulEMxIZSe23Pnlv.3j2wkHMM3MXB6',NULL,'2018-07-06 22:57:48','2018-07-06 22:41:54','2018-07-06 22:57:48'),(102,2,2850,5,'01593894295','Lenilson de souza de Sena','lenilsonjp93@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$Y7AeJ1K70WVtAKr6wEIwvupLTeUm9XEmeSSVpvIIGOah3YdHjNZc6','FWIeQxCsaQsKUvfJipMYZIJze9n6qefRlBTUopbMhuDrddNfHzVDAyTSGd5x',NULL,'2018-07-06 23:01:24','2018-08-13 10:16:08'),(103,2,2851,5,'04141370274','Luiz Ricardo de souza sena','lenilsonjp193@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$AzcwuNg5wOJH0vwzg57DeOQaHAU9JEGOZXWfTuWsTfn0LEPsKXshy',NULL,NULL,'2018-07-06 23:05:15','2018-08-13 10:24:37'),(104,2,1436,3,'00817808264','Dheymeson Freire da Silva','dheymesonsilva17@gmail.com','storage/contas/1/img/avatars/104/avatar20180717170319.jpg',NULL,'$2y$10$3ElqYph1.lnmZdCX1qdXW.telxy/CZDtKNeKsT/HHCCH7F2aYxLLe','4YFcwFWAll5YrdqB546N7oZWDWeXuTxld6T5um5OxNbSHTRVVQEQBfKxiumC',NULL,'2018-07-18 03:59:56','2018-07-19 22:28:30'),(105,2,2393,4,'04143715260','Jean dos Santos Ferreira','jean1998fe@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$j73VdpJQl3Z7pjlc66Gp5OM7NlLrccm326j1wY16xMfHL96eB8B5W','ol7i8zeX0uxDMJGE4DcdwRbmvdLXohgZdVljqQuF5j7FudiBgUDcqyIFFqWZ',NULL,'2018-07-27 21:42:29','2018-08-13 10:13:37'),(106,2,5960,12,'65377419200','Sebastião Coelho da Silva Júnior','junior.atual_1@hotmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$XEXN68k.yOI9pOAVFS516eX7RwCW2CgROX5cmxmTGBMCtR2QC9TfW','BPl9JBFjQc82KuP8L7ialeZUeI8U6LIvFpCfndr8sz1T4smrPZTRHmLPW859',NULL,'2018-08-17 14:23:39','2018-08-20 18:32:45'),(107,2,6625,5,'70021066272','Suelem Quaresma Cosme','suelemeanthony@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$Yi0OH3zmcaHlH0VUimhLzeaTD2elzwl0RX2wJPnuV7CuvIoYQYWR2','eqm1AuObtcyi3cWIzt8k1a4YFLXWQ6pyaDp56eDS0gVvgL2KhbAEAInJFP23',NULL,'2018-08-30 14:12:00','2018-08-31 12:12:08'),(108,2,6865,5,'01808446283','Helder Danilo Moraes Pereira','helderdanilo84@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$lViF8BSOnv9rgbBZ3vkEI.RdMTSTifAYRWmVBFklzMKNqPRYr/Teu','AJNLH0bdYTvj0Jgd9htCdnJY97dLHJ1k95Ont6xiWF92IeOZCzdCOLCKQfkx',NULL,'2018-09-05 01:11:12','2018-09-05 16:37:07'),(109,2,7623,4,'82196699268','Cassia Dolores de Souza Cardoso Soares','cassiasoares84@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$5qbTP52CVheg.SNOM3Au3.sRa19L6nQoPIDvqWjAwAlojQJvhcU8e','KQKb3GksRq50Cuh4hjAB8cnNLd6LePUnYwnZZXJVtBEMDFIC8S8jSrebUlLZ',NULL,'2018-09-18 12:16:10','2018-09-19 13:44:12'),(110,2,7655,12,'58751700263','Giseli Moraes Costa','caixa.doca@vegavw.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$CsGA9L5Hn4zu6.GmnnF.weCscmzW8RRq/jsMJQaHIbjCT4WjHSf86','3U0BOph9zIlDmtibogKrKHdVMcb5GJbvPjZVhBzkScUFM0sOkgXh5S5Ojywu',NULL,'2018-09-18 14:03:01','2018-09-18 14:03:01'),(111,2,7655,12,'55902448204','Simone Santos','simone.santos@vegavw.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$XY/94Sgv9kgH/4baTQeNWex7Cs4F6RUOOFmzZNoLCBYGxd1dDZdfO',NULL,NULL,'2018-09-18 14:05:07','2018-09-18 14:05:07'),(112,2,7683,12,'72506407200','Suellen Martins','caixaford.br@vegaautomotores.com.br','img/avatars/avatar-blank.png',NULL,'$2y$10$J3D.4Qznch.MujKKiYQEVugzya0l5l4MZe72NDdXu7aVZfHcMQuhK','OuTd5BxidJoxNka7Fk8kZWOLYGCif2xDHG7VtuahZhmeeMXVLfw5XeA6r5TX',NULL,'2018-09-18 16:44:15','2018-09-18 16:44:15'),(113,2,7697,4,'01682809226','Rhoger Picanço de Souza','rhogersouza.rs@gmail.com','img/avatars/avatar-blank.png',NULL,'$2y$10$.Ys5atRPSA0uQdZNCoPGA.w7.fsiz4csjCbnkbf5wDlV2Swf3kWyq','e0GtkSEl6taGmdwJ3SX6WUYBYqe6gWLWjoiDgpdd7KoUKLZD8vIrWMC7IeA1',NULL,'2018-09-18 21:22:31','2018-09-20 15:00:54'),(114,2,2,1,'74036807234','Linton Junior','lintonjr@hotmail.com',NULL,NULL,'$2y$10$fI.rWwoT6cOOPTh/Gce/uONYFCOgo69QRMJzpVCgP/3ZttGpqn3Ki','31n1nWQSxiSyhltgafTUWtUaHjAc81zLr4CK5tNL3C3BlAaTmnanCTbBmDTv',NULL,'2018-01-10 02:14:00','2018-09-19 18:20:48');
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

-- Dump completed on 2018-11-01 14:31:05
