-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bc_unidade3
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `CDBAIRRO` int NOT NULL AUTO_INCREMENT,
  `CDCIDADE` int NOT NULL,
  `SGESTADO` char(2) NOT NULL,
  `NMBAIRRO` varchar(20) NOT NULL,
  PRIMARY KEY (`CDBAIRRO`,`CDCIDADE`,`SGESTADO`),
  KEY `CDCIDADE` (`CDCIDADE`),
  KEY `SGESTADO` (`SGESTADO`),
  CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`CDCIDADE`) REFERENCES `cidade` (`CDCIDADE`),
  CONSTRAINT `bairro_ibfk_2` FOREIGN KEY (`SGESTADO`) REFERENCES `estado` (`SGESTADO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,1,'RN','Ponta Negra'),(2,1,'RN','Parque dos Coqueiros'),(3,1,'RN','Cidade da EsperanÔö£┬║a'),(4,4,'SP','Centro'),(5,4,'SP','Vila Mariana');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `CDCIDADE` int NOT NULL AUTO_INCREMENT,
  `SGESTADO` char(2) NOT NULL,
  `NMCIDADE` varchar(20) NOT NULL,
  PRIMARY KEY (`CDCIDADE`,`SGESTADO`),
  KEY `SGESTADO` (`SGESTADO`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`SGESTADO`) REFERENCES `estado` (`SGESTADO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'RN','Natal'),(2,'RN','Canguaretama'),(3,'RN','SÔö£├║o Gabriel'),(4,'SP','SÔö£├║o Paulo'),(5,'SP','Barueri');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `CDCOMPRADOR` int NOT NULL AUTO_INCREMENT,
  `NMCOMPRADOR` varchar(40) NOT NULL,
  `NMENDERECO` varchar(40) NOT NULL,
  `NRCPF` decimal(11,0) NOT NULL,
  `NMCIDADE` varchar(20) DEFAULT NULL,
  `NMBAIRRO` varchar(20) DEFAULT NULL,
  `SGESTADO` char(2) DEFAULT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `EMAIL` varchar(80) NOT NULL,
  PRIMARY KEY (`CDCOMPRADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES (1,'Carlos JosÔö£┬«','Rua Jose',40877899002,NULL,NULL,NULL,'(84) 98150-4614','carlos@gmail.com'),(2,'JoÔö£├║o Pedro','R. da Paz, 12',12737603013,NULL,NULL,NULL,'(84) 98671-2580','joaop@gmail.com'),(3,'JosÔö£┬« da Silva','Rua dois, 10',58378603040,NULL,NULL,NULL,'(84) 98252-5711','josee@gmail.com'),(4,'Pedro Pereira','Rua Quatro, 20',54195620066,NULL,NULL,NULL,'(84) 99766-3731','pedroo@gmail.com');
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `SGESTADO` char(2) NOT NULL,
  PRIMARY KEY (`SGESTADO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('BA'),('ES'),('MG'),('RJ'),('RN'),('SP');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_imovel`
--

DROP TABLE IF EXISTS `faixa_imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faixa_imovel` (
  `CDFAIXA` int NOT NULL AUTO_INCREMENT,
  `NMFAIXA` varchar(30) DEFAULT NULL,
  `VLMINIMO` decimal(14,2) DEFAULT NULL,
  `VLMAXIMO` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`CDFAIXA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_imovel`
--

LOCK TABLES `faixa_imovel` WRITE;
/*!40000 ALTER TABLE `faixa_imovel` DISABLE KEYS */;
/*!40000 ALTER TABLE `faixa_imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imovel` (
  `CDIMOVEL` int NOT NULL AUTO_INCREMENT,
  `CDVENDEDOR` int NOT NULL,
  `CDBAIRRO` int NOT NULL,
  `CDCIDADE` int NOT NULL,
  `SGESTADO` char(2) NOT NULL,
  `NMENDERECO` varchar(40) NOT NULL,
  `NRAREAUTIL` decimal(10,2) DEFAULT NULL,
  `NRAREATOTAL` decimal(10,2) DEFAULT NULL,
  `DSIMOVEL` varchar(300) DEFAULT NULL,
  `VLPRECO` decimal(16,2) NOT NULL,
  `STVENDIDO` char(1) NOT NULL DEFAULT 'N',
  `DTLANCTO` date DEFAULT NULL,
  `IMOVEL_INDICADO` int DEFAULT NULL,
  PRIMARY KEY (`CDIMOVEL`),
  KEY `CDVENDEDOR` (`CDVENDEDOR`),
  KEY `CDBAIRRO` (`CDBAIRRO`),
  CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`CDVENDEDOR`) REFERENCES `vendedor` (`CDVENDEDOR`),
  CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`CDBAIRRO`) REFERENCES `bairro` (`CDBAIRRO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,2,1,1,'RN','R. das Pedrinhas, S/N',300.00,500.00,NULL,100000.00,'N',NULL,1),(2,2,2,1,'RN','R. Dr. Roberto',200.00,300.00,NULL,200000.00,'N',NULL,2),(3,3,3,1,'RN','R. das Flores',300.00,500.00,NULL,300000.00,'N',NULL,3),(4,3,1,1,'RN','R. Jardim EsperanÔö£┬║a',100.00,200.00,NULL,400000.00,'N',NULL,1),(5,1,2,1,'RN','Av. da EsperanÔö£┬║a',100.00,200.00,NULL,500000.00,'N',NULL,NULL),(6,4,3,1,'RN','Av. ',200.00,300.00,NULL,600000.00,'N',NULL,1);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta` (
  `CDIMOVEL` int NOT NULL,
  `CDCOMPRADOR` int NOT NULL,
  `VLOFERTA` decimal(16,2) NOT NULL,
  `DTOFERTA` date NOT NULL,
  PRIMARY KEY (`CDIMOVEL`,`CDCOMPRADOR`),
  KEY `CDCOMPRADOR` (`CDCOMPRADOR`),
  CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`CDIMOVEL`) REFERENCES `imovel` (`CDIMOVEL`),
  CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`CDCOMPRADOR`) REFERENCES `comprador` (`CDCOMPRADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` VALUES (1,1,10000.00,'2022-02-15'),(1,3,12000.00,'2022-05-25'),(2,2,12000.00,'2022-01-08'),(2,3,12000.00,'2022-01-10'),(3,1,11000.00,'2022-04-03'),(4,2,13000.00,'2022-02-08');
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `CDVENDEDOR` int NOT NULL AUTO_INCREMENT,
  `NMVENDEDOR` varchar(40) NOT NULL,
  `NMENDERECO` varchar(40) NOT NULL,
  `NRCPF` decimal(11,0) NOT NULL,
  `NMCIDADE` varchar(20) DEFAULT NULL,
  `NMBAIRRO` varchar(20) DEFAULT NULL,
  `SGESTADO` char(2) DEFAULT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `EMAIL` varchar(80) NOT NULL,
  PRIMARY KEY (`CDVENDEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Maria Barbosa','Rua Silva, 45',60410035068,NULL,NULL,NULL,'(84) 97505-4785','maria@gmail.com'),(2,'JoÔö£├║o Pedro','Rua da Paz, 12',12629837033,NULL,NULL,NULL,'(84) 98394-5439','joao@gmail.com'),(3,'JosÔö£┬« da Silva','Rua dois, 10',93803132096,NULL,NULL,NULL,'(84) 98637-6529','jose@gmail.com'),(4,'Pedro Pereira','Rua Quatro, 20',37004795063,NULL,NULL,NULL,'(84) 98773-7192','pedro@gmail.com');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vimovel_bairro1`
