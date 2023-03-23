-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.39-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para bd_rodrigomilenauniversidade0916
CREATE DATABASE IF NOT EXISTS `bd_rodrigomilenauniversidade0916` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_rodrigomilenauniversidade0916`;


-- Copiando estrutura para tabela bd_rodrigomilenauniversidade0916.tabalunos
CREATE TABLE IF NOT EXISTS `tabalunos` (
  `codigoalu` int(11) NOT NULL AUTO_INCREMENT,
  `Nomealu` varchar(40) DEFAULT NULL,
  `Enderecoalu` varchar(30) DEFAULT NULL,
  `Cidadealu` varchar(30) DEFAULT NULL,
  `Estadoalu` varchar(2) DEFAULT NULL,
  `Cepalu` varchar(10) DEFAULT NULL,
  `Telefonealu` varchar(15) DEFAULT NULL,
  `Cpfalu` varchar(15) DEFAULT NULL,
  `Rgalu` varchar(12) DEFAULT NULL,
  `Emailalu` varchar(50) DEFAULT NULL,
  `dnascimentoalu` date DEFAULT NULL,
  PRIMARY KEY (`codigoalu`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_rodrigomilenauniversidade0916.tabalunos: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `tabalunos` DISABLE KEYS */;
REPLACE INTO `tabalunos` (`codigoalu`, `Nomealu`, `Enderecoalu`, `Cidadealu`, `Estadoalu`, `Cepalu`, `Telefonealu`, `Cpfalu`, `Rgalu`, `Emailalu`, `dnascimentoalu`) VALUES
	(1, 'Kawany Marcelino', 'Rua 10, 100', 'Orlândia', 'SP', '14620000', '16-3826-2560', '123.654.654-78', '85.654.852-2', 'kawany@gmail.com', '2003-09-17'),
	(2, 'LARISSA ALMEIDA MOURA CARNEIRO', 'Rua 10, 300', 'Orlândia', 'SP', '14670000', '16-3826-2561', '123.654.654-79', '23.999.654-8', 'larissa@gmail.com', '2003-08-18'),
	(3, 'LAVÍNIA FERNANDA PEREIRA ALVES', 'Rua 9 de julho, 500', 'Ribeirão Preto', 'SP', '15800000', '16-3826-3065', '123.987.654-80', '57.654.654-8', 'lavinia@gmail.com', '2003-05-04'),
	(4, 'LETÍCIA ALMEIDA MOURA CARNEIRO', 'Rua 15 de novembro, 600', 'Ribeirão Preto', 'SP', '16800000', '16-3826-3065', '123.987.654-80', '57.654.654-8', 'leticia@gmail.com', '2003-03-03'),
	(5, 'LÍVIA SORATI RIBEIRO', 'Rua 18, 200', 'Barretos', 'SP', '12345678', '16-3826-5036', '654.654.654-82', '12.654.898-8', 'livia@gmail.com', '2002-09-08'),
	(6, 'MARIA EDUARDA PARIZI BORGES SILVA', 'Avenida 10, 1000', 'Orlândia', 'SP', '14620000', '16-3926-3030', '123.654.654-83', '94.654.654-9', 'mariaedu@gmail.com', '2003-06-18'),
	(7, 'MARIA GABRIELA DOS SANTOS SILVA MAIA', 'Avenida João Fiusa, 500', 'Ribeirão Preto', 'SP', '14670000', '16-2626-3516', '654.654.878-84', '23.654.654-9', 'mariagabi@gmail.com', '2002-06-16'),
	(8, 'MARIA JULIA RICCI', 'Avenida Independência, 600', 'Ribeirão Preto', 'SP', '15800000', '16-3826-2567', '123.654.654-85', '85.654.852-9', 'mariajulia@gmail.com', '2002-03-30'),
	(9, 'MARIA LAURA ANDRADE VASCONCELLOS', 'Rua Presidente Vargas, 1000', 'São Paulo', 'SP', '16800000', '16-3826-2568', '123.999.654-86', '13.654.654-7', 'marialaura@gmail.com', '2002-05-13'),
	(10, 'MARIA RITA VANINI JACOBINE', 'Rua Sérgio Ribeiro, 300', 'Rio de Janeiro', 'RJ', '12345678', '16-3926-3620', '357.654.654-87', '12.654.654-7', 'mariarita@gmail.com', '2002-01-00'),
	(11, 'MILENA CANDIDA SERRANO MIRON', 'Rua 20, 450', 'Guaíra', 'SP', '14620000', '16-6555-3630', '123.654.654-88', '13.987.654-0', 'milena@gmail.com', '1999-02-00'),
	(12, 'MIRELE MARIA TEREZAN DE SOUZA', 'Rua Marcanã, 700', 'Rio de Janeiro', 'RJ', '12345678', '16-3826-2571', '123.654.898-89', '12.654.654-8', 'mirele@gmail.com', '2003-09-04'),
	(13, 'PABLO SIQUEIRA ZANÃO', 'Rua Presidente Dutra, 600', 'Rio de Janeiro', 'RJ', '14620000', '16-6826-2572', '954.654.654-90', '64.654.654-8', 'pablo@gmail.com', '2003-12-00'),
	(14, 'RAFAEL FERREIRA CARVALHO', 'Rua Tom Jobim, 200', 'Rio de Janeiro', 'RJ', '12345678', '16-3826-2573', '123.654.654-91', '23.654.654-8', 'rafaelferreira@gmail.com', '1998-11-00'),
	(15, 'RAFAEL RUFO VANSULIN', 'Avenida Rebouças, 400', 'São Paulo', 'SP', '15800000', '16-3025-6674', '123.654.368-92', '64.654.878-8', 'rafaelrufo@gmail.com', '2003-10-00'),
	(16, 'RODRIGO CÉSAR RUBIN', 'Avenida Tiradentes, 300', 'São Paulo', 'SP', '16800000', '16-3826-2575', '123.753.654-93', '37.654.654-7', 'rodrigo@gmail.com', '2003-09-00'),
	(17, 'TIAGO DAMACENO PEDRO', 'Rua Major Nicácio, 500', 'Franca', 'SP', '14670000', '16-6826-2536', '853.654.654-94', '13.654.654-8', 'tiago@gmail.com', '2002-02-00'),
	(18, 'VINICIUS DA SILVA GERMANO', 'Rua das Euviras, 300', 'Belo Horizonte', 'MG', '14670000', '16-3826-2577', '325.654.654-95', '13.654.898-9', 'germano@gmail.com', '2002-09-29'),
	(19, 'VINÍCIUS FIGUEIREDO', 'Rua 20, 30', 'Orlândia', 'SP', '14620000', '16-3726-4030', '325.658.758-95', '15.365.357-8', 'vinicius@gmail.com.br', '2002-01-28'),
	(20, 'YASMIN RIBEIRO DE OLIVEIRA', 'Avenida 5, 200', 'Orlândia', 'SP', '14620000', '16-3820-2150', '123.654.758.09', '16.378.358-9', 'ysamin@gmail.com', '2003-09-10');
/*!40000 ALTER TABLE `tabalunos` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_rodrigomilenauniversidade0916.tabdisciplinas
CREATE TABLE IF NOT EXISTS `tabdisciplinas` (
  `codigodis` int(11) NOT NULL AUTO_INCREMENT,
  `Nomedis` varchar(20) DEFAULT NULL,
  `Tipodis` varchar(50) DEFAULT NULL,
  `Areadis` varchar(50) DEFAULT NULL,
  `Horadis` float DEFAULT NULL,
  `Semestredis` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigodis`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_rodrigomilenauniversidade0916.tabdisciplinas: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `tabdisciplinas` DISABLE KEYS */;
