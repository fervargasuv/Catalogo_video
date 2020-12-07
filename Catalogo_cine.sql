-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: plataforma
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
  `Contra` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'UwU','965431278','Juan.Garcias@email.com','987654321'),(2,'Franchesco virgolinni','986431267','Juan.Gs@email.com','123456789');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido_pag`
--

DROP TABLE IF EXISTS `contenido_pag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido_pag` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(64) NOT NULL,
  `Director` varchar(64) NOT NULL,
  `Genero` varchar(64) NOT NULL,
  `Fecha_estreno` date NOT NULL,
  `Tipo_categoria` enum('PELICULA','DOCUMENTAL','SERIE') NOT NULL,
  `Dir_img` varchar(500) NOT NULL,
  `Sinopsis` varchar(3000) NOT NULL,
  `ID_pag` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_pag` (`ID_pag`),
  CONSTRAINT `contenido_pag_ibfk_1` FOREIGN KEY (`ID_pag`) REFERENCES `pagina` (`ID_pag`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_pag`
--

LOCK TABLES `contenido_pag` WRITE;
/*!40000 ALTER TABLE `contenido_pag` DISABLE KEYS */;
INSERT INTO `contenido_pag` VALUES (2,'La era del hielo','Chris Wedge','Animacion','2002-04-04','PELICULA','https://i.pinimg.com/originals/79/47/8c/79478c0fcdefa59cc7bd16efcc57cf60.jpg','Hace veinte mil años la Tierra era un mundo prehistórico maravilloso y lleno de peligros. Por esas fechas se iniciaba la Edad de hielo. Es en este tiempo cuando surge la manada más extraña de la época: una mamut llamado Manfred, que hace las cosas a su manera; un oso perezoso extremadamente holgazán llamado Sid; un siniestro tigre de dientes de sable llamado Diego y una ardilla loca por las bellotas conocida como Scrat. Este cuarteto de desadaptados, se embarca inesperadamente en una increíble aventura para devolver un bebé humano con sus padres.',1),(3,'Stars wars','George Lucas,','Animacion','2002-05-16','PELICULA','https://vignette.wikia.nocookie.net/star-wars-peliculas/images/d/dd/Star-wars-episode-1-i-phantom-menace-movie-poster.jpg/revision/latest/scale-to-width-down/340?cb=20150126014123&path-prefix=es','Hace mucho tiempo, en una galaxia muy, muy lejana... La República sufre numerosos tormentos: la corrupción hace temblar sus cimientos, el Senado está enfrascado en discusiones políticas interminables y empiezan a surgir numerosas fuerzas disidentes, anuncio de la caída de un sistema antaño pacífico. Poderosa e intocable, la Federación de Comercio impone por la fuerza impuestos en las rutas comerciales. Al negarse a pagar, el pacífico planeta Naboo, gobernado por la joven reina Amidala, sufre un bloqueo militar por parte de la Federación. Enviados por el Senado para solucionar el asunto, los Caballeros Jedi Qui-Gon Jinn y Obi-Wan Kenobi descubren que la Federación va a lanzar una ofensiva inminente. Rescatan a la reina y su séquito, huyen del planeta pero deben aterrizar en Tatooine para reparar su nave...',1),(4,'The office','Randall Einhorn','Comedia','2005-03-24','SERIE','https://pics.filmaffinity.com/The_Office_Serie_de_TV-862602609-mmed.jpg','The Office sigue el día a día en la vida de unos excéntricos trabajadores de la empresa Dunder Mifflin, de forma fresca y divertida, y con apariencia de pseudo-documental. Adaptación por parte de Grez Daniela (Los Simpson) de la serie británica del mismo nombre, The Office parodia la cultura americana a través de las vivencias de sus protagonistas.\n',1),(5,'Los últimos trenes de Albania','Anonimo','Documental','2020-10-05','DOCUMENTAL','https://imagenes.20minutos.es/files/image_656_370/uploads/imagenes/2011/03/06/11413.jpg','Recorrido por Albania en una locomotora diésel, a 40 kilómetros por hora. Los decrépitos trenes se abren camino a través del paisaje en trazados de una sola vía. Viajar sobre rieles en Albania entraña ciertos riesgos. ',1),(6,'The boys','Eric Kripke','Accion','2019-07-26','SERIE','https://static.displate.com/280x392/displate/2020-09-14/8fc67b33c7735a9c6344e70d2583f597_da1ef7edb4dd53053cd32aff5a75faa7.jpg','The Boys está ambientada en un universo en el que los individuos superpoderosos son reconocidos como héroes por el público en general y trabajan para la poderosa corporación Vought International, que los comercializa y monetiza. Fuera de sus personajes heroicos, la mayoría son arrogantes y corruptos.',1),(7,'Enter the void','Gaspar Noe','Drama','2009-05-22','PELICULA','https://pics.filmaffinity.com/Enter_the_Void-618709027-large.jpg','Óscar (Nathaniel Brown) vive en Tokio con su hermana Linda (Paz de la Huerta) y se sustenta a sí mismo vendiendo drogas, contra el consejo de su amigo, Alex (Cyril Roy). ... Luego, Óscar intenta huir de la policía, se encierra en un cubículo de baño e intenta descargar la droga por el inodoro.',1),(8,'Breaking bad','Vince Gilligan','Drama criminal','2008-01-20','SERIE','https://1.bp.blogspot.com/-XLQPw3eCvLI/WgwWW07b-TI/AAAAAAAAAOM/GemJQ16Mf24UubOCoA0hxDGw1yQUgfI5ACK4BGAYYCw/s1600/Breaking-bad.jpg','Walter White (Bryan Cranston) es un frustrado profesor de química en un instituto, padre de un joven discapacitado y con una mujer (Anna Gunn) embarazada. Además, trabaja en un lavadero de vehículos por las tardes. Cuando le diagnostican un cáncer pulmonar terminal se plantea qué pasará con su familia cuando él muera.',1),(9,'Encuentros en el fin del mundo','Werner Herzog','Documental','2008-06-11','DOCUMENTAL','https://pics.filmaffinity.com/Encuentros_en_el_fin_del_mundo-373027269-mmed.jpg','Encuentros en el fin del mundo es la última aventura documental de Werner Herzog, quién, en esta ocasión, se adentra en la inmensidad de la Antártida. ... Herzog, viaja a la Antártida en busca de las huellas y los restos de la naturaleza y la humanidad en su máximo esplendor.',1),(10,'Scarface','Brian De Palma','Crimen','1983-01-01','PELICULA','https://pm1.narvii.com/6573/de84dde977da9cee87bc80a395a5ccce7fde9430_hq.jpg','Antonio «Tony» Montana (Al Pacino) es un expresidiario cubano que llega a los Estados Unidos durante el éxodo de Mariel en mayo de 1980. Junto a su mejor amigo, Manolo \"Manny\" Ribera (Steven Bauer), son recluidos en Cayo Hueso con el resto de los demás refugiados cubanos a la espera de una resolución política.',1),(11,'El padrino','Francis Ford Coppola','Drama','1972-03-15','PELICULA','https://2.bp.blogspot.com/_cIx9kzsjguw/TOyV2F_HbfI/AAAAAAAAAJo/Gqpi6NKkOnE/s1600/pp31150the-godfather-posters.jpg','La historia comienza en el verano de 1945, cuando se celebra la boda de Connie (Talia Shire) y Carlo Rizzi (Gianni Russo). Connie es la hija de Don Vito Corleone (Marlon Brando), cabeza de la familia Corleone, y jefe de una de las cinco familias que ejercen el mando de la Cosa Nostra en la ciudad de Nueva York.',1),(12,'ToyStory 2','John Lasseter','Animacion','1999-11-13','PELICULA','https://vignette.wikia.nocookie.net/cine/images/c/ce/Toy_Story_2_poster.jpg/revision/latest/top-crop/width/360/height/450?cb=20190623232252','Andy se va de campamento y deja solos a sus juguetes. Entonces, Al McWhiggin, un compulsivo coleccionista de juguetes valiosos, encuentra a Woody y quiere quedárselo para su colección. Buzz Lightyear y los otros juguetes deberán actuar con rapidez para rescatar a Woody. Durante el rescate se enfrentarán a numerosos peligros y vivirán divertidas situaciones.',1),(13,'Mulan','Niki Caro','Accion','2020-03-26','PELICULA','https://vignette.wikia.nocookie.net/cinedeafinesdelsigloxx/images/2/2a/L_76218_0120762_fa6da2bc.jpg/revision/latest/scale-to-width-down/340?cb=20120511190212&path-prefix=es','El ejército de los Hunos, encabezado por el malvado Shun Yiu, quiere conquistar China. El emperador, para impedírselo, ha mandado a filas a todos los varones con el fin de proteger el imperio. Por otra parte, Mulán es una chica joven y valiente que vive en una aldea. Su padre está enfermo pero a pesar de ello quiere luchar por su país. Mulán no lo va a consentir y se fugará de casa con la intención de hacerse pasar por un chico y combatir en lugar de su padre.',1);
/*!40000 ALTER TABLE `contenido_pag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina`
--

DROP TABLE IF EXISTS `pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagina` (
  `ID_pag` int NOT NULL AUTO_INCREMENT,
  `Tipo_de_contenido` varchar(16) NOT NULL,
  `Nombre_pag` varchar(16) NOT NULL,
  `ID_admin` int NOT NULL,
  PRIMARY KEY (`ID_pag`),
  KEY `ID_admin` (`ID_admin`),
  CONSTRAINT `pagina_ibfk_1` FOREIGN KEY (`ID_admin`) REFERENCES `administrador` (`ID_admin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina`
--

LOCK TABLES `pagina` WRITE;
/*!40000 ALTER TABLE `pagina` DISABLE KEYS */;
INSERT INTO `pagina` VALUES (1,'Reseñas','pelis5.com',1);
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
  `Evaluacion` enum('1','2','3','4','5') NOT NULL,
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
INSERT INTO `resena` VALUES (1,'2',3),(4,'5',6),(2,'4',9),(12,'3',10),(10,'4',5),(9,'5',5),(8,'1',4),(7,'5',8),(7,'5',11),(4,'2',7),(5,'5',10),(3,'4',2),(3,'3',12),(6,'5',13),(11,'2',12);
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

-- Dump completed on 2020-12-06 23:14:27