--

DROP TABLE IF EXISTS `vimovel_bairro1`;
/*!50001 DROP VIEW IF EXISTS `vimovel_bairro1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vimovel_bairro1` AS SELECT 
 1 AS `CDIMOVEL`,
 1 AS `NMENDERECO`,
 1 AS `VLPRECO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vimovel_cidade`
--

DROP TABLE IF EXISTS `vimovel_cidade`;
/*!50001 DROP VIEW IF EXISTS `vimovel_cidade`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vimovel_cidade` AS SELECT 
 1 AS `AVG(VLPRECO)`,
 1 AS `CDCIDADE`,
 1 AS `SGESTADO`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vimovel_bairro1`
--

/*!50001 DROP VIEW IF EXISTS `vimovel_bairro1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vimovel_bairro1` AS select `imovel`.`CDIMOVEL` AS `CDIMOVEL`,`imovel`.`NMENDERECO` AS `NMENDERECO`,`imovel`.`VLPRECO` AS `VLPRECO` from `imovel` where (`imovel`.`CDBAIRRO` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vimovel_cidade`
--

/*!50001 DROP VIEW IF EXISTS `vimovel_cidade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vimovel_cidade` AS select avg(`imovel`.`VLPRECO`) AS `AVG(VLPRECO)`,`imovel`.`CDCIDADE` AS `CDCIDADE`,`imovel`.`SGESTADO` AS `SGESTADO` from `imovel` group by `imovel`.`CDCIDADE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 16:01:54