REPLACE INTO `tabdisciplinas` (`codigodis`, `Nomedis`, `Tipodis`, `Areadis`, `Horadis`, `Semestredis`) VALUES
	(1, 'Língua Portuguesa, L', 'Núcleo Comum', 'Ensino Médio', 480, '6'),
	(2, 'Língua Estrangeira M', 'Núcleo Comum', 'Ensino Médio', 240, '2'),
	(3, 'Língua Estrangeira M', 'Núcleo Comum', 'Ensino Médio', 100, '1'),
	(4, 'Artes ', 'Núcleo Comum', 'Ensino Médio', 120, '2'),
	(5, 'Educação Física ', 'Núcleo Comum', 'Ensino Médio', 240, '6'),
	(6, 'História ', 'Núcleo Comum', 'Ensino Médio', 240, '6'),
	(7, 'Geografia ', 'Núcleo Comum', 'Ensino Médio', 240, '2'),
	(8, 'Filosofia ', 'Núcleo Comum', 'Ensino Médio', 120, '2'),
	(9, 'Sociologia ', 'Núcleo Comum', 'Ensino Médio', 120, '2'),
	(10, 'Física ', 'Núcleo Comum', 'Ensino Médio', 240, '6'),
	(11, 'Química ', 'Núcleo Comum', 'Ensino Médio', 240, '6'),
	(12, 'Biologia ', 'Núcleo Comum', 'Ensino Médio', 480, '6'),
	(13, 'Matemática ', 'Núcleo Comum', 'Ensino Médio', 120, '6'),
	(14, 'Lógica deProgramação', 'Infomática', 'Ensino Técnico', 80, '2'),
	(15, 'Instalação e Manuten', 'Infomática', 'Ensino Técnico', 80, '2'),
	(16, 'Operação de Software', 'Infomática', 'Ensino Técnico', 40, '2'),
	(17, 'Ética e Cidadania Or', 'Infomática', 'Ensino Técnico', 160, '2'),
	(18, 'Técnicas de Programa', 'Infomática', 'Ensino Técnico', 160, '4'),
	(19, 'Tecnologias e Lingua', 'Infomática', 'Ensino Técnico', 160, '4'),
	(20, 'Linguagem de Program', 'Infomática', 'Ensino Técnico', 120, '2');
