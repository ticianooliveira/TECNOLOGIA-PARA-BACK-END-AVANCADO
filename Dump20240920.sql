-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: vollmed_api_p4
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
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','create-table-medicos','SQL','V1__create-table-medicos.sql',-996076185,'root','2024-08-16 17:46:36',29,1),(2,'2','alter-table-medicos-add-column-telefone','SQL','V2__alter-table-medicos-add-column-telefone.sql',-1848389755,'root','2024-08-16 17:46:36',15,1),(3,'3','alter-table-medicos-add-column-ativo','SQL','V3__alter-table-medicos-add-column-ativo.sql',1410818282,'root','2024-08-16 17:46:36',13,1),(4,'4','create-table-pacientes','SQL','V4__create-table-pacientes.sql',313204577,'root','2024-08-16 17:46:36',28,1),(5,'5','create-table-usuarios','SQL','V5__create-table-usuarios.sql',1984651368,'root','2024-08-23 18:23:33',36,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `crm` varchar(6) NOT NULL,
  `especialidade` varchar(100) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `uf` char(2) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `crm` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'João Silva','joao.silva1@example.com','123456','ORTOPEDIA','Avenida Paulista','Bela Vista','01311000',NULL,'101','SP','São Paulo','11999990001',1),(2,'Maria Souza','maria.souza2@example.com','234567','CARDIOLOGIA','Rua XV de Novembro','Centro','80020110','Apto 2','102','PR','Curitiba','41999990002',1),(3,'Pedro Oliveira','pedro.oliveira3@example.com','345678','GINECOLOGIA','Rua das Flores','Jardim Botânico','22461030','Casa','103','RJ','Rio de Janeiro','21999990003',1),(4,'Ana Pereira','ana.pereira4@example.com','456789','DERMATOLOGIA','Rua Sete de Setembro','Centro','30120000','Apto 4','104','MG','Belo Horizonte','31999990004',1),(5,'Carlos Lima','carlos.lima5@example.com','567890','ORTOPEDIA','Avenida Rio Branco','Centro','20090003',NULL,'105','RJ','Rio de Janeiro','21999990005',1),(6,'Fernanda Costa','fernanda.costa6@example.com','678901','CARDIOLOGIA','Rua Oscar Freire','Jardins','01426000','Cobertura','106','SP','São Paulo','11999990006',0),(7,'Lucas Martins','lucas.martins7@example.com','789012','GINECOLOGIA','Avenida Atlântica','Copacabana','22021001','Apto 7','107','RJ','Rio de Janeiro','21999990007',0),(8,'Patrícia Almeida','patricia.almeida8@example.com','890123','DERMATOLOGIA','Rua Augusta','Consolação','01304001',NULL,'108','SP','São Paulo','11999990008',1),(9,'Roberto Santos','roberto.santos9@example.com','901234','ORTOPEDIA','Rua 25 de Março','Centro','01021000','Apto 9','109','SP','São Paulo','11999990009',0),(10,'Juliana Fernandes','juliana.fernandes10@example.com','012345','CARDIOLOGIA','Avenida Beira Mar','Meireles','60165012','Apto 10','110','CE','Fortaleza','85999990010',1),(11,'Gabriel Rocha','gabriel.rocha11@example.com','112345','GINECOLOGIA','Rua São Bento','Centro','01011000','Casa 11','111','SP','São Paulo','11999990011',1),(12,'Bianca Mendes','bianca.mendes12@example.com','122345','DERMATOLOGIA','Rua Direita','Centro Histórico','01002000','Sala 12','112','SP','São Paulo','11999990012',0),(13,'Renato Carvalho','renato.carvalho13@example.com','132345','ORTOPEDIA','Rua da Glória','Glória','20241180','Apto 13','113','RJ','Rio de Janeiro','21999990013',1),(14,'Camila Barbosa','camila.barbosa14@example.com','142345','CARDIOLOGIA','Avenida Paraná','Boa Vista','80060100',NULL,'114','PR','Curitiba','41999990014',1),(15,'Felipe Teixeira','felipe.teixeira15@example.com','152345','GINECOLOGIA','Avenida Afonso Pena','Centro','30130100','Cobertura','115','MG','Belo Horizonte','31999990015',1),(16,'Larissa Gomes','larissa.gomes16@example.com','162345','DERMATOLOGIA','Avenida das Américas','Barra da Tijuca','22640010','Apto 16','116','RJ','Rio de Janeiro','21999990016',1),(17,'Gustavo Ribeiro','gustavo.ribeiro17@example.com','172345','ORTOPEDIA','Avenida Ipiranga','República','01046010',NULL,'117','SP','São Paulo','11999990017',1),(18,'Mariana Castro','mariana.castro18@example.com','182345','CARDIOLOGIA','Avenida João Pessoa','Cidade Baixa','90040140','Apto 18','118','RS','Porto Alegre','51999990018',0),(19,'André Moreira','andre.moreira19@example.com','192345','GINECOLOGIA','Avenida Brasil','Ramos','21012010','Casa','119','RJ','Rio de Janeiro','21999990019',1),(20,'Vanessa Lopes','vanessa.lopes20@example.com','202345','DERMATOLOGIA','Avenida Paulista','Bela Vista','01311000','Apto 20','120','SP','São Paulo','11999990020',1);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `uf` char(2) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `ativo` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'João Silva','joao.silva1@example.com','12345678901','Avenida Paulista','Bela Vista','01311000','','101','SP','São Paulo','11999990001',1),(2,'Maria Souza','maria.souza2@example.com','23456789012','Rua XV de Novembro','Centro','80020110','Apto 2','102','PR','Curitiba','41999990002',1),(3,'Pedro Oliveira','pedro.oliveira3@example.com','34567890123','Rua das Flores','Jardim Botânico','22461030','Casa','103','RJ','Rio de Janeiro','21999990003',1),(4,'Ana Pereira','ana.pereira4@example.com','45678901234','Rua Sete de Setembro','Centro','30120000','Apto 4','104','MG','Belo Horizonte','31999990004',1),(5,'Carlos Lima','carlos.lima5@example.com','56789012345','Avenida Rio Branco','Centro','20090003','','105','RJ','Rio de Janeiro','21999990005',1),(6,'Fernanda Costa','fernanda.costa6@example.com','67890123456','Rua Oscar Freire','Jardins','01426000','Cobertura','106','SP','São Paulo','11999990006',0),(7,'Lucas Martins','lucas.martins7@example.com','78901234567','Avenida Atlântica','Copacabana','22021001','Apto 7','107','RJ','Rio de Janeiro','21999990007',0),(8,'Patrícia Almeida','patricia.almeida8@example.com','89012345678','Rua Augusta','Consolação','01304001','','108','SP','São Paulo','11999990008',1),(9,'Roberto Santos','roberto.santos9@example.com','90123456789','Rua 25 de Março','Centro','01021000','Apto 9','109','SP','São Paulo','11999990009',0),(10,'Juliana Fernandes','juliana.fernandes10@example.com','01234567890','Avenida Beira Mar','Meireles','60165012','Apto 10','110','CE','Fortaleza','85999990010',1),(11,'Gabriel Rocha','gabriel.rocha11@example.com','11234567891','Rua São Bento','Centro','01011000','Casa 11','111','SP','São Paulo','11999990011',1),(12,'Bianca Mendes','bianca.mendes12@example.com','12234567892','Rua Direita','Centro Histórico','01002000','Sala 12','112','SP','São Paulo','11999990012',0),(13,'Renato Carvalho','renato.carvalho13@example.com','13234567893','Rua da Glória','Glória','20241180','Apto 13','113','RJ','Rio de Janeiro','21999990013',1),(14,'Camila Barbosa','camila.barbosa14@example.com','14234567894','Avenida Paraná','Boa Vista','80060100','','114','PR','Curitiba','41999990014',1),(15,'Felipe Teixeira','felipe.teixeira15@example.com','15234567895','Avenida Afonso Pena','Centro','30130100','Cobertura','115','MG','Belo Horizonte','31999990015',1),(16,'Larissa Gomes','larissa.gomes16@example.com','16234567896','Avenida das Américas','Barra da Tijuca','22640010','Apto 16','116','RJ','Rio de Janeiro','21999990016',1),(17,'Gustavo Ribeiro','gustavo.ribeiro17@example.com','17234567897','Avenida Ipiranga','República','01046010','','117','SP','São Paulo','11999990017',1),(18,'Mariana Castro','mariana.castro18@example.com','18234567898','Avenida João Pessoa','Cidade Baixa','90040140','Apto 18','118','RS','Porto Alegre','51999990018',0),(19,'André Moreira','andre.moreira19@example.com','19234567899','Avenida Brasil','Ramos','21012010','Casa','119','RJ','Rio de Janeiro','21999990019',1),(20,'Vanessa Lopes','vanessa.lopes20@example.com','20234567890','Avenida Paulista','Bela Vista','01311000','Apto 20','120','SP','São Paulo','11999990020',1),(21,'Quico Florinda','quico.florinda@voll.med','333.444.333-21','rua 21','bairro','85412366',NULL,'5','DF','Brasília','555461245',1);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ana.souza@voll.med','$2a$10$Y50UaMFOxteibQEYLrwuHeehHYfcoafCopUazP12.rqB41bsolF5.');
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

-- Dump completed on 2024-09-20 14:34:59
