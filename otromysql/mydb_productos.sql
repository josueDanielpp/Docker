-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `Hospital_idHospital` int NOT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProductos`,`Hospital_idHospital`),
  KEY `fk_Productos_Hospital1_idx` (`Hospital_idHospital`),
  CONSTRAINT `fk_Productos_Hospital1` FOREIGN KEY (`Hospital_idHospital`) REFERENCES `hospital` (`idHospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Ibuprofeno','41','Analgésicos / Antiinflamatorios',304,129,'Pfizer'),(2,'Paracetamol','44','Analgésicos / Antiinflamatorios',393,267,'GlaxoSmithKline'),(3,'Aspirina','31','Analgésicos / Antiinflamatorios',263,213,'Johnson & Johnson'),(4,'Dipirona','32','Analgésicos / Antiinflamatorios',33,347,'Novartis'),(5,'Tramadol','43','Analgésicos / Antiinflamatorios',297,197,'Merck & Co.'),(6,'Diclofenaco','29','Analgésicos / Antiinflamatorios',393,142,'Sanofi'),(7,'Naproxeno','41','Analgésicos / Antiinflamatorios',2,298,'Roche'),(8,'Ketorolaco','24','Analgésicos / Antiinflamatorios',277,207,'AstraZeneca'),(9,'Celecoxib','43','Analgésicos / Antiinflamatorios',351,155,'Bayer'),(10,'Meloxicam','24','Analgésicos / Antiinflamatorios',205,325,'Abbott Laboratories'),(11,'Codeína','22','Analgésicos / Antiinflamatorios',321,326,'Eli Lilly and Company'),(12,'Piroxicam','34','Analgésicos / Antiinflamatorios',315,242,'Bristol Myers Squibb'),(13,'Indometacina','6','Analgésicos / Antiinflamatorios',216,378,'Teva Pharmaceutical Industries'),(14,'Morfina','27','Analgésicos / Antiinflamatorios',24,292,'Novo Nordisk'),(15,'Oxycodona','41','Analgésicos / Antiinflamatorios',208,118,'Gilead Sciences'),(16,'Etoricoxib','4','Analgésicos / Antiinflamatorios',75,326,'Biogen'),(17,'Dexketoprofeno','2','Analgésicos / Antiinflamatorios',298,117,'Amgen'),(18,'Metamizol','20','Analgésicos / Antiinflamatorios',8,143,'AbbVie'),(19,'Tenoxicam','22','Analgésicos / Antiinflamatorios',283,109,'Mylan'),(20,'Nimesulida','50','Analgésicos / Antiinflamatorios',172,175,'Takeda Pharmaceutical Company'),(21,'Aceclofenaco','28','Analgésicos / Antiinflamatorios',241,399,'Allergan'),(22,'Clonixinato de lisina','22','Analgésicos / Antiinflamatorios',285,183,'Boehringer Ingelheim'),(23,'Ketoprofeno','33','Analgésicos / Antiinflamatorios',1,293,'Eisai'),(24,'Parecoxib','5','Analgésicos / Antiinflamatorios',148,172,'Astellas Pharma'),(25,'Efedrina','9','Analgésicos / Antiinflamatorios',263,400,'Daiichi Sankyo'),(26,'Amoxicilina','4','Antibióticos',130,244,'Celgene'),(27,'Azitromicina','12','Antibióticos',357,289,'Lupin Limited'),(28,'Ciprofloxacino','28','Antibióticos',202,168,'Sun Pharmaceutical'),(29,'Clindamicina','15','Antibióticos',286,272,'Perrigo'),(30,'Doxiciclina','4','Antibióticos',322,177,'Mallinckrodt Pharmaceuticals'),(31,'Claritromicina','24','Antibióticos',299,291,'Glaxo Wellcome'),(32,'Metronidazol','26','Antibióticos',282,325,'Sandoz'),(33,'Penicilina','37','Antibióticos',116,146,'Cipla'),(34,'Cefalexina','8','Antibióticos',312,339,'Torrent Pharmaceuticals'),(35,'Levofloxacino','23','Antibióticos',322,294,'Dr. Reddy\'s Laboratories'),(36,'Ceftriaxona','28','Antibióticos',369,189,'Wockhardt'),(37,'Eritromicina','27','Antibióticos',34,143,'Lupin Pharmaceuticals'),(38,'Gentamicina','14','Antibióticos',226,341,'Ranbaxy Laboratories'),(39,'Linezolid','23','Antibióticos',233,309,'Lupin Limited'),(40,'Nitrofurantoína','22','Antibióticos',78,134,'Glenmark Pharmaceuticals'),(41,'Vancomicina','20','Antibióticos',364,176,'Ipca Laboratories'),(42,'Trimetoprima-sulfametoxazol','14','Antibióticos',292,371,'Cadila Healthcare'),(43,'Imipenem','19','Antibióticos',139,155,'Zydus Cadila'),(44,'Moxifloxacino','7','Antibióticos',103,227,'Torrent Pharmaceuticals'),(45,'Aztreonam','10','Antibióticos',140,379,'Sun Pharma'),(46,'Cloramfenicol','49','Antibióticos',294,160,'Aurobindo Pharma'),(47,'Rifampicina','14','Antibióticos',194,264,'Jubilant Life Sciences'),(48,'Tetraciclina','20','Antibióticos',277,270,'Biocon'),(49,'Colistina','49','Antibióticos',120,198,'Strides Arcolab'),(50,'Amikacina','10','Antibióticos',294,398,'Divi\'s Laboratories'),(51,'Crema hidratante','44','Cuidado de la Piel',225,102,'Alembic Pharmaceuticals'),(52,'Protector solar','8','Cuidado de la Piel',166,228,'Alkem Laboratories'),(53,'Gel limpiador facial','1','Cuidado de la Piel',361,134,'GlaxoSmithKline Pharmaceuticals'),(54,'Tónico facial','49','Cuidado de la Piel',32,142,'Merck Ltd.'),(55,'Sérum facial','9','Cuidado de la Piel',293,284,'Sanofi India'),(56,'Mascarilla facial','47','Cuidado de la Piel',223,287,'Novartis India'),(57,'Exfoliante facial','47','Cuidado de la Piel',144,145,'GSK Pharmaceuticals'),(58,'Crema antiarrugas','31','Cuidado de la Piel',60,255,'Abbott India'),(59,'Crema antimanchas','26','Cuidado de la Piel',73,117,'Bayer India'),(60,'Aceite de rosa mosqueta','37','Cuidado de la Piel',307,331,'Roche India'),(61,'Bálsamo labial','17','Cuidado de la Piel',309,336,'Cadila Healthcare'),(62,'Crema hidratante corporal','46','Cuidado de la Piel',169,281,'Torrent Pharmaceuticals'),(63,'Aceite corporal','42','Cuidado de la Piel',388,297,'Intas Pharmaceuticals'),(64,'Crema para estrías','50','Cuidado de la Piel',369,289,'Glenmark Pharmaceuticals'),(65,'Crema para dermatitis','7','Cuidado de la Piel',14,274,'Biocon'),(66,'Crema para eczema','12','Cuidado de la Piel',154,152,'Wockhardt'),(67,'Locion tonica','7','Cuidado de la Piel',320,308,'Ipca Laboratories'),(68,'Crema para pañal','33','Cuidado de la Piel',114,253,'Alkem Laboratories'),(69,'Crema para pieles sensibles','9','Cuidado de la Piel',323,295,'Jubilant Life Sciences'),(70,'Crema para piel seca','14','Cuidado de la Piel',361,312,'Aurobindo Pharma'),(71,'Crema para piel grasa','15','Cuidado de la Piel',296,352,'Glenmark Pharmaceuticals'),(72,'Crema para piel mixta','9','Cuidado de la Piel',129,386,'Sun Pharmaceutical Industries'),(73,'Crema para piel normal','3','Cuidado de la Piel',337,259,'Dr. Reddy\'s Laboratories'),(74,'Crema para piel madura','46','Cuidado de la Piel',44,192,'Lupin'),(75,'Crema para piel joven','24','Cuidado de la Piel',44,268,'Cipla'),(76,'Gasas estériles','20','Accesorio de botiquín',25,186,'Piramal Enterprises'),(77,'Vendajes elásticos','49','Accesorio de botiquín',268,221,'Divi\'s Laboratories'),(78,'Esparadrapo','32','Accesorio de botiquín',197,360,'Torrent Pharmaceuticals'),(79,'Alcohol','29','Accesorio de botiquín',247,395,'Strides Arcolab'),(80,'Algodón','45','Accesorio de botiquín',45,283,'Alembic Pharmaceuticals'),(81,'Termómetro','24','Accesorio de botiquín',336,381,'Cadila Healthcare'),(82,'Tijeras de vendaje','36','Accesorio de botiquín',227,175,'Torrent Pharmaceuticals'),(83,'Pinzas de depilar','32','Accesorio de botiquín',56,334,'Lupin Limited'),(84,'Jabón antiséptico','5','Accesorio de botiquín',231,151,'Glenmark Pharmaceuticals'),(85,'Solución salina','30','Accesorio de botiquín',216,251,'Sun Pharma'),(86,'Pomada para quemaduras','19','Accesorio de botiquín',338,250,'Aurobindo Pharma'),(87,'Pomada antibiótica','12','Accesorio de botiquín',246,338,'Biocon'),(88,'Analgésicos de venta libre','10','Accesorio de botiquín',33,243,'Divi\'s Laboratories'),(89,'Antipiréticos (para reducir la fiebre)','43','Accesorio de botiquín',241,324,'Dr. Reddy\'s Laboratories'),(90,'Medicamentos para la diarrea','29','Accesorio de botiquín',352,248,'Ipca Laboratories'),(91,'Medicamentos para el mareo','27','Accesorio de botiquín',109,308,'Alkem Laboratories'),(92,'Antihistamínicos (para reacciones alérgicas)','31','Accesorio de botiquín',186,104,'Torrent Pharmaceuticals'),(93,'Medicamentos para el dolor de cabeza','35','Accesorio de botiquín',178,119,'Zydus Cadila'),(94,'Medicamentos para el dolor de estómago','43','Accesorio de botiquín',245,250,'Cipla'),(95,'Pastillas para el alivio de la acidez estomacal','1','Accesorio de botiquín',294,285,'Strides Arcolab'),(96,'Pastillas para la garganta irritada','15','Accesorio de botiquín',33,331,'Cadila Healthcare'),(97,'Medicamentos para el resfriado y la gripe','22','Accesorio de botiquín',125,119,'Lupin Limited'),(98,'Antiséptico tópico (como povidona yodada)','35','Accesorio de botiquín',367,274,'Sun Pharma'),(99,'Apósitos adhesivos (tiritas)','46','Accesorio de botiquín',204,282,'Glenmark Pharmaceuticals'),(100,'Vendas de gasa','30','Accesorio de botiquín',143,370,'Aurobindo Pharma'),(101,'Solución para lavado ocular','8','Accesorio de botiquín',89,188,'Torrent Pharmaceuticals'),(102,'Solución para lavado de heridas','50','Accesorio de botiquín',221,342,'Biocon'),(103,'Guantes desechables','27','Accesorio de botiquín',72,153,'Alembic Pharmaceuticals'),(104,'Termómetro de fiebre','14','Accesorio de botiquín',159,201,'Divi\'s Laboratories'),(105,'Antiséptico bucal (enjuague bucal)','37','Accesorio de botiquín',261,233,'Strides Arcolab'),(106,'Cortaúñas','22','Accesorio de botiquín',109,261,'Alkem Laboratories'),(107,'Termómetro digital','37','Accesorio de botiquín',41,197,'Zydus Cadila'),(108,'Crema para picaduras de insectos','30','Accesorio de botiquín',137,358,'Torrent Pharmaceuticals'),(109,'Gotas para los oídos','22','Accesorio de botiquín',159,266,'Lupin Limited'),(110,'Protector solar','2','Accesorio de botiquín',46,230,'Sun Pharma'),(111,'Crema antiinflamatoria','27','Accesorio de botiquín',391,313,'Glenmark Pharmaceuticals'),(112,'Pastillas para el tratamiento de la congestión nasal','49','Accesorio de botiquín',29,287,'Cipla'),(113,'Solución para el lavado nasal','25','Accesorio de botiquín',220,369,'Aurobindo Pharma'),(114,'Lociones para aliviar las picaduras de insectos','50','Accesorio de botiquín',65,294,'Cadila Healthcare'),(115,'Lubricante ocular','23','Accesorio de botiquín',380,201,'Alembic Pharmaceuticals'),(116,'Tiritas para ampollas','7','Accesorio de botiquín',221,298,'Torrent Pharmaceuticals'),(117,'Aerosol para la picazón','14','Accesorio de botiquín',26,296,'Biocon'),(118,'Bolsas de hielo instantáneo','38','Accesorio de botiquín',211,321,'Divi\'s Laboratories'),(119,'Pastillas para el mareo','18','Accesorio de botiquín',221,238,'Strides Arcolab'),(120,'Pastillas para el tratamiento de la diarrea del viajero','43','Accesorio de botiquín',188,295,'Alkem Laboratories'),(121,'Gel antibacterial','3','Accesorio de botiquín',314,364,'Sun Pharma'),(122,'Spray desinfectante','38','Accesorio de botiquín',307,193,'Zydus Cadila'),(123,'Mascarillas faciales','15','Accesorio de botiquín',322,397,'Torrent Pharmaceuticals'),(124,'Anticonceptivos de emergencia','2','Accesorio de botiquín',119,349,'Lupin Limited'),(125,'Termómetro infrarrojo','47','Accesorio de botiquín',147,367,'Glenmark Pharmaceuticals'),(126,'Férulas para dedos','3','Accesorio de botiquín',76,323,'Cipla'),(127,'Jeringas desechables','25','Accesorio de botiquín',80,117,'Aurobindo Pharma'),(128,'Agujas estériles','28','Accesorio de botiquín',313,145,'Cadila Healthcare'),(129,'Medicamentos para aliviar los síntomas de la alergia','37','Accesorio de botiquín',399,325,'Alembic Pharmaceuticals'),(130,'Medicamentos para el dolor de muelas','41','Accesorio de botiquín',137,374,'Torrent Pharmaceuticals'),(131,'Cepillos de dientes desechables','16','Accesorio de botiquín',319,249,'Biocon'),(132,'Hilo dental','11','Accesorio de botiquín',348,297,'Divi\'s Laboratories'),(133,'Pastillas para el dolor menstrual','12','Accesorio de botiquín',248,374,'Strides Arcolab'),(134,'Analgésicos tópicos (cremas o geles)','40','Accesorio de botiquín',43,171,'Alkem Laboratories'),(135,'Pastillas para el alivio de la acidez estomacal','14','Accesorio de botiquín',43,231,'Sun Pharma'),(136,'Parches de nicotina','33','Accesorio de botiquín',239,132,'Zydus Cadila'),(137,'Solución para la rehidratación oral (suero)','26','Accesorio de botiquín',400,252,'Torrent Pharmaceuticals'),(138,'Bolsas para la aplicación de calor','13','Accesorio de botiquín',313,168,'Lupin Limited'),(139,'Pastillas para el tratamiento del estreñimiento ocasional','45','Accesorio de botiquín',199,231,'Glenmark Pharmaceuticals'),(140,'Crema para hemorroides','47','Accesorio de botiquín',183,364,'Cipla'),(141,'Loción para el tratamiento del eczema','29','Accesorio de botiquín',194,276,'Aurobindo Pharma'),(142,'Medicamentos para el tratamiento de la tos','18','Accesorio de botiquín',386,269,'Cadila Healthcare'),(143,'Cápsulas de carbón activado (para el tratamiento de la intoxicación)','15','Accesorio de botiquín',256,305,'Alembic Pharmaceuticals'),(144,'Medicamentos para el tratamiento de las náuseas y los vómitos','11','Accesorio de botiquín',40,165,'Torrent Pharmaceuticals'),(145,'Cremas para el tratamiento del acné','33','Accesorio de botiquín',57,110,'Biocon'),(146,'Productos para el tratamiento del pie de atleta','11','Accesorio de botiquín',60,211,'Divi\'s Laboratories'),(147,'Tiras reactivas para medir la glucosa en sangre','43','Accesorio de botiquín',108,286,'Strides Arcolab'),(148,'Lancetas para pinchazo en el dedo','8','Accesorio de botiquín',74,296,'Alkem Laboratories'),(149,'Alcohol para la limpieza de la piel antes de la inyección','7','Accesorio de botiquín',69,119,'Sun Pharma'),(150,'Tiras para medir el pH de la orina','28','Accesorio de botiquín',345,138,'Zydus Cadila'),(151,'Medicamentos para el tratamiento de la ansiedad ocasional','14','Accesorio de botiquín',399,118,'Torrent Pharmaceuticals'),(152,'Antidiarreicos para el tratamiento de la diarrea ocasional','49','Accesorio de botiquín',66,126,'Lupin Limited'),(153,'Medicamentos para el tratamiento del insomnio ocasional','41','Accesorio de botiquín',172,226,'Glenmark Pharmaceuticals'),(154,'Pastillas para el tratamiento del mareo por movimiento','20','Accesorio de botiquín',369,205,'Cipla'),(155,'Soluciones para lavado de heridas','13','Accesorio de botiquín',149,346,'Aurobindo Pharma'),(156,'Vendas de crepe','29','Accesorio de botiquín',94,203,'Cadila Healthcare'),(157,'Rollos de gasa','11','Accesorio de botiquín',395,337,'Alembic Pharmaceuticals'),(158,'Parches de hidrocoloide','8','Accesorio de botiquín',13,257,'Torrent Pharmaceuticals'),(159,'Esparadrapo hipoalergénico','41','Accesorio de botiquín',33,350,'Biocon'),(160,'Solución salina estéril','15','Accesorio de botiquín',20,260,'Divi\'s Laboratories'),(161,'Tiritas impermeables','30','Accesorio de botiquín',138,354,'Strides Arcolab'),(162,'Vendas adhesivas','43','Accesorio de botiquín',134,187,'Alkem Laboratories'),(163,'Vendas de compresión','45','Accesorio de botiquín',190,102,'Sun Pharma'),(164,'Vendas elásticas cohesivas','19','Accesorio de botiquín',46,352,'Zydus Cadila'),(165,'Compresas frías instantáneas','13','Accesorio de botiquín',195,177,'Torrent Pharmaceuticals'),(166,'Compresas calientes reutilizables','2','Accesorio de botiquín',159,122,'Lupin Limited'),(167,'Mascarillas de RCP','9','Accesorio de botiquín',140,241,'Glenmark Pharmaceuticals'),(168,'Guantes de examen médico','3','Accesorio de botiquín',399,301,'Cipla'),(169,'Bolsas de desechos médicos','27','Accesorio de botiquín',24,155,'Aurobindo Pharma'),(170,'Bolsas de hielo','14','Accesorio de botiquín',231,171,'Cadila Healthcare'),(171,'Bolsas para la eliminación de agujas','21','Accesorio de botiquín',110,158,'Alembic Pharmaceuticals'),(172,'Tapones para los oídos','23','Accesorio de botiquín',136,383,'Torrent Pharmaceuticals'),(173,'Antiséptico tópico en spray','47','Accesorio de botiquín',64,397,'Biocon'),(174,'Jabón antibacterial en barra','6','Accesorio de botiquín',391,305,'Divi\'s Laboratories'),(175,'Vaselina','46','Accesorio de botiquín',337,194,'Strides Arcolab'),(176,'Pasta dental','22','Cuidado Bucal',101,303,'Alkem Laboratories'),(177,'Cepillo dental','4','Cuidado Bucal',28,367,'Sun Pharma'),(178,'Enjuague bucal','2','Cuidado Bucal',63,329,'Zydus Cadila'),(179,'Hilo dental','34','Cuidado Bucal',253,293,'Torrent Pharmaceuticals'),(180,'Cepillo interdental','19','Cuidado Bucal',12,228,'Lupin Limited'),(181,'Cera dental','36','Cuidado Bucal',248,159,'Glenmark Pharmaceuticals'),(182,'Pastillas para el mal aliento','1','Cuidado Bucal',127,217,'Cipla'),(183,'Gel para encías','39','Cuidado Bucal',398,203,'Aurobindo Pharma'),(184,'Enjuague bucal con flúor','27','Cuidado Bucal',15,261,'Cadila Healthcare'),(185,'Enjuague bucal con clorhexidina','31','Cuidado Bucal',197,177,'Alembic Pharmaceuticals'),(186,'Dentífrico con blanqueador','29','Cuidado Bucal',194,221,'Torrent Pharmaceuticals'),(187,'Cepillo de dientes eléctrico','47','Cuidado Bucal',126,113,'Biocon'),(188,'Hilo dental encerado','22','Cuidado Bucal',148,177,'Divi\'s Laboratories'),(189,'Cepillo de dientes para niños','21','Cuidado Bucal',144,264,'Strides Arcolab'),(190,'Irrigador bucal','42','Cuidado Bucal',87,139,'Alkem Laboratories'),(191,'Protector bucal para deportes','9','Cuidado Bucal',88,331,'Sun Pharma'),(192,'Pastillas para la limpieza de prótesis dentales','30','Cuidado Bucal',318,290,'Zydus Cadila'),(193,'Gel para úlceras bucales','31','Cuidado Bucal',80,312,'Torrent Pharmaceuticals'),(194,'Enjuague bucal con aceite de menta','27','Cuidado Bucal',270,203,'Lupin Limited'),(195,'Limpiador de lengua','42','Cuidado Bucal',249,366,'Glenmark Pharmaceuticals'),(196,'Spray para el aliento fresco','45','Cuidado Bucal',123,172,'Cipla'),(197,'Kit de blanqueamiento dental','6','Cuidado Bucal',203,109,'Aurobindo Pharma'),(198,'Apósito para aftas bucales','4','Cuidado Bucal',132,153,'Cadila Healthcare'),(199,'Enjuague bucal sin alcohol','22','Cuidado Bucal',3,302,'Alembic Pharmaceuticals'),(200,'Enjuague bucal para encías sensibles','35','Cuidado Bucal',378,337,'Torrent Pharmaceuticals'),(201,'Pasta dental para dientes sensibles','18','Cuidado Bucal',246,280,'Biocon'),(202,'Cepillo de dientes con cerdas suaves','31','Cuidado Bucal',221,275,'Divi\'s Laboratories'),(203,'Cepillo de dientes con cerdas medias','11','Cuidado Bucal',334,269,'Strides Arcolab'),(204,'Cepillo de dientes con cerdas duras','34','Cuidado Bucal',145,365,'Alkem Laboratories'),(205,'Enjuague bucal para encías inflamadas','19','Cuidado Bucal',65,181,'Sun Pharma'),(206,'Cepillo de dientes con tecnología de pulso','2','Cuidado Bucal',323,156,'Zydus Cadila'),(207,'Gel para la sensibilidad dental','47','Cuidado Bucal',106,183,'Torrent Pharmaceuticals'),(208,'Hilo dental con sabor a menta','21','Cuidado Bucal',296,382,'Lupin Limited'),(209,'Enjuague bucal para la prevención de caries','47','Cuidado Bucal',44,263,'Glenmark Pharmaceuticals'),(210,'Pasta dental con flúor para niños','23','Cuidado Bucal',158,192,'Cipla'),(211,'Cepillo de dientes para bebés','30','Cuidado Bucal',113,131,'Aurobindo Pharma'),(212,'Enjuague bucal para la prevención del sarro','42','Cuidado Bucal',333,364,'Cadila Healthcare'),(213,'Hilo dental con cera de abejas','44','Cuidado Bucal',49,359,'Alembic Pharmaceuticals'),(214,'Enjuague bucal para el alivio de las encías doloridas','13','Cuidado Bucal',385,378,'Torrent Pharmaceuticals'),(215,'Pastillas para la limpieza de aparatos ortodóncicos','34','Cuidado Bucal',11,125,'Biocon'),(216,'Cepillo de dientes con cabezal intercambiable','2','Cuidado Bucal',369,134,'Divi\'s Laboratories'),(217,'Enjuague bucal con sabor a menta fresca','22','Cuidado Bucal',337,102,'Strides Arcolab'),(218,'Pasta dental con sabor a menta refrescante','33','Cuidado Bucal',162,152,'Alkem Laboratories'),(219,'Cepillo de dientes eléctrico recargable','50','Cuidado Bucal',150,116,'Sun Pharma'),(220,'Hilo dental con sabor a fresa','7','Cuidado Bucal',398,137,'Zydus Cadila'),(221,'Enjuague bucal para el tratamiento del mal aliento','14','Cuidado Bucal',352,124,'Torrent Pharmaceuticals'),(222,'Pasta dental con flúor y calcio','42','Cuidado Bucal',104,398,'Lupin Limited'),(223,'Cepillo de dientes con mango ergonómico','31','Cuidado Bucal',334,342,'Glenmark Pharmaceuticals'),(224,'Enjuague bucal con extracto de eucalipto','40','Cuidado Bucal',236,269,'Cipla'),(225,'Enjuague bucal con aceite de árbol de té','13','Cuidado Bucal',334,255,'Aurobindo Pharma'),(226,'Pasta dental con bicarbonato de sodio','31','Cuidado Bucal',271,207,'Cadila Healthcare'),(227,'Cepillo de dientes para niños con dibujos animados','30','Cuidado Bucal',367,196,'Alembic Pharmaceuticals'),(228,'Enjuague bucal para el fortalecimiento del esmalte','44','Cuidado Bucal',311,314,'Torrent Pharmaceuticals'),(229,'Pasta dental con extracto de clavo de olor','14','Cuidado Bucal',202,278,'Biocon'),(230,'Hilo dental con sabor a menta verde','10','Cuidado Bucal',125,256,'Divi\'s Laboratories'),(231,'Enjuague bucal para el control del sarro','16','Cuidado Bucal',222,330,'Strides Arcolab'),(232,'Pasta dental con sabor a menta picante','6','Cuidado Bucal',390,369,'Alkem Laboratories'),(233,'Cepillo de dientes con cerdas de carbón activado','5','Cuidado Bucal',263,376,'Sun Pharma'),(234,'Enjuague bucal con extracto de romero','32','Cuidado Bucal',42,309,'Zydus Cadila'),(235,'Enjuague bucal con aceite de coco','27','Cuidado Bucal',298,246,'Torrent Pharmaceuticals'),(236,'Pasta dental con flúor y hierbabuena','45','Cuidado Bucal',72,241,'Lupin Limited'),(237,'Cepillo de dientes con tecnología de vibración','20','Cuidado Bucal',176,110,'Glenmark Pharmaceuticals'),(238,'Enjuague bucal para el alivio de la sensibilidad dental','18','Cuidado Bucal',94,203,'Cipla'),(239,'Pasta dental con sabor a canela','20','Cuidado Bucal',83,185,'Aurobindo Pharma'),(240,'Hilo dental con sabor a limón','34','Cuidado Bucal',129,169,'Cadila Healthcare'),(241,'Enjuague bucal para el tratamiento de la gingivitis','26','Cuidado Bucal',24,211,'Alembic Pharmaceuticals'),(242,'Pasta dental para el blanqueamiento de dientes','25','Cuidado Bucal',192,176,'Torrent Pharmaceuticals'),(243,'Cepillo de dientes con cerdas de silicona','3','Cuidado Bucal',238,206,'Biocon'),(244,'Enjuague bucal con extracto de salvia','29','Cuidado Bucal',126,334,'Divi\'s Laboratories'),(245,'Pasta dental con flúor y extracto de manzanilla','38','Cuidado Bucal',23,359,'Strides Arcolab'),(246,'Enjuague bucal con sabor a frutos rojos','44','Cuidado Bucal',381,387,'Alkem Laboratories'),(247,'Cepillo de dientes con cabezal pequeño','11','Cuidado Bucal',193,171,'Sun Pharma'),(248,'Enjuague bucal para el control del mal aliento matutino','11','Cuidado Bucal',163,239,'Zydus Cadila'),(249,'Pasta dental para el fortalecimiento del esmalte','20','Cuidado Bucal',56,228,'Torrent Pharmaceuticals'),(250,'Hilo dental con sabor a menta suave','18','Cuidado Bucal',337,268,'Lupin Limited'),(251,'Enjuague bucal para el tratamiento de la periodontitis','4','Cuidado Bucal',183,243,'Glenmark Pharmaceuticals'),(252,'Pasta dental con flúor y mentol','30','Cuidado Bucal',61,398,'Cipla'),(253,'Cepillo de dientes con tecnología de rotación','35','Cuidado Bucal',17,366,'Aurobindo Pharma'),(254,'Enjuague bucal para la prevención de la placa bacteriana','7','Cuidado Bucal',286,151,'Cadila Healthcare'),(255,'Pasta dental con sabor a coco','35','Cuidado Bucal',180,182,'Alembic Pharmaceuticals'),(256,'Hilo dental con sabor a naranja','20','Cuidado Bucal',247,216,'Torrent Pharmaceuticals'),(257,'Enjuague bucal con extracto de tomillo','20','Cuidado Bucal',156,155,'Biocon'),(258,'Pasta dental con flúor y extracto de eucalipto','46','Cuidado Bucal',102,381,'Divi\'s Laboratories'),(259,'Cepillo de dientes con cerdas flexibles','37','Cuidado Bucal',186,271,'Strides Arcolab'),(260,'Enjuague bucal con sabor a canela y clavo de olor','38','Cuidado Bucal',18,305,'Alkem Laboratories'),(261,'Enjuague bucal para el tratamiento del reflujo ácido','30','Cuidado Bucal',23,325,'Sun Pharma'),(262,'Pasta dental para el tratamiento de la caries','31','Cuidado Bucal',337,333,'Zydus Cadila'),(263,'Cepillo de dientes para personas con ortodoncia','13','Cuidado Bucal',152,251,'Torrent Pharmaceuticals'),(264,'Enjuague bucal con sabor a toronja','36','Cuidado Bucal',61,125,'Lupin Limited'),(265,'Pasta dental con flúor y aceite de árbol de té','40','Cuidado Bucal',349,102,'Glenmark Pharmaceuticals'),(266,'Hilo dental con sabor a menta intensa','43','Cuidado Bucal',130,265,'Cipla'),(267,'Enjuague bucal para el alivio de la boca seca','32','Cuidado Bucal',90,342,'Aurobindo Pharma'),(268,'Pasta dental con sabor a lima','47','Cuidado Bucal',273,272,'Cadila Healthcare'),(269,'Cepillo de dientes con cerdas de doble acción','17','Cuidado Bucal',315,169,'Alembic Pharmaceuticals'),(270,'Enjuague bucal con extracto de menta piperita','33','Cuidado Bucal',291,165,'Torrent Pharmaceuticals'),(271,'Enjuague bucal para el tratamiento de la halitosis','4','Cuidado Bucal',264,266,'Biocon'),(272,'Pasta dental con flúor y extracto de salvia','44','Cuidado Bucal',67,354,'Divi\'s Laboratories'),(273,'Cepillo de dientes con cabezal giratorio','4','Cuidado Bucal',155,165,'Strides Arcolab'),(274,'Enjuague bucal con sabor a grosella negra','16','Cuidado Bucal',122,221,'Alkem Laboratories'),(275,'Pasta dental para el control del sarro','40','Cuidado Bucal',203,198,'Sun Pharma'),(276,'Loratadina','18','Antihistamínicos',13,386,'Zydus Cadila'),(277,'Cetirizina','36','Antihistamínicos',300,162,'Torrent Pharmaceuticals'),(278,'Desloratadina','42','Antihistamínicos',30,235,'Lupin Limited'),(279,'Fexofenadina','23','Antihistamínicos',250,335,'Glenmark Pharmaceuticals'),(280,'Levocetirizina','26','Antihistamínicos',332,280,'Cipla'),(281,'Clemastina','34','Antihistamínicos',169,360,'Aurobindo Pharma'),(282,'Dexclorfeniramina','45','Antihistamínicos',322,166,'Cadila Healthcare'),(283,'Azelastina','25','Antihistamínicos',34,320,'Alembic Pharmaceuticals'),(284,'Ebastina','49','Antihistamínicos',357,182,'Torrent Pharmaceuticals'),(285,'Olopatadina','20','Antihistamínicos',16,114,'Biocon'),(286,'Levonorgestrel','7','Anticonceptivos',65,291,'Divi\'s Laboratories'),(287,'Etinilestradiol','1','Anticonceptivos',274,251,'Strides Arcolab'),(288,'Drospirenona','48','Anticonceptivos',308,226,'Alkem Laboratories'),(289,'Norgestimato','11','Anticonceptivos',378,400,'Sun Pharma'),(290,'Desogestrel','2','Anticonceptivos',151,263,'Zydus Cadila'),(291,'Noretisterona','7','Anticonceptivos',68,204,'Torrent Pharmaceuticals'),(292,'Gestodeno','23','Anticonceptivos',237,275,'Lupin Limited'),(293,'Acetato de ciproterona','27','Anticonceptivos',258,316,'Glenmark Pharmaceuticals'),(294,'Dienogest','45','Anticonceptivos',112,123,'Cipla'),(295,'Medroxiprogesterona','1','Anticonceptivos',218,212,'Aurobindo Pharma'),(296,'Sertralina','31','Antidepresivos',130,198,'Cadila Healthcare'),(297,'Escitalopram','43','Antidepresivos',314,126,'Alembic Pharmaceuticals'),(298,'Fluoxetina','32','Antidepresivos',2,314,'Torrent Pharmaceuticals'),(299,'Paroxetina','44','Antidepresivos',148,250,'Biocon'),(300,'Venlafaxina','31','Antidepresivos',108,149,'Divi\'s Laboratories'),(301,'Duloxetina','19','Antidepresivos',161,279,'Strides Arcolab'),(302,'Citalopram','3','Antidepresivos',394,362,'Alkem Laboratories'),(303,'Bupropión','38','Antidepresivos',374,177,'Sun Pharma'),(304,'Amitriptilina','27','Antidepresivos',119,276,'Zydus Cadila'),(305,'Mirtazapina','41','Antidepresivos',313,240,'Torrent Pharmaceuticals'),(306,'Metformina','38','Antidiabéticos',376,282,'Lupin Limited'),(307,'Insulina glargina','22','Antidiabéticos',251,281,'Glenmark Pharmaceuticals'),(308,'Insulina lispro','41','Antidiabéticos',24,292,'Cipla'),(309,'Sitagliptina','29','Antidiabéticos',352,241,'Aurobindo Pharma'),(310,'Metformina','2','Antidiabéticos',300,379,'Cadila Healthcare'),(311,'Glimepirida','2','Antidiabéticos',241,395,'Alembic Pharmaceuticals'),(312,'Vildagliptina','38','Antidiabéticos',136,141,'Torrent Pharmaceuticals'),(313,'Linagliptina','15','Antidiabéticos',229,311,'Biocon'),(314,'Glipizida','29','Antidiabéticos',362,377,'Divi\'s Laboratories'),(315,'Pioglitazona','36','Antidiabéticos',388,353,'Strides Arcolab'),(316,'Losartan','32','Antihipertensivos',207,300,'Alkem Laboratories'),(317,'Amlodipino','30','Antihipertensivos',237,373,'Sun Pharma'),(318,'Enalapril','41','Antihipertensivos',152,233,'Zydus Cadila'),(319,'Telmisartán','18','Antihipertensivos',116,357,'Torrent Pharmaceuticals'),(320,'Valsartán','2','Antihipertensivos',286,209,'Lupin Limited'),(321,'Metoprolol','28','Antihipertensivos',179,171,'Glenmark Pharmaceuticals'),(322,'Lisinopril','14','Antihipertensivos',213,266,'Cipla'),(323,'Hidroclorotiazida','19','Antihipertensivos',117,182,'Aurobindo Pharma'),(324,'Ramipril','45','Antihipertensivos',387,144,'Cadila Healthcare'),(325,'Candesartán','26','Antihipertensivos',199,173,'Alembic Pharmaceuticals'),(326,'Amoxicilina-clavulánico','49','Antibióticos de Amplio Espectro',236,390,'Torrent Pharmaceuticals'),(327,'Ceftriaxona','47','Antibióticos de Amplio Espectro',259,334,'Biocon'),(328,'Piperacilina-tazobactam','39','Antibióticos de Amplio Espectro',54,150,'Divi\'s Laboratories'),(329,'Meropenem','14','Antibióticos de Amplio Espectro',393,135,'Strides Arcolab'),(330,'Levofloxacino','41','Antibióticos de Amplio Espectro',331,211,'Alkem Laboratories'),(331,'Linezolid','50','Antibióticos de Amplio Espectro',244,329,'Sun Pharma'),(332,'Vancomicina','40','Antibióticos de Amplio Espectro',338,243,'Zydus Cadila'),(333,'Tigeciclina','21','Antibióticos de Amplio Espectro',385,337,'Torrent Pharmaceuticals'),(334,'Daptomicina','16','Antibióticos de Amplio Espectro',41,168,'Lupin Limited'),(335,'Imipenem-cilastatina','14','Antibióticos de Amplio Espectro',112,222,'Glenmark Pharmaceuticals'),(336,'Prednisona','18','Antiinflamatorios Esteroideos',311,184,'Cipla'),(337,'Dexametasona','34','Antiinflamatorios Esteroideos',393,196,'Aurobindo Pharma'),(338,'Prednisolona','48','Antiinflamatorios Esteroideos',324,246,'Cadila Healthcare'),(339,'Betametasona','38','Antiinflamatorios Esteroideos',229,336,'Alembic Pharmaceuticals'),(340,'Hidrocortisona','49','Antiinflamatorios Esteroideos',125,336,'Torrent Pharmaceuticals'),(341,'Triamcinolona','19','Antiinflamatorios Esteroideos',344,122,'Biocon'),(342,'Metilprednisolona','32','Antiinflamatorios Esteroideos',170,369,'Divi\'s Laboratories'),(343,'Fluticasona','32','Antiinflamatorios Esteroideos',310,324,'Strides Arcolab'),(344,'Budesonida','4','Antiinflamatorios Esteroideos',183,352,'Alkem Laboratories'),(345,'Beclometasona','34','Antiinflamatorios Esteroideos',210,217,'Sun Pharma'),(346,'Alprazolam','14','Ansiolíticos',76,189,'Zydus Cadila'),(347,'Clonazepam','16','Ansiolíticos',26,342,'Torrent Pharmaceuticals'),(348,'Lorazepam','32','Ansiolíticos',62,222,'Lupin Limited'),(349,'Diazepam','27','Ansiolíticos',53,333,'Glenmark Pharmaceuticals'),(350,'Bromazepam','17','Ansiolíticos',97,392,'Cipla'),(351,'Clorazepato','14','Ansiolíticos',86,149,'Aurobindo Pharma'),(352,'Oxazepam','29','Ansiolíticos',375,191,'Cadila Healthcare'),(353,'Buspirona','41','Ansiolíticos',314,318,'Alembic Pharmaceuticals'),(354,'Prazepam','21','Ansiolíticos',391,243,'Torrent Pharmaceuticals'),(355,'Clobazam','4','Ansiolíticos',142,323,'Biocon'),(356,'Omeprazol','31','Antiácidos',257,171,'Divi\'s Laboratories'),(357,'Pantoprazol','17','Antiácidos',324,394,'Strides Arcolab'),(358,'Lansoprazol','10','Antiácidos',338,209,'Alkem Laboratories'),(359,'Esomeprazol','22','Antiácidos',44,201,'Sun Pharma'),(360,'Ranitidina','30','Antiácidos',226,208,'Zydus Cadila'),(361,'Famotidina','30','Antiácidos',109,231,'Torrent Pharmaceuticals'),(362,'Rabeprazol','44','Antiácidos',195,194,'Lupin Limited'),(363,'Sucralfato','9','Antiácidos',27,136,'Glenmark Pharmaceuticals'),(364,'Hidróxido de aluminio','35','Antiácidos',179,360,'Cipla'),(365,'Hidróxido de magnesio','5','Antiácidos',340,129,'Aurobindo Pharma'),(366,'Warfarina','33','Anticoagulantes',175,168,'Cadila Healthcare'),(367,'Rivaroxabán','37','Anticoagulantes',344,283,'Alembic Pharmaceuticals'),(368,'Dabigatrán','21','Anticoagulantes',17,162,'Torrent Pharmaceuticals'),(369,'Apixabán','7','Anticoagulantes',6,271,'Biocon'),(370,'Heparina','16','Anticoagulantes',375,314,'Divi\'s Laboratories'),(371,'Enoxaparina','7','Anticoagulantes',287,133,'Strides Arcolab'),(372,'Fondaparinux','5','Anticoagulantes',288,378,'Alkem Laboratories'),(373,'Argatroban','10','Anticoagulantes',134,109,'Sun Pharma'),(374,'Bivalirudina','33','Anticoagulantes',348,302,'Zydus Cadila'),(375,'Edoxabán','17','Anticoagulantes',65,300,'Torrent Pharmaceuticals'),(376,'Fluconazol','38','Antimicóticos (Antifúngicos)',190,122,'Lupin Limited'),(377,'Clotrimazol','37','Antimicóticos (Antifúngicos)',108,307,'Glenmark Pharmaceuticals'),(378,'Ketoconazol','9','Antimicóticos (Antifúngicos)',268,374,'Cipla'),(379,'Miconazol','34','Antimicóticos (Antifúngicos)',269,283,'Aurobindo Pharma'),(380,'Terbinafina','25','Antimicóticos (Antifúngicos)',86,335,'Cadila Healthcare'),(381,'Itraconazol','32','Antimicóticos (Antifúngicos)',63,181,'Alembic Pharmaceuticals'),(382,'Griseofulvina','23','Antimicóticos (Antifúngicos)',96,213,'Torrent Pharmaceuticals'),(383,'Voriconazol','29','Antimicóticos (Antifúngicos)',44,236,'Biocon'),(384,'Anfotericina B','3','Antimicóticos (Antifúngicos)',204,207,'Divi\'s Laboratories'),(385,'Caspofungina','2','Antimicóticos (Antifúngicos)',335,196,'Strides Arcolab'),(386,'Aciclovir','38','Antivirales',189,170,'Alkem Laboratories'),(387,'Valaciclovir','19','Antivirales',358,122,'Sun Pharma'),(388,'Oseltamivir','33','Antivirales',37,227,'Zydus Cadila'),(389,'Zanamivir','4','Antivirales',398,303,'Torrent Pharmaceuticals'),(390,'Ribavirina','49','Antivirales',8,164,'Lupin Limited'),(391,'Sofosbuvir','7','Antivirales',323,223,'Glenmark Pharmaceuticals'),(392,'Lopinavir/Ritonavir','22','Antivirales',282,146,'Cipla'),(393,'Tenofovir','28','Antivirales',328,127,'Aurobindo Pharma'),(394,'Ganciclovir','9','Antivirales',333,121,'Cadila Healthcare'),(395,'Famciclovir','10','Antivirales',237,293,'Alembic Pharmaceuticals'),(396,'Ondansetrón','35','Antieméticos',246,181,'Torrent Pharmaceuticals'),(397,'Metoclopramida','24','Antieméticos',239,318,'Biocon'),(398,'Dimenhidrinato','35','Antieméticos',316,147,'Divi\'s Laboratories'),(399,'Domperidona','19','Antieméticos',299,187,'Strides Arcolab'),(400,'Escopolamina','19','Antieméticos',66,375,'Alkem Laboratories');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08 20:36:33
