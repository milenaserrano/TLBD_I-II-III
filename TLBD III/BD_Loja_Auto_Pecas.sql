-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.37-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para bd_auto_pecas
DROP DATABASE IF EXISTS `bd_auto_pecas`;
CREATE DATABASE IF NOT EXISTS `bd_auto_pecas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_auto_pecas`;


-- Copiando estrutura para procedure bd_auto_pecas. StrProc_Custo_Estoque
DROP PROCEDURE IF EXISTS ` StrProc_Custo_Estoque`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE ` StrProc_Custo_Estoque`()
BEGIN

 select format(sum(esto_atua *       cust_unit),2) as   Custo_Estoque from tab_peca;
  
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Estoque_Atual_Menor
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Estoque_Atual_Menor`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Estoque_Atual_Menor`(IN `Estoque_Abaixo` INT)
BEGIN
	select tab_peca.codi_peca, tab_peca.desc_peca, tab_peca.cust_unit, tab_peca.vend_unit, tab_peca.esto_atua from tab_peca where tab_peca.esto_atua < Estoque_Abaixo;

END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Itens_Venda_Cliente
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Itens_Venda_Cliente`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Itens_Venda_Cliente`(IN `codigocliente` INT)
BEGIN
 select tab_iven.codi_vend, tab_peca.desc_peca, tab_iven.quan_peca, tab_iven.valo_unit, tab_iven.quan_peca * tab_iven.valo_unit as total_item from tab_iven inner join tab_peca on tab_iven.codi_peca = tab_peca.codi_peca inner join tab_vend on tab_vend.codi_vend = tab_iven.codi_vend where tab_vend.codi_clie = codigocliente; 
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Itens_Venda_Pedido
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Itens_Venda_Pedido`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Itens_Venda_Pedido`(IN `codigo_venda` INT)
BEGIN
	select codi_peca, quan_peca, valo_unit
	from tab_iven where codi_vend = codigo_venda;
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Itens_Venda_Pedido_2
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Itens_Venda_Pedido_2`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Itens_Venda_Pedido_2`(IN `codigo_venda` INT)
BEGIN
	select tab_iven.codi_peca, tab_peca.desc_peca, tab_iven.quan_peca, tab_iven.valo_unit, tab_iven.quan_peca * tab_iven.valo_unit as total_item from tab_peca inner join tab_iven on tab_peca.codi_peca = tab_iven.codi_peca where tab_iven.codi_vend = codigo_venda;
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Itens_Vendidos_Periodo
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Itens_Vendidos_Periodo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Itens_Vendidos_Periodo`(IN `Data_Inicial` DATE, IN `Data_Final` DATE)
BEGIN
	select tab_iven.codi_vend, tab_iven.codi_peca, tab_peca.desc_peca, tab_iven.quan_peca, tab_iven.valo_unit, tab_iven.quan_peca * tab_iven.valo_unit as Total_Item from tab_iven inner join tab_peca on tab_iven.codi_peca = tab_peca.codi_peca inner join tab_vend on tab_iven.codi_vend = tab_vend.codi_vend where tab_vend.data_vend between Data_Inicial and Data_Final;

END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Consulta_Lucro_Percentual
DROP PROCEDURE IF EXISTS `StrProc_Consulta_Lucro_Percentual`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Consulta_Lucro_Percentual`(IN `percentual_ganho` FLOAT)
BEGIN
	select tab_peca.codi_peca, tab_peca.desc_peca, tab_peca.cust_unit, tab_peca.vend_unit, (tab_peca.vend_unit / tab_peca.cust_unit - 1) * 100 from tab_peca where  (tab_peca.vend_unit / tab_peca.cust_unit - 1) * 100 > percentual_ganho ;
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.StrProc_Conta_Itens
DROP PROCEDURE IF EXISTS `StrProc_Conta_Itens`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `StrProc_Conta_Itens`()
BEGIN
 select count(*) as total_item from tab_peca;
END//
DELIMITER ;