/*!40000 ALTER TABLE `tabdisciplinas` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_rodrigomilenauniversidade0916.tabfuncionários
CREATE TABLE IF NOT EXISTS `tabfuncionários` (
  `Codigofun` int(11) NOT NULL AUTO_INCREMENT,
  `Nomefun` varchar(40) DEFAULT NULL,
  `Enderecofun` varchar(30) DEFAULT NULL,
  `Cidadefun` varchar(30) DEFAULT NULL,
  `Estadofun` varchar(2) DEFAULT NULL,
  `Cepfun` varchar(10) DEFAULT NULL,
  `Telefonefun` varchar(15) DEFAULT NULL,
  `Cpffun` float DEFAULT NULL,
  `Rgfun` varchar(12) DEFAULT NULL,
  `Emailfun` varchar(50) DEFAULT NULL,
  `Dnascimentofun` varchar(50) DEFAULT NULL,
  `ndependetesfun` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Codigofun`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_rodrigomilenauniversidade0916.tabfuncionários: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `tabfuncionários` DISABLE KEYS */;
REPLACE INTO `tabfuncionários` (`Codigofun`, `Nomefun`, `Enderecofun`, `Cidadefun`, `Estadofun`, `Cepfun`, `Telefonefun`, `Cpffun`, `Rgfun`, `Emailfun`, `Dnascimentofun`, `ndependetesfun`) VALUES
	(1, 'Antonio da Silva', 'Avenida 10, 800', 'Orlândia', 'SP', '14600000', '16-3826-2560', 12365500000, '85.654.852-2', 'antonio@Yahoo.com.br', '10/04/1990', '2'),
	(2, 'João de Souza', 'Rua 1, 300', 'Orlândia', 'SP', '14600000', '16-3826-2561', 12365500000, '23.999.654-8', 'joao@yahoo.com.br', '05/09/1987', '3'),
	(3, 'Maria Oliveira', 'Avenida João Fiusa, 500', 'Ribeirão Preto', 'SP', '14600001', '16-3826-3065', 12398800000, '57.654.654-8', 'maria@yahoo.com.br', '17/03/1988', '1'),
	(4, 'Carlos Henrique', 'Avenida Independência, 600', 'Ribeirão Preto', 'SP', '14600001', '16-3726-2563', 12365500000, '23.654.654-8', 'carlos@yahoo.com.br', '22/06/1985', '2'),
	(5, 'Otávio Antonio', 'Rua Presidente Vargas, 1000', 'Ribeirão Preto', 'SP', '14600001', '16-3826-5036', 65465500000, '12.654.898-8', 'otavio@yahoo.com.br', '13/01/1984', '3'),
	(6, 'Sônia Amâncio', 'Rua Sérgio Ribeiro, 300', 'Ribeirão Preto', 'SP', '14600001', '16-3926-3030', 12365500000, '94.654.654-9', 'sonia@yahoo.com.br', '25/02/1986', '5'),
	(7, 'Lourdes Maria', 'Rua 3, 400', 'Orlândia', 'SP', '14600000', '16-2626-3516', 65465500000, '23.654.654-9', 'lourdes@yahoo.com.br', '15/09/1990', '3'),
	(8, 'Cecília Buarque', 'Avenida 7, 1000', 'Orlândia', 'SP', '14600000', '16-3826-2567', 12365500000, '85.654.852-9', 'cecilia@yahoo.com.br', '19/07/1988', '2'),
	(9, 'Renato Azevedo', 'Rua A, 650', 'Orlândia', 'SP', '14600000', '16-3826-2568', 12400000000, '13.654.654-7', 'renato@yahoo.com.br', '17/06/1984', '4'),
	(10, 'Sérgio Lucas', 'Rua B, 250', 'Orlândia', 'SP', '14600000', '16-3926-3620', 35765500000, '12.654.654-7', 'sergio@yahoo.com.br', '23/051983', '3'),
	(11, 'Paulo Eduardo', 'Rua Marcanã, 700', 'Rio de Janeiro', 'RJ', '14600240', '16-6555-3630', 12365500000, '13.987.654-0', 'paulo@yahoo.com.br', '15/12/1995', '6'),
	(12, 'José Carlos', 'Rua Presidente Dutra, 600', 'Rio de Janeiro', 'RJ', '14600240', '16-3826-2571', 12365500000, '12.654.654-8', 'jose@yahoo.com.br', '12/03/1997', '5'),
	(13, 'Caetano Barbosa', 'Rua Tom Jobim, 200', 'Rio de Janeiro', 'RJ', '14600240', '16-6826-2572', 95465500000, '64.654.654-8', 'caetano@yahoo.com.br', '08/07/1992', '4'),
	(14, 'Marcelo Oliveira', 'Avenida Rebouças, 400', 'São Paulo', 'SP', '14600250', '16-3826-2573', 12365500000, '23.654.654-8', 'marcelo@yahoo.com.br', '08/09/1889', '1'),
	(15, 'Flávio Carvalho', 'Avenida Tiradentes, 300', 'São Paulo', 'SP', '14600250', '16-3025-6674', 12365400000, '64.654.878-8', 'flavio@yahoo.com.br', '25/06/1984', '2'),
	(16, 'Eurípedes Santos', 'Rua 5, 300', 'Orlândia', 'SP', '14600000', '16-3826-2575', 12375400000, '37.654.654-7', 'euripedes@yahoo.com.br', '19/10/1982', '3'),
	(17, 'Sandra Passarinho', 'Avenida Voluntário, 300', 'Orlândia', 'SP', '14600000', '16-6826-2536', 85365500000, '13.654.654-8', 'sandra@yahoo.com.br', '15/03/1983', '5'),
	(18, 'Andreia Sadi', 'Rua XV Novembro, 500', 'Orlândia', 'SP', '14600000', '16-3826-2577', 32565500000, '13.654.898-9', 'andrea@yahoo.com.br', '09/08/1995', '4'),
	(19, 'Luana Andrade', 'Avenida 10, 1100', 'Orlândia', 'SP', '14600000', '16-6526-2578', 12365500000, '94.654.654-9', 'luana@yahoo.com.br', '06/05/1993', '2'),
	(20, 'Cíntia Meireles', 'Avenida 1, 650', 'Orlândia', 'SP', '14600000', '16-3826-2579', 12395500000, '23.354.365-5', 'cintia@yahoo.com.br', '23/05/1885', '6');
