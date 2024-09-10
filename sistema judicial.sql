CREATE DATABASE  IF NOT EXISTS `sist_penitenciario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sist_penitenciario`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sist_penitenciario
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `documento_vara`
--

DROP TABLE IF EXISTS `documento_vara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento_vara` (
  `id_documento` bigint NOT NULL AUTO_INCREMENT,
  `data_criacao` date NOT NULL,
  `data_da_leitura` date DEFAULT NULL,
  `num_dias_execucao` int DEFAULT NULL,
  `prazo_para_execucao` date DEFAULT NULL,
  `tipo_de_documento` enum('alvará de soltura','mandato de prisão','mandato de monitoramento eletrônico','petição','requerimento','ofício') NOT NULL,
  `fk_id_preso` bigint DEFAULT NULL,
  `fk_id_juiz` bigint DEFAULT NULL,
  `nome_solicitante` varchar(155) NOT NULL,
  `providencias_tomadas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `fk_id_preso` (`fk_id_preso`),
  KEY `fk_id_juiz` (`fk_id_juiz`),
  CONSTRAINT `documento_vara_ibfk_1` FOREIGN KEY (`fk_id_preso`) REFERENCES `presos` (`id_preso`),
  CONSTRAINT `documento_vara_ibfk_2` FOREIGN KEY (`fk_id_juiz`) REFERENCES `juiz` (`id_juiz_org`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_vara`
--

LOCK TABLES `documento_vara` WRITE;
/*!40000 ALTER TABLE `documento_vara` DISABLE KEYS */;
INSERT INTO `documento_vara` VALUES (1,'2004-09-13','2004-10-06',30,'2004-10-13','mandato de prisão',1,1,'José Bernardo Neto','Mandato executado pela policia'),(2,'2005-10-17','2005-11-08',374,'2006-11-17','alvará de soltura',2,2,'Júlia Pereira','Documentação revisada e enviada'),(3,'2009-02-23','2014-08-06',439,'2015-10-19','petição',3,3,'Ana Pereira','Petição enviada ao tribunal'),(4,'2019-09-13','2019-10-06',372,'2020-10-13','mandato de monitoramento eletrônico',4,4,'Pedro Souza','Monitoramento iniciado'),(5,'2003-01-31','2009-06-15',230,'2010-01-31','alvará de soltura',5,5,'Gabriel Costa','Documentação revisada e enviada'),(6,'2004-10-31','2020-02-06',386,'2021-02-26','ofício',6,6,'Maria Santos','Ofício encaminhado ao destinatário'),(7,'2024-01-01','2024-01-02',10,'2024-01-11','mandato de prisão',7,7,'Mariana Costa','Solicitaçao negada'),(8,'2024-01-03','2024-01-04',15,'2024-01-18','mandato de monitoramento eletrônico',8,8,'Júlia Rodrigues','Monitoramento iniciado'),(9,'2024-01-05','2024-01-06',5,'2024-01-10','ofício',9,9,'Rafael Almeida','Ofício encaminhado ao destinatário'),(10,'2024-01-07','2024-01-08',20,'2024-01-27','mandato de prisão',10,10,'Daniela Oliveira','Mandato executado pela policia'),(11,'2024-01-09','2024-01-10',30,'2024-02-08','alvará de soltura',11,11,'Bruno Martins','Documentação revisada e enviada'),(12,'2024-01-11','2024-01-12',25,'2024-02-05','requerimento',12,12,'Laura Ferreira','Requerimento aprovado'),(13,'2024-03-01','2024-03-02',10,'2024-03-11','mandato de monitoramento eletrônico',13,13,'João Mendes','Monitoramento iniciado'),(14,'2024-02-03','2024-02-04',15,'2024-02-18','petição',14,14,'Sofia Carvalho','Petição enviada ao tribunal'),(15,'2024-02-05','2024-02-06',5,'2024-02-10','ofício',15,15,'Matheus Lima','Ofício encaminhado ao destinatário'),(16,'2024-02-07','2024-02-08',20,'2024-02-27','petição',16,16,'Beatriz Gonçalves','Petição enviada ao tribunal'),(17,'2024-02-09','2024-02-10',30,'2024-03-08','mandato de prisão',17,17,'Thiago Araújo','Mandato executado pela policia'),(18,'2024-02-11','2024-02-12',25,'2024-03-05','requerimento',18,18,'Mariana Fernandes','Requerimento aprovado'),(19,'2024-03-01','2024-03-02',10,'2024-03-11','alvará de soltura',19,19,'Alice Ribeiro','Documentação revisada e enviada'),(20,'2024-03-03','2024-03-04',15,'2024-03-18','requerimento',20,20,'Gustavo Castro','Solicitaçao negada'),(21,'2024-03-05','2024-03-06',5,'2024-03-10','petição',21,21,'Camila Moreira','Petição enviada ao tribunal'),(22,'2024-03-07','2024-03-08',20,'2024-03-27','mandato de monitoramento eletrônico',22,22,'Rodrigo Teixeira','Monitoramento iniciado'),(23,'2024-03-09','2024-03-10',30,'2024-04-08','alvará de soltura',23,23,'André Almeida','Documentação revisada e enviada'),(24,'2024-03-11','2024-03-12',25,'2024-04-05','petição',24,24,'Diego Vieira','Petição enviada ao tribunal'),(25,'2024-04-01','2024-04-02',10,'2024-04-11','mandato de prisão',25,25,'Renata Costa','Mandato executado pela policia'),(26,'2024-04-03','2024-04-04',15,'2024-04-18','alvará de soltura',26,26,'Eduardo Lima','Documentação revisada e enviada'),(27,'2024-04-05','2024-04-06',5,'2024-04-10','mandato de prisão',27,27,'Clara Alves','Mandato executado pela policia'),(28,'2024-04-07','2024-04-08',20,'2024-04-27','alvará de soltura',28,28,'Henrique Sousa','Documentação revisada e enviada'),(29,'2024-04-09','2024-04-10',30,'2024-05-08','mandato de monitoramento eletrônico',29,29,'Letícia Cardoso','Monitoramento iniciado'),(30,'2024-05-05','2024-05-06',5,'2024-05-10','mandato de prisão',30,30,'Lucas Silva','Mandato executado pela policia');
/*!40000 ALTER TABLE `documento_vara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juiz`
--

DROP TABLE IF EXISTS `juiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juiz` (
  `id_juiz_org` bigint NOT NULL AUTO_INCREMENT,
  `nome_juiz` varchar(255) NOT NULL,
  `vara_juiz` int DEFAULT NULL,
  PRIMARY KEY (`id_juiz_org`),
  KEY `vara_juiz` (`vara_juiz`),
  CONSTRAINT `juiz_ibfk_1` FOREIGN KEY (`vara_juiz`) REFERENCES `vara` (`id_vara`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juiz`
--

LOCK TABLES `juiz` WRITE;
/*!40000 ALTER TABLE `juiz` DISABLE KEYS */;
INSERT INTO `juiz` VALUES (1,'Dr. João Silva',1),(2,'Dr. Carlos Pereira',2),(3,'Dr. Ana Maria Souza',3),(4,'Dr. Pedro Henrique Lima',4),(5,'Dr. Lucas Oliveira',5),(6,'Dr. Felipe Alves',6),(7,'Dr. Mariana Costa',7),(8,'Dr. Rafael Gomes',8),(9,'Dr. Fernanda Ribeiro',9),(10,'Dr. Gabriel Martins',10),(11,'Dr. Ricardo Santos',11),(12,'Dr. Juliana Almeida',12),(13,'Dr. André Monteiro',13),(14,'Dr. Leonardo Carvalho',14),(15,'Dr. Eduardo Rodrigues',15),(16,'Dr. Paula Ferreira',16),(17,'Dr. Thiago Costa',17),(18,'Dr. Renata Fernandes',18),(19,'Dr. Bruno Rocha',19),(20,'Dr. Marcelo Mendes',20),(21,'Dr. Camila Araújo',21),(22,'Dr. Fábio Pires',22),(23,'Dr. Beatriz Castro',23),(24,'Dr. Fernando Nascimento',24),(25,'Dr. Patrícia Teixeira',25),(26,'Dr. Vinícius Dias',26),(27,'Dr. Isabela Lopes',27),(28,'Dr. Rogério Silva',28),(29,'Dr. Mateus Ribeiro',29),(30,'Dr. Aline Sousa',30);
/*!40000 ALTER TABLE `juiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacao_sap`
--

DROP TABLE IF EXISTS `notificacao_sap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacao_sap` (
  `id_notificacao_sap` int NOT NULL AUTO_INCREMENT,
  `notificacao_para_sap` varchar(255) DEFAULT NULL,
  `id_juiz` bigint DEFAULT NULL,
  `id_preso` bigint DEFAULT NULL,
  `id_documento` bigint DEFAULT NULL,
  `id_responsavel` bigint DEFAULT NULL,
  `dia_notificacao_sap` date DEFAULT NULL,
  `prazo_para_cumprimento` date DEFAULT NULL,
  `dilacao_de_prazo` date DEFAULT NULL,
  `providencias_tomadas` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_notificacao_sap`),
  KEY `id_juiz` (`id_juiz`),
  KEY `id_preso` (`id_preso`),
  KEY `id_documento` (`id_documento`),
  KEY `id_responsavel` (`id_responsavel`),
  CONSTRAINT `notificacao_sap_ibfk_1` FOREIGN KEY (`id_juiz`) REFERENCES `juiz` (`id_juiz_org`),
  CONSTRAINT `notificacao_sap_ibfk_2` FOREIGN KEY (`id_preso`) REFERENCES `presos` (`id_preso`),
  CONSTRAINT `notificacao_sap_ibfk_3` FOREIGN KEY (`id_documento`) REFERENCES `documento_vara` (`id_documento`),
  CONSTRAINT `notificacao_sap_ibfk_4` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel_sap` (`id_responsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacao_sap`
--

LOCK TABLES `notificacao_sap` WRITE;
/*!40000 ALTER TABLE `notificacao_sap` DISABLE KEYS */;
INSERT INTO `notificacao_sap` VALUES (1,'Notificação enviada ao SAP',1,1,1,1,'2024-01-01','2024-01-10','2024-01-15','Revisão completa','Sem observações'),(2,'Notificação de cumprimento de mandato',2,2,2,2,'2024-01-05','2024-01-20','2024-01-25','Mandato executado','Revisar documentos'),(3,'Notificação de monitoramento',3,3,3,3,'2024-01-10','2024-01-15','2024-01-20','Monitoramento iniciado','Monitoramento em andamento'),(4,'Notificação de petição enviada',4,4,4,4,'2024-01-15','2024-01-25','2024-01-30','Petição em análise','Esperando resposta'),(5,'Notificação de requerimento',5,5,5,5,'2024-01-20','2024-02-01','2024-02-05','Requerimento aprovado','Encaminhar documentos'),(6,'Notificação de ofício',6,6,6,6,'2024-01-25','2024-02-05','2024-02-10','Ofício enviado','Esperando confirmação'),(7,'Notificação de soltura',7,7,7,7,'2024-02-01','2024-02-10','2024-02-15','Revisão completa','Sem observações'),(8,'Notificação de mandato',8,8,8,8,'2024-02-05','2024-02-20','2024-02-25','Mandato executado','Revisar documentos'),(9,'Notificação de monitoramento',9,9,9,9,'2024-02-10','2024-02-15','2024-02-20','Monitoramento iniciado','Monitoramento em andamento'),(10,'Notificação de petição',10,10,10,10,'2024-02-15','2024-02-25','2024-02-29','Petição em análise','Esperando resposta'),(11,'Notificação de requerimento',11,11,11,11,'2024-02-20','2024-03-01','2024-03-05','Requerimento aprovado','Encaminhar documentos'),(12,'Notificação de ofício',12,12,12,12,'2024-02-25','2024-03-05','2024-03-10','Ofício enviado','Esperando confirmação'),(13,'Notificação de soltura',13,13,13,13,'2024-03-01','2024-03-10','2024-03-15','Revisão completa','Sem observações'),(14,'Notificação de mandato',14,14,14,14,'2024-03-05','2024-03-20','2024-03-25','Mandato executado','Revisar documentos'),(15,'Notificação de monitoramento',15,15,15,15,'2024-03-10','2024-03-15','2024-03-20','Monitoramento iniciado','Monitoramento em andamento'),(16,'Notificação de petição',16,16,16,16,'2024-03-15','2024-03-25','2024-03-30','Petição em análise','Esperando resposta'),(17,'Notificação de requerimento',17,17,17,17,'2024-03-20','2024-04-01','2024-04-05','Requerimento aprovado','Encaminhar documentos'),(18,'Notificação enviada ao SAP',18,18,18,18,'2024-04-01','2024-04-10','2024-04-15','Revisão completa','Sem observações'),(19,'Notificação de cumprimento de mandato',19,19,19,19,'2024-04-05','2024-04-20','2024-04-25','Mandato executado','Revisar documentos'),(20,'Notificação de monitoramento',20,20,20,20,'2024-04-10','2024-04-15','2024-04-20','Monitoramento iniciado','Monitoramento em andamento'),(21,'Notificação de petição enviada',21,21,21,21,'2024-04-15','2024-04-25','2024-04-30','Petição em análise','Esperando resposta'),(22,'Notificação de requerimento',22,22,22,22,'2024-04-20','2024-05-01','2024-05-05','Requerimento aprovado','Encaminhar documentos'),(23,'Notificação de ofício',23,23,23,23,'2024-04-25','2024-05-05','2024-05-10','Ofício enviado','Esperando confirmação'),(24,'Notificação de soltura',24,24,24,24,'2024-05-01','2024-05-10','2024-05-15','Revisão completa','Sem observações'),(25,'Notificação de mandato',25,25,25,25,'2024-05-05','2024-05-20','2024-05-25','Mandato executado','Revisar documentos'),(26,'Notificação de monitoramento',26,26,26,26,'2024-05-10','2024-05-15','2024-05-20','Monitoramento iniciado','Monitoramento em andamento'),(27,'Notificação de petição',27,27,27,27,'2024-05-15','2024-05-25','2024-05-30','Petição em análise','Esperando resposta'),(28,'Notificação de requerimento',28,28,28,28,'2024-05-20','2024-06-01','2024-06-05','Requerimento aprovado','Encaminhar documentos'),(29,'Notificação de ofício',29,29,29,29,'2024-05-25','2024-06-05','2024-06-10','Ofício enviado','Esperando confirmação'),(30,'Notificação de soltura',30,30,30,30,'2024-06-01','2024-06-10','2024-06-15','Revisão completa','Sem observações');
/*!40000 ALTER TABLE `notificacao_sap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presos`
--

DROP TABLE IF EXISTS `presos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presos` (
  `id_preso` bigint NOT NULL AUTO_INCREMENT,
  `id_registro_org2` bigint DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` bigint NOT NULL,
  `resumo_pena` text,
  `local_pena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_preso`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presos`
--

LOCK TABLES `presos` WRITE;
/*!40000 ALTER TABLE `presos` DISABLE KEYS */;
INSERT INTO `presos` VALUES (1,123456790,'João Oliveira',98765432100,'Cumprindo pena de 5 anos por furto.','Penitenciária de Minas Gerais'),(2,123456791,'Carlos Souza',12312312312,'Cumprindo pena de 3 anos por fraude.','Penitenciária do Rio de Janeiro'),(3,123456792,'André Lima',32132132132,'Cumprindo pena de 8 anos por tráfico de drogas.','Penitenciária de Brasília'),(4,123456793,'Pedro Santos',23423423423,'Cumprindo pena de 10 anos por assalto à mão armada.','Penitenciária de Salvador'),(5,123456794,'Rafael Costa',34534534534,'Cumprindo pena de 2 anos por desacato.','Penitenciária de Porto Alegre'),(6,123456795,'Lucas Ferreira',45645645645,'Cumprindo pena de 7 anos por sequestro.','Penitenciária de Recife'),(7,123456796,'Mateus Almeida',56756756756,'Cumprindo pena de 4 anos por lavagem de dinheiro.','Penitenciária de Fortaleza'),(8,123456797,'Bruno Araújo',67867867867,'Cumprindo pena de 1 ano por porte ilegal de armas.','Penitenciária de Manaus'),(9,123456798,'Henrique Ribeiro',78978978978,'Cumprindo pena de 12 anos por homicídio.','Penitenciária de Curitiba'),(10,123456799,'Fernando Martins',89089089089,'Cumprindo pena de 6 anos por extorsão.','Penitenciária de Florianópolis'),(11,123456800,'Gabriel Rocha',90190190190,'Cumprindo pena de 9 anos por estelionato.','Penitenciária de Goiânia'),(12,123456801,'Ricardo Pinto',11211211211,'Cumprindo pena de 3 anos por corrupção.','Penitenciária de Belém'),(13,123456802,'Thiago Cardoso',22322322322,'Cumprindo pena de 8 anos por homicídio culposo.','Penitenciária de Vitória'),(14,123456803,'Guilherme Correia',33433433433,'Cumprindo pena de 4 anos por roubo.','Penitenciária de Maceió'),(15,123456804,'Vinicius Souza',44544544544,'Cumprindo pena de 5 anos por receptação.','Penitenciária de João Pessoa'),(16,123456805,'Marcos Silva',55655655655,'Cumprindo pena de 6 anos por sequestro.','Penitenciária de Teresina'),(17,123456806,'Renato Dias',66766766766,'Cumprindo pena de 11 anos por tráfico de armas.','Penitenciária de São Luís'),(18,123456807,'Paulo Gomes',77877877877,'Cumprindo pena de 2 anos por agressão.','Penitenciária de Natal'),(19,123456808,'Rodrigo Vieira',88988988988,'Cumprindo pena de 7 anos por fraude.','Penitenciária de Aracaju'),(20,123456809,'Diego Barbosa',99099099099,'Cumprindo pena de 5 anos por tráfico de pessoas.','Penitenciária de Cuiabá'),(21,123456810,'Vitor Nascimento',10101010100,'Cumprindo pena de 10 anos por homicídio doloso.','Penitenciária de Campo Grande'),(22,123456811,'Fábio Teixeira',21221221221,'Cumprindo pena de 3 anos por falsificação de documentos.','Penitenciária de Boa Vista'),(23,123456812,'Felipe Moreira',32332332332,'Cumprindo pena de 9 anos por corrupção.','Penitenciária de Porto Velho'),(24,123456813,'Bruno Mendes',43443443443,'Cumprindo pena de 1 ano por desacato.','Penitenciária de Palmas'),(25,123456814,'José Pires',54554554554,'Cumprindo pena de 8 anos por tráfico de drogas.','Penitenciária de Macapá'),(26,123456815,'Daniel Castro',65665665665,'Cumprindo pena de 4 anos por furto qualificado.','Penitenciária de Rio Branco'),(27,123456816,'Gustavo Lima',76776776776,'Cumprindo pena de 6 anos por estelionato.','Penitenciária de São Paulo'),(28,123456817,'Renan Santos',87887887887,'Cumprindo pena de 3 anos por agressão.','Penitenciária de Belo Horizonte'),(29,123456818,'Eduardo Almeida',98998998998,'Cumprindo pena de 7 anos por homicídio culposo.','Penitenciária de Curitiba'),(30,123456819,'Sérgio Lopes',20202020202,'Cumprindo pena de 5 anos por roubo.','Penitenciária de Florianópolis');
/*!40000 ALTER TABLE `presos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel_sap`
--

DROP TABLE IF EXISTS `responsavel_sap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsavel_sap` (
  `id_responsavel` bigint NOT NULL AUTO_INCREMENT,
  `nome_responsavel` varchar(200) NOT NULL,
  `funcao_sap` enum('estagiário','diretor','assessor','advogado','secretario') NOT NULL,
  `dia_incorporacao` date NOT NULL,
  PRIMARY KEY (`id_responsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel_sap`
--

LOCK TABLES `responsavel_sap` WRITE;
/*!40000 ALTER TABLE `responsavel_sap` DISABLE KEYS */;
INSERT INTO `responsavel_sap` VALUES (1,'José Roberto Perreira','assessor','2015-08-22'),(2,'José Pedro Lima','secretario','2018-08-16'),(3,'Cristiano William Perreira','advogado','2020-10-24'),(4,'Caio Kaique Geraldo Ferreira','assessor','2020-12-23'),(5,'Cesar Joaquim Galvão','advogado','2009-10-24'),(6,'Severino Corte Real','estagiário','2020-10-24'),(7,'Jacson Lee Okinawa','secretario','2010-05-18'),(8,'Jacinto Aquino Rego','assessor','2023-10-25'),(9,'Kauê Arthur Rezende','secretario','2013-04-09'),(10,'Sebastião Tomás da Paz','assessor','2021-10-24'),(11,'Guilherme Castro Ramos','advogado','2021-07-11'),(12,'Emanuel Rocha Silva','advogado','2006-11-24'),(13,'Kaique de Assis Neto','advogado','2000-07-31'),(14,'Danilo Morais Ramos','advogado','2022-01-02'),(15,'Raimundo Vicente Pinto','assessor','2012-12-12'),(16,'Yago Martim Freitas','advogado','2021-11-11'),(17,'Hugo Teixeiras da Cruz','assessor','2001-12-29'),(18,'Bernardo de Oliveira','assessor','2017-03-03'),(19,'Enzo Castro Dias','advogado','2018-04-19'),(20,'Daniel Almeida Rodrigues','advogado','2012-12-16'),(21,'Marcelo Rocha Brito','secretario','2002-09-01'),(22,'Edson Castro Nogueira','advogado','2003-07-10'),(23,'Ricardo Manuel Assunção','advogado','2004-01-21'),(24,'Gabriel Antonio Nogueira','advogado','2005-11-03'),(25,'Marcio Campos','advogado','2024-11-25'),(26,'Raimundo Perreira Pinto','assessor','2001-04-05'),(27,'Eduardo Martin da Rosa','assessor','2006-09-12'),(28,'Otavio Joao Carvalho','advogado','2007-07-18'),(29,'Diogo Deide Costa','estagiário','2019-01-01'),(30,'Paulo Rodrigo Teixeiras','secretario','2007-03-30');
/*!40000 ALTER TABLE `responsavel_sap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tornozeleira`
--

DROP TABLE IF EXISTS `tornozeleira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tornozeleira` (
  `id_tornozeleira` bigint NOT NULL AUTO_INCREMENT,
  `nome_empresa_tornozeleira` varchar(255) NOT NULL,
  `id_tornozeleira_empresa` bigint DEFAULT NULL,
  `id_notificacao` int DEFAULT NULL,
  `dia_tornozeleira` date NOT NULL,
  `dia_de_retirada` date DEFAULT NULL,
  `reducao_da_pena` date DEFAULT NULL,
  `aumento_da_pena` date DEFAULT NULL,
  `tempo_tornozelado` int DEFAULT NULL,
  `eventos_ocorridos` varchar(255) DEFAULT NULL,
  `num_eventos_ocorridos` int DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tornozeleira`),
  KEY `id_notificacao` (`id_notificacao`),
  CONSTRAINT `tornozeleira_ibfk_1` FOREIGN KEY (`id_notificacao`) REFERENCES `notificacao_sap` (`id_notificacao_sap`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tornozeleira`
--

LOCK TABLES `tornozeleira` WRITE;
/*!40000 ALTER TABLE `tornozeleira` DISABLE KEYS */;
INSERT INTO `tornozeleira` VALUES (1,'Spacecom',1,1,'2024-01-01','2025-01-01',NULL,'2024-02-01',217,'Venda de drogas ilícitas',5,'Monitoramento com intercorrências graves'),(2,'Spacecom',2,2,'2024-01-10','2024-02-10','2024-01-25',NULL,208,'Saiu da zona de monitoramento',2,'Monitoramento sem intercorrências graves'),(3,'Spacecom',3,3,'2024-01-20','2024-02-20','2024-02-01',NULL,196,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(4,'Spacecom',4,4,'2024-02-01','2024-03-01','2024-03-20',NULL,186,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(5,'Spacecom',5,5,'2024-02-10','2024-02-10','2024-02-25',NULL,177,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(6,'Spacecom',6,6,'2024-02-20','2024-09-20',NULL,'2024-03-20',167,'Tentativa de venda da tornozeleira',15,'Aumento na pena do individuo'),(7,'Spacecom',7,7,'2024-03-01','2024-04-01','2024-02-20',NULL,157,'Alarme de retirada não autorizada',5,'Revisão do equipamento e reinstalação'),(8,'Spacecom',8,8,'2024-03-10','2024-04-10','2024-03-25',NULL,148,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(9,'Spacecom',9,9,'2024-03-20','2025-04-02',NULL,'2024-03-20',138,'Violação repetida do perímetro',4,'Aumento de pena devido a repetidas violações'),(10,'Spacecom',10,10,'2024-04-01','2024-05-01','2024-04-20',NULL,126,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(11,'Spacecom',11,11,'2024-04-10','2024-05-10','2024-04-25',NULL,117,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(12,'Spacecom',12,12,'2024-04-20','2024-05-20','2024-05-01',NULL,107,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(13,'Spacecom',13,13,'2024-05-01','2024-06-01','2024-05-20',NULL,92,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(14,'Spacecom',14,14,'2024-05-10','2024-06-10','2024-05-25',NULL,87,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(15,'Spacecom',15,15,'2024-05-20','2024-06-20','2024-06-01',NULL,77,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(16,'Spacecom',16,16,'2024-06-01','2024-07-01','2024-06-20',NULL,65,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(17,'Spacecom',17,17,'2024-06-10','2026-02-10',NULL,'2024-09-26',56,'Falsificação de sinal',2,'Aumento de pena por falsificação de sinal do dispositivo'),(18,'Spacecom',18,18,'2024-06-20','2024-07-20','2024-07-01',NULL,46,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(19,'Spacecom',19,19,'2024-07-01','2024-08-01','2024-07-20',NULL,35,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(20,'Spacecom',20,20,'2024-07-10','2024-08-10','2024-07-25',NULL,26,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(21,'Spacecom',21,21,'2024-07-20','2024-08-20','2024-08-01',NULL,16,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(22,'Spacecom',22,22,'2024-08-01','2024-09-01','2024-08-20',NULL,4,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(23,'Spacecom',23,23,'2023-08-10','2024-09-10','2023-08-25',NULL,361,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(24,'Spacecom',24,24,'2023-08-20','2027-09-20',NULL,'2023-10-31',351,'Desobediência às regras de monitoramento',6,'Aumento de pena por repetidas desobediências às regras'),(25,'Spacecom',25,25,'2023-09-01','2024-10-01','2023-11-20',NULL,339,'Deslocamento fora da área permitida',3,'Monitoramento sem intercorrências graves'),(26,'Spacecom',26,26,'2023-09-10','2024-10-10','2023-09-25',NULL,330,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(27,'Spacecom',27,27,'2023-09-20','2026-10-20',NULL,'2023-12-17',320,'Saída não autorizada da cidade',6,'Aumento de pena por saída não autorizada do perímetro urbano'),(28,'Spacecom',28,28,'2023-10-01','2024-11-01','2023-10-20',NULL,309,'Falha na comunicação do dispositivo',2,'Ajuste técnico realizado'),(29,'Spacecom',29,29,'2023-10-10','2025-05-10',NULL,'2023-12-20',300,'Alarme falso intencional',4,'Pena aumentada após vários alarmes falsos intencionais'),(30,'Spacecom',30,30,'2023-10-20','2027-02-20',NULL,'2024-01-15',290,'Violação de perímetro crítico',7,'Pena aumentada devido à violação de perímetro crítico');
/*!40000 ALTER TABLE `tornozeleira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vara`
--

DROP TABLE IF EXISTS `vara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vara` (
  `id_vara` int NOT NULL AUTO_INCREMENT,
  `id_registro_org2` bigint DEFAULT NULL,
  `nome_vara` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `comarca` varchar(100) NOT NULL,
  `telefone` bigint DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id_vara`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vara`
--

LOCK TABLES `vara` WRITE;
/*!40000 ALTER TABLE `vara` DISABLE KEYS */;
INSERT INTO `vara` VALUES (1,123456790,'Vara Criminal de Belo Horizonte','Rua das Flores, 123','Centro','Belo Horizonte','MG','Belo Horizonte',3131234567,'vara.bh@justica.gov.br'),(2,123456791,'Vara Criminal do Rio de Janeiro','Av. Brasil, 456','Centro','Rio de Janeiro','RJ','Rio de Janeiro',2123456789,'vara.rj@justica.gov.br'),(3,123456792,'Vara Criminal de Brasília','Quadra 302, Bloco C','Asa Norte','Brasília','DF','Brasília',6132345678,'vara.df@justica.gov.br'),(4,123456793,'Vara Criminal de Salvador','Rua da Bahia, 789','Centro','Salvador','BA','Salvador',7134567890,'vara.ba@justica.gov.br'),(5,123456794,'Vara Criminal de Porto Alegre','Rua dos Andradas, 234','Centro','Porto Alegre','RS','Porto Alegre',5134567890,'vara.rs@justica.gov.br'),(6,123456795,'Vara Criminal de Recife','Rua do Príncipe, 567','Boa Vista','Recife','PE','Recife',8134567890,'vara.pe@justica.gov.br'),(7,123456796,'Vara Criminal de Fortaleza','Avenida Beira Mar, 123','Centro','Fortaleza','CE','Fortaleza',8534567890,'vara.ce@justica.gov.br'),(8,123456797,'Vara Criminal de Manaus','Av. Getúlio Vargas, 321','Centro','Manaus','AM','Manaus',9223456789,'vara.am@justica.gov.br'),(9,123456798,'Vara Criminal de Curitiba','Rua XV de Novembro, 987','Centro','Curitiba','PR','Curitiba',4134567890,'vara.pr@justica.gov.br'),(10,123456799,'Vara Criminal de Florianópolis','Rua Dom Jaime Câmara, 654','Centro','Florianópolis','SC','Florianópolis',4834567890,'vara.sc@justica.gov.br'),(11,123456800,'Vara Criminal de Goiânia','Av. Goiás, 111','Centro','Goiânia','GO','Goiânia',6234567890,'vara.go@justica.gov.br'),(12,123456801,'Vara Criminal de Belém','Av. Magalhães Barata, 222','Cidade Velha','Belém','PA','Belém',9134567890,'vara.pa@justica.gov.br'),(13,123456802,'Vara Criminal de Vitória','Rua Pedro Palácios, 333','Centro','Vitória','ES','Vitória',2734567890,'vara.es@justica.gov.br'),(14,123456803,'Vara Criminal de Maceió','Rua do Comércio, 444','Centro','Maceió','AL','Maceió',8234567890,'vara.al@justica.gov.br'),(15,123456804,'Vara Criminal de João Pessoa','Av. Epitácio Pessoa, 555','Centro','João Pessoa','PB','João Pessoa',8323456789,'vara.pb@justica.gov.br'),(16,123456805,'Vara Criminal de Teresina','Rua Álvaro Mendes, 666','Centro','Teresina','PI','Teresina',8634567890,'vara.pi@justica.gov.br'),(17,123456806,'Vara Criminal de São Luís','Rua Grande, 777','Centro','São Luís','MA','São Luís',9834567890,'vara.ma@justica.gov.br'),(18,123456807,'Vara Criminal de Natal','Av. Prudente de Morais, 888','Centro','Natal','RN','Natal',8434567890,'vara.rn@justica.gov.br'),(19,123456808,'Vara Criminal de Aracaju','Rua Desembargador Maynard, 999','Centro','Aracaju','SE','Aracaju',7934567890,'vara.se@justica.gov.br'),(20,123456809,'Vara Criminal de Cuiabá','Av. Tenente Coronel Duarte, 1010','Centro','Cuiabá','MT','Cuiabá',6534567890,'vara.mt@justica.gov.br'),(21,123456810,'Vara Criminal de Campo Grande','Rua 14 de Julho, 1111','Centro','Campo Grande','MS','Campo Grande',6734567890,'vara.ms@justica.gov.br'),(22,123456811,'Vara Criminal de Boa Vista','Av. Benjamin Constant, 1212','Centro','Boa Vista','RR','Boa Vista',9512345678,'vara.rr@justica.gov.br'),(23,123456812,'Vara Criminal de Porto Velho','Rua 7 de Setembro, 1313','Centro','Porto Velho','RO','Porto Velho',6923456789,'vara.ro@justica.gov.br'),(24,123456813,'Vara Criminal de Palmas','Av. Teotônio Segurado, 1414','Centro','Palmas','TO','Palmas',6334567890,'vara.to@justica.gov.br'),(25,123456814,'Vara Criminal de Macapá','Rua General Rondon, 1515','Centro','Macapá','AP','Macapá',9612345678,'vara.ap@justica.gov.br'),(26,123456815,'Vara Criminal de Rio Branco','Av. Getúlio Vargas, 1616','Centro','Rio Branco','AC','Rio Branco',6812345678,'vara.ac@justica.gov.br'),(27,123456816,'Vara Criminal de São Paulo','Rua Maria Antônia, 1717','Centro','São Paulo','SP','São Paulo',1134567890,'vara.sp@justica.gov.br'),(28,123456817,'Vara Criminal de Belo Horizonte','Rua dos Tupis, 1818','Centro','Belo Horizonte','MG','Belo Horizonte',3134567890,'vara.bh@justica.gov.br'),(29,123456818,'Vara Criminal de Curitiba','Rua Barão do Rio Branco, 1919','Centro','Curitiba','PR','Curitiba',4134567890,'vara.pr@justica.gov.br'),(30,123456819,'Vara Criminal de Florianópolis','Rua Dom Jaime Câmara, 2020','Centro','Florianópolis','SC','Florianópolis',4834567890,'vara.sc@justica.gov.br');
/*!40000 ALTER TABLE `vara` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 21:01:46
