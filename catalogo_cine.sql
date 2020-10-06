-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: pagina_cine
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `ID_admin` int NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `Nombre` varchar(32) NOT NULL,
  `Telefono` varchar(9) NOT NULL COMMENT 'TELEFONO CONTACTO ADMINISTRADOR',
  `Email` varchar(64) NOT NULL,
  PRIMARY KEY (`ID_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Juan Garcia','965431278','Juan.Garcias@email.com'),(2,'Franchesco virgolinni','986431267','Juan.Gs@email.com');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido_pag`
--

DROP TABLE IF EXISTS `contenido_pag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido_pag` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'ID DE CADA CONTENIDO',
  `Nombre` varchar(64) NOT NULL,
  `Director` varchar(64) NOT NULL,
  `Genero` varchar(16) NOT NULL COMMENT 'GENERO DEL CONTENIDO',
  `Fecha_estreno` date NOT NULL COMMENT 'FECHA DE SALIDA DEL CONTENIDO',
  `Tipo_categoria` enum('PELICULA','DOCUMENTAL','SERIE') NOT NULL COMMENT 'CATEGORIAS DENTRO DEL CONTENIDO',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_pag`
--

LOCK TABLES `contenido_pag` WRITE;
/*!40000 ALTER TABLE `contenido_pag` DISABLE KEYS */;
INSERT INTO `contenido_pag` VALUES (1,'The Host','Richard Clayson','Drama','2003-01-25','PELICULA'),(2,'ToyStory','Josh Cooley','animacion','1996-01-04','PELICULA'),(3,'La era del hielo','Chris Wedge','Animacion','2002-04-04','PELICULA'),(4,'Stars wars','George Lucas,','Animacion','2002-05-16','PELICULA'),(5,'The office','Randall Einhorn','Comedia','2005-03-24','SERIE'),(6,'Los últimos trenes de Albania','Anonimo','Documental','2020-10-05','DOCUMENTAL'),(7,'The boys','Eric Kripke','Accion','2019-07-26','SERIE'),(8,'Enter the void','Gaspar Noe','Drama','2009-05-22','PELICULA'),(9,'Breaking bad','Vince Gilligan','Drama criminal','2008-01-20','SERIE'),(10,'Encuentros en el fin del mundo','Werner Herzog','Documental','2008-06-11','DOCUMENTAL'),(11,'Scarface','Brian De Palma','Crimen','1983-01-01','PELICULA'),(12,'El padrino','Francis Ford Coppola','Drama','1972-03-15','PELICULA'),(13,'ToyStory 2','John Lasseter','Animacion','1999-11-13','PELICULA'),(14,'Mulan','Niki Caro','Accion','2020-03-26','PELICULA');
/*!40000 ALTER TABLE `contenido_pag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina`
--

DROP TABLE IF EXISTS `pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagina` (
  `Tipo_de_contenido` varchar(16) NOT NULL COMMENT 'CONTENIDO DE LA PAGINA',
  `Nombre_pag` varchar(16) NOT NULL COMMENT 'NOMBRE DE LA PAGINA',
  `ID_admin` int NOT NULL AUTO_INCREMENT COMMENT ' FK DE ADMIN',
  KEY `ID_admin` (`ID_admin`),
  CONSTRAINT `pagina_ibfk_1` FOREIGN KEY (`ID_admin`) REFERENCES `administrador` (`ID_admin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina`
--

LOCK TABLES `pagina` WRITE;
/*!40000 ALTER TABLE `pagina` DISABLE KEYS */;
INSERT INTO `pagina` VALUES ('Reseñas','pelis5.com',1);
/*!40000 ALTER TABLE `pagina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resena`
--

DROP TABLE IF EXISTS `resena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resena` (
  `ID_usuario` int NOT NULL,
  `Evaluacion` enum('1ESTRELLA','2ESTRELLA','3ESTRELLA','4ESTRELLA','5ESTRELLA') NOT NULL,
  `ID` int NOT NULL,
  KEY `ID_usuario` (`ID_usuario`),
  KEY `ID` (`ID`),
  CONSTRAINT `resena_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resena_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `contenido_pag` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resena`
--

LOCK TABLES `resena` WRITE;
/*!40000 ALTER TABLE `resena` DISABLE KEYS */;
INSERT INTO `resena` VALUES (1,'5ESTRELLA',1),(1,'2ESTRELLA',3),(4,'5ESTRELLA',6),(2,'4ESTRELLA',9),(12,'3ESTRELLA',10),(10,'4ESTRELLA',5),(9,'5ESTRELLA',5),(8,'1ESTRELLA',4),(7,'5ESTRELLA',8),(7,'5ESTRELLA',11),(4,'2ESTRELLA',7),(5,'5ESTRELLA',10);
/*!40000 ALTER TABLE `resena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `Nick` varchar(16) NOT NULL COMMENT 'Nombre con cual se identifica el usuario',
  `Contraseña` varchar(16) NOT NULL COMMENT 'Clave de la cuenta del usuario',
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juanjo12','contra123'),(2,'kier32','cut43'),(3,'Jerft','nhd213'),(4,'okirer','nujkie21'),(5,'Portal_gun','iudf123'),(6,'lolguy','c09dss'),(7,'mennfis','port213'),(8,'portds','xdxd123'),(9,'movieslover','okmovies'),(10,'juanitopere','porte2134'),(11,'franre34','lkfj234'),(12,'wuux','jndngf223');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-05 21:20:47