/*!40000 ALTER TABLE `tabfuncionários` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_rodrigomilenauniversidade0916.tabprofessores
CREATE TABLE IF NOT EXISTS `tabprofessores` (
  `codigoprof` int(11) NOT NULL AUTO_INCREMENT,
  `Nomepro` varchar(40) DEFAULT NULL,
  `Enderecopro` varchar(30) DEFAULT NULL,
  `Cidadepro` varchar(30) DEFAULT NULL,
  `Estadopro` varchar(2) DEFAULT NULL,
  `Ceppro` varchar(10) DEFAULT NULL,
  `Telefonepro` varchar(15) DEFAULT NULL,
  `Cpfpro` float DEFAULT NULL,
  `Rgpro` varchar(12) DEFAULT NULL,
  `Emailpro` varchar(50) DEFAULT NULL,
  `dnascimentopro` date DEFAULT NULL,
  `areapro` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`codigoprof`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_rodrigomilenauniversidade0916.tabprofessores: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `tabprofessores` DISABLE KEYS */;
REPLACE INTO `tabprofessores` (`codigoprof`, `Nomepro`, `Enderecopro`, `Cidadepro`, `Estadopro`, `Ceppro`, `Telefonepro`, `Cpfpro`, `Rgpro`, `Emailpro`, `dnascimentopro`, `areapro`) VALUES
	(1, 'Caetano Veloso', 'Rua 10, 100', 'Orlândia', 'SP', '15800000', '16-3826-2560', 12365500000, '85.654.852-2', 'Caetano.veloso@Yahoo.com.br', '1978-04-15', 'Informática'),
	(2, 'Renato Russo', 'Rua 10, 300', 'Orlândia', 'SP', '16800000', '16-3826-2561', 12365500000, '23.999.654-8', 'renato.russo@yahoo.com.br', '1975-02-09', 'Gestão'),
	(3, 'Cazuza de Souza', 'Rua 9 de julho, 500', 'Ribeirão Preto', 'SP', '12345678', '16-3826-3065', 1239880000, '57.654.654-8', 'cazuza.souza@yahoo.com.br', '1985-10-01', 'Ciências Exatas'),
	(4, 'Paulo Ricardo', 'Rua 15 de novembro, 600', 'Ribeirão Preto', 'SP', '14620000', '16-3726-2563', 12365500000, '23.654.654-8', 'paulo.ricardo@yahoo.com.br', '1985-02-17', 'Ciências Biológ'),
	(5, 'Zelia Duncan', 'Rua 18, 200', 'Barretos', 'SP', '12345678', '16-3826-5036', 65465500000, '12.654.898-8', 'zelia.duncan@yahoo.com.br', '1990-07-27', 'Ciências Humana'),
	(6, 'Renato Teixeira', 'Avenida 10, 1000', 'Orlândia', 'SP', '14620000', '16-3926-3030', 12365500000, '94.654.654-9', 'renato.teixeira@yahoo.com.br', '1990-07-27', 'Gestão'),
	(7, 'Leonardo Oliveira', 'Avenida João Fiusa, 500', 'Ribeirão Preto', 'SP', '12345678', '16-2626-3516', 65465500000, '23.654.654-9', 'leonardo.oliveira@yahoo.com.br', '1988-03-17', 'Ciências Biológ'),
	(8, 'Sérgio Reis', 'Avenida Independência, 600', 'Ribeirão Preto', 'SP', '15800000', '16-3826-2567', 12365500000, '85.654.852-9', 'sergio.reis@yahoo.com.br', '1977-09-19', 'Ciências Humana'),
	(9, 'Daniel da Silva', 'Rua Presidente Vargas, 1000', 'São Paulo', 'SP', '16800000', '16-3826-2568', 12400000000, '13.654.654-7', 'daniel.silva@yahoo.com.br', '1979-12-02', 'Informática'),
	(10, 'Roberto Carlos', 'Rua Sérgio Ribeiro, 300', 'Rio de Janeiro', 'RJ', '14670000', '16-3926-3620', 35765500000, '12.654.654-7', 'roberto.carlos@yahoo.com.br', '1979-04-25', 'Ciências Exatas'),
	(11, 'Chico Buarque de Holanda', 'Rua 20, 450', 'Guaíra', 'SP', '14620000', '16-6555-3630', 12365500000, '13.987.654-0', 'chico.buarque@yahoo.com.br', '1978-12-02', 'Informática'),
	(12, 'Erasmo Carlos', 'Rua Marcanã, 700', 'Rio de Janeiro', 'RJ', '14670000', '16-3826-2571', 12365500000, '12.654.654-8', 'erasmo.carlos@yahoo.com.br', '1978-02-02', 'Ciências Biológ'),
	(13, 'João Gilberto', 'Rua Presidente Dutra, 600', 'Rio de Janeiro', 'RJ', '15800000', '16-6826-2572', 95465500000, '64.654.654-8', 'joao.gilberto@yahoo.com.br', '1975-11-02', 'Gestão'),
	(14, 'Tom Jobim', 'Rua Tom Jobim, 200', 'Rio de Janeiro', 'RJ', '16800000', '16-3826-2573', 12365500000, '23.654.654-8', 'tom.jobim@yahoo.com.br', '1976-04-02', 'Ciências Humana'),
	(15, 'Pitty Barbosa', 'Avenida Rebouças, 400', 'São Paulo', 'SP', '12345678', '16-3025-6674', 12365400000, '64.654.878-8', 'pitty.barbosa@yahoo.com.br', '1979-12-06', 'Gestão'),
	(16, 'Beto Barbosa', 'Avenida Tiradentes, 300', 'São Paulo', 'SP', '14620000', '16-3826-2575', 12375400000, '37.654.654-7', 'beto.barbosa@yahoo.com.br', '1979-06-02', 'Informática'),
	(17, 'Anita Roberta Souza', 'Rua Major Nicácio, 500', 'Franca', 'SP', '14670000', '16-6826-2536', 85365500000, '13.654.654-8', 'anita.souza@yahoo.com.br', '1986-02-18', 'Ciências Humana'),
	(18, 'Marcelo Costa', 'Rua das Euviras, 300', 'Belo Horizonte', 'MG', '12345678', '16-3826-2577', 32565500000, '13.654.898-9', 'marcelo.costa@yahoo.com.br', '1979-12-19', 'Gestão'),
	(19, 'João Manoel Silva', 'Rua Augusta, 400', 'São Paulo', 'SP', '14620000', '16-6526-2578', 12365500000, '94.654.654-9', 'joao.silva@yahoo.com.br', '1979-05-07', 'Ciências Exatas'),
	(20, 'Carlos Henrique Oliveira', 'Avenida Costa e Silva, 600', 'Ribeirão Preto', 'SP', '12345678', '16-3826-2579', 12395500000, '23.354.365-5', 'carlos.oliveira@yahoo.com.br', '1977-12-02', 'Informática');
