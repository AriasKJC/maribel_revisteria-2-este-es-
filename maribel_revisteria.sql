-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: maribel_revisteria
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `actividad_empleado`
--

DROP TABLE IF EXISTS `actividad_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad_empleado` (
  `id_actividad` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_publicacion` int DEFAULT NULL,
  `tipo_actividad` enum('ALTA_PUBLICACION','MODIFICACION_PUBLICACION','CAMBIO_PRECIO','AJUSTE_STOCK','VENTA','COMPRA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_actividad`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_publicacion` (`id_publicacion`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `actividad_empleado_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `actividad_empleado_ibfk_2` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`),
  CONSTRAINT `actividad_empleado_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad_empleado`
--

LOCK TABLES `actividad_empleado` WRITE;
/*!40000 ALTER TABLE `actividad_empleado` DISABLE KEYS */;
INSERT INTO `actividad_empleado` VALUES (1,12,2,1,'CAMBIO_PRECIO','Cambio de precio a 1015.00','2025-11-20 00:15:23'),(2,25,1,2,'CAMBIO_PRECIO','Cambio de precio a 1030.00','2025-11-20 00:15:23'),(3,7,1,3,'CAMBIO_PRECIO','Cambio de precio a 1045.00','2025-11-20 00:15:23'),(4,18,3,4,'CAMBIO_PRECIO','Cambio de precio a 1060.00','2025-11-20 00:15:23'),(5,33,2,5,'CAMBIO_PRECIO','Cambio de precio a 1075.00','2025-11-20 00:15:23'),(6,21,3,6,'CAMBIO_PRECIO','Cambio de precio a 1090.00','2025-11-20 00:15:23'),(7,44,1,7,'CAMBIO_PRECIO','Cambio de precio a 1105.00','2025-11-20 00:15:23'),(8,19,2,8,'CAMBIO_PRECIO','Cambio de precio a 1120.00','2025-11-20 00:15:23'),(9,8,2,9,'CAMBIO_PRECIO','Cambio de precio a 1135.00','2025-11-20 00:15:23'),(10,29,1,10,'CAMBIO_PRECIO','Cambio de precio a 1150.00','2025-11-20 00:15:23'),(11,4,2,11,'CAMBIO_PRECIO','Cambio de precio a 1165.00','2025-11-20 00:15:23'),(12,56,3,12,'CAMBIO_PRECIO','Cambio de precio a 1180.00','2025-11-20 00:15:23'),(13,61,2,13,'CAMBIO_PRECIO','Cambio de precio a 1195.00','2025-11-20 00:15:23'),(14,3,1,14,'CAMBIO_PRECIO','Cambio de precio a 1210.00','2025-11-20 00:15:23'),(15,15,3,15,'CAMBIO_PRECIO','Cambio de precio a 1225.00','2025-11-20 00:15:23'),(16,70,2,16,'CAMBIO_PRECIO','Cambio de precio a 1240.00','2025-11-20 00:15:23'),(17,41,1,17,'CAMBIO_PRECIO','Cambio de precio a 1255.00','2025-11-20 00:15:23'),(18,90,3,18,'CAMBIO_PRECIO','Cambio de precio a 1270.00','2025-11-20 00:15:23'),(19,28,3,19,'CAMBIO_PRECIO','Cambio de precio a 1285.00','2025-11-20 00:15:23'),(20,17,3,20,'CAMBIO_PRECIO','Cambio de precio a 1300.00','2025-11-20 00:15:23'),(21,24,3,21,'CAMBIO_PRECIO','Cambio de precio a 1315.00','2025-11-20 00:15:23'),(22,38,1,22,'CAMBIO_PRECIO','Cambio de precio a 1330.00','2025-11-20 00:15:23'),(23,52,2,23,'CAMBIO_PRECIO','Cambio de precio a 1345.00','2025-11-20 00:15:23'),(24,66,2,24,'CAMBIO_PRECIO','Cambio de precio a 1360.00','2025-11-20 00:15:23'),(25,11,2,25,'CAMBIO_PRECIO','Cambio de precio a 1375.00','2025-11-20 00:15:23'),(26,32,1,26,'CAMBIO_PRECIO','Cambio de precio a 1390.00','2025-11-20 00:17:37'),(27,77,2,27,'CAMBIO_PRECIO','Cambio de precio a 1405.00','2025-11-20 00:17:37'),(28,14,3,28,'CAMBIO_PRECIO','Cambio de precio a 1420.00','2025-11-20 00:17:37'),(29,55,2,29,'CAMBIO_PRECIO','Cambio de precio a 1435.00','2025-11-20 00:17:37'),(30,6,2,30,'CAMBIO_PRECIO','Cambio de precio a 1450.00','2025-11-20 00:17:37'),(31,80,2,31,'CAMBIO_PRECIO','Cambio de precio a 1465.00','2025-11-20 00:17:37'),(32,49,2,32,'CAMBIO_PRECIO','Cambio de precio a 1480.00','2025-11-20 00:17:37'),(33,23,2,33,'CAMBIO_PRECIO','Cambio de precio a 1495.00','2025-11-20 00:17:37'),(34,9,2,34,'CAMBIO_PRECIO','Cambio de precio a 1510.00','2025-11-20 00:17:37'),(35,60,1,35,'CAMBIO_PRECIO','Cambio de precio a 1525.00','2025-11-20 00:17:37'),(36,73,3,36,'CAMBIO_PRECIO','Cambio de precio a 1540.00','2025-11-20 00:17:37'),(37,45,3,37,'CAMBIO_PRECIO','Cambio de precio a 1555.00','2025-11-20 00:17:37'),(38,5,1,38,'CAMBIO_PRECIO','Cambio de precio a 1570.00','2025-11-20 00:17:37'),(39,88,1,39,'CAMBIO_PRECIO','Cambio de precio a 1585.00','2025-11-20 00:17:37'),(40,31,3,40,'CAMBIO_PRECIO','Cambio de precio a 1600.00','2025-11-20 00:17:37'),(41,13,2,41,'CAMBIO_PRECIO','Cambio de precio a 1615.00','2025-11-20 00:17:37'),(42,50,1,42,'CAMBIO_PRECIO','Cambio de precio a 1630.00','2025-11-20 00:17:37'),(43,76,1,43,'CAMBIO_PRECIO','Cambio de precio a 1645.00','2025-11-20 00:17:37'),(44,37,2,44,'CAMBIO_PRECIO','Cambio de precio a 1660.00','2025-11-20 00:17:37'),(45,4,2,45,'CAMBIO_PRECIO','Cambio de precio a 1675.00','2025-11-20 00:17:37'),(46,95,2,46,'CAMBIO_PRECIO','Cambio de precio a 1690.00','2025-11-20 00:17:37'),(47,27,2,47,'CAMBIO_PRECIO','Cambio de precio a 1705.00','2025-11-20 00:17:37'),(48,62,3,48,'CAMBIO_PRECIO','Cambio de precio a 1720.00','2025-11-20 00:17:37'),(49,48,3,49,'CAMBIO_PRECIO','Cambio de precio a 1735.00','2025-11-20 00:17:37'),(50,20,2,50,'CAMBIO_PRECIO','Cambio de precio a 1750.00','2025-11-20 00:17:37'),(51,14,3,51,'CAMBIO_PRECIO','Cambio de precio a 1765.00','2025-11-20 00:19:32'),(52,59,3,52,'CAMBIO_PRECIO','Cambio de precio a 1780.00','2025-11-20 00:19:32'),(53,36,3,53,'CAMBIO_PRECIO','Cambio de precio a 1795.00','2025-11-20 00:19:32'),(54,91,1,54,'CAMBIO_PRECIO','Cambio de precio a 1810.00','2025-11-20 00:19:32'),(55,10,3,55,'CAMBIO_PRECIO','Cambio de precio a 1825.00','2025-11-20 00:19:32'),(56,67,1,56,'CAMBIO_PRECIO','Cambio de precio a 1840.00','2025-11-20 00:19:32'),(57,44,1,57,'CAMBIO_PRECIO','Cambio de precio a 1855.00','2025-11-20 00:19:32'),(58,83,2,58,'CAMBIO_PRECIO','Cambio de precio a 1870.00','2025-11-20 00:19:32'),(59,5,1,59,'CAMBIO_PRECIO','Cambio de precio a 1885.00','2025-11-20 00:19:32'),(60,72,2,60,'CAMBIO_PRECIO','Cambio de precio a 1900.00','2025-11-20 00:19:32'),(61,38,1,61,'CAMBIO_PRECIO','Cambio de precio a 1915.00','2025-11-20 00:19:32'),(62,19,2,62,'CAMBIO_PRECIO','Cambio de precio a 1930.00','2025-11-20 00:19:32'),(63,99,3,63,'CAMBIO_PRECIO','Cambio de precio a 1945.00','2025-11-20 00:19:32'),(64,7,1,64,'CAMBIO_PRECIO','Cambio de precio a 1960.00','2025-11-20 00:19:32'),(65,53,3,65,'CAMBIO_PRECIO','Cambio de precio a 1975.00','2025-11-20 00:19:32'),(66,26,1,66,'CAMBIO_PRECIO','Cambio de precio a 1990.00','2025-11-20 00:19:32'),(67,71,3,67,'CAMBIO_PRECIO','Cambio de precio a 2005.00','2025-11-20 00:19:32'),(68,13,2,68,'CAMBIO_PRECIO','Cambio de precio a 2020.00','2025-11-20 00:19:32'),(69,85,1,69,'CAMBIO_PRECIO','Cambio de precio a 2035.00','2025-11-20 00:19:32'),(70,42,3,70,'CAMBIO_PRECIO','Cambio de precio a 2050.00','2025-11-20 00:19:32'),(71,2,1,71,'CAMBIO_PRECIO','Cambio de precio a 2065.00','2025-11-20 00:19:32'),(72,64,2,72,'CAMBIO_PRECIO','Cambio de precio a 2080.00','2025-11-20 00:19:32'),(73,33,2,73,'CAMBIO_PRECIO','Cambio de precio a 2095.00','2025-11-20 00:19:32'),(74,84,3,74,'CAMBIO_PRECIO','Cambio de precio a 2110.00','2025-11-20 00:19:32'),(75,18,3,75,'CAMBIO_PRECIO','Cambio de precio a 2125.00','2025-11-20 00:19:32'),(76,14,3,51,'CAMBIO_PRECIO','Cambio de precio a 1765.00','2025-11-20 00:19:56'),(77,59,3,52,'CAMBIO_PRECIO','Cambio de precio a 1780.00','2025-11-20 00:19:56'),(78,36,3,53,'CAMBIO_PRECIO','Cambio de precio a 1795.00','2025-11-20 00:19:56'),(79,91,1,54,'CAMBIO_PRECIO','Cambio de precio a 1810.00','2025-11-20 00:19:56'),(80,10,3,55,'CAMBIO_PRECIO','Cambio de precio a 1825.00','2025-11-20 00:19:56'),(81,67,1,56,'CAMBIO_PRECIO','Cambio de precio a 1840.00','2025-11-20 00:19:56'),(82,44,1,57,'CAMBIO_PRECIO','Cambio de precio a 1855.00','2025-11-20 00:19:56'),(83,83,2,58,'CAMBIO_PRECIO','Cambio de precio a 1870.00','2025-11-20 00:19:56'),(84,5,1,59,'CAMBIO_PRECIO','Cambio de precio a 1885.00','2025-11-20 00:19:56'),(85,72,2,60,'CAMBIO_PRECIO','Cambio de precio a 1900.00','2025-11-20 00:19:56'),(86,38,1,61,'CAMBIO_PRECIO','Cambio de precio a 1915.00','2025-11-20 00:19:56'),(87,19,2,62,'CAMBIO_PRECIO','Cambio de precio a 1930.00','2025-11-20 00:19:56'),(88,99,3,63,'CAMBIO_PRECIO','Cambio de precio a 1945.00','2025-11-20 00:19:56'),(89,7,1,64,'CAMBIO_PRECIO','Cambio de precio a 1960.00','2025-11-20 00:19:56'),(90,53,3,65,'CAMBIO_PRECIO','Cambio de precio a 1975.00','2025-11-20 00:19:56'),(91,26,1,66,'CAMBIO_PRECIO','Cambio de precio a 1990.00','2025-11-20 00:19:56'),(92,71,3,67,'CAMBIO_PRECIO','Cambio de precio a 2005.00','2025-11-20 00:19:56'),(93,13,2,68,'CAMBIO_PRECIO','Cambio de precio a 2020.00','2025-11-20 00:19:56'),(94,85,1,69,'CAMBIO_PRECIO','Cambio de precio a 2035.00','2025-11-20 00:19:56'),(95,42,3,70,'CAMBIO_PRECIO','Cambio de precio a 2050.00','2025-11-20 00:19:56'),(96,2,1,71,'CAMBIO_PRECIO','Cambio de precio a 2065.00','2025-11-20 00:19:56'),(97,64,2,72,'CAMBIO_PRECIO','Cambio de precio a 2080.00','2025-11-20 00:19:56'),(98,33,2,73,'CAMBIO_PRECIO','Cambio de precio a 2095.00','2025-11-20 00:19:56'),(99,84,3,74,'CAMBIO_PRECIO','Cambio de precio a 2110.00','2025-11-20 00:19:56'),(100,18,3,75,'CAMBIO_PRECIO','Cambio de precio a 2125.00','2025-11-20 00:19:56'),(181,12,1,34,'VENTA','Venta registrada en mostrador','2025-01-03 03:00:00'),(182,7,2,12,'CAMBIO_PRECIO','Actualización de precio realizada','2025-01-04 03:00:00'),(183,25,3,77,'COMPRA','Ingreso de mercadería del proveedor','2025-01-05 03:00:00'),(184,33,1,14,'AJUSTE_STOCK','Revisión de stock mensual','2025-01-06 03:00:00'),(185,5,2,9,'VENTA','Venta a cliente minorista','2025-01-07 03:00:00'),(186,18,3,45,'VENTA','Venta mayorista','2025-01-08 03:00:00'),(187,41,1,2,'CAMBIO_PRECIO','Modificación de precios según lista','2025-01-09 03:00:00'),(188,9,2,22,'COMPRA','Ingreso de productos nuevos','2025-01-10 03:00:00'),(189,16,3,31,'','Nuevo cliente registrado','2025-01-11 03:00:00'),(190,27,1,56,'VENTA','Venta registrada en sistema','2025-01-12 03:00:00'),(191,14,2,63,'VENTA','Venta minorista','2025-01-13 03:00:00'),(192,30,3,84,'','Publicación dada de baja por falta de stock','2025-01-14 03:00:00'),(193,44,1,90,'AJUSTE_STOCK','Ajuste por conteo físico','2025-01-15 03:00:00'),(194,3,2,18,'VENTA','Venta directa en sucursal','2025-01-16 03:00:00'),(195,22,3,72,'COMPRA','Recepción de pedido','2025-01-17 03:00:00'),(196,55,1,11,'CAMBIO_PRECIO','Actualización de precio','2025-01-18 03:00:00'),(197,61,2,37,'VENTA','Venta a cliente registrado','2025-01-19 03:00:00'),(198,8,3,25,'COMPRA','Ingreso de publicaciones nuevas','2025-01-20 03:00:00'),(199,19,1,48,'VENTA','Venta al por mayor','2025-01-21 03:00:00'),(200,72,2,81,'VENTA','Venta rápida en mostrador','2025-01-22 03:00:00'),(201,10,3,66,'AJUSTE_STOCK','Actualización manual de stock','2025-01-23 03:00:00'),(202,37,1,4,'COMPRA','Ingreso de mercadería','2025-01-24 03:00:00'),(203,49,2,71,'VENTA','Venta de revista','2025-01-25 03:00:00'),(204,6,3,1,'CAMBIO_PRECIO','Actualización de lista de precios','2025-01-26 03:00:00'),(205,24,1,57,'VENTA','Venta normal','2025-01-27 03:00:00'),(206,50,2,93,'','Producto descatalogado','2025-01-28 03:00:00'),(207,32,3,28,'COMPRA','Ingreso de libros','2025-01-29 03:00:00'),(208,71,1,54,'VENTA','Venta en mostrador','2025-01-30 03:00:00'),(209,13,2,6,'','Nuevo cliente creado','2025-01-31 03:00:00'),(210,28,3,36,'VENTA','Venta con descuento','2025-02-01 03:00:00'),(211,47,1,42,'COMPRA','Recepción de pedido','2025-02-02 03:00:00'),(212,63,2,7,'VENTA','Venta habitual','2025-02-03 03:00:00'),(213,2,3,20,'CAMBIO_PRECIO','Cambio de precio autorizado','2025-02-04 03:00:00'),(214,11,1,82,'VENTA','Venta minorista','2025-02-05 03:00:00'),(215,35,2,65,'AJUSTE_STOCK','Corrección por inventario','2025-02-06 03:00:00'),(216,90,3,29,'VENTA','Venta a consumidor final','2025-02-07 03:00:00'),(217,17,1,50,'COMPRA','Ingreso de mercadería','2025-02-08 03:00:00'),(218,29,2,99,'VENTA','Venta registrada','2025-02-09 03:00:00'),(219,73,3,16,'','Baja por daño','2025-02-10 03:00:00'),(220,58,1,43,'VENTA','Venta común','2025-02-11 03:00:00'),(221,4,2,10,'CAMBIO_PRECIO','Actualización de precios','2025-02-12 03:00:00'),(222,20,3,32,'VENTA','Venta común','2025-02-13 03:00:00'),(223,46,1,3,'','Nuevo cliente mayorista','2025-02-14 03:00:00'),(224,67,2,94,'COMPRA','Ingreso de repuesto','2025-02-15 03:00:00'),(225,52,3,13,'VENTA','Venta de revista','2025-02-16 03:00:00'),(226,15,1,24,'AJUSTE_STOCK','Ajuste por rotura','2025-02-17 03:00:00'),(227,79,2,78,'VENTA','Venta mayorista','2025-02-18 03:00:00'),(228,59,3,30,'COMPRA','Recepción de materiales','2025-02-19 03:00:00'),(229,91,1,8,'VENTA','Venta facturada','2025-02-20 03:00:00'),(230,34,2,23,'CAMBIO_PRECIO','Cambio manual de precio','2025-02-21 03:00:00'),(231,1,3,15,'VENTA','Venta de catálogo','2025-02-22 03:00:00'),(232,26,1,44,'COMPRA','Ingreso de mercadería','2025-02-23 03:00:00'),(233,65,2,55,'VENTA','Venta estándar','2025-02-24 03:00:00'),(234,88,3,19,'','Producto dado de baja','2025-02-25 03:00:00'),(235,40,1,70,'VENTA','Venta en efectivo','2025-02-26 03:00:00'),(236,23,2,5,'AJUSTE_STOCK','Ajuste de inventario','2025-02-27 03:00:00'),(237,77,3,60,'COMPRA','Recepción de libros','2025-02-28 03:00:00'),(238,53,1,17,'VENTA','Venta de revista','2025-03-01 03:00:00'),(239,93,2,68,'VENTA','Venta regular','2025-03-02 03:00:00'),(240,14,3,11,'CAMBIO_PRECIO','Actualización lista oficial','2025-03-03 03:00:00'),(241,22,1,51,'VENTA','Venta clásica','2025-03-04 03:00:00'),(242,75,2,38,'COMPRA','Ingreso de stock nuevo','2025-03-05 03:00:00'),(243,5,3,21,'VENTA','Venta','2025-03-06 03:00:00'),(244,36,1,62,'','Publicación eliminada','2025-03-07 03:00:00'),(245,84,2,26,'VENTA','Venta rutinaria','2025-03-08 03:00:00'),(246,31,3,53,'COMPRA','Ingreso de mercadería','2025-03-09 03:00:00'),(247,62,1,95,'VENTA','Venta con factura','2025-03-10 03:00:00'),(248,94,2,14,'AJUSTE_STOCK','Revisión por daño','2025-03-11 03:00:00'),(249,48,3,73,'VENTA','Venta simple','2025-03-12 03:00:00'),(250,21,1,52,'COMPRA','Recepción proveedor','2025-03-13 03:00:00'),(251,69,2,33,'VENTA','Venta normal','2025-03-14 03:00:00'),(252,11,3,9,'CAMBIO_PRECIO','Cambio autorizado','2025-03-15 03:00:00'),(253,39,1,85,'VENTA','Venta presencial','2025-03-16 03:00:00'),(254,64,2,40,'COMPRA','Ingreso semanal','2025-03-17 03:00:00'),(255,57,3,75,'VENTA','Venta típica','2025-03-18 03:00:00'),(256,85,1,98,'VENTA','Venta sin novedades','2025-03-19 03:00:00'),(257,92,2,47,'AJUSTE_STOCK','Control de inventario','2025-03-20 03:00:00'),(258,56,3,58,'VENTA','Venta presencial','2025-03-21 03:00:00'),(259,43,1,67,'COMPRA','Ingreso de reposición','2025-03-22 03:00:00'),(260,60,2,35,'VENTA','Venta diaria','2025-03-23 03:00:00');
/*!40000 ALTER TABLE `actividad_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_publicacion`
--

DROP TABLE IF EXISTS `categoria_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_publicacion` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `activo` tinyint(1) DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_publicacion`
--

LOCK TABLES `categoria_publicacion` WRITE;
/*!40000 ALTER TABLE `categoria_publicacion` DISABLE KEYS */;
INSERT INTO `categoria_publicacion` VALUES (1,'Actualidad',NULL,1,'2025-11-19 22:46:45',NULL),(2,'Espectáculos',NULL,1,'2025-11-19 22:46:45',NULL),(3,'Deportes',NULL,1,'2025-11-19 22:46:45',NULL),(4,'Infantil',NULL,1,'2025-11-19 22:46:45',NULL),(5,'Ciencia',NULL,1,'2025-11-19 22:46:45',NULL),(6,'Cocina',NULL,1,'2025-11-19 22:46:45',NULL),(7,'Moda',NULL,1,'2025-11-19 22:46:45',NULL),(8,'Historietas',NULL,1,'2025-11-19 22:46:45',NULL),(9,'Coleccionables',NULL,1,'2025-11-19 22:46:45',NULL),(10,'Educación',NULL,1,'2025-11-19 22:46:45',NULL);
/*!40000 ALTER TABLE `categoria_publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipo_cliente` int NOT NULL,
  `cuit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_tipo_cliente` (`id_tipo_cliente`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Kiosco La Terminal',2,NULL,'3885002001','contacto@laterminal.com'),(2,'Kiosco El Centro',1,NULL,'3885002002','kiosco.centro@mail.com'),(3,'Revistería San José',2,NULL,'3885002003','sanjose.revistas@mail.com'),(4,'Librería y Kiosco Florida',2,NULL,'3885002004','florida.kiosco@mail.com'),(5,'Kiosco Ruta 34',1,NULL,'3885002005','ruta34.kiosco@mail.com'),(6,'Kiosco Los Pinos',2,NULL,'3885002006','lospinos@mail.com'),(7,'Kiosco 9 de Julio',1,NULL,'3885002007','9dejulio.kiosco@mail.com'),(8,'Kiosco La Esquina',2,NULL,'3885002008','laesquina@mail.com'),(9,'Kiosco Sol Naciente',1,NULL,'3885002009','solnaciente@mail.com'),(10,'Kiosco El Buen Trato',2,NULL,'3885002010','kiosco.buentrato@mail.com'),(11,'Revistería Cordoba',1,NULL,'3885002011','cordoba.revistas@mail.com'),(12,'Kiosco Libertad',2,NULL,'3885002012','kioscolibertad@mail.com'),(13,'Kiosco Don Pepe',1,NULL,'3885002013','donpepe@mail.com'),(14,'Revistería Tucumán',2,NULL,'3885002014','revista.tucuman@mail.com'),(15,'Kiosco Avenida Belgrano',1,NULL,'3885002015','belgrano.kiosco@mail.com'),(16,'Kiosco Las Rosas',2,NULL,'3885002016','kioscolasrosas@mail.com'),(17,'Kiosco El País',1,NULL,'3885002017','elpaisa@mail.com'),(18,'Kiosco Don Julio',2,NULL,'3885002018','donjulio@mail.com'),(19,'Kiosco Magalí',1,NULL,'3885002019','magali.kiosco@mail.com'),(20,'Kiosco San Martín',2,NULL,'3885002020','sanmartin.kiosco@mail.com'),(21,'Kiosco La Unión',1,NULL,'3885002021','launion@mail.com'),(22,'Kiosco La Amistad',2,NULL,'3885002022','laamistad@mail.com'),(23,'Kiosco 24 Horas',1,NULL,'3885002023','24horas@mail.com'),(24,'Kiosco Los Hermanos',2,NULL,'3885002024','loshermanos@mail.com'),(25,'Kiosco El Progreso',1,NULL,'3885002025','elprogreso@mail.com'),(26,'Kiosco Tres Esquinas',2,NULL,'3885002026','tresesquinas@mail.com'),(27,'Kiosco Las Palmeras',2,NULL,'3885002027','laspalmeras@mail.com'),(28,'Kiosco A1',2,NULL,'3885002028','kioscoa1@mail.com'),(29,'Kiosco Kaly',2,NULL,'3885002029','kaly.kiosco@mail.com'),(30,'Kiosco El Faro',2,NULL,'3885002030','elfaro@mail.com'),(31,'Revistería Horizonte',2,NULL,'3885002031','rev.horizonte@mail.com'),(32,'Librería San Pedro',2,NULL,'3885002032','libreria.sp@mail.com'),(33,'Kiosco San Cayetano',2,NULL,'3885002033','sancayetano@mail.com'),(34,'Kiosco La Palma',2,NULL,'3885002034','lapalma@mail.com'),(35,'Kiosco El Puente',2,NULL,'3885002035','elpuente@mail.com'),(36,'Kiosco La Ruta',2,NULL,'3885002036','laruta@mail.com'),(37,'Kiosco Las Lomas',2,NULL,'3885002037','laslomas@mail.com'),(38,'Kiosco El Molino',2,NULL,'3885002038','elmolino@mail.com'),(39,'Kiosco Estrella',2,NULL,'3885002039','estrella@mail.com'),(40,'Kiosco América',2,NULL,'3885002040','america.kiosco@mail.com'),(41,'Kiosco El Sol',2,NULL,'3885002041','elsol@mail.com'),(42,'Kiosco Estación',2,NULL,'3885002042','estacion@mail.com'),(43,'Kiosco La Paz',2,NULL,'3885002043','lapaz@mail.com'),(44,'Kiosco L y M',2,NULL,'3885002044','lykiosco@mail.com'),(45,'Kiosco El Gordo',2,NULL,'3885002045','elgordo@mail.com'),(46,'Kiosco Sandra',2,NULL,'3885002046','sandra.kiosco@mail.com'),(47,'Kiosco MiniShop',2,NULL,'3885002047','minishop@mail.com'),(48,'Kiosco El Colonial',2,NULL,'3885002048','elcolonial@mail.com'),(49,'Kiosco El Globo',2,NULL,'3885002049','elglobo@mail.com'),(50,'Kiosco Las Flores',2,NULL,'3885002050','lasflores@mail.com'),(51,'Juan Martínez',1,'31222333','3885002051','juan.martinez@mail.com'),(52,'Rosa Franco',1,'29811222','3885002052','rosa.franco@mail.com'),(53,'Diego Juárez',1,'29088777','3885002053','diego.juarez@mail.com'),(54,'Mariela Torres',1,'30555111','3885002054','mariela.torres@mail.com'),(55,'Sofía Álvarez',1,'30011444','3885002055','sofia.alvarez@mail.com'),(56,'Tomás Bustos',1,'28466222','3885002056','tomas.bustos@mail.com'),(57,'Carolina Gutiérrez',1,'29933222','3885002057','caro.gutierrez@mail.com'),(58,'Matías Herrera',1,'31144555','3885002058','matias.herrera@mail.com'),(59,'Anabela Ríos',1,'28777888','3885002059','anabela.rios@mail.com'),(60,'Fernando Pérez',1,'30111222','3885002060','fernando.perez@mail.com'),(61,'Lucas Giménez',1,'29566777','3885002061','lucas.gimenez@mail.com'),(62,'Julieta Aguirre',1,'30955999','3885002062','julieta.aguirre@mail.com'),(63,'Patricio Díaz',1,'28099111','3885002063','patricio.diaz@mail.com'),(64,'Camila López',1,'31222444','3885002064','camila.lopez@mail.com'),(65,'Franco Cabrera',1,'29344555','3885002065','franco.cabrera@mail.com'),(66,'Valentina Vega',1,'30333777','3885002066','valentina.vega@mail.com'),(67,'Carlos Navarro',1,'28677888','3885002067','carlos.navarro@mail.com'),(68,'Rocío Campos',1,'31099111','3885002068','rocio.campos@mail.com'),(69,'Gabriel Molina',1,'29966999','3885002069','gabriel.molina@mail.com'),(70,'Milagros Cruz',1,'30599888','3885002070','milagros.cruz@mail.com'),(71,'Javier Fernández',1,'27766111','3885002071','javier.fernandez@mail.com'),(72,'Lucía Cardozo',1,'30088444','3885002072','lucia.cardozo@mail.com'),(73,'Emanuel Reyes',1,'31444555','3885002073','emanuel.reyes@mail.com'),(74,'Natalia Flores',1,'27977444','3885002074','natalia.flores@mail.com'),(75,'Damián Medina',1,'29111222','3885002075','damian.medina@mail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo_postal`
--

DROP TABLE IF EXISTS `codigo_postal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigo_postal` (
  `id_codigo_postal` int NOT NULL AUTO_INCREMENT,
  `codigo_postal` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_codigo_postal`),
  UNIQUE KEY `codigo_postal` (`codigo_postal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo_postal`
--

LOCK TABLES `codigo_postal` WRITE;
/*!40000 ALTER TABLE `codigo_postal` DISABLE KEYS */;
INSERT INTO `codigo_postal` VALUES (1,'4500','San Pedro de Jujuy','2025-11-19 23:00:31',NULL),(2,'4501','Barrio Bernacchi','2025-11-19 23:00:31',NULL),(3,'4502','La Esperanza','2025-11-19 23:00:31',NULL);
/*!40000 ALTER TABLE `codigo_postal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallemovimiento`
--

DROP TABLE IF EXISTS `detallemovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallemovimiento` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_movimiento` int NOT NULL,
  `id_publicacion` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_detalle`),
  KEY `id_movimiento` (`id_movimiento`),
  KEY `id_publicacion` (`id_publicacion`),
  CONSTRAINT `detallemovimiento_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`),
  CONSTRAINT `detallemovimiento_ibfk_2` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallemovimiento`
--

LOCK TABLES `detallemovimiento` WRITE;
/*!40000 ALTER TABLE `detallemovimiento` DISABLE KEYS */;
INSERT INTO `detallemovimiento` VALUES (101,1,34,3,1315.00,'2025-11-20 00:25:56',NULL),(102,1,12,2,1180.00,'2025-11-20 00:25:56',NULL),(103,2,7,1,1105.00,'2025-11-20 00:25:56',NULL),(104,2,55,4,1825.00,'2025-11-20 00:25:56',NULL),(105,3,90,2,2350.00,'2025-11-20 00:25:56',NULL),(106,3,41,1,1615.00,'2025-11-20 00:25:56',NULL),(107,4,73,3,2095.00,'2025-11-20 00:25:56',NULL),(108,4,5,2,1075.00,'2025-11-20 00:25:56',NULL),(109,5,22,1,1330.00,'2025-11-20 00:25:56',NULL),(110,5,88,2,2320.00,'2025-11-20 00:25:56',NULL),(111,6,60,3,1900.00,'2025-11-20 00:25:56',NULL),(112,6,17,1,1255.00,'2025-11-20 00:25:56',NULL),(113,7,44,4,1660.00,'2025-11-20 00:25:56',NULL),(114,7,14,2,1210.00,'2025-11-20 00:25:56',NULL),(115,8,71,3,2065.00,'2025-11-20 00:25:56',NULL),(116,8,29,1,1435.00,'2025-11-20 00:25:56',NULL),(117,9,63,1,1945.00,'2025-11-20 00:25:56',NULL),(118,9,81,2,2215.00,'2025-11-20 00:25:56',NULL),(119,10,10,1,1150.00,'2025-11-20 00:25:56',NULL),(120,10,47,3,1705.00,'2025-11-20 00:25:56',NULL),(121,11,35,2,1525.00,'2025-11-20 00:25:56',NULL),(122,12,5,1,1075.00,'2025-11-20 00:25:56',NULL),(123,12,66,4,1990.00,'2025-11-20 00:25:56',NULL),(124,13,24,3,1360.00,'2025-11-20 00:25:56',NULL),(125,14,53,1,1795.00,'2025-11-20 00:25:56',NULL),(126,14,12,1,1180.00,'2025-11-20 00:25:56',NULL),(127,15,37,2,1555.00,'2025-11-20 00:25:56',NULL),(128,16,48,2,1720.00,'2025-11-20 00:25:56',NULL),(129,16,6,1,1090.00,'2025-11-20 00:25:56',NULL),(130,17,9,3,1135.00,'2025-11-20 00:25:56',NULL),(131,18,19,2,1285.00,'2025-11-20 00:25:56',NULL),(132,19,25,1,1375.00,'2025-11-20 00:25:56',NULL),(133,19,72,2,2080.00,'2025-11-20 00:25:56',NULL),(134,20,44,3,1660.00,'2025-11-20 00:25:56',NULL),(135,20,3,1,1045.00,'2025-11-20 00:25:56',NULL),(136,21,78,1,2170.00,'2025-11-20 00:25:56',NULL),(137,22,11,2,1165.00,'2025-11-20 00:25:56',NULL),(138,22,67,1,2005.00,'2025-11-20 00:25:56',NULL),(139,23,14,3,1210.00,'2025-11-20 00:25:56',NULL),(140,24,99,2,2485.00,'2025-11-20 00:25:56',NULL),(141,24,55,4,1825.00,'2025-11-20 00:25:56',NULL),(142,25,4,1,1060.00,'2025-11-20 00:25:56',NULL),(143,25,50,2,1750.00,'2025-11-20 00:25:56',NULL),(144,26,1,3,1015.00,'2025-11-20 00:25:56',NULL),(145,27,41,1,1615.00,'2025-11-20 00:25:56',NULL),(146,28,74,3,2110.00,'2025-11-20 00:25:56',NULL),(147,28,2,2,1030.00,'2025-11-20 00:25:56',NULL),(148,29,30,1,1450.00,'2025-11-20 00:25:56',NULL),(149,30,12,2,1180.00,'2025-11-20 00:25:56',NULL),(150,30,65,1,1975.00,'2025-11-20 00:25:56',NULL),(151,31,77,3,2155.00,'2025-11-20 00:25:56',NULL),(152,31,21,1,1315.00,'2025-11-20 00:25:56',NULL),(153,32,59,2,1885.00,'2025-11-20 00:25:56',NULL),(154,32,18,1,1270.00,'2025-11-20 00:25:56',NULL),(155,33,40,2,1600.00,'2025-11-20 00:25:56',NULL),(156,34,10,3,1150.00,'2025-11-20 00:25:56',NULL),(157,35,93,1,2395.00,'2025-11-20 00:25:56',NULL),(158,36,57,4,1855.00,'2025-11-20 00:25:56',NULL),(159,36,7,1,1105.00,'2025-11-20 00:25:56',NULL),(160,37,31,2,1465.00,'2025-11-20 00:25:56',NULL),(161,38,88,1,2320.00,'2025-11-20 00:25:56',NULL),(162,38,26,3,1390.00,'2025-11-20 00:25:56',NULL),(163,39,63,2,1945.00,'2025-11-20 00:25:56',NULL),(164,40,14,1,1210.00,'2025-11-20 00:25:56',NULL),(165,40,47,3,1705.00,'2025-11-20 00:25:56',NULL),(166,41,9,2,1135.00,'2025-11-20 00:25:56',NULL),(167,42,28,2,1420.00,'2025-11-20 00:25:56',NULL),(168,43,33,3,1495.00,'2025-11-20 00:25:56',NULL),(169,43,100,1,2500.00,'2025-11-20 00:25:56',NULL),(170,44,52,1,1780.00,'2025-11-20 00:25:56',NULL),(171,45,27,2,1405.00,'2025-11-20 00:25:56',NULL),(172,46,60,3,1900.00,'2025-11-20 00:25:56',NULL),(173,47,18,1,1270.00,'2025-11-20 00:25:56',NULL),(174,48,1,2,1015.00,'2025-11-20 00:25:56',NULL),(175,49,71,3,2065.00,'2025-11-20 00:25:56',NULL),(176,49,34,1,1315.00,'2025-11-20 00:25:56',NULL),(177,50,45,3,1675.00,'2025-11-20 00:25:56',NULL),(178,50,12,2,1180.00,'2025-11-20 00:25:56',NULL),(179,51,88,1,2320.00,'2025-11-20 00:25:56',NULL),(180,52,78,3,2170.00,'2025-11-20 00:25:56',NULL),(181,53,42,2,1630.00,'2025-11-20 00:25:56',NULL),(182,54,91,1,2365.00,'2025-11-20 00:25:56',NULL),(183,55,16,3,1240.00,'2025-11-20 00:25:56',NULL),(184,56,57,2,1855.00,'2025-11-20 00:25:56',NULL),(185,57,81,1,2215.00,'2025-11-20 00:25:56',NULL),(186,58,70,2,2050.00,'2025-11-20 00:25:56',NULL),(187,59,24,3,1360.00,'2025-11-20 00:25:56',NULL),(188,60,33,2,1495.00,'2025-11-20 00:25:56',NULL),(189,61,72,1,2080.00,'2025-11-20 00:25:56',NULL),(190,62,19,2,1285.00,'2025-11-20 00:25:56',NULL),(191,63,37,3,1555.00,'2025-11-20 00:25:56',NULL),(192,64,65,2,1975.00,'2025-11-20 00:25:56',NULL),(193,65,4,1,1060.00,'2025-11-20 00:25:56',NULL),(194,66,74,3,2110.00,'2025-11-20 00:25:56',NULL),(195,67,56,2,1840.00,'2025-11-20 00:25:56',NULL),(196,68,20,1,1300.00,'2025-11-20 00:25:56',NULL),(197,69,48,3,1720.00,'2025-11-20 00:25:56',NULL),(198,70,59,2,1885.00,'2025-11-20 00:25:56',NULL);
/*!40000 ALTER TABLE `detallemovimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_stock_despues_detalle` AFTER INSERT ON `detallemovimiento` FOR EACH ROW BEGIN     DECLARE tipo_movimiento_entrada BOOLEAN;     DECLARE ubicacion_afectada INT;     DECLARE cambio_cantidad INT;      SELECT         tm.es_entrada_stock,         s.id_ubicacion     INTO         tipo_movimiento_entrada, ubicacion_afectada     FROM movimiento m     JOIN tipomovimiento tm ON m.id_tipo_mov = tm.id_tipo_mov     JOIN empleado e ON m.id_empleado = e.id_empleado     JOIN sucursal s ON e.id_sucursal = s.id_sucursal     WHERE m.id_movimiento = NEW.id_movimiento;      SET cambio_cantidad = NEW.cantidad;     IF tipo_movimiento_entrada = FALSE THEN         SET cambio_cantidad = -NEW.cantidad;     END IF;      UPDATE stock     SET         cantidad = cantidad + cambio_cantidad,         fecha_actualizacion = CURRENT_TIMESTAMP     WHERE         id_publicacion = NEW.id_publicacion         AND id_ubicacion = ubicacion_afectada;  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `edicion`
--

DROP TABLE IF EXISTS `edicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edicion` (
  `id_edicion` int NOT NULL AUTO_INCREMENT,
  `id_publicacion` int NOT NULL,
  `numero_edicion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `paginas` int DEFAULT NULL,
  `precio_sugerido` decimal(10,2) DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edicion`),
  KEY `id_publicacion` (`id_publicacion`),
  CONSTRAINT `edicion_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicion`
--

LOCK TABLES `edicion` WRITE;
/*!40000 ALTER TABLE `edicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `edicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `id_editorial` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_origen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_editorial`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Editorial Atlántida',NULL,1,NULL),(2,'Perfil',NULL,1,NULL),(3,'Kremer',NULL,1,NULL),(4,'Panini',NULL,1,NULL),(5,'Decomics Argentina',NULL,1,NULL),(6,'RBA',NULL,1,NULL),(7,'Planeta',NULL,1,NULL),(8,'La Nación',NULL,1,NULL),(9,'Clarín',NULL,1,NULL),(10,'Mundo Infantil',NULL,1,NULL);
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `id_sucursal` int NOT NULL,
  `dni` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_rol` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `email` (`email`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'30123456','Juan','Pérez','3885001001@mail.com',1,'2025-11-19 23:11:46',NULL,2),(2,1,'28900444','María','González','3885001002@mail.com',1,'2025-11-19 23:11:46',NULL,2),(3,1,'27567890','Carlos','Sánchez','3885001003@mail.com',1,'2025-11-19 23:11:46',NULL,2),(4,2,'31222333','Lucía','Ramírez','3885001004@mail.com',1,'2025-11-19 23:11:46',NULL,2),(5,1,'29876432','Fernando','Martínez','3885001005@mail.com',1,'2025-11-19 23:11:46',NULL,3),(6,2,'30111888','Romina','López','3885001006@mail.com',1,'2025-11-19 23:11:46',NULL,3),(7,1,'28099877','Andrés','Fernández','3885001007@mail.com',1,'2025-11-19 23:11:46',NULL,2),(8,2,'30222444','Paula','Ríos','3885001008@mail.com',1,'2025-11-19 23:11:46',NULL,2),(9,2,'29988776','Eliana','Molina','3885001009@mail.com',1,'2025-11-19 23:11:46',NULL,2),(10,3,'28566777','Ricardo','Aguirre','3885001010@mail.com',1,'2025-11-19 23:11:46',NULL,2),(11,2,'31444555','Sofía','Cruz','3885001011@mail.com',1,'2025-11-19 23:11:46',NULL,3),(12,2,'30011222','Diego','Flores','3885001012@mail.com',1,'2025-11-19 23:11:46',NULL,3),(13,2,'27655433','Javier','Luna','3885001013@mail.com',1,'2025-11-19 23:11:46',NULL,2),(14,3,'30333999','Valeria','Campos','3885001014@mail.com',1,'2025-11-19 23:11:46',NULL,2),(15,3,'29555666','Sebastián','Rivero','3885001015@mail.com',1,'2025-11-19 23:11:46',NULL,2),(16,3,'28333777','Patricia','Arias','3885001016@mail.com',1,'2025-11-19 23:11:46',NULL,3),(17,3,'30999888','Franco','Bravo','3885001017@mail.com',1,'2025-11-19 23:11:46',NULL,2),(18,3,'29922444','Noelia','Vega','3885001018@mail.com',1,'2025-11-19 23:11:46',NULL,2),(19,2,'27788999','Hernán','Maldonado','3885001019@mail.com',1,'2025-11-19 23:11:46',NULL,2),(20,2,'31255666','Adriana','Quispe','3885001020@mail.com',1,'2025-11-19 23:11:46',NULL,2),(21,3,'29011888','Lucas','Ortiz','3885001021@mail.com',1,'2025-11-19 23:11:46',NULL,2),(22,1,'30555111','Camila','Paredes','3885001022@mail.com',1,'2025-11-19 23:11:46',NULL,2),(23,2,'29888444','Gustavo','Roldán','3885001023@mail.com',1,'2025-11-19 23:11:46',NULL,2),(24,3,'28444555','Florencia','Torres','3885001024@mail.com',1,'2025-11-19 23:11:46',NULL,2),(25,1,'30166111','Eduardo','Villalba','3885001025@mail.com',1,'2025-11-19 23:11:46',NULL,1),(26,1,'28777333','Mónica','Salinas','monica.salinas@mail.com',1,'2025-11-19 23:12:27',NULL,2),(27,2,'29855322','Alejandro','Coronel','ale.coronel@mail.com',1,'2025-11-19 23:12:27',NULL,2),(28,3,'31177888','Agustina','Barrios','agustina.barrios@mail.com',1,'2025-11-19 23:12:27',NULL,2),(29,1,'27566122','Federico','Cabral','federico.cabral@mail.com',1,'2025-11-19 23:12:27',NULL,2),(30,2,'30288911','Daniela','Gutiérrez','daniela.gutierrez@mail.com',1,'2025-11-19 23:12:27',NULL,2),(31,3,'29944111','Rodrigo','Vargas','rodrigo.vargas@mail.com',1,'2025-11-19 23:12:27',NULL,2),(32,1,'28522444','Cintia','Bustos','cintia.bustos@mail.com',1,'2025-11-19 23:12:27',NULL,2),(33,2,'30055111','Hugo','Soria','hugo.soria@mail.com',1,'2025-11-19 23:12:27',NULL,3),(34,3,'31411222','Melina','Ramos','melina.ramos@mail.com',1,'2025-11-19 23:12:27',NULL,2),(35,1,'30144555','Tania','Silva','tania.silva@mail.com',1,'2025-11-19 23:12:27',NULL,2),(36,3,'27888333','Santiago','Flores','santiago.flores@mail.com',1,'2025-11-19 23:12:27',NULL,2),(37,2,'29566555','Brenda','Carrizo','brenda.carrizo@mail.com',1,'2025-11-19 23:12:27',NULL,2),(38,1,'30999666','Marcos','Ibáñez','marcos.ibanez@mail.com',1,'2025-11-19 23:12:27',NULL,2),(39,3,'28666111','Lorena','Montoya','lorena.montoya@mail.com',1,'2025-11-19 23:12:27',NULL,2),(40,2,'31244333','Nicolás','Cardozo','nicolas.cardozo@mail.com',1,'2025-11-19 23:12:27',NULL,2),(41,1,'30488777','Julieta','Giménez','julieta.gimenez@mail.com',1,'2025-11-19 23:12:27',NULL,2),(42,3,'29355544','Matías','Aguilar','matias.aguilar@mail.com',1,'2025-11-19 23:12:27',NULL,2),(43,2,'27766222','Soledad','Pinto','soledad.pinto@mail.com',1,'2025-11-19 23:12:27',NULL,2),(44,1,'30077888','Gabriel','Reyes','gabriel.reyes@mail.com',1,'2025-11-19 23:12:27',NULL,2),(45,3,'31533111','Adela','Medina','adela.medina@mail.com',1,'2025-11-19 23:12:27',NULL,2),(46,2,'29221888','Luis','Arce','luis.arce@mail.com',1,'2025-11-19 23:12:27',NULL,2),(47,1,'29877444','Verónica','Delgado','veronica.delgado@mail.com',1,'2025-11-19 23:12:27',NULL,2),(48,3,'30766222','Pablo','León','pablo.leon@mail.com',1,'2025-11-19 23:12:27',NULL,3),(49,2,'29144555','Rocío','Ferreyra','rocio.ferreyra@mail.com',1,'2025-11-19 23:12:27',NULL,2),(50,1,'28655122','Claudio','Serna','claudio.serna@mail.com',1,'2025-11-19 23:12:27',NULL,2),(51,1,'30255888','Esteban','Cordoba','esteban.cordoba@mail.com',1,'2025-11-19 23:13:04',NULL,2),(52,2,'31199877','Miranda','Peralta','miranda.peralta@mail.com',1,'2025-11-19 23:13:04',NULL,2),(53,3,'28977666','Tomás','González','tomas.gonzalez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(54,1,'27744555','Rafael','Guzmán','rafael.guzman@mail.com',1,'2025-11-19 23:13:04',NULL,2),(55,2,'29888555','Cecilia','Aldana','cecilia.aldana@mail.com',1,'2025-11-19 23:13:04',NULL,2),(56,3,'30441222','Maximiliano','Sosa','max.sosa@mail.com',1,'2025-11-19 23:13:04',NULL,2),(57,2,'30022333','Yesica','Domínguez','yesica.dominguez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(58,1,'30777888','Nadia','Paz','nadia.paz@mail.com',1,'2025-11-19 23:13:04',NULL,2),(59,3,'29566777','Damián','Navarro','damian.navarro@mail.com',1,'2025-11-19 23:13:04',NULL,2),(60,1,'28224455','Irene','Bermúdez','irene.bermudez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(61,2,'30066622','Rubén','Rosales','ruben.rosales@mail.com',1,'2025-11-19 23:13:04',NULL,3),(62,3,'31488999','Delfina','Villena','delfina.villena@mail.com',1,'2025-11-19 23:13:04',NULL,2),(63,1,'27655444','Ariel','Espinoza','ariel.espinoza@mail.com',1,'2025-11-19 23:13:04',NULL,2),(64,2,'30922111','Brisa','Suárez','brisa.suarez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(65,3,'29211444','Kevin','Valdez','kevin.valdez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(66,2,'28033444','Mariela','Nuñez','mariela.nunez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(67,1,'28599222','Agustín','Campos','agustin.campos@mail.com',1,'2025-11-19 23:13:04',NULL,2),(68,3,'31022555','Juliana','Palacios','juliana.palacios@mail.com',1,'2025-11-19 23:13:04',NULL,2),(69,1,'29944122','Diego','Gómez','diego.gomez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(70,2,'30255666','Pilar','Agüero','pilar.aguero@mail.com',1,'2025-11-19 23:13:04',NULL,2),(71,3,'31144999','Martina','Benítez','martina.benitez@mail.com',1,'2025-11-19 23:13:04',NULL,2),(72,2,'28877444','Aldo','Serrano','aldo.serrano@mail.com',1,'2025-11-19 23:13:04',NULL,2),(73,3,'30155888','Rocío','Aramayo','rocio.aramayo@mail.com',1,'2025-11-19 23:13:04',NULL,2),(74,1,'27966333','Mauricio','Segovia','mauricio.segovia@mail.com',1,'2025-11-19 23:13:04',NULL,2),(75,2,'29844322','Selena','Romero','selena.romero@mail.com',1,'2025-11-19 23:13:04',NULL,2),(76,1,'30566111','Liliana','Montenegro','liliana.montenegro@mail.com',1,'2025-11-19 23:14:05',NULL,2),(77,2,'28655222','Joel','Vega','joel.vega@mail.com',1,'2025-11-19 23:14:05',NULL,2),(78,3,'29977444','Bárbara','Mamani','barbara.mamani@mail.com',1,'2025-11-19 23:14:05',NULL,2),(79,1,'27788911','Néstor','Quinteros','nestor.quinteros@mail.com',1,'2025-11-19 23:14:05',NULL,2),(80,2,'30044555','Estefanía','Juárez','estefania.juarez@mail.com',1,'2025-11-19 23:14:05',NULL,2),(81,3,'31466333','Gino','Peredo','gino.peredo@mail.com',1,'2025-11-19 23:14:05',NULL,2),(82,1,'28999111','Valentín','Ríos','valentin.rios@mail.com',1,'2025-11-19 23:14:05',NULL,2),(83,2,'29355888','Magalí','Andrada','magali.andrada@mail.com',1,'2025-11-19 23:14:05',NULL,2),(84,3,'27622111','Héctor','Soria','hector.soria@mail.com',1,'2025-11-19 23:14:05',NULL,2),(85,1,'30088222','Tamara','Cuellar','tamara.cuellar@mail.com',1,'2025-11-19 23:14:05',NULL,2),(86,2,'29833222','Sebastián','Romay','sebastian.romay@mail.com',1,'2025-11-19 23:14:05',NULL,2),(87,3,'30911555','Lorena','Escobar','lorena.escobar@mail.com',1,'2025-11-19 23:14:05',NULL,2),(88,1,'29177888','Axel','Nieto','axel.nieto@mail.com',1,'2025-11-19 23:14:05',NULL,2),(89,2,'28099222','Yanina','Taboada','yanina.taboada@mail.com',1,'2025-11-19 23:14:05',NULL,2),(90,3,'30166777','Ramiro','Mathus','ramiro.mathus@mail.com',1,'2025-11-19 23:14:05',NULL,2),(91,1,'29511122','Silvia','Mamani','silvia.mamani@mail.com',1,'2025-11-19 23:14:05',NULL,2),(92,2,'30233111','Cristian','Correa','cristian.correa@mail.com',1,'2025-11-19 23:14:05',NULL,2),(93,3,'31088222','Elisa','Benitez','elisa.benitez@mail.com',1,'2025-11-19 23:14:05',NULL,2),(94,1,'28966333','Mariano','Toledo','mariano.toledo@mail.com',1,'2025-11-19 23:14:05',NULL,2),(95,2,'27688222','Luciana','Farfan','luciana.farfan@mail.com',1,'2025-11-19 23:14:05',NULL,2),(96,3,'29855111','Bruno','Villar','bruno.villar@mail.com',1,'2025-11-19 23:14:05',NULL,2),(97,1,'30922333','Pilar','Juárez','pilar.juarez@mail.com',1,'2025-11-19 23:14:05',NULL,2),(98,2,'29144544','Emanuel','Mendoza','emanuel.mendoza@mail.com',1,'2025-11-19 23:14:05',NULL,2),(99,3,'31455666','Zulma','Cárdenas','zulma.cardenas@mail.com',1,'2025-11-19 23:14:05',NULL,2),(100,1,'28388777','Cristina','Villagra','cristina.villagra@mail.com',1,'2025-11-19 23:14:05',NULL,2);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_tipo_mov` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `fecha_movimiento` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `monto_total` decimal(10,2) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_cliente` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  KEY `id_tipo_mov` (`id_tipo_mov`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`id_tipo_mov`) REFERENCES `tipomovimiento` (`id_tipo_mov`),
  CONSTRAINT `movimiento_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `movimiento_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `movimiento_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  CONSTRAINT `movimiento_ibfk_5` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento`
--

LOCK TABLES `movimiento` WRITE;
/*!40000 ALTER TABLE `movimiento` DISABLE KEYS */;
INSERT INTO `movimiento` VALUES (1,1,12,1,'2025-02-10 03:00:00',3200.00,1,NULL,55,NULL),(2,1,8,2,'2025-02-14 03:00:00',1800.00,1,NULL,62,NULL),(3,1,15,3,'2025-01-29 03:00:00',900.00,1,NULL,70,NULL),(4,1,21,1,'2025-02-03 03:00:00',2600.00,1,NULL,59,NULL),(5,1,33,2,'2025-02-18 03:00:00',1500.00,1,NULL,60,NULL),(6,1,7,3,'2025-02-22 03:00:00',4100.00,1,NULL,72,NULL),(7,1,19,2,'2025-02-26 03:00:00',900.00,1,NULL,73,NULL),(8,1,14,1,'2025-03-01 03:00:00',2800.00,1,NULL,56,NULL),(9,1,17,3,'2025-01-27 03:00:00',4600.00,1,NULL,65,NULL),(10,1,22,2,'2025-02-09 03:00:00',2900.00,1,NULL,68,NULL),(11,2,9,1,'2025-02-12 03:00:00',12000.00,1,NULL,10,NULL),(12,2,31,3,'2025-02-17 03:00:00',8300.00,1,NULL,12,NULL),(13,2,5,2,'2025-01-25 03:00:00',7200.00,1,NULL,17,NULL),(14,2,11,1,'2025-02-20 03:00:00',10500.00,1,NULL,25,NULL),(15,2,28,3,'2025-03-02 03:00:00',9500.00,1,NULL,8,NULL),(16,2,32,2,'2025-02-15 03:00:00',6000.00,1,NULL,19,NULL),(17,2,40,1,'2025-02-05 03:00:00',7800.00,1,NULL,23,NULL),(18,2,37,1,'2025-02-28 03:00:00',8900.00,1,NULL,5,NULL),(19,2,13,3,'2025-01-23 03:00:00',11200.00,1,NULL,1,NULL),(20,2,45,2,'2025-03-04 03:00:00',9700.00,1,NULL,14,NULL),(21,3,18,1,'2025-02-16 03:00:00',26000.00,1,NULL,NULL,7),(22,3,27,2,'2025-02-11 03:00:00',18500.00,1,NULL,NULL,3),(23,3,33,3,'2025-02-08 03:00:00',32000.00,1,NULL,NULL,11),(24,3,4,2,'2025-01-20 03:00:00',14500.00,1,NULL,NULL,5),(25,3,29,1,'2025-02-27 03:00:00',28000.00,1,NULL,NULL,1),(26,4,6,1,'2025-02-18 03:00:00',1200.00,1,NULL,44,NULL),(27,4,15,2,'2025-02-22 03:00:00',800.00,1,NULL,32,NULL),(28,4,21,3,'2025-01-30 03:00:00',1500.00,1,NULL,71,NULL),(29,4,9,1,'2025-02-10 03:00:00',900.00,1,NULL,54,NULL),(30,4,33,2,'2025-03-03 03:00:00',1100.00,1,NULL,27,NULL),(31,5,12,1,'2025-02-14 03:00:00',2000.00,1,NULL,NULL,4),(32,5,8,2,'2025-02-26 03:00:00',1800.00,1,NULL,NULL,9),(33,5,17,3,'2025-02-01 03:00:00',2200.00,1,NULL,NULL,13),(34,5,24,2,'2025-02-18 03:00:00',2600.00,1,NULL,NULL,11),(35,5,29,1,'2025-02-27 03:00:00',3000.00,1,NULL,NULL,2),(36,6,14,1,'2025-02-05 03:00:00',0.00,1,NULL,NULL,NULL),(37,6,37,3,'2025-02-09 03:00:00',0.00,1,NULL,NULL,NULL),(38,6,5,2,'2025-02-12 03:00:00',0.00,1,NULL,NULL,NULL),(39,6,11,1,'2025-02-18 03:00:00',0.00,1,NULL,NULL,NULL),(40,6,22,3,'2025-02-28 03:00:00',0.00,1,NULL,NULL,NULL),(41,1,31,2,'2025-02-04 03:00:00',3500.00,1,NULL,40,NULL),(42,1,19,1,'2025-02-16 03:00:00',2100.00,1,NULL,57,NULL),(43,1,28,3,'2025-01-29 03:00:00',1700.00,1,NULL,61,NULL),(44,1,9,2,'2025-02-03 03:00:00',900.00,1,NULL,74,NULL),(45,1,13,1,'2025-03-01 03:00:00',2400.00,1,NULL,52,NULL),(46,2,33,2,'2025-02-11 03:00:00',8800.00,1,NULL,21,NULL),(47,2,17,1,'2025-02-20 03:00:00',7600.00,1,NULL,30,NULL),(48,2,40,3,'2025-02-25 03:00:00',9900.00,1,NULL,6,NULL),(49,2,12,1,'2025-01-26 03:00:00',11200.00,1,NULL,15,NULL),(50,2,29,2,'2025-03-03 03:00:00',8400.00,1,NULL,4,NULL),(51,1,8,1,'2025-02-14 03:00:00',2900.00,1,NULL,48,NULL),(52,1,15,3,'2025-02-19 03:00:00',1700.00,1,NULL,63,NULL),(53,1,22,2,'2025-01-28 03:00:00',2100.00,1,NULL,70,NULL),(54,1,19,1,'2025-02-26 03:00:00',3200.00,1,NULL,58,NULL),(55,1,27,3,'2025-03-02 03:00:00',4500.00,1,NULL,66,NULL),(56,2,14,1,'2025-02-10 03:00:00',7200.00,1,NULL,18,NULL),(57,2,33,2,'2025-02-15 03:00:00',8800.00,1,NULL,22,NULL),(58,2,7,3,'2025-02-25 03:00:00',9400.00,1,NULL,11,NULL),(59,2,10,1,'2025-01-30 03:00:00',8000.00,1,NULL,29,NULL),(60,2,31,2,'2025-03-04 03:00:00',9100.00,1,NULL,7,NULL),(61,3,12,1,'2025-02-16 03:00:00',19500.00,1,NULL,NULL,3),(62,3,18,3,'2025-02-06 03:00:00',25000.00,1,NULL,NULL,9),(63,3,25,2,'2025-01-22 03:00:00',16000.00,1,NULL,NULL,5),(64,3,33,3,'2025-02-14 03:00:00',28000.00,1,NULL,NULL,14),(65,3,21,1,'2025-02-24 03:00:00',30000.00,1,NULL,NULL,1),(66,4,17,2,'2025-02-11 03:00:00',1200.00,1,NULL,41,NULL),(67,4,6,3,'2025-02-17 03:00:00',900.00,1,NULL,34,NULL),(68,4,28,1,'2025-02-21 03:00:00',1400.00,1,NULL,72,NULL),(69,4,5,2,'2025-01-27 03:00:00',1100.00,1,NULL,69,NULL),(70,4,11,3,'2025-03-01 03:00:00',1600.00,1,NULL,51,NULL),(71,5,19,1,'2025-02-08 03:00:00',2400.00,1,NULL,NULL,10),(72,5,27,3,'2025-02-20 03:00:00',2600.00,1,NULL,NULL,8),(73,5,32,2,'2025-01-31 03:00:00',1800.00,1,NULL,NULL,6),(74,5,40,1,'2025-02-28 03:00:00',3100.00,1,NULL,NULL,12),(75,5,22,3,'2025-02-13 03:00:00',2800.00,1,NULL,NULL,4),(76,1,14,2,'2025-02-03 03:00:00',2500.00,1,NULL,53,NULL),(77,1,33,1,'2025-02-07 03:00:00',1800.00,1,NULL,60,NULL),(78,1,12,3,'2025-02-14 03:00:00',3100.00,1,NULL,64,NULL),(79,1,17,1,'2025-02-21 03:00:00',2300.00,1,NULL,57,NULL),(80,1,40,3,'2025-03-01 03:00:00',1500.00,1,NULL,73,NULL),(81,2,29,2,'2025-02-09 03:00:00',8400.00,1,NULL,22,NULL),(82,2,5,1,'2025-02-15 03:00:00',9000.00,1,NULL,19,NULL),(83,2,8,3,'2025-02-25 03:00:00',7800.00,1,NULL,14,NULL),(84,2,19,2,'2025-01-26 03:00:00',10200.00,1,NULL,11,NULL),(85,2,21,1,'2025-03-02 03:00:00',7500.00,1,NULL,7,NULL),(86,3,25,3,'2025-02-16 03:00:00',22000.00,1,NULL,NULL,9),(87,3,33,1,'2025-02-05 03:00:00',31000.00,1,NULL,NULL,4),(88,3,12,2,'2025-02-12 03:00:00',27000.00,1,NULL,NULL,6),(89,3,28,3,'2025-01-30 03:00:00',19000.00,1,NULL,NULL,11),(90,3,40,1,'2025-02-28 03:00:00',25000.00,1,NULL,NULL,2),(91,4,7,2,'2025-02-04 03:00:00',900.00,1,NULL,44,NULL),(92,4,11,3,'2025-02-10 03:00:00',1700.00,1,NULL,58,NULL),(93,4,37,1,'2025-02-18 03:00:00',1100.00,1,NULL,63,NULL),(94,4,22,2,'2025-02-23 03:00:00',1500.00,1,NULL,48,NULL),(95,4,13,3,'2025-03-03 03:00:00',1300.00,1,NULL,69,NULL),(96,5,6,1,'2025-02-14 03:00:00',2600.00,1,NULL,NULL,12),(97,5,17,3,'2025-02-20 03:00:00',2400.00,1,NULL,NULL,8),(98,5,27,2,'2025-01-31 03:00:00',2800.00,1,NULL,NULL,3),(99,5,31,1,'2025-02-27 03:00:00',2000.00,1,NULL,NULL,10),(100,5,29,3,'2025-02-08 03:00:00',3000.00,1,NULL,NULL,14),(101,1,12,1,'2025-01-04 03:00:00',2350.50,1,NULL,34,NULL),(102,1,45,2,'2025-01-06 03:00:00',1890.00,1,NULL,12,NULL),(103,1,7,3,'2025-01-08 03:00:00',4210.75,1,NULL,55,NULL),(104,1,63,1,'2025-01-12 03:00:00',980.00,1,NULL,9,NULL),(105,1,28,2,'2025-01-15 03:00:00',3150.90,1,NULL,48,NULL),(106,1,14,3,'2025-01-16 03:00:00',1750.40,1,NULL,60,NULL),(107,1,72,1,'2025-01-18 03:00:00',890.00,1,NULL,25,NULL),(108,1,36,2,'2025-01-19 03:00:00',2600.00,1,NULL,7,NULL),(109,1,54,3,'2025-01-20 03:00:00',3400.30,1,NULL,18,NULL),(110,1,11,1,'2025-01-21 03:00:00',1250.25,1,NULL,3,NULL),(111,1,90,2,'2025-01-23 03:00:00',2890.60,1,NULL,74,NULL),(112,1,33,3,'2025-01-24 03:00:00',1650.50,1,NULL,44,NULL),(113,1,67,2,'2025-01-25 03:00:00',1980.10,1,NULL,20,NULL),(114,1,19,1,'2025-01-26 03:00:00',3100.00,1,NULL,2,NULL),(115,1,41,3,'2025-01-27 03:00:00',850.00,1,NULL,73,NULL),(116,1,52,2,'2025-01-29 03:00:00',1230.70,1,NULL,6,NULL),(117,1,22,1,'2025-01-30 03:00:00',2900.00,1,NULL,15,NULL),(118,1,84,3,'2025-02-01 03:00:00',1750.30,1,NULL,39,NULL),(119,1,10,1,'2025-02-03 03:00:00',4200.50,1,NULL,28,NULL),(120,1,68,2,'2025-02-04 03:00:00',1990.10,1,NULL,41,NULL),(121,1,26,3,'2025-02-05 03:00:00',880.00,1,NULL,67,NULL),(122,1,93,1,'2025-02-06 03:00:00',3400.20,1,NULL,10,NULL),(123,1,58,2,'2025-02-07 03:00:00',2850.90,1,NULL,56,NULL),(124,1,4,3,'2025-02-09 03:00:00',1490.15,1,NULL,13,NULL),(125,1,30,1,'2025-02-10 03:00:00',2450.70,1,NULL,29,NULL),(126,2,71,1,'2025-02-11 03:00:00',18900.00,1,NULL,5,NULL),(127,2,9,2,'2025-02-12 03:00:00',15350.40,1,NULL,22,NULL),(128,2,40,3,'2025-02-14 03:00:00',20300.80,1,NULL,53,NULL),(129,2,18,1,'2025-02-15 03:00:00',17500.00,1,NULL,62,NULL),(130,2,94,2,'2025-02-16 03:00:00',14890.60,1,NULL,27,NULL),(131,2,6,3,'2025-02-17 03:00:00',21900.10,1,NULL,71,NULL),(132,3,17,1,'2025-02-18 03:00:00',12500.00,1,NULL,NULL,4),(133,3,88,2,'2025-02-19 03:00:00',9800.30,1,NULL,NULL,2),(134,3,61,3,'2025-02-20 03:00:00',15700.60,1,NULL,NULL,11),(135,3,25,1,'2025-02-21 03:00:00',11200.00,1,NULL,NULL,7),(136,3,79,2,'2025-02-22 03:00:00',14300.10,1,NULL,NULL,15),(137,3,34,3,'2025-02-23 03:00:00',9400.80,1,NULL,NULL,5),(138,3,53,1,'2025-02-24 03:00:00',12000.20,1,NULL,NULL,9),(139,3,2,2,'2025-02-25 03:00:00',15000.00,1,NULL,NULL,1),(140,4,44,1,'2025-02-26 03:00:00',3200.50,1,NULL,19,NULL),(141,4,13,2,'2025-02-27 03:00:00',1500.90,1,NULL,40,NULL),(142,4,75,3,'2025-02-28 03:00:00',2800.00,1,NULL,61,NULL),(143,4,5,1,'2025-03-01 03:00:00',4200.20,1,NULL,7,NULL),(144,5,91,2,'2025-03-02 03:00:00',7800.40,1,NULL,NULL,3),(145,5,24,3,'2025-03-03 03:00:00',5600.30,1,NULL,NULL,6),(146,6,38,1,'2025-03-04 03:00:00',0.00,1,NULL,NULL,NULL),(147,1,14,2,'2025-01-05 03:00:00',2100.40,1,NULL,11,NULL),(148,1,47,3,'2025-01-06 03:00:00',3500.20,1,NULL,58,NULL),(149,1,29,1,'2025-01-08 03:00:00',980.00,1,NULL,3,NULL),(150,1,76,2,'2025-01-10 03:00:00',4100.10,1,NULL,27,NULL),(151,1,68,3,'2025-01-11 03:00:00',2650.70,1,NULL,44,NULL),(152,1,50,1,'2025-01-12 03:00:00',1750.40,1,NULL,62,NULL),(153,1,8,2,'2025-01-13 03:00:00',1380.90,1,NULL,16,NULL),(154,1,35,3,'2025-01-14 03:00:00',2430.60,1,NULL,69,NULL),(155,1,92,1,'2025-01-15 03:00:00',3000.80,1,NULL,31,NULL),(156,1,62,2,'2025-01-16 03:00:00',2120.00,1,NULL,55,NULL),(157,1,13,3,'2025-01-17 03:00:00',1890.50,1,NULL,21,NULL),(158,1,83,1,'2025-01-18 03:00:00',3420.00,1,NULL,66,NULL),(159,1,23,2,'2025-01-19 03:00:00',1190.10,1,NULL,48,NULL),(160,1,71,3,'2025-01-20 03:00:00',2560.60,1,NULL,5,NULL),(161,1,49,1,'2025-01-21 03:00:00',1850.45,1,NULL,14,NULL),(162,1,96,2,'2025-01-22 03:00:00',2900.70,1,NULL,70,NULL),(163,1,34,3,'2025-01-23 03:00:00',1670.00,1,NULL,29,NULL),(164,1,57,2,'2025-01-24 03:00:00',3700.30,1,NULL,2,NULL),(165,1,10,1,'2025-01-25 03:00:00',1880.85,1,NULL,54,NULL),(166,1,81,3,'2025-01-26 03:00:00',4210.90,1,NULL,25,NULL),(167,2,40,1,'2025-01-27 03:00:00',17400.50,1,NULL,33,NULL),(168,2,20,2,'2025-01-28 03:00:00',15890.40,1,NULL,18,NULL),(169,2,72,3,'2025-01-29 03:00:00',19900.00,1,NULL,61,NULL),(170,2,9,1,'2025-01-30 03:00:00',15230.80,1,NULL,49,NULL),(171,2,66,2,'2025-01-31 03:00:00',18500.10,1,NULL,17,NULL),(172,2,31,3,'2025-02-01 03:00:00',16790.70,1,NULL,7,NULL),(173,2,15,1,'2025-02-02 03:00:00',21300.60,1,NULL,72,NULL),(174,2,84,2,'2025-02-03 03:00:00',19850.20,1,NULL,8,NULL),(175,2,53,3,'2025-02-04 03:00:00',14500.90,1,NULL,41,NULL),(176,2,47,1,'2025-02-05 03:00:00',15600.00,1,NULL,39,NULL),(177,3,11,2,'2025-02-06 03:00:00',11200.40,1,NULL,NULL,10),(178,3,88,3,'2025-02-07 03:00:00',9800.60,1,NULL,NULL,2),(179,3,4,1,'2025-02-08 03:00:00',12300.80,1,NULL,NULL,6),(180,3,25,2,'2025-02-09 03:00:00',15400.10,1,NULL,NULL,14),(181,3,56,3,'2025-02-10 03:00:00',13900.90,1,NULL,NULL,5),(182,3,91,1,'2025-02-11 03:00:00',8400.00,1,NULL,NULL,11),(183,3,68,2,'2025-02-12 03:00:00',9700.40,1,NULL,NULL,7),(184,3,32,3,'2025-02-13 03:00:00',11100.70,1,NULL,NULL,1),(185,4,44,1,'2025-02-14 03:00:00',3200.50,1,NULL,58,NULL),(186,4,13,2,'2025-02-15 03:00:00',1500.90,1,NULL,29,NULL),(187,4,75,3,'2025-02-16 03:00:00',2800.00,1,NULL,12,NULL),(188,4,5,1,'2025-02-17 03:00:00',4200.20,1,NULL,65,NULL),(189,5,91,2,'2025-02-18 03:00:00',7800.40,1,NULL,NULL,15),(190,5,24,3,'2025-02-19 03:00:00',5600.30,1,NULL,NULL,9),(191,5,63,1,'2025-02-20 03:00:00',9900.50,1,NULL,NULL,4),(192,6,38,3,'2025-02-21 03:00:00',0.00,1,NULL,NULL,NULL),(193,6,17,2,'2025-02-22 03:00:00',0.00,1,NULL,NULL,NULL),(194,6,52,1,'2025-02-23 03:00:00',0.00,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio_historial`
--

DROP TABLE IF EXISTS `precio_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio_historial` (
  `id_hist` int NOT NULL AUTO_INCREMENT,
  `id_publicacion` int NOT NULL,
  `id_empleado` int DEFAULT NULL,
  `precio_anterior` decimal(10,2) NOT NULL,
  `precio_nuevo` decimal(10,2) NOT NULL,
  `fecha_cambio` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_hist`),
  KEY `id_publicacion` (`id_publicacion`),
  KEY `fk_preciohist_empleado` (`id_empleado`),
  CONSTRAINT `fk_preciohist_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `precio_historial_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio_historial`
--

LOCK TABLES `precio_historial` WRITE;
/*!40000 ALTER TABLE `precio_historial` DISABLE KEYS */;
INSERT INTO `precio_historial` VALUES (126,1,12,930.00,1015.00,'2025-01-12 03:00:00','2025-11-20 00:15:23',NULL),(127,2,25,950.00,1030.00,'2025-02-03 03:00:00','2025-11-20 00:15:23',NULL),(128,3,7,960.00,1045.00,'2025-01-28 03:00:00','2025-11-20 00:15:23',NULL),(129,4,18,980.00,1060.00,'2025-02-14 03:00:00','2025-11-20 00:15:23',NULL),(130,5,33,1000.00,1075.00,'2025-01-19 03:00:00','2025-11-20 00:15:23',NULL),(131,6,21,1020.00,1090.00,'2025-02-22 03:00:00','2025-11-20 00:15:23',NULL),(132,7,44,1030.00,1105.00,'2025-03-01 03:00:00','2025-11-20 00:15:23',NULL),(133,8,19,1050.00,1120.00,'2025-01-27 03:00:00','2025-11-20 00:15:23',NULL),(134,9,8,1060.00,1135.00,'2025-02-06 03:00:00','2025-11-20 00:15:23',NULL),(135,10,29,1080.00,1150.00,'2025-01-31 03:00:00','2025-11-20 00:15:23',NULL),(136,11,4,1090.00,1165.00,'2025-02-18 03:00:00','2025-11-20 00:15:23',NULL),(137,12,56,1110.00,1180.00,'2025-02-25 03:00:00','2025-11-20 00:15:23',NULL),(138,13,61,1120.00,1195.00,'2025-03-03 03:00:00','2025-11-20 00:15:23',NULL),(139,14,3,1140.00,1210.00,'2025-01-22 03:00:00','2025-11-20 00:15:23',NULL),(140,15,15,1150.00,1225.00,'2025-02-28 03:00:00','2025-11-20 00:15:23',NULL),(141,16,70,1170.00,1240.00,'2025-02-04 03:00:00','2025-11-20 00:15:23',NULL),(142,17,41,1180.00,1255.00,'2025-01-16 03:00:00','2025-11-20 00:15:23',NULL),(143,18,90,1200.00,1270.00,'2025-02-09 03:00:00','2025-11-20 00:15:23',NULL),(144,19,28,1210.00,1285.00,'2025-03-02 03:00:00','2025-11-20 00:15:23',NULL),(145,20,17,1230.00,1300.00,'2025-01-25 03:00:00','2025-11-20 00:15:23',NULL),(146,21,24,1240.00,1315.00,'2025-02-13 03:00:00','2025-11-20 00:15:23',NULL),(147,22,38,1260.00,1330.00,'2025-01-29 03:00:00','2025-11-20 00:15:23',NULL),(148,23,52,1270.00,1345.00,'2025-02-20 03:00:00','2025-11-20 00:15:23',NULL),(149,24,66,1290.00,1360.00,'2025-02-01 03:00:00','2025-11-20 00:15:23',NULL),(150,25,11,1300.00,1375.00,'2025-02-27 03:00:00','2025-11-20 00:15:23',NULL),(151,26,32,1320.00,1390.00,'2025-01-21 03:00:00','2025-11-20 00:17:37',NULL),(152,27,77,1340.00,1405.00,'2025-02-10 03:00:00','2025-11-20 00:17:37',NULL),(153,28,14,1350.00,1420.00,'2025-01-26 03:00:00','2025-11-20 00:17:37',NULL),(154,29,55,1370.00,1435.00,'2025-02-18 03:00:00','2025-11-20 00:17:37',NULL),(155,30,6,1380.00,1450.00,'2025-02-02 03:00:00','2025-11-20 00:17:37',NULL),(156,31,80,1400.00,1465.00,'2025-03-01 03:00:00','2025-11-20 00:17:37',NULL),(157,32,49,1410.00,1480.00,'2025-01-15 03:00:00','2025-11-20 00:17:37',NULL),(158,33,23,1430.00,1495.00,'2025-02-14 03:00:00','2025-11-20 00:17:37',NULL),(159,34,9,1440.00,1510.00,'2025-01-29 03:00:00','2025-11-20 00:17:37',NULL),(160,35,60,1460.00,1525.00,'2025-02-23 03:00:00','2025-11-20 00:17:37',NULL),(161,36,73,1470.00,1540.00,'2025-01-17 03:00:00','2025-11-20 00:17:37',NULL),(162,37,45,1490.00,1555.00,'2025-02-05 03:00:00','2025-11-20 00:17:37',NULL),(163,38,5,1500.00,1570.00,'2025-03-03 03:00:00','2025-11-20 00:17:37',NULL),(164,39,88,1520.00,1585.00,'2025-01-28 03:00:00','2025-11-20 00:17:37',NULL),(165,40,31,1530.00,1600.00,'2025-02-16 03:00:00','2025-11-20 00:17:37',NULL),(166,41,13,1550.00,1615.00,'2025-01-20 03:00:00','2025-11-20 00:17:37',NULL),(167,42,50,1560.00,1630.00,'2025-02-22 03:00:00','2025-11-20 00:17:37',NULL),(168,43,76,1580.00,1645.00,'2025-01-31 03:00:00','2025-11-20 00:17:37',NULL),(169,44,37,1590.00,1660.00,'2025-03-04 03:00:00','2025-11-20 00:17:37',NULL),(170,45,4,1610.00,1675.00,'2025-02-08 03:00:00','2025-11-20 00:17:37',NULL),(171,46,95,1620.00,1690.00,'2025-01-23 03:00:00','2025-11-20 00:17:37',NULL),(172,47,27,1640.00,1705.00,'2025-02-27 03:00:00','2025-11-20 00:17:37',NULL),(173,48,62,1650.00,1720.00,'2025-02-11 03:00:00','2025-11-20 00:17:37',NULL),(174,49,48,1670.00,1735.00,'2025-01-25 03:00:00','2025-11-20 00:17:37',NULL),(175,50,20,1680.00,1750.00,'2025-03-02 03:00:00','2025-11-20 00:17:37',NULL),(176,51,14,1700.00,1765.00,'2025-01-18 03:00:00','2025-11-20 00:19:32',NULL),(177,52,59,1720.00,1780.00,'2025-02-12 03:00:00','2025-11-20 00:19:32',NULL),(178,53,36,1730.00,1795.00,'2025-03-03 03:00:00','2025-11-20 00:19:32',NULL),(179,54,91,1750.00,1810.00,'2025-01-29 03:00:00','2025-11-20 00:19:32',NULL),(180,55,10,1760.00,1825.00,'2025-02-05 03:00:00','2025-11-20 00:19:32',NULL),(181,56,67,1780.00,1840.00,'2025-03-02 03:00:00','2025-11-20 00:19:32',NULL),(182,57,44,1790.00,1855.00,'2025-01-25 03:00:00','2025-11-20 00:19:32',NULL),(183,58,83,1810.00,1870.00,'2025-02-21 03:00:00','2025-11-20 00:19:32',NULL),(184,59,5,1820.00,1885.00,'2025-01-31 03:00:00','2025-11-20 00:19:32',NULL),(185,60,72,1840.00,1900.00,'2025-02-26 03:00:00','2025-11-20 00:19:32',NULL),(186,61,38,1850.00,1915.00,'2025-01-22 03:00:00','2025-11-20 00:19:32',NULL),(187,62,19,1870.00,1930.00,'2025-02-14 03:00:00','2025-11-20 00:19:32',NULL),(188,63,99,1880.00,1945.00,'2025-03-03 03:00:00','2025-11-20 00:19:32',NULL),(189,64,7,1900.00,1960.00,'2025-01-30 03:00:00','2025-11-20 00:19:32',NULL),(190,65,53,1910.00,1975.00,'2025-02-09 03:00:00','2025-11-20 00:19:32',NULL),(191,66,26,1930.00,1990.00,'2025-02-19 03:00:00','2025-11-20 00:19:32',NULL),(192,67,71,1940.00,2005.00,'2025-01-27 03:00:00','2025-11-20 00:19:32',NULL),(193,68,13,1960.00,2020.00,'2025-02-03 03:00:00','2025-11-20 00:19:32',NULL),(194,69,85,1970.00,2035.00,'2025-02-24 03:00:00','2025-11-20 00:19:32',NULL),(195,70,42,1990.00,2050.00,'2025-01-16 03:00:00','2025-11-20 00:19:32',NULL),(196,71,2,2000.00,2065.00,'2025-01-28 03:00:00','2025-11-20 00:19:32',NULL),(197,72,64,2020.00,2080.00,'2025-02-20 03:00:00','2025-11-20 00:19:32',NULL),(198,73,33,2030.00,2095.00,'2025-03-05 03:00:00','2025-11-20 00:19:32',NULL),(199,74,84,2050.00,2110.00,'2025-02-01 03:00:00','2025-11-20 00:19:32',NULL),(200,75,18,2060.00,2125.00,'2025-02-17 03:00:00','2025-11-20 00:19:32',NULL),(201,51,14,1700.00,1765.00,'2025-01-18 03:00:00','2025-11-20 00:19:56',NULL),(202,52,59,1720.00,1780.00,'2025-02-12 03:00:00','2025-11-20 00:19:56',NULL),(203,53,36,1730.00,1795.00,'2025-03-03 03:00:00','2025-11-20 00:19:56',NULL),(204,54,91,1750.00,1810.00,'2025-01-29 03:00:00','2025-11-20 00:19:56',NULL),(205,55,10,1760.00,1825.00,'2025-02-05 03:00:00','2025-11-20 00:19:56',NULL),(206,56,67,1780.00,1840.00,'2025-03-02 03:00:00','2025-11-20 00:19:56',NULL),(207,57,44,1790.00,1855.00,'2025-01-25 03:00:00','2025-11-20 00:19:56',NULL),(208,58,83,1810.00,1870.00,'2025-02-21 03:00:00','2025-11-20 00:19:56',NULL),(209,59,5,1820.00,1885.00,'2025-01-31 03:00:00','2025-11-20 00:19:56',NULL),(210,60,72,1840.00,1900.00,'2025-02-26 03:00:00','2025-11-20 00:19:56',NULL),(211,61,38,1850.00,1915.00,'2025-01-22 03:00:00','2025-11-20 00:19:56',NULL),(212,62,19,1870.00,1930.00,'2025-02-14 03:00:00','2025-11-20 00:19:56',NULL),(213,63,99,1880.00,1945.00,'2025-03-03 03:00:00','2025-11-20 00:19:56',NULL),(214,64,7,1900.00,1960.00,'2025-01-30 03:00:00','2025-11-20 00:19:56',NULL),(215,65,53,1910.00,1975.00,'2025-02-09 03:00:00','2025-11-20 00:19:56',NULL),(216,66,26,1930.00,1990.00,'2025-02-19 03:00:00','2025-11-20 00:19:56',NULL),(217,67,71,1940.00,2005.00,'2025-01-27 03:00:00','2025-11-20 00:19:56',NULL),(218,68,13,1960.00,2020.00,'2025-02-03 03:00:00','2025-11-20 00:19:56',NULL),(219,69,85,1970.00,2035.00,'2025-02-24 03:00:00','2025-11-20 00:19:56',NULL),(220,70,42,1990.00,2050.00,'2025-01-16 03:00:00','2025-11-20 00:19:56',NULL),(221,71,2,2000.00,2065.00,'2025-01-28 03:00:00','2025-11-20 00:19:56',NULL),(222,72,64,2020.00,2080.00,'2025-02-20 03:00:00','2025-11-20 00:19:56',NULL),(223,73,33,2030.00,2095.00,'2025-03-05 03:00:00','2025-11-20 00:19:56',NULL),(224,74,84,2050.00,2110.00,'2025-02-01 03:00:00','2025-11-20 00:19:56',NULL),(225,75,18,2060.00,2125.00,'2025-02-17 03:00:00','2025-11-20 00:19:56',NULL);
/*!40000 ALTER TABLE `precio_historial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`maribel_DC`@`localhost`*/ /*!50003 TRIGGER `trg_precio_cambiado` AFTER INSERT ON `precio_historial` FOR EACH ROW BEGIN     DECLARE v_sucursal INT; SELECT id_sucursal INTO v_sucursal     FROM empleado     WHERE id_empleado = NEW.id_empleado;      INSERT INTO actividad_empleado     (id_empleado, id_publicacion, id_sucursal, tipo_actividad, descripcion)     VALUES     (         NEW.id_empleado,         NEW.id_publicacion,         v_sucursal,         'CAMBIO_PRECIO',         CONCAT('Cambio de precio a ', NEW.precio_nuevo)     ); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `precio_publicacion`
--

DROP TABLE IF EXISTS `precio_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio_publicacion` (
  `id_precio` int NOT NULL AUTO_INCREMENT,
  `id_publicacion` int NOT NULL,
  `id_tipo_cliente` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_precio`),
  KEY `id_publicacion` (`id_publicacion`),
  KEY `id_tipo_cliente` (`id_tipo_cliente`),
  CONSTRAINT `precio_publicacion_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`),
  CONSTRAINT `precio_publicacion_ibfk_2` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio_publicacion`
--

LOCK TABLES `precio_publicacion` WRITE;
/*!40000 ALTER TABLE `precio_publicacion` DISABLE KEYS */;
INSERT INTO `precio_publicacion` VALUES (1,1,1,3500.00,'2025-11-19 23:26:28'),(2,2,1,2600.00,'2025-11-19 23:26:28'),(3,3,2,2800.00,'2025-11-19 23:26:28'),(4,2,2,2300.00,'2025-11-19 23:26:28'),(5,3,1,1500.00,'2025-11-19 23:26:28'),(6,3,2,1200.00,'2025-11-19 23:26:28'),(7,4,1,1800.00,'2025-11-19 23:26:28'),(8,4,2,1450.00,'2025-11-19 23:26:28'),(9,5,1,3500.00,'2025-11-19 23:26:28'),(10,5,2,2900.00,'2025-11-19 23:26:28'),(11,6,1,2600.00,'2025-11-19 23:26:28'),(12,6,2,2100.00,'2025-11-19 23:26:28'),(13,7,1,2200.00,'2025-11-19 23:26:28'),(14,7,2,1800.00,'2025-11-19 23:26:28'),(15,8,1,4100.00,'2025-11-19 23:26:28'),(16,8,2,3400.00,'2025-11-19 23:26:28'),(17,9,1,900.00,'2025-11-19 23:26:28'),(18,9,2,750.00,'2025-11-19 23:26:28'),(19,10,1,1200.00,'2025-11-19 23:26:28'),(20,10,2,950.00,'2025-11-19 23:26:28'),(21,11,1,2800.00,'2025-11-19 23:26:28'),(22,11,2,2300.00,'2025-11-19 23:26:28'),(23,12,1,2600.00,'2025-11-19 23:26:28'),(24,12,2,2100.00,'2025-11-19 23:26:28'),(25,13,1,4600.00,'2025-11-19 23:26:28'),(26,13,2,3800.00,'2025-11-19 23:26:28'),(27,14,1,3400.00,'2025-11-19 23:26:28'),(28,14,2,2800.00,'2025-11-19 23:26:28'),(29,15,1,900.00,'2025-11-19 23:26:28'),(30,15,2,750.00,'2025-11-19 23:26:28'),(31,16,1,1200.00,'2025-11-19 23:26:28'),(32,16,2,950.00,'2025-11-19 23:26:28'),(33,17,1,5200.00,'2025-11-19 23:26:28'),(34,17,2,4300.00,'2025-11-19 23:26:28'),(35,18,1,2600.00,'2025-11-19 23:26:28'),(36,18,2,2100.00,'2025-11-19 23:26:28'),(37,19,1,3400.00,'2025-11-19 23:26:28'),(38,19,2,2800.00,'2025-11-19 23:26:28'),(39,20,1,2900.00,'2025-11-19 23:26:28'),(40,20,2,2400.00,'2025-11-19 23:26:28'),(41,21,1,8000.00,'2025-11-19 23:26:28'),(42,21,2,6500.00,'2025-11-19 23:26:28'),(43,22,1,7000.00,'2025-11-19 23:26:28'),(44,22,2,5800.00,'2025-11-19 23:26:28'),(45,23,1,3500.00,'2025-11-19 23:26:28'),(46,23,2,2900.00,'2025-11-19 23:26:28'),(47,24,1,1800.00,'2025-11-19 23:26:28'),(48,24,2,1450.00,'2025-11-19 23:26:28'),(49,25,1,2300.00,'2025-11-19 23:26:28'),(50,25,2,1900.00,'2025-11-19 23:26:28'),(51,26,1,3100.00,'2025-11-19 23:27:05'),(52,26,2,2550.00,'2025-11-19 23:27:05'),(53,27,1,2800.00,'2025-11-19 23:27:05'),(54,27,2,2300.00,'2025-11-19 23:27:05'),(55,28,1,1500.00,'2025-11-19 23:27:05'),(56,28,2,1200.00,'2025-11-19 23:27:05'),(57,29,1,3800.00,'2025-11-19 23:27:05'),(58,29,2,3150.00,'2025-11-19 23:27:05'),(59,30,1,900.00,'2025-11-19 23:27:05'),(60,30,2,750.00,'2025-11-19 23:27:05'),(61,31,1,4500.00,'2025-11-19 23:27:05'),(62,31,2,3700.00,'2025-11-19 23:27:05'),(63,32,1,2600.00,'2025-11-19 23:27:05'),(64,32,2,2100.00,'2025-11-19 23:27:05'),(65,33,1,2900.00,'2025-11-19 23:27:05'),(66,33,2,2400.00,'2025-11-19 23:27:05'),(67,34,1,3500.00,'2025-11-19 23:27:05'),(68,34,2,2900.00,'2025-11-19 23:27:05'),(69,35,1,4800.00,'2025-11-19 23:27:05'),(70,35,2,4000.00,'2025-11-19 23:27:05'),(71,36,1,1200.00,'2025-11-19 23:27:05'),(72,36,2,950.00,'2025-11-19 23:27:05'),(73,37,1,1600.00,'2025-11-19 23:27:05'),(74,37,2,1300.00,'2025-11-19 23:27:05'),(75,38,1,9000.00,'2025-11-19 23:27:05'),(76,38,2,7500.00,'2025-11-19 23:27:05'),(77,39,1,8200.00,'2025-11-19 23:27:05'),(78,39,2,6800.00,'2025-11-19 23:27:05'),(79,40,1,3500.00,'2025-11-19 23:27:05'),(80,40,2,2900.00,'2025-11-19 23:27:05'),(81,41,1,2800.00,'2025-11-19 23:27:05'),(82,41,2,2300.00,'2025-11-19 23:27:05'),(83,42,1,3000.00,'2025-11-19 23:27:05'),(84,42,2,2450.00,'2025-11-19 23:27:05'),(85,43,1,1800.00,'2025-11-19 23:27:05'),(86,43,2,1450.00,'2025-11-19 23:27:05'),(87,44,1,2400.00,'2025-11-19 23:27:05'),(88,44,2,1950.00,'2025-11-19 23:27:05'),(89,45,1,2600.00,'2025-11-19 23:27:05'),(90,45,2,2100.00,'2025-11-19 23:27:05'),(91,46,1,3400.00,'2025-11-19 23:27:05'),(92,46,2,2800.00,'2025-11-19 23:27:05'),(93,47,1,800.00,'2025-11-19 23:27:05'),(94,47,2,650.00,'2025-11-19 23:27:05'),(95,48,1,1200.00,'2025-11-19 23:27:05'),(96,48,2,950.00,'2025-11-19 23:27:05'),(97,49,1,1500.00,'2025-11-19 23:27:05'),(98,49,2,1200.00,'2025-11-19 23:27:05'),(99,50,1,2800.00,'2025-11-19 23:27:05'),(100,50,2,2300.00,'2025-11-19 23:27:05'),(101,1,1,1015.00,'2025-11-20 00:08:17'),(102,1,2,863.00,'2025-11-20 00:08:17'),(103,2,1,1030.00,'2025-11-20 00:08:17'),(104,2,2,876.00,'2025-11-20 00:08:17'),(105,3,1,1045.00,'2025-11-20 00:08:17'),(106,3,2,888.00,'2025-11-20 00:08:17'),(107,4,1,1060.00,'2025-11-20 00:08:17'),(108,4,2,901.00,'2025-11-20 00:08:17'),(109,5,1,1075.00,'2025-11-20 00:08:17'),(110,5,2,914.00,'2025-11-20 00:08:17'),(111,6,1,1090.00,'2025-11-20 00:08:17'),(112,6,2,927.00,'2025-11-20 00:08:17'),(113,7,1,1105.00,'2025-11-20 00:08:17'),(114,7,2,939.00,'2025-11-20 00:08:17'),(115,8,1,1120.00,'2025-11-20 00:08:17'),(116,8,2,952.00,'2025-11-20 00:08:17'),(117,9,1,1135.00,'2025-11-20 00:08:17'),(118,9,2,965.00,'2025-11-20 00:08:17'),(119,10,1,1150.00,'2025-11-20 00:08:17'),(120,10,2,978.00,'2025-11-20 00:08:17'),(121,11,1,1165.00,'2025-11-20 00:08:17'),(122,11,2,990.00,'2025-11-20 00:08:17'),(123,12,1,1180.00,'2025-11-20 00:08:17'),(124,12,2,1003.00,'2025-11-20 00:08:17'),(125,13,1,1195.00,'2025-11-20 00:08:17'),(126,13,2,1016.00,'2025-11-20 00:08:17'),(127,14,1,1210.00,'2025-11-20 00:08:17'),(128,14,2,1028.00,'2025-11-20 00:08:17'),(129,15,1,1225.00,'2025-11-20 00:08:17'),(130,15,2,1041.00,'2025-11-20 00:08:17'),(131,16,1,1240.00,'2025-11-20 00:08:17'),(132,16,2,1054.00,'2025-11-20 00:08:17'),(133,17,1,1255.00,'2025-11-20 00:08:17'),(134,17,2,1066.00,'2025-11-20 00:08:17'),(135,18,1,1270.00,'2025-11-20 00:08:17'),(136,18,2,1079.00,'2025-11-20 00:08:17'),(137,19,1,1285.00,'2025-11-20 00:08:17'),(138,19,2,1092.00,'2025-11-20 00:08:17'),(139,20,1,1300.00,'2025-11-20 00:08:17'),(140,20,2,1105.00,'2025-11-20 00:08:17'),(141,21,1,1315.00,'2025-11-20 00:08:45'),(142,21,2,1118.00,'2025-11-20 00:08:45'),(143,22,1,1330.00,'2025-11-20 00:08:45'),(144,22,2,1130.00,'2025-11-20 00:08:45'),(145,23,1,1345.00,'2025-11-20 00:08:45'),(146,23,2,1143.00,'2025-11-20 00:08:45'),(147,24,1,1360.00,'2025-11-20 00:08:45'),(148,24,2,1156.00,'2025-11-20 00:08:45'),(149,25,1,1375.00,'2025-11-20 00:08:45'),(150,25,2,1168.00,'2025-11-20 00:08:45'),(151,26,1,1390.00,'2025-11-20 00:08:45'),(152,26,2,1181.00,'2025-11-20 00:08:45'),(153,27,1,1405.00,'2025-11-20 00:08:45'),(154,27,2,1193.00,'2025-11-20 00:08:45'),(155,28,1,1420.00,'2025-11-20 00:08:45'),(156,28,2,1207.00,'2025-11-20 00:08:45'),(157,29,1,1435.00,'2025-11-20 00:08:45'),(158,29,2,1220.00,'2025-11-20 00:08:45'),(159,30,1,1450.00,'2025-11-20 00:08:45'),(160,30,2,1232.00,'2025-11-20 00:08:45'),(161,31,1,1465.00,'2025-11-20 00:08:45'),(162,31,2,1245.00,'2025-11-20 00:08:45'),(163,32,1,1480.00,'2025-11-20 00:08:45'),(164,32,2,1258.00,'2025-11-20 00:08:45'),(165,33,1,1495.00,'2025-11-20 00:08:45'),(166,33,2,1270.00,'2025-11-20 00:08:45'),(167,34,1,1510.00,'2025-11-20 00:08:45'),(168,34,2,1283.00,'2025-11-20 00:08:45'),(169,35,1,1525.00,'2025-11-20 00:08:45'),(170,35,2,1296.00,'2025-11-20 00:08:45'),(171,36,1,1540.00,'2025-11-20 00:08:45'),(172,36,2,1309.00,'2025-11-20 00:08:45'),(173,37,1,1555.00,'2025-11-20 00:08:45'),(174,37,2,1321.00,'2025-11-20 00:08:45'),(175,38,1,1570.00,'2025-11-20 00:08:45'),(176,38,2,1334.00,'2025-11-20 00:08:45'),(177,39,1,1585.00,'2025-11-20 00:08:45'),(178,39,2,1347.00,'2025-11-20 00:08:45'),(179,40,1,1600.00,'2025-11-20 00:08:45'),(180,40,2,1360.00,'2025-11-20 00:08:45'),(181,41,1,1615.00,'2025-11-20 00:09:08'),(182,41,2,1372.00,'2025-11-20 00:09:08'),(183,42,1,1630.00,'2025-11-20 00:09:08'),(184,42,2,1386.00,'2025-11-20 00:09:08'),(185,43,1,1645.00,'2025-11-20 00:09:08'),(186,43,2,1398.00,'2025-11-20 00:09:08'),(187,44,1,1660.00,'2025-11-20 00:09:08'),(188,44,2,1411.00,'2025-11-20 00:09:08'),(189,45,1,1675.00,'2025-11-20 00:09:08'),(190,45,2,1424.00,'2025-11-20 00:09:08'),(191,46,1,1690.00,'2025-11-20 00:09:08'),(192,46,2,1436.00,'2025-11-20 00:09:08'),(193,47,1,1705.00,'2025-11-20 00:09:08'),(194,47,2,1449.00,'2025-11-20 00:09:08'),(195,48,1,1720.00,'2025-11-20 00:09:08'),(196,48,2,1462.00,'2025-11-20 00:09:08'),(197,49,1,1735.00,'2025-11-20 00:09:08'),(198,49,2,1474.00,'2025-11-20 00:09:08'),(199,50,1,1750.00,'2025-11-20 00:09:08'),(200,50,2,1487.00,'2025-11-20 00:09:08'),(201,51,1,1765.00,'2025-11-20 00:09:08'),(202,51,2,1500.00,'2025-11-20 00:09:08'),(203,52,1,1780.00,'2025-11-20 00:09:08'),(204,52,2,1513.00,'2025-11-20 00:09:08'),(205,53,1,1795.00,'2025-11-20 00:09:08'),(206,53,2,1526.00,'2025-11-20 00:09:08'),(207,54,1,1810.00,'2025-11-20 00:09:08'),(208,54,2,1538.00,'2025-11-20 00:09:08'),(209,55,1,1825.00,'2025-11-20 00:09:08'),(210,55,2,1551.00,'2025-11-20 00:09:08'),(211,56,1,1840.00,'2025-11-20 00:09:08'),(212,56,2,1564.00,'2025-11-20 00:09:08'),(213,57,1,1855.00,'2025-11-20 00:09:08'),(214,57,2,1577.00,'2025-11-20 00:09:08'),(215,58,1,1870.00,'2025-11-20 00:09:08'),(216,58,2,1589.00,'2025-11-20 00:09:08'),(217,59,1,1885.00,'2025-11-20 00:09:08'),(218,59,2,1602.00,'2025-11-20 00:09:08'),(219,60,1,1900.00,'2025-11-20 00:09:08'),(220,60,2,1615.00,'2025-11-20 00:09:08'),(221,61,1,1915.00,'2025-11-20 00:09:21'),(222,61,2,1628.00,'2025-11-20 00:09:21'),(223,62,1,1930.00,'2025-11-20 00:09:21'),(224,62,2,1640.00,'2025-11-20 00:09:21'),(225,63,1,1945.00,'2025-11-20 00:09:21'),(226,63,2,1653.00,'2025-11-20 00:09:21'),(227,64,1,1960.00,'2025-11-20 00:09:21'),(228,64,2,1666.00,'2025-11-20 00:09:21'),(229,65,1,1975.00,'2025-11-20 00:09:21'),(230,65,2,1678.00,'2025-11-20 00:09:21'),(231,66,1,1990.00,'2025-11-20 00:09:21'),(232,66,2,1692.00,'2025-11-20 00:09:21'),(233,67,1,2005.00,'2025-11-20 00:09:21'),(234,67,2,1704.00,'2025-11-20 00:09:21'),(235,68,1,2020.00,'2025-11-20 00:09:21'),(236,68,2,1717.00,'2025-11-20 00:09:21'),(237,69,1,2035.00,'2025-11-20 00:09:21'),(238,69,2,1730.00,'2025-11-20 00:09:21'),(239,70,1,2050.00,'2025-11-20 00:09:21'),(240,70,2,1742.00,'2025-11-20 00:09:21'),(241,71,1,2065.00,'2025-11-20 00:09:21'),(242,71,2,1755.00,'2025-11-20 00:09:21'),(243,72,1,2080.00,'2025-11-20 00:09:21'),(244,72,2,1768.00,'2025-11-20 00:09:21'),(245,73,1,2095.00,'2025-11-20 00:09:21'),(246,73,2,1780.00,'2025-11-20 00:09:21'),(247,74,1,2110.00,'2025-11-20 00:09:21'),(248,74,2,1793.00,'2025-11-20 00:09:21'),(249,75,1,2125.00,'2025-11-20 00:09:21'),(250,75,2,1806.00,'2025-11-20 00:09:21'),(251,76,1,2140.00,'2025-11-20 00:09:21'),(252,76,2,1819.00,'2025-11-20 00:09:21'),(253,77,1,2155.00,'2025-11-20 00:09:21'),(254,77,2,1832.00,'2025-11-20 00:09:21'),(255,78,1,2170.00,'2025-11-20 00:09:21'),(256,78,2,1845.00,'2025-11-20 00:09:21'),(257,79,1,2185.00,'2025-11-20 00:09:21'),(258,79,2,1857.00,'2025-11-20 00:09:21'),(259,80,1,2200.00,'2025-11-20 00:09:21'),(260,80,2,1870.00,'2025-11-20 00:09:21'),(261,81,1,2215.00,'2025-11-20 00:09:38'),(262,81,2,1882.00,'2025-11-20 00:09:38'),(263,82,1,2230.00,'2025-11-20 00:09:38'),(264,82,2,1896.00,'2025-11-20 00:09:38'),(265,83,1,2245.00,'2025-11-20 00:09:38'),(266,83,2,1908.00,'2025-11-20 00:09:38'),(267,84,1,2260.00,'2025-11-20 00:09:38'),(268,84,2,1921.00,'2025-11-20 00:09:38'),(269,85,1,2275.00,'2025-11-20 00:09:38'),(270,85,2,1934.00,'2025-11-20 00:09:38'),(271,86,1,2290.00,'2025-11-20 00:09:38'),(272,86,2,1946.00,'2025-11-20 00:09:38'),(273,87,1,2305.00,'2025-11-20 00:09:38'),(274,87,2,1959.00,'2025-11-20 00:09:38'),(275,88,1,2320.00,'2025-11-20 00:09:38'),(276,88,2,1972.00,'2025-11-20 00:09:38'),(277,89,1,2335.00,'2025-11-20 00:09:38'),(278,89,2,1984.00,'2025-11-20 00:09:38'),(279,90,1,2350.00,'2025-11-20 00:09:38'),(280,90,2,1997.00,'2025-11-20 00:09:38'),(281,91,1,2365.00,'2025-11-20 00:09:38'),(282,91,2,2010.00,'2025-11-20 00:09:38'),(283,92,1,2380.00,'2025-11-20 00:09:38'),(284,92,2,2023.00,'2025-11-20 00:09:38'),(285,93,1,2395.00,'2025-11-20 00:09:38'),(286,93,2,2036.00,'2025-11-20 00:09:38'),(287,94,1,2410.00,'2025-11-20 00:09:38'),(288,94,2,2048.00,'2025-11-20 00:09:38'),(289,95,1,2425.00,'2025-11-20 00:09:38'),(290,95,2,2061.00,'2025-11-20 00:09:38'),(291,96,1,2440.00,'2025-11-20 00:09:38'),(292,96,2,2074.00,'2025-11-20 00:09:38'),(293,97,1,2455.00,'2025-11-20 00:09:38'),(294,97,2,2087.00,'2025-11-20 00:09:38'),(295,98,1,2470.00,'2025-11-20 00:09:38'),(296,98,2,2100.00,'2025-11-20 00:09:38'),(297,99,1,2485.00,'2025-11-20 00:09:38'),(298,99,2,2112.00,'2025-11-20 00:09:38'),(299,100,1,2500.00,'2025-11-20 00:09:38'),(300,100,2,2125.00,'2025-11-20 00:09:38');
/*!40000 ALTER TABLE `precio_publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Distribuidora Andina','01143001001','30-7123456-7'),(2,'Distribuidora Interpack','01143001002','30-6899123-9'),(3,'Panini Argentina','01143001003','30-61788991-2'),(4,'Editorial Atlántida','01143001004','30-5244666-7'),(5,'Editorial Perfil','01143001005','30-52444777-8'),(6,'Distribuidora Universo','01143001006','30-71233888-2'),(7,'Distribuidora Mediterránea','01143001007','30-57889911-3'),(8,'Distribuidora Nueva','01143001008','30-51233456-6'),(9,'Distribuidora Argenta','01143001009','30-50233456-9'),(10,'Grupo Clarín Distribución','01143001010','30-54321111-4'),(11,'La Nación Distribución','01143001011','30-53322111-4'),(12,'Distribuidora Patagonia','01143001012','30-58554444-6'),(13,'Distribuidora Norte','01143001013','30-5722111-3'),(14,'Distribuidora Express','01143001014','30-5999222-8'),(15,'Editorial Planeta','01143001015','30-54889977-3');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `id_publicacion` int NOT NULL AUTO_INCREMENT,
  `id_editorial` int NOT NULL,
  `id_tipo_publicacion` int NOT NULL,
  `id_categoria` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_barras` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio_costo` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `stock_minimo` int DEFAULT '0',
  `activo` tinyint(1) DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_publicacion`),
  UNIQUE KEY `codigo_barras` (`codigo_barras`),
  KEY `id_editorial` (`id_editorial`),
  KEY `id_tipo_publicacion` (`id_tipo_publicacion`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id_editorial`),
  CONSTRAINT `publicacion_ibfk_2` FOREIGN KEY (`id_tipo_publicacion`) REFERENCES `tipopublicacion` (`id_tipo_publicacion`),
  CONSTRAINT `publicacion_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_publicacion` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (1,1,1,1,'Revista Gente','GNT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(2,1,1,2,'Revista Caras','CRS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(3,1,1,2,'Revista Pronto','PRT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(4,3,1,2,'Revista Paparazzi','PPZ-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(5,1,1,7,'Revista Para Ti','PTI-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(6,7,1,7,'Revista Cosmopolitan','CSP-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(7,10,1,4,'Revista Billiken','BLK-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(8,10,1,4,'Revista Genios','GNS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(9,10,1,4,'Revista Jugá','JGA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(10,7,1,5,'Muy Interesante','MI-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(11,7,1,5,'National Geographic','NG-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(12,1,1,6,'Cocina Fácil','CCF-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(13,1,1,6,'El Gourmet','GRT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(14,9,2,3,'Revista Olé Deportiva','OLE-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(15,6,1,3,'El Gráfico','GFC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(16,9,2,1,'Diario Clarín','CLN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(17,8,2,1,'Diario La Nación','LN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(18,9,2,3,'Diario Olé','OLE-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(19,8,2,1,'Diario Popular','POP-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(20,4,5,9,'Álbum Figuritas Mundial','PAN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(21,4,5,9,'Álbum de la Copa América','PAN-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(22,4,5,9,'Álbum Liga Argentina','PAN-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(23,5,3,8,'Naruto Vol.1','NRT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(24,5,3,8,'Naruto Vol.2','NRT-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(25,5,3,8,'Naruto Vol.3','NRT-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(26,5,3,8,'One Piece Vol.1','OPC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(27,5,3,8,'One Piece Vol.2','OPC-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(28,5,3,8,'One Piece Vol.3','OPC-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(29,5,3,8,'Dragon Ball Super Vol.1','DBS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(30,5,3,8,'Dragon Ball Super Vol.2','DBS-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(31,5,3,8,'Kimetsu no Yaiba Vol.1','KNY-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(32,5,3,8,'Kimetsu no Yaiba Vol.2','KNY-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(33,5,7,8,'Iron Man #1','IRM-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(34,5,7,8,'Iron Man #2','IRM-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(35,5,7,8,'Spider-Man #1','SPM-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(36,5,7,8,'Spider-Man #2','SPM-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(37,5,7,8,'Batman #1','BTM-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(38,5,7,8,'Batman #2','BTM-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(39,5,7,8,'Superman #1','SPM-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(40,5,7,8,'Superman #2','SPM-004',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(41,6,9,9,'Coleccionable Autos Clásicos #1','CAC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(42,6,9,9,'Coleccionable Autos Clásicos #2','CAC-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(43,7,8,10,'Guía Turística Argentina','GTA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(44,7,8,10,'Guía de San Pedro','GSP-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(45,10,4,4,'Libro Infantil Colores','LIC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(46,10,4,4,'Libro Infantil Animales','LIA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(47,7,4,6,'Libro Cocina Argentina','LCA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(48,7,4,6,'Libro Postres','LPO-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(49,6,9,9,'Coleccionable Dinosaurios','CDN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(50,10,4,4,'Enciclopedia Infantil','ENC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(51,9,1,1,'Revista Viva','VIV-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(52,8,1,1,'Revista Rumbos','RMB-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(53,2,1,1,'Revista Noticias','NTS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(54,2,1,2,'Rolling Stone Argentina','RLS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(55,1,1,6,'Cocina a Mano','CAM-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(56,1,1,5,'Revista Jardín','JDN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(57,6,9,9,'Coleccionable Marvel #1','CMV-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(58,6,9,9,'Coleccionable Marvel #2','CMV-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(59,6,9,9,'Coleccionable Star Wars #1','CST-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(60,6,9,9,'Coleccionable Star Wars #2','CST-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(61,4,5,9,'Álbum Dragon Ball Super','PAN-004',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(62,4,5,9,'Álbum Naruto Shippuden','PAN-005',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(63,9,1,3,'Fútbol Total','FTT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(64,1,1,7,'Revista PlayBoy Argentina','PLY-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(65,1,1,7,'Revista Hombre','HMB-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(66,7,4,5,'Atlas Ilustrado','ATS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(67,10,4,10,'Manual Escolar 6to Grado','ESC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(68,10,4,10,'Manual Escolar 5to Grado','ESC-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(69,10,4,10,'Manual Escolar 4to Grado','ESC-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(70,10,4,10,'Manual Escolar 3ro Grado','ESC-004',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(71,10,4,10,'Manual Escolar 2do Grado','ESC-005',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(72,7,8,5,'Guía de Jardinería','GJD-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(73,7,8,5,'Guía de Mascotas','GMS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(74,7,8,10,'Auto Manual del Conductor','CNV-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(75,7,8,10,'Auto Manual Moto','CNV-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(76,6,9,9,'Coleccionable Rock Nacional #1','CRN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(77,6,9,9,'Coleccionable Rock Nacional #2','CRN-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(78,6,9,9,'Coleccionable Música Pop #1','CMP-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(79,6,9,9,'Coleccionable Música Pop #2','CMP-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(80,10,4,4,'Libro de Chistes','CHS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(81,10,1,4,'Revista Gatitos Tiernos','GAT-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(82,10,1,4,'Revista Perritos Tiernos','DOG-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(83,9,6,3,'Suplemento Deportivo','SUP-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(84,8,6,1,'Suplemento Economía','SUP-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(85,1,6,7,'Suplemento Moda','SUP-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(86,5,7,8,'Comic Avengers #1','AVG-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(87,5,7,8,'Comic Avengers #2','AVG-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(88,5,7,8,'Comic X-Men #1','XMN-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(89,5,7,8,'Comic X-Men #2','XMN-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(90,5,7,8,'Comic Hulk #1','HLK-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(91,5,7,8,'Comic Hulk #2','HLK-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(92,7,1,5,'Revista Salud Hoy','SLD-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(93,7,1,5,'Revista Ciencia Hoy','SCI-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(94,7,4,10,'Manual Primeros Auxilios','MPA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(95,7,4,6,'Manual Cocina Saludable','MCS-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(96,7,4,5,'Enciclopedia Argentina Tomo 1','ENC-002',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(97,7,4,5,'Enciclopedia Argentina Tomo 2','ENC-003',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(98,7,8,5,'Guía de Aves Argentinas','GAA-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(99,7,8,5,'Guía de Plantas Urbanas','GPU-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL),(100,7,1,5,'Revista Tecnología Hoy','TEC-001',150.00,250.00,0,1,'2025-11-19 23:06:36',NULL);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador','Control total','2025-11-18 21:32:23',NULL),(2,'Vendedor','Registro de movimientos','2025-11-18 21:32:23',NULL),(3,'Supervisor','Revisa y autoriza las ventas de los vendedores.','2025-11-19 23:11:21',NULL);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `id_publicacion` int NOT NULL,
  `id_ubicacion` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_stock`),
  UNIQUE KEY `id_publicacion` (`id_publicacion`,`id_ubicacion`),
  KEY `id_ubicacion` (`id_ubicacion`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,35,'2025-11-19 23:23:30'),(2,2,1,28,'2025-11-19 23:23:30'),(3,3,1,20,'2025-11-19 23:23:30'),(4,4,1,16,'2025-11-20 00:25:56'),(5,5,1,40,'2025-11-19 23:23:30'),(6,6,1,21,'2025-11-20 00:25:56'),(7,7,1,18,'2025-11-19 23:23:30'),(8,8,1,30,'2025-11-19 23:23:30'),(9,9,1,12,'2025-11-19 23:23:30'),(10,10,1,44,'2025-11-20 00:25:56'),(11,11,2,35,'2025-11-20 00:25:56'),(12,12,2,43,'2025-11-20 00:25:56'),(13,13,2,20,'2025-11-19 23:23:30'),(14,14,2,26,'2025-11-20 00:25:56'),(15,15,2,17,'2025-11-19 23:23:30'),(16,16,2,7,'2025-11-20 00:25:56'),(17,17,2,50,'2025-11-19 23:23:30'),(18,18,2,37,'2025-11-20 00:25:56'),(19,19,2,26,'2025-11-20 00:25:56'),(20,20,2,30,'2025-11-19 23:23:30'),(21,21,3,42,'2025-11-19 23:23:30'),(22,22,3,15,'2025-11-19 23:23:30'),(23,23,3,18,'2025-11-19 23:23:30'),(24,24,3,22,'2025-11-20 00:25:56'),(25,25,3,19,'2025-11-19 23:23:30'),(26,26,1,33,'2025-11-20 00:25:56'),(27,27,1,22,'2025-11-19 23:23:47'),(28,28,1,16,'2025-11-19 23:23:47'),(29,29,1,40,'2025-11-19 23:23:47'),(30,30,1,12,'2025-11-19 23:23:47'),(31,31,1,25,'2025-11-19 23:23:47'),(32,32,2,18,'2025-11-19 23:23:47'),(33,33,2,20,'2025-11-19 23:23:47'),(34,34,2,10,'2025-11-20 00:25:56'),(35,35,2,25,'2025-11-20 00:25:56'),(36,36,2,31,'2025-11-19 23:23:47'),(37,37,2,24,'2025-11-19 23:23:47'),(38,38,3,33,'2025-11-19 23:23:47'),(39,39,3,21,'2025-11-19 23:23:47'),(40,40,3,8,'2025-11-20 00:25:56'),(41,41,3,45,'2025-11-20 00:25:56'),(42,42,3,28,'2025-11-19 23:23:47'),(43,43,3,17,'2025-11-19 23:23:47'),(44,44,1,22,'2025-11-19 23:23:47'),(45,45,1,26,'2025-11-20 00:25:56'),(46,46,2,32,'2025-11-19 23:23:47'),(47,47,2,12,'2025-11-19 23:23:47'),(48,48,3,20,'2025-11-19 23:23:47'),(49,49,3,34,'2025-11-19 23:23:47'),(50,50,3,27,'2025-11-19 23:23:47'),(51,51,1,18,'2025-11-19 23:24:09'),(52,52,1,22,'2025-11-19 23:24:09'),(53,53,1,15,'2025-11-19 23:24:09'),(54,54,1,40,'2025-11-19 23:24:09'),(55,55,1,33,'2025-11-19 23:24:09'),(56,56,1,12,'2025-11-19 23:24:09'),(57,57,2,50,'2025-11-19 23:24:09'),(58,58,2,27,'2025-11-19 23:24:09'),(59,59,2,24,'2025-11-20 00:25:56'),(60,60,2,17,'2025-11-20 00:25:56'),(61,61,2,18,'2025-11-19 23:24:09'),(62,62,2,11,'2025-11-19 23:24:09'),(63,63,3,34,'2025-11-20 00:25:56'),(64,64,3,30,'2025-11-19 23:24:09'),(65,65,3,26,'2025-11-19 23:24:09'),(66,66,3,10,'2025-11-20 00:25:56'),(67,67,3,19,'2025-11-19 23:24:09'),(68,68,3,32,'2025-11-19 23:24:09'),(69,69,1,24,'2025-11-19 23:24:09'),(70,70,1,27,'2025-11-20 00:25:56'),(71,71,2,17,'2025-11-20 00:25:56'),(72,72,2,15,'2025-11-20 00:25:56'),(73,73,3,40,'2025-11-20 00:25:56'),(74,74,3,34,'2025-11-20 00:25:56'),(75,75,3,12,'2025-11-19 23:24:09'),(76,76,1,35,'2025-11-19 23:24:15'),(77,77,1,27,'2025-11-19 23:24:15'),(78,78,1,22,'2025-11-19 23:24:15'),(79,79,1,18,'2025-11-19 23:24:15'),(80,80,1,12,'2025-11-19 23:24:15'),(81,81,2,39,'2025-11-20 00:25:56'),(82,82,2,33,'2025-11-19 23:24:15'),(83,83,2,25,'2025-11-19 23:24:15'),(84,84,2,20,'2025-11-19 23:24:15'),(85,85,2,12,'2025-11-19 23:24:15'),(86,86,3,48,'2025-11-19 23:24:15'),(87,87,3,34,'2025-11-19 23:24:15'),(88,88,3,29,'2025-11-19 23:24:15'),(89,89,3,21,'2025-11-19 23:24:15'),(90,90,3,12,'2025-11-20 00:25:56'),(91,91,1,26,'2025-11-19 23:24:15'),(92,92,1,20,'2025-11-19 23:24:15'),(93,93,2,15,'2025-11-19 23:24:15'),(94,94,2,10,'2025-11-19 23:24:15'),(95,95,2,33,'2025-11-19 23:24:15'),(96,96,3,30,'2025-11-19 23:24:15'),(97,97,3,22,'2025-11-19 23:24:15'),(98,98,3,16,'2025-11-19 23:24:15'),(99,99,3,12,'2025-11-19 23:24:15'),(100,100,3,26,'2025-11-20 00:25:56');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int NOT NULL AUTO_INCREMENT,
  `id_ubicacion` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sucursal`),
  KEY `id_ubicacion` (`id_ubicacion`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,1,'Sucursal Centro',NULL,1,'2025-11-19 23:02:09',NULL),(2,2,'Sucursal Siria',NULL,1,'2025-11-19 23:02:09',NULL),(3,3,'Sucursal San Martín',NULL,1,'2025-11-19 23:02:09',NULL);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cliente`
--

DROP TABLE IF EXISTS `tipo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` enum('MINORISTA','MAYORISTA') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tipo_cliente`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cliente`
--

LOCK TABLES `tipo_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_cliente` DISABLE KEYS */;
INSERT INTO `tipo_cliente` VALUES (1,'MINORISTA'),(2,'MAYORISTA');
/*!40000 ALTER TABLE `tipo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomovimiento`
--

DROP TABLE IF EXISTS `tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomovimiento` (
  `id_tipo_mov` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_entrada_stock` tinyint(1) NOT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo_mov`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomovimiento`
--

LOCK TABLES `tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tipomovimiento` DISABLE KEYS */;
INSERT INTO `tipomovimiento` VALUES (1,'VENTA MINORISTA',0,NULL,'2025-11-19 22:57:48'),(2,'VENTA MAYORISTA',0,NULL,'2025-11-19 22:57:48'),(3,'COMPRA A PROVEEDOR',1,NULL,'2025-11-19 22:57:48'),(4,'DEVOLUCIÓN DE CLIENTE',1,NULL,'2025-11-19 22:57:48'),(5,'DEVOLUCIÓN A PROVEEDOR',0,NULL,'2025-11-19 22:57:48'),(6,'AJUSTE DE STOCK',1,NULL,'2025-11-19 22:57:48');
/*!40000 ALTER TABLE `tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopublicacion`
--

DROP TABLE IF EXISTS `tipopublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopublicacion` (
  `id_tipo_publicacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo_publicacion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopublicacion`
--

LOCK TABLES `tipopublicacion` WRITE;
/*!40000 ALTER TABLE `tipopublicacion` DISABLE KEYS */;
INSERT INTO `tipopublicacion` VALUES (1,'Revista Semanal',NULL,NULL,'2025-11-18 21:33:09'),(2,'Libro Tapa Dura',NULL,NULL,'2025-11-18 21:33:09'),(3,'Manga/Cómic',NULL,NULL,'2025-11-18 21:33:09'),(4,'Revista',NULL,NULL,'2025-11-19 22:50:21'),(5,'Diario',NULL,NULL,'2025-11-19 22:50:21'),(6,'Manga',NULL,NULL,'2025-11-19 22:50:21'),(7,'Libro',NULL,NULL,'2025-11-19 22:50:21'),(8,'Álbum de figuritas',NULL,NULL,'2025-11-19 22:50:21'),(9,'Suplemento',NULL,NULL,'2025-11-19 22:50:21'),(10,'Comic',NULL,NULL,'2025-11-19 22:50:21'),(11,'Guía',NULL,NULL,'2025-11-19 22:50:21'),(12,'Coleccionable',NULL,NULL,'2025-11-19 22:50:21'),(13,'Periódico',NULL,NULL,'2025-11-19 22:50:21');
/*!40000 ALTER TABLE `tipopublicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `id_ubicacion` int NOT NULL AUTO_INCREMENT,
  `id_codigo_postal` int NOT NULL,
  `calle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ubicacion`),
  KEY `id_codigo_postal` (`id_codigo_postal`),
  CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`id_codigo_postal`) REFERENCES `codigo_postal` (`id_codigo_postal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,1,'Calle Belgrano','50',1,'2025-11-18 21:39:16',NULL),(2,1,'Av. 9 de Julio','1200',1,'2025-11-18 21:39:16',NULL),(3,1,'Barrio La Miel','30',1,'2025-11-18 21:39:16',NULL),(4,1,'Av. 9 de Julio','320',1,'2025-11-19 23:01:42',NULL),(5,1,'Av. Siria','845',1,'2025-11-19 23:01:42',NULL),(6,2,'San Martín','1020',1,'2025-11-19 23:01:42',NULL);
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rol` int NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_empleado` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `id_rol` (`id_rol`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','HASH_SEGURIDAD',1,1,'2025-11-18 21:39:51',NULL),(2,'mlopez','HASH_SEGURIDAD',2,1,'2025-11-18 21:39:51',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-19 21:43:31