-- Copiando estrutura para procedure bd_auto_pecas.str_Proc_ranking_clientes
DROP PROCEDURE IF EXISTS `str_Proc_ranking_clientes`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `str_Proc_ranking_clientes`(IN `data_inicial` DATE, IN `data_final` DATE)
BEGIN
  select tab_clie.nome_clie, sum(tab_iven.valo_unit * tab_iven.quan_peca) from tab_iven inner join tab_vend on tab_iven.codi_vend = tab_vend.codi_vend inner join tab_clie on tab_vend.codi_clie = tab_clie.codi_clie where tab_vend.data_vend between data_inicial and data_final group by tab_clie.nome_clie order by sum(tab_iven.valo_unit * tab_iven.quan_peca) desc;
END//
DELIMITER ;


-- Copiando estrutura para tabela bd_auto_pecas.tab_clie
DROP TABLE IF EXISTS `tab_clie`;
CREATE TABLE IF NOT EXISTS `tab_clie` (
  `codi_clie` int(11) NOT NULL AUTO_INCREMENT,
  `nome_clie` varchar(50) NOT NULL,
  `ende_clie` varchar(40) NOT NULL,
  `bair_clie` varchar(30) NOT NULL,
  `cepo_clie` varchar(9) DEFAULT NULL,
  `cida_clie` varchar(30) DEFAULT NULL,
  `esta_clie` char(2) DEFAULT NULL,
  `tel1_clie` varchar(14) DEFAULT NULL,
  `tel2_clie` varchar(14) DEFAULT NULL,
  `tipo_clie` char(1) DEFAULT NULL,
  `doc1_clie` varchar(18) DEFAULT NULL,
  `doc2_clie` varchar(15) DEFAULT NULL,
  `stat_clie` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_clie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_clie: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_clie` DISABLE KEYS */;
REPLACE INTO `tab_clie` (`codi_clie`, `nome_clie`, `ende_clie`, `bair_clie`, `cepo_clie`, `cida_clie`, `esta_clie`, `tel1_clie`, `tel2_clie`, `tipo_clie`, `doc1_clie`, `doc2_clie`, `stat_clie`) VALUES
	(1, 'Morlan - Metalúrgica Orlândia', 'Av. Marginal Esquerda nº 1000', 'Centro', '14620-000', 'Orlândia', 'SP', '16 3826-1000', '16 3826-7070', 'J', '11.222.222/0001-18', '123.456.789.111', 'L'),
	(2, 'Sérgio Costa', 'Av. X nº 777', 'Jd Boa Vista', '14620-000', 'Orlândia', 'SP', '16 3726-7070', '16 99234-6855', 'F', '116.548.878-88', '13.444.270-8', 'L'),
	(3, 'Raul Seixas', 'Av. Psicodélica', 'Jd Brisante', '14660-000', 'Sales Oliveira', 'SP', '16 3852-1212', '16 3852-1212', 'F', '116.111.232-78', '21.111.878-8', 'L');
/*!40000 ALTER TABLE `tab_clie` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_comp
DROP TABLE IF EXISTS `tab_comp`;
CREATE TABLE IF NOT EXISTS `tab_comp` (
  `codi_comp` int(11) NOT NULL AUTO_INCREMENT,
  `data_comp` date DEFAULT NULL,
  `codi_forn` int(11) DEFAULT NULL,
  `stat_comp` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_comp`),
  KEY `fk_codi_forn` (`codi_forn`),
  CONSTRAINT `fk_codi_forn` FOREIGN KEY (`codi_forn`) REFERENCES `tab_forn` (`codi_forn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_comp: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_comp` DISABLE KEYS */;
REPLACE INTO `tab_comp` (`codi_comp`, `data_comp`, `codi_forn`, `stat_comp`) VALUES
	(1, '2019-05-10', 1, 'F'),
	(2, '2019-03-07', 2, 'F'),
	(3, '2019-02-15', 3, 'F');
/*!40000 ALTER TABLE `tab_comp` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_cpag
DROP TABLE IF EXISTS `tab_cpag`;
CREATE TABLE IF NOT EXISTS `tab_cpag` (
  `codi_lanc` int(11) NOT NULL AUTO_INCREMENT,
  `data_lanc` date DEFAULT NULL,
  `codi_forn` int(11) DEFAULT NULL,
  `codi_traf` int(11) DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `valo_lanc` float DEFAULT NULL,
  `data_paga` date DEFAULT NULL,
  `valo_paga` float DEFAULT NULL,
  PRIMARY KEY (`codi_lanc`),
  KEY `fk_codi_forn1` (`codi_forn`),
  KEY `fk_codi_traf1` (`codi_traf`),
  CONSTRAINT `fk_codi_forn1` FOREIGN KEY (`codi_forn`) REFERENCES `tab_forn` (`codi_forn`),
  CONSTRAINT `fk_codi_traf1` FOREIGN KEY (`codi_traf`) REFERENCES `tab_traf` (`codi_traf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_cpag: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_cpag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_cpag` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_crec
DROP TABLE IF EXISTS `tab_crec`;
CREATE TABLE IF NOT EXISTS `tab_crec` (
  `codi_lanc` int(11) NOT NULL AUTO_INCREMENT,
  `data_lanc` date DEFAULT NULL,
  `codi_clie` int(11) DEFAULT NULL,
  `codi_traf` int(11) DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `valo_lanc` float DEFAULT NULL,
  `data_rece` date DEFAULT NULL,
  `valo_rece` float DEFAULT NULL,
  PRIMARY KEY (`codi_lanc`),
  KEY `fk_codi_traf2` (`codi_traf`),
  KEY `fk_codi_clie` (`codi_clie`),
  CONSTRAINT `fk_codi_clie` FOREIGN KEY (`codi_clie`) REFERENCES `tab_clie` (`codi_clie`),
  CONSTRAINT `fk_codi_traf2` FOREIGN KEY (`codi_traf`) REFERENCES `tab_traf` (`codi_traf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_crec: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_crec` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_crec` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_forn
DROP TABLE IF EXISTS `tab_forn`;
CREATE TABLE IF NOT EXISTS `tab_forn` (
  `codi_forn` int(11) NOT NULL AUTO_INCREMENT,
  `nome_forn` varchar(50) NOT NULL,
  `ende_forn` varchar(40) NOT NULL,
  `bair_forn` varchar(30) NOT NULL,
  `cepo_forn` varchar(9) DEFAULT NULL,
  `cida_forn` varchar(30) DEFAULT NULL,
  `esta_forn` char(2) DEFAULT NULL,
  `tel1_forn` varchar(14) DEFAULT NULL,
  `tel2_forn` varchar(14) DEFAULT NULL,
  `tipo_forn` char(1) DEFAULT NULL,
  `doc1_forn` varchar(18) DEFAULT NULL,
  `doc2_forn` varchar(15) DEFAULT NULL,
  `stat_forn` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_forn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_forn: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_forn` DISABLE KEYS */;
REPLACE INTO `tab_forn` (`codi_forn`, `nome_forn`, `ende_forn`, `bair_forn`, `cepo_forn`, `cida_forn`, `esta_forn`, `tel1_forn`, `tel2_forn`, `tipo_forn`, `doc1_forn`, `doc2_forn`, `stat_forn`) VALUES
	(1, 'Mobil Oil Inc', 'Av. das Américas', 'Jd Beirute', '18750-123', 'São Paulo', 'SP', '11 3113-1234', '11 99888-1234', 'J', '111.222.333/0001-1', '131.444.270.123', 'L'),
	(2, 'Cofap Amortecedores', 'Rua dos Quebra Mola, 789', 'Jd Pula Pula', '25001-300', 'Porto Feliz', 'SP', '17 3631-7071', '16 98189-1255', 'J', '53.311.361/0001-15', '131.444.270.878', 'L'),
	(3, 'SBS Peças', 'Av. Francisco Junqueira', 'Centro', '14500-000', 'Ribeirão Preto', 'SP', '16 3633-1878', '16 3637-7071', 'J', '116.111.232/0001-7', '212.787.878.747', 'B');
/*!40000 ALTER TABLE `tab_forn` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_grup
DROP TABLE IF EXISTS `tab_grup`;
CREATE TABLE IF NOT EXISTS `tab_grup` (
  `codi_grup` int(11) NOT NULL AUTO_INCREMENT,
  `desc_grup` varchar(15) NOT NULL,
  PRIMARY KEY (`codi_grup`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_grup: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_grup` DISABLE KEYS */;
REPLACE INTO `tab_grup` (`codi_grup`, `desc_grup`) VALUES
	(1, 'Original'),
	(2, 'Paralela'),
	(3, 'Acessórios'),
	(4, 'Pneus e Câmaras'),
	(5, 'Lubrificantes'),
	(6, 'Vestuario');
/*!40000 ALTER TABLE `tab_grup` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_icom
DROP TABLE IF EXISTS `tab_icom`;
CREATE TABLE IF NOT EXISTS `tab_icom` (
  `codi_comp` int(11) DEFAULT NULL,
  `codi_peca` int(11) DEFAULT NULL,
  `quan_peca` float DEFAULT NULL,
  `valo_unit` float DEFAULT NULL,
  KEY `fk_codi_comp1` (`codi_comp`),
  KEY `fk_codi_pec1` (`codi_peca`),
  CONSTRAINT `fk_codi_comp1` FOREIGN KEY (`codi_comp`) REFERENCES `tab_comp` (`codi_comp`),
  CONSTRAINT `fk_codi_pec1` FOREIGN KEY (`codi_peca`) REFERENCES `tab_peca` (`codi_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_icom: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_icom` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_icom` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_iven
DROP TABLE IF EXISTS `tab_iven`;
CREATE TABLE IF NOT EXISTS `tab_iven` (
  `codi_vend` int(11) DEFAULT NULL,
  `codi_peca` int(11) DEFAULT NULL,
  `quan_peca` float DEFAULT NULL,
  `valo_unit` float DEFAULT NULL,
  KEY `fk_codi_pec2` (`codi_peca`),
  KEY `fk_codi_vend` (`codi_vend`),
  CONSTRAINT `fk_codi_pec2` FOREIGN KEY (`codi_peca`) REFERENCES `tab_peca` (`codi_peca`),
  CONSTRAINT `fk_codi_vend` FOREIGN KEY (`codi_vend`) REFERENCES `tab_vend` (`codi_vend`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_iven: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_iven` DISABLE KEYS */;
REPLACE INTO `tab_iven` (`codi_vend`, `codi_peca`, `quan_peca`, `valo_unit`) VALUES
	(1, 10, 3, 50),
	(2, 18, 1, 73.5),
	(2, 9, 2, 145),
	(2, 15, 4, 25),
	(3, 3, 1, 36.25),
	(1, 19, 2, 21.3);
/*!40000 ALTER TABLE `tab_iven` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_move
DROP TABLE IF EXISTS `tab_move`;
CREATE TABLE IF NOT EXISTS `tab_move` (
  `data_move` date DEFAULT NULL,
  `codi_trae` int(11) DEFAULT NULL,
  `codi_peca` int(11) DEFAULT NULL,
  `quan_prod` float DEFAULT NULL,
  `valo_unit` float DEFAULT NULL,
  `docu_move` varchar(10) DEFAULT NULL,
  KEY `fk_codi_trae1` (`codi_trae`),
  KEY `fk_codi_peca1` (`codi_peca`),
  CONSTRAINT `fk_codi_peca1` FOREIGN KEY (`codi_peca`) REFERENCES `tab_peca` (`codi_peca`),
  CONSTRAINT `fk_codi_trae1` FOREIGN KEY (`codi_trae`) REFERENCES `tab_trae` (`codi_trae`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_move: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_move` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_move` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_peca
DROP TABLE IF EXISTS `tab_peca`;
CREATE TABLE IF NOT EXISTS `tab_peca` (
  `codi_peca` int(11) NOT NULL AUTO_INCREMENT,
  `desc_peca` varchar(50) NOT NULL,
  `unid_medi` char(2) DEFAULT NULL,
  `cust_unit` float DEFAULT NULL,
  `vend_unit` float DEFAULT NULL,
  `esto_atua` float DEFAULT NULL,
  `esto_mini` float DEFAULT NULL,
  `esto_maxi` float DEFAULT NULL,
  `situ_peca` char(1) DEFAULT NULL,
  `codi_grup` int(11) DEFAULT NULL,
  PRIMARY KEY (`codi_peca`),
  KEY `fk_unid_medi` (`unid_medi`),
  KEY `fk_codigo_grupo` (`codi_grup`),
  CONSTRAINT `fk_codigo_grupo` FOREIGN KEY (`codi_grup`) REFERENCES `tab_grup` (`codi_grup`),
  CONSTRAINT `fk_unid_medi` FOREIGN KEY (`unid_medi`) REFERENCES `tab_unid` (`unid_medi`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_peca: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_peca` DISABLE KEYS */;
REPLACE INTO `tab_peca` (`codi_peca`, `desc_peca`, `unid_medi`, `cust_unit`, `vend_unit`, `esto_atua`, `esto_mini`, `esto_maxi`, `situ_peca`, `codi_grup`) VALUES
	(2, 'Vela de Ignicao 125/150', 'PC', 13.5, 21.75, 10, 15, 30, 'L', 1),
	(3, 'Cabo de Freio 125', 'PC', 18, 36.25, 2, 5, 7, 'L', 1),
	(4, 'Manopla', 'CJ', 10, 20, 0, 2, 4, 'L', 1),
	(5, 'Amortecedor Tras. XRE', 'CJ', 300, 575.55, 1, 0, 1, 'L', 1),
	(6, 'Bateria 12V', 'UN', 93, 175, 1, 2, 3, 'L', 2),
	(7, 'Lâmpada do farol 6V', 'UN', 7, 15, 25, 30, 40, 'L', 2),
	(8, 'Pastilha de Freio CBR', 'CJ', 30, 55.4, 2, 5, 10, 'L', 2),
	(9, 'Pneu 90x90x18', 'UN', 90, 145, 1, 2, 5, 'L', 4),
	(10, 'Câmara de Ar Aro 21', 'UN', 25, 50, 10, 5, 10, 'L', 4),
	(11, 'Pneu 275 x 21 Diant', 'UN', 80, 133.5, 1, 2, 3, 'L', 4),
	(12, 'Mata Cachorro 300', 'UN', 20, 45, 1, 1, 2, 'L', 3),
	(13, 'Elástico Simples', 'UN', 2, 5, 10, 20, 40, 'L', 3),
	(14, 'Elástico Aranha', 'UN', 5, 8, 5, 10, 20, 'L', 3),
	(15, 'Oleo Mobil 20w50', 'LT', 13, 25, 15, 30, 50, 'L', 5),
	(16, 'Óleo de Freio', 'LT', 5, 10, 5, 10, 15, 'L', 5),
	(17, 'Desingripante White Lub', 'UN', 10, 20, 1, 5, 10, 'L', 5),
	(18, 'Capa Chuva', 'UN', 40, 73.5, 1, 1, 2, 'L', 6),
	(19, 'Balaclava', 'UN', 7.8, 21.3, 1, 5, 10, 'L', 6),
	(20, 'Bota Couro', 'CJ', 150, 247.99, 1, 1, 2, 'L', 6);
/*!40000 ALTER TABLE `tab_peca` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_trae
DROP TABLE IF EXISTS `tab_trae`;
CREATE TABLE IF NOT EXISTS `tab_trae` (
  `codi_trae` int(11) NOT NULL AUTO_INCREMENT,
  `tran_esto` varchar(30) NOT NULL,
  `tipo_tran` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_trae`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_trae: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_trae` DISABLE KEYS */;
REPLACE INTO `tab_trae` (`codi_trae`, `tran_esto`, `tipo_tran`) VALUES
	(1, 'Sai-Venda', 'S'),
	(2, 'Entra-Compra', 'E'),
	(3, 'Entra-Ajuste Balanço', 'E'),
	(4, 'Sai-Ajuste Balanço', 'S'),
	(5, 'Sai-Perda', 'S'),
	(6, 'Entra-Devolução', 'E'),
	(7, 'Sai-Devolução', 'S'),
	(8, 'Sai-Doação', 'S');
/*!40000 ALTER TABLE `tab_trae` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_traf
DROP TABLE IF EXISTS `tab_traf`;
CREATE TABLE IF NOT EXISTS `tab_traf` (
  `codi_traf` int(11) NOT NULL AUTO_INCREMENT,
  `tran_fina` varchar(30) NOT NULL,
  `tipo_traf` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_traf`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_traf: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_traf` DISABLE KEYS */;
REPLACE INTO `tab_traf` (`codi_traf`, `tran_fina`, `tipo_traf`) VALUES
	(1, 'Entra-Venda', 'R'),
	(2, 'Sai-Compra', 'D');
/*!40000 ALTER TABLE `tab_traf` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_unid
DROP TABLE IF EXISTS `tab_unid`;
CREATE TABLE IF NOT EXISTS `tab_unid` (
  `unid_medi` char(2) NOT NULL,
  PRIMARY KEY (`unid_medi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_unid: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_unid` DISABLE KEYS */;
REPLACE INTO `tab_unid` (`unid_medi`) VALUES
	('CJ'),
	('JG'),
	('KT'),
	('LT'),
	('MT'),
	('PC'),
	('UN');
/*!40000 ALTER TABLE `tab_unid` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_usua
DROP TABLE IF EXISTS `tab_usua`;
CREATE TABLE IF NOT EXISTS `tab_usua` (
  `logi_usua` varchar(20) NOT NULL,
  `nome_usua` varchar(50) NOT NULL,
  `senh_usua` varchar(15) NOT NULL,
  `tipo_usua` char(1) NOT NULL,
  `situ_usua` char(1) NOT NULL,
  PRIMARY KEY (`logi_usua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_usua: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_usua` DISABLE KEYS */;
REPLACE INTO `tab_usua` (`logi_usua`, `nome_usua`, `senh_usua`, `tipo_usua`, `situ_usua`) VALUES
	('Lucas', 'Lucas Sousa', '654321', 'R', 'L'),
	('Luzia', 'Luzia Santos', 'ABC123', 'T', 'B'),
	('Maria', 'Maria Silva', '123456', 'T', 'L');
/*!40000 ALTER TABLE `tab_usua` ENABLE KEYS */;


-- Copiando estrutura para tabela bd_auto_pecas.tab_vend
DROP TABLE IF EXISTS `tab_vend`;
CREATE TABLE IF NOT EXISTS `tab_vend` (
  `codi_vend` int(11) NOT NULL AUTO_INCREMENT,
  `data_vend` date DEFAULT NULL,
  `codi_clie` int(11) DEFAULT NULL,
  `situ_vend` char(1) DEFAULT NULL,
  PRIMARY KEY (`codi_vend`),
  KEY `fk_codi_clie2` (`codi_clie`),
  CONSTRAINT `fk_codi_clie2` FOREIGN KEY (`codi_clie`) REFERENCES `tab_clie` (`codi_clie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_auto_pecas.tab_vend: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_vend` DISABLE KEYS */;
REPLACE INTO `tab_vend` (`codi_vend`, `data_vend`, `codi_clie`, `situ_vend`) VALUES
	(1, '2019-08-13', 1, 'F'),
	(2, '2019-08-08', 2, 'F'),
	(3, '2019-07-31', 2, 'F');
/*!40000 ALTER TABLE `tab_vend` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