/*!40000 ALTER TABLE `tabprofessores` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_rodrigomilenauniversidade0916.tabusuarios
CREATE TABLE IF NOT EXISTS `tabusuarios` (
  `codigousu` int(11) NOT NULL AUTO_INCREMENT,
  `Nomeusu` varchar(20) DEFAULT NULL,
  `Senhausu` varchar(6) DEFAULT NULL,
  `Nivelusu` float DEFAULT NULL,
  PRIMARY KEY (`codigousu`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_rodrigomilenauniversidade0916.tabusuarios: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `tabusuarios` DISABLE KEYS */;
REPLACE INTO `tabusuarios` (`codigousu`, `Nomeusu`, `Senhausu`, `Nivelusu`) VALUES
	(1, 'Maria', '123456', 1),
	(2, 'João', '123457', 2),
	(3, 'José', '123458', 3),
	(4, 'Carlos', '123459', 10),
	(5, 'Sônia', '123460', 6),
	(6, 'Andrea', '123461', 7),
	(7, 'Alessandra', '123462', 8),
	(8, 'Antonia', '123463', 9),
	(9, 'Karina', '123464', 10),
	(10, 'Manoela', '123465', 9),
	(11, 'Sérgio', '123466', 8),
	(12, 'Silvio', '123467', 7),
	(13, 'Alexandre', '123468', 6),
	(14, 'Rafael', '123469', 5),
	(15, 'Gabriel', '123470', 4),
	(16, 'Daniel', '123471', 3),
	(17, 'Aline', '123472', 2),
	(18, 'Alan', '123473', 1),
	(19, 'Vitor', '123474', 5),
	(20, 'Mário', '123475', 2);
/*!40000 ALTER TABLE `tabusuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
