-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 10/09/2021 às 12:10
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `db_CRUD`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comissoes`
--

CREATE TABLE IF NOT EXISTS `comissoes` (
  `idcom` int(11) NOT NULL AUTO_INCREMENT,
  `tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contratos_idcont` int(11) NOT NULL,
  `vigencia_ini` date NOT NULL,
  `vigencia_fim` date NOT NULL,
  `portaria_num` int(11) NOT NULL,
  `portaria_data` date NOT NULL,
  `bol_num` int(11) NOT NULL,
  `bol_data` date NOT NULL,
  `obs` varchar(200) NOT NULL,
  `status` enum('vigente','finalizada','revogada') NOT NULL,
  PRIMARY KEY (`idcom`),
  KEY `fk_comissoes_contratos1_idx` (`contratos_idcont`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Fazendo dump de dados para tabela `comissoes`
--

INSERT INTO `comissoes` (`idcom`, `tipocom`, `contratos_idcont`, `vigencia_ini`, `vigencia_fim`, `portaria_num`, `portaria_data`, `bol_num`, `bol_data`, `obs`, `status`) VALUES
(1, 'FISCALIZAÇÃO', 17, '2021-03-18', '2022-03-17', 49, '2021-05-17', 92, '2021-05-20', '', 'vigente'),
(2, 'FISCALIZAÇÃO', 7, '2021-03-18', '2022-03-17', 36, '2021-03-18', 70, '2021-04-19', '', 'vigente'),
(3, 'FISCALIZAÇÃO', 5, '2021-03-01', '2022-02-28', 32, '2021-03-11', 48, '2021-03-15', '', 'vigente'),
(4, 'FISCALIZAÇÃO', 26, '2020-09-01', '2021-09-01', 67, '2020-01-09', 160, '2020-09-08', '', 'finalizada'),
(5, 'FISCALIZAÇÃO', 15, '2021-03-18', '2022-03-17', 41, '2021-03-18', 70, '2021-04-19', '', 'vigente'),
(6, 'FISCALIZAÇÃO', 18, '2020-12-17', '2021-12-16', 116, '2020-12-17', 232, '2020-12-22', '', 'vigente'),
(7, 'FISCALIZAÇÃO', 16, '2021-07-12', '2022-07-11', 95, '2021-07-05', 130, '2021-07-16', '', 'vigente'),
(8, 'FISCALIZAÇÃO', 20, '2021-07-12', '2022-07-11', 93, '2021-07-05', 130, '2021-07-16', '', 'vigente'),
(9, 'FISCALIZAÇÃO', 22, '2021-07-12', '2022-07-11', 96, '2021-07-05', 130, '2021-07-16', '', 'vigente'),
(10, 'FISCALIZAÇÃO', 24, '2021-07-12', '2022-07-11', 97, '2021-07-05', 130, '2021-07-16', '', 'vigente'),
(11, 'FISCALIZAÇÃO', 14, '2021-03-08', '2022-03-07', 29, '2021-03-02', 42, '2021-03-05', '', 'vigente'),
(12, 'FISCALIZAÇÃO', 19, '2021-07-04', '2022-07-03', 99, '2021-07-01', 130, '2021-07-16', '', 'vigente'),
(13, 'FISCALIZAÇÃO', 11, '2021-07-04', '2022-07-03', 98, '2021-07-01', 130, '2021-07-16', '', 'vigente'),
(14, 'FISCALIZAÇÃO', 23, '2020-09-02', '2021-09-02', 75, '2020-09-17', 171, '2020-09-23', '', 'vigente'),
(15, 'FISCALIZAÇÃO', 9, '2021-02-24', '2022-02-23', 26, '2021-02-24', 42, '2021-03-05', '', 'vigente'),
(16, 'FISCALIZAÇÃO', 21, '2021-02-24', '2022-02-23', 42, '2021-04-13', 70, '2021-04-19', '', 'vigente'),
(17, 'FISCALIZAÇÃO', 4, '2021-02-24', '2022-02-23', 27, '2021-02-24', 42, '2021-03-05', '', 'vigente'),
(18, 'FISCALIZAÇÃO', 10, '2021-02-24', '2022-02-23', 43, '2021-04-13', 70, '2021-04-19', '', 'vigente'),
(19, 'FISCALIZAÇÃO', 25, '2021-07-02', '2022-07-01', 89, '2021-06-30', 130, '2021-07-16', '', 'vigente'),
(20, 'FISCALIZAÇÃO', 8, '2021-06-02', '2022-06-01', 81, '2021-06-01', 113, '2021-06-22', '', 'vigente'),
(21, 'FISCALIZAÇÃO', 6, '2021-07-12', '2022-07-11', 94, '2021-07-05', 130, '2021-07-16', '', 'vigente'),
(22, 'FISCALIZAÇÃO', 27, '2021-02-01', '2021-07-31', 12, '2021-01-12', 26, '2021-02-09', '', 'vigente'),
(23, 'FISCALIZAÇÃO', 12, '2021-05-03', '2022-05-02', 82, '2021-05-03', 113, '2021-06-22', '', 'vigente'),
(24, 'FISCALIZAÇÃO', 13, '2021-05-03', '2022-05-02', 73, '2021-05-03', 111, '2021-06-18', '', 'vigente'),
(28, 'RECEBIMENTO', 18, '2021-07-12', '2022-07-12', 100, '2021-07-07', 130, '2021-07-16', '', 'vigente'),
(29, 'RECEBIMENTO', 16, '2020-12-17', '2021-12-16', 116, '2020-12-17', 232, '2020-12-22', '', 'vigente'),
(91, 'RECEBIMENTO', 14, '2021-07-12', '2022-07-11', 102, '2021-07-07', 130, '2021-07-16', '', 'vigente'),
(92, 'RECEBIMENTO', 22, '2021-07-11', '2022-07-12', 106, '2021-07-09', 135, '2021-07-26', '', 'vigente'),
(93, 'RECEBIMENTO', 19, '2021-01-04', '2022-01-04', 10, '2021-01-04', 13, '2021-01-21', '', 'vigente'),
(94, 'RECEBIMENTO', 11, '2021-01-04', '2022-01-04', 8, '2021-01-04', 13, '2021-01-21', '', 'vigente'),
(95, 'RECEBIMENTO', 24, '2021-07-12', '2022-07-11', 103, '2021-07-07', 130, '2021-07-16', '', 'vigente'),
(97, 'RECEBIMENTO', 20, '2021-05-29', '2022-05-28', 54, '2021-05-28', 102, '2021-06-07', '', 'vigente'),
(99, 'RECEBIMENTO', 9, '2021-07-14', '2022-07-13', 105, '2021-06-12', 135, '2021-07-26', '', 'vigente'),
(100, 'RECEBIMENTO', 21, '2021-06-10', '2022-06-09', 86, '2021-06-10', 118, '2021-06-29', '', 'vigente'),
(101, 'RECEBIMENTO', 4, '2021-07-14', '2022-07-13', 108, '2021-07-12', 137, '2021-07-28', '', 'vigente'),
(102, 'RECEBIMENTO', 10, '2021-06-10', '2022-06-09', 118, '2021-06-29', 118, '2021-06-29', '', 'vigente'),
(103, 'RECEBIMENTO', 8, '2021-06-02', '2022-06-01', 80, '2001-06-21', 113, '2021-06-22', '', 'vigente'),
(104, 'RECEBIMENTO', 6, '2021-05-20', '2022-05-19', 51, '2020-05-21', 92, '2021-05-20', '', 'vigente'),
(105, 'RECEBIMENTO', 27, '2021-02-01', '2021-07-21', 1, '2021-01-21', 26, '2021-02-09', 'obras e sv de engenharia – recebimento definitivo', 'vigente'),
(106, 'RECEBIMENTO', 12, '2021-05-03', '2022-05-02', 83, '2021-05-03', 113, '2021-06-22', 'Recebimento definitivo', 'vigente'),
(107, 'RECEBIMENTO', 13, '2021-05-03', '2022-05-02', 76, '2021-05-03', 111, '2021-06-18', 'Recebimento definitivo', 'vigente'),
(108, 'RECEBIMENTO EM DEFINITIVO', 29, '2020-02-22', '2020-09-26', 12, '2020-02-20', 232, '2020-12-22', 'Recebimento em definitivo - obras/sv de engenharia', 'vigente'),
(109, 'FISCALIZAÇÃO', 26, '2021-09-02', '2022-09-01', 115, '2021-08-31', 163, '2021-09-03', '', 'vigente');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `COMISSOES_INTEGRANTES`
--
CREATE TABLE IF NOT EXISTS `COMISSOES_INTEGRANTES` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`tipocont` enum('receita','despesa')
,`numerocont` int(11)
,`omcont` enum('GAPGL','GAPGL-PAGL','GAPRJ')
,`anocont` year(4)
,`nomeempresa` varchar(45)
,`nomepg` varchar(4)
,`nomegr` varchar(20)
,`idfuncao` int(11)
,`nomefuncao` varchar(45)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `COM_INTEG_AGRUP`
--
CREATE TABLE IF NOT EXISTS `COM_INTEG_AGRUP` (
`idcom` int(11)
,`COMISSAO` varchar(111)
,`INTEGRANTE` varchar(73)
);
-- --------------------------------------------------------

--
-- Estrutura para tabela `contratos`
--

CREATE TABLE IF NOT EXISTS `contratos` (
  `idcont` int(11) NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) NOT NULL,
  `numerocont` int(11) NOT NULL,
  `omcont` enum('GAPGL','GAPGL-PAGL','GAPRJ') DEFAULT NULL,
  `anocont` year(4) DEFAULT NULL,
  `tipocont` enum('receita','despesa') DEFAULT NULL,
  `vltotal` decimal(10,2) DEFAULT NULL,
  `objeto` varchar(200) DEFAULT NULL,
  `NUP` varchar(25) DEFAULT NULL,
  `vigencia_ini` date NOT NULL,
  `vigencia_fim` date NOT NULL,
  `obs` varchar(200) NOT NULL,
  PRIMARY KEY (`idcont`),
  KEY `fk_contratos_empresas_idx` (`idempresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Fazendo dump de dados para tabela `contratos`
--

INSERT INTO `contratos` (`idcont`, `idempresa`, `numerocont`, `omcont`, `anocont`, `tipocont`, `vltotal`, `objeto`, `NUP`, `vigencia_ini`, `vigencia_fim`, `obs`) VALUES
(4, 9, 37, 'GAPGL-PAGL', 2019, 'despesa', 2030544.00, 'Limpeza e conservação em áreas administrativas externas - Vila SO/SGT', '67107.010989/2018-80', '2019-07-16', '2022-07-16', ''),
(5, 24, 80, 'GAPRJ', 2016, 'receita', 533833.44, 'Cessão onerosa de uso de área ao lado da PAGL, visando instalação de uma escola.', '67248.001767/2016-08', '2017-02-01', '2022-07-08', ''),
(6, 18, 74, 'GAPGL-PAGL', 2020, 'despesa', 580580.00, 'ADESÃO AO PREGÃO 054/GAP-BR/2019 - SERVIÇO DE CONFECÇÃO DE MOBILIÁRIO', '67107.006085/2020-74', '2020-11-19', '2021-11-19', ''),
(7, 22, 96, 'GAPRJ', 2016, 'receita', 438192.00, 'Cessão de uso onerosa da área situada na Rua Sargento José Sena Brasil, nº 2B, junto à Vila Residencial Fechada dos SO/SGT, visando à instalação de um CENTRO EDUCACIONAL', '67248.001767/2016-08', '2017-02-01', '2022-02-01', ''),
(8, 19, 16, 'GAPGL-PAGL', 2020, 'despesa', 51156.64, 'Contratação de serviços de telefonia fixa', '67107.021239/2019-14', '2020-06-01', '2022-06-01', ''),
(9, 9, 35, 'GAPGL-PAGL', 2019, 'despesa', 5454694.80, 'Contratação de serviços de limpeza e conservação de áreas internas e externas da PAGL, Vila dos Oficiais e COGAL', '67107.010989/2018-80', '2019-07-16', '2022-07-16', ''),
(10, 9, 38, 'GAPGL-PAGL', 2019, 'despesa', 1221555.56, 'Contratação de serviços de manutenção de áreas verdes para atender a demanda da Vila do SO/SGT do Galeão', '67107.010450/2018-21', '2019-07-16', '2022-07-16', ''),
(11, 10, 33, 'GAPGL-PAGL', 2019, 'despesa', 1280286.00, 'Serviços de recolhimento, de resíduos para a Vila Residencial dos SO/SGT', '67107.005495/2018-83', '2019-07-03', '2022-01-03', ''),
(12, 27, 9, 'GAPGL-PAGL', 2021, 'despesa', 1796293.28, 'Serviço comum de engenharia para reparo e conservação das instalações dos prédios residenciais multifamiliares existentes na Vila Militar dos SO/SGT do Galeão', '67107.010417/2018-09', '2021-05-03', '2021-11-29', ''),
(13, 27, 10, 'GAPGL-PAGL', 2021, 'despesa', 183364.00, 'Serviço comum de engenharia para reparo e conservação dos passeios de concreto existentes na Vila Militar dos Oficiais, Suboficiais e Sargentos situada na Av. sete', '67107.010417/2018-09', '2021-05-03', '2021-09-30', ''),
(14, 12, 18, 'GAPGL', 2017, 'despesa', NULL, 'FORNECIMENTO DE ÁGUA E ESGOTO PARA O EXERCÍCIO DE 2017', '67107.000732/2017-39', '2017-11-16', '2021-11-16', ''),
(15, 21, 76, 'GAPRJ', 2016, 'receita', 124480.33, 'CESSÃO DE USO A TÍTULO ONEROSO DE BEM IMÓVEL DA UNIÃO. (PAGL)', '67248.000756/2016-01', '2016-12-01', '2021-12-01', ''),
(16, 16, 4, 'GAPGL-PAGL', 2018, 'despesa', 81031.90, 'SERVIÇO DE LOCAÇÃO DE MÁQUINA COPIADO PARA O GAP GL E UNIDADES APOIADAS.', '67107.001813/2017-56', '2018-06-05', '2021-12-05', ''),
(17, 23, 18, 'GAPGL-PAGL', 2018, 'receita', 3059717.74, 'ARRENDAMENTO DE BEM IMÓVEL DA UNIÃO.', '67246.007825/2017-08', '2018-07-01', '2023-07-01', ''),
(18, 15, 21, 'GAPGL-PAGL', 2018, 'despesa', 25254.79, 'SERVIÇO DE LOCAÇÃO DE MÁQUINA COPIADO PARA O GAP GL E UNIDADES APOIADAS.', '67107.001813/2017-56', '2018-07-03', '2021-10-03', ''),
(19, 10, 34, 'GAPGL-PAGL', 2019, 'despesa', 911439.00, 'COLETA, TRANSPORTE E DESTINAÇÃO FINAL DE RESÍDUOS.', '67107.005495/2018-83', '2019-07-03', '2022-07-03', ''),
(20, 13, 34, 'GAPGL', 2017, 'despesa', 2403.82, 'FORNECIMENTO DE GAS NATURAL PARA O GAP GL E UNIDADES APOIADAS NO EXERCICIO DE 2017.', '67107.000733/2017-83', '2017-11-16', '2021-11-16', ''),
(21, 9, 36, 'GAPGL-PAGL', 2019, 'despesa', 1658694.40, 'SERVIÇO DE LIMPEZA E CONSERVAÇÃO DE ÁREAS VERDES', '67107.010450/2018-21', '2019-07-16', '2022-07-16', ''),
(22, 11, 38, 'GAPGL', 2017, 'despesa', 3600000.00, 'FORNECIMENTO DE ENERGIA ELETRICA PARA O GAP GL E UNIDADES APOIADAS NO EXERCICIO DE 2017.', '67107.000729/2017-15', '2017-11-16', '2021-11-16', ''),
(23, 20, 44, 'GAPGL-PAGL', 2019, 'receita', 40352.64, 'ARRENDAMENTO DE ÁREA LOCALIZADA NO COGAL (CENTRO SOCIAL DE OFICIAIS DA GUARNIÇÃO DO GALEÃO) NA VILA DE OFICIAIS DO GALEÃO, SITUADA NA PRAÇA DO AVIÃO, VISANDO INSTALAÇÃO DE CANTINA E LANCHONETE.', '67246.010516/2014-64', '2019-09-01', '2021-09-01', ''),
(24, 14, 18, 'GAPGL-PAGL', 2020, 'despesa', 28781.02, 'CONTRATAÇÃO DE TELEFONIA MOVEL', '67107.021241/2019-93', '2020-09-05', '2022-09-05', ''),
(25, 25, 34, 'GAPGL-PAGL', 2020, 'receita', 11760.00, 'INSTALAÇÃO DE LANCHONETE', '67107.025319/2019-49', '2020-10-03', '2021-10-03', ''),
(26, 26, 58, 'GAPGL-PAGL', 2020, 'receita', 34200.00, 'CESSÃO DE USO PARA INSTALAÇÃO DE ACADEMIA PARA PAGL', '67107.026012/2019-65', '2020-09-01', '2021-09-01', ''),
(27, 17, 84, 'GAPGL-PAGL', 2020, 'despesa', 409258.48, 'CONTRATAÇÃO DE EMPRESA DE ENGENHARIA PARA REALIZAÇÃO DE RECUPERAÇÃO DE PILARES DE SUSTENTAÇÃO', '67107.024481/2019-40', '2021-02-01', '2021-09-14', ''),
(29, 31, 60, 'GAPGL', 2020, 'despesa', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `CONTRATOS_LANCADOS_VW`
--
CREATE TABLE IF NOT EXISTS `CONTRATOS_LANCADOS_VW` (
`idcont` int(11)
,`numerocont` int(11)
,`omcont` enum('GAPGL','GAPGL-PAGL','GAPRJ')
,`anocont` year(4)
,`nomeempresa` varchar(45)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `CONT_AGRUP`
--
CREATE TABLE IF NOT EXISTS `CONT_AGRUP` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`CONTRATO` varchar(75)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `CONT_AGRUP1`
--
CREATE TABLE IF NOT EXISTS `CONT_AGRUP1` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`CONTRATO` varchar(75)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `CONT_AGRUP2`
--
CREATE TABLE IF NOT EXISTS `CONT_AGRUP2` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`CONTRATO` varchar(73)
);
-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `idempresa` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ` varchar(45) NOT NULL,
  `nomeempresa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Fazendo dump de dados para tabela `empresas`
--

INSERT INTO `empresas` (`idempresa`, `CNPJ`, `nomeempresa`) VALUES
(9, '05.703.030/0001-88', 'CARDEAL'),
(10, '', 'LANDTEC'),
(11, '', 'LIGHT'),
(12, '', 'CEDAE'),
(13, '', 'NATURGY'),
(14, '', 'TELEFÔNICA BRASIL'),
(15, '', 'SIMPRESS'),
(16, '', 'CS & CS'),
(17, '', 'CABB ENGENHARIA'),
(18, '09.813.581/0001-55', 'FORMA OFFICE'),
(19, '40.432.544/0001-47', 'CLARO'),
(20, '', 'ENI RIEGER'),
(21, '', 'FHE'),
(22, '02.816.675/0001-39', 'GULLIVER'),
(23, '', 'POSTO CANÁRIAS'),
(24, '26.714.977/0001-64', 'GALEÃO COLÉGIO E CURSO'),
(25, '', 'QUATRO AMIGOS'),
(26, '', 'ACADEMIA DA VILA'),
(27, '10.284.045/0001-99', 'NF COMERCIO E SERVICOS'),
(29, '', 'NAO SE APLICA'),
(31, '', 'BURTONTEC CONSTRUÇÕES EIRELI');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcoes`
--

CREATE TABLE IF NOT EXISTS `funcoes` (
  `idfuncao` int(11) NOT NULL AUTO_INCREMENT,
  `nomefuncao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfuncao`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Fazendo dump de dados para tabela `funcoes`
--

INSERT INTO `funcoes` (`idfuncao`, `nomefuncao`) VALUES
(17, 'Fiscal'),
(18, '1º Suplente - Fiscal'),
(19, '2º Suplente - Fiscal'),
(20, 'Presidente'),
(21, '1º Suplente - Presidente'),
(22, '2º Suplente - Presidente'),
(23, 'Membro'),
(24, 'Membro Suplente'),
(25, 'Membro Técnico'),
(26, 'Membro Administrativo');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `ID_CONTRATOS`
--
CREATE TABLE IF NOT EXISTS `ID_CONTRATOS` (
`idcont` int(11)
,`numerocont` int(11)
,`omcont` enum('GAPGL','GAPGL-PAGL','GAPRJ')
,`anocont` year(4)
,`nomeempresa` varchar(45)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `INFO_COMISSAO`
--
CREATE TABLE IF NOT EXISTS `INFO_COMISSAO` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`tipocont` enum('receita','despesa')
,`numerocont` int(11)
,`anocont` year(4)
,`nomeempresa` varchar(45)
,`vigencia_fim` date
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `INTEG_FUNC_AGRUP`
--
CREATE TABLE IF NOT EXISTS `INTEG_FUNC_AGRUP` (
`idcom` int(11)
,`militar` varchar(25)
,`funcao` varchar(45)
);
-- --------------------------------------------------------

--
-- Estrutura para tabela `militares`
--

CREATE TABLE IF NOT EXISTS `militares` (
  `idmilitar` int(11) NOT NULL AUTO_INCREMENT,
  `idpg` int(11) NOT NULL,
  `nomemil` varchar(45) DEFAULT NULL,
  `nomegr` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idmilitar`),
  KEY `fk_militares_posto_grad1_idx` (`idpg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Fazendo dump de dados para tabela `militares`
--

INSERT INTO `militares` (`idmilitar`, `idpg`, `nomemil`, `nomegr`) VALUES
(8, 40, 'VINÍCIUS SILVA CARDOSO', 'CARDOSO'),
(9, 40, 'LEANDRO GALDINO DA SILVA', 'GALDINO'),
(10, 41, 'REJANE RIBEIRO DO ESPÍRITO SANTO CANTELLE', 'REJANE'),
(11, 46, 'KILSSA KARLA FALCK SOBRAL', 'KILSSA'),
(12, 46, 'SHEYLANE PINHEIRO DA SILVA', 'SHEYLANE'),
(13, 46, 'AIRTON DA CRUZ MARTINS', 'AIRTON'),
(14, 41, 'EDUARDO VENITE LIMA', 'VENITE'),
(15, 45, 'THAIS DA SILVA TEIXEIRA', 'THAIS'),
(16, 46, 'HUMBERTO ROGÉLIO DOS SANTOS NUNES', 'ROGÉLIO'),
(17, 45, 'LEONARDO GOMES DA SILVA', 'GOMES'),
(18, 40, 'MAISA SOARES SILVA THYS', 'MAISA'),
(19, 46, 'MÁRCIO MIRANDA DA SILVEIRA', 'MÁRCIO MIRANDA'),
(20, 46, 'THAIANE MENEZES DE SOUZA', 'THAIANE'),
(21, 41, 'RAIANY RODRIGUES SIQUEIRA', 'RAIANY'),
(22, 43, 'FERNANDO LIBÓRIO DOS REIS', 'LIBÓRIO'),
(23, 45, 'ANDERSON DE SENA ABDIAS', 'ABDIAS'),
(24, 41, 'EMANUELLE CAVALCANTE DA SILVA RODRIGUES', 'EMANUELLE RODRIGUES'),
(25, 45, 'PAULA CRISTINA ROCHA SANTOS VIEIRA', 'PAULA'),
(26, 45, 'RODRIGO AZEREDO SARAIVA', 'AZEREDO'),
(27, 45, 'BRUNO DA SILVA SANTOS', 'BRUNO SILVA'),
(28, 37, 'JOSÉ ALFREDO REZENDE SILVA', 'REZENDE'),
(29, 43, 'ALEXANDER BASTOS DE PINA', 'PINA'),
(30, 40, 'ADRIANO LARANJEIRA PANICHI', 'PANICHI'),
(31, 46, 'CÍNTIA LUIZ GEREMIAS', 'CÍNTIA'),
(32, 46, 'MARCELO SILVA DA COSTA', 'COSTA'),
(33, 46, 'BRUNA GIBSON DE LUCA', 'DE LUCA'),
(34, 39, 'LOURIVAL VIEIRA RANSATTO', 'RANSATTO'),
(35, 41, 'CHRISTIANO TAVARES DA SILVA PINTO', 'CHRISTIANO'),
(36, 43, 'JÚLIO FONSECA DA COSTA', 'JÚLIO'),
(37, 45, 'WILLIAN CHAVES MENEZES', 'MENEZES'),
(38, 46, 'TATIANE FREIRE GOULART COELHO', 'TATIANE'),
(39, 46, 'MARCELO DA COSTA DRUMMOND', 'DRUMMOND'),
(40, 45, 'CAMILA PAZINI PASSOS', 'PAZINI'),
(41, 44, 'CLAUDIA REGINA SILVA DE MENEZES', 'CLAUDIA'),
(42, 44, 'KARLA CRISTINA DOS SANTOS', 'KARLA CRISTINA'),
(43, 45, 'LUIZ JULIO RIGAUD NETO', 'RIGAUD'),
(44, 45, 'CHARLES GOMEZ DA SILVA', 'CHARLES'),
(45, 44, 'DOUGLAS MACIEL DE LIMA', 'MACIEL'),
(46, 47, 'PEDRO PAULO DANTAS E SILVA', 'DANTAS'),
(47, 43, 'CASSIO AUGUSTO PINHEIRO DE OLIVEIRA', 'CASSIO'),
(48, 41, 'MAURICIO CHAMPION BALLALAI', 'BALLALAI');

-- --------------------------------------------------------

--
-- Estrutura para tabela `militares_has_comissoes`
--

CREATE TABLE IF NOT EXISTS `militares_has_comissoes` (
  `idcom` int(11) NOT NULL,
  `idmilitar` int(11) NOT NULL,
  `idfuncao` int(11) NOT NULL,
  PRIMARY KEY (`idcom`,`idmilitar`),
  KEY `fk_militares_has_comissoes_funcoes1_idx` (`idfuncao`),
  KEY `fk_militares_has_comissoes_comissoes1_idx` (`idcom`),
  KEY `fk_militares_has_comissoes_militares1_idx` (`idmilitar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `militares_has_comissoes`
--

INSERT INTO `militares_has_comissoes` (`idcom`, `idmilitar`, `idfuncao`) VALUES
(1, 36, 17),
(2, 41, 17),
(3, 42, 17),
(4, 43, 17),
(5, 40, 17),
(6, 8, 17),
(7, 10, 17),
(8, 21, 17),
(9, 10, 17),
(10, 18, 17),
(11, 14, 17),
(12, 9, 17),
(13, 9, 17),
(14, 22, 17),
(15, 28, 17),
(16, 9, 17),
(17, 28, 17),
(18, 9, 17),
(19, 45, 17),
(20, 18, 17),
(21, 21, 17),
(22, 8, 17),
(23, 28, 17),
(24, 28, 17),
(109, 43, 17),
(1, 38, 18),
(2, 11, 18),
(3, 13, 18),
(4, 37, 18),
(5, 25, 18),
(7, 35, 18),
(8, 8, 18),
(9, 24, 18),
(10, 24, 18),
(11, 21, 18),
(12, 18, 18),
(13, 18, 18),
(14, 33, 18),
(15, 18, 18),
(16, 18, 18),
(17, 18, 18),
(18, 18, 18),
(19, 19, 18),
(20, 9, 18),
(21, 10, 18),
(109, 37, 18),
(6, 10, 19),
(11, 9, 19),
(15, 8, 19),
(16, 21, 19),
(17, 8, 19),
(18, 21, 19),
(28, 21, 20),
(29, 24, 20),
(91, 24, 20),
(92, 18, 20),
(93, 10, 20),
(94, 10, 20),
(95, 8, 20),
(97, 24, 20),
(99, 9, 20),
(100, 10, 20),
(101, 9, 20),
(102, 10, 20),
(103, 21, 20),
(104, 28, 20),
(105, 18, 20),
(106, 30, 20),
(107, 30, 20),
(108, 18, 20),
(28, 24, 21),
(29, 21, 21),
(91, 8, 21),
(92, 14, 21),
(93, 8, 21),
(94, 8, 21),
(95, 9, 21),
(97, 10, 21),
(99, 14, 21),
(100, 14, 21),
(101, 14, 21),
(102, 14, 21),
(103, 24, 21),
(104, 8, 21),
(28, 14, 22),
(29, 14, 22),
(91, 10, 22),
(92, 9, 22),
(93, 35, 22),
(94, 35, 22),
(95, 10, 22),
(97, 18, 22),
(99, 10, 22),
(100, 8, 22),
(101, 10, 22),
(102, 8, 22),
(104, 24, 22),
(6, 44, 23),
(6, 46, 23),
(7, 44, 23),
(7, 46, 23),
(8, 23, 23),
(8, 27, 23),
(9, 33, 23),
(9, 39, 23),
(10, 16, 23),
(10, 23, 23),
(11, 19, 23),
(12, 27, 23),
(12, 37, 23),
(13, 27, 23),
(13, 37, 23),
(15, 11, 23),
(15, 33, 23),
(16, 11, 23),
(16, 33, 23),
(17, 11, 23),
(17, 33, 23),
(18, 11, 23),
(18, 33, 23),
(20, 26, 23),
(20, 27, 23),
(21, 26, 23),
(21, 37, 23),
(23, 12, 23),
(23, 16, 23),
(24, 12, 23),
(24, 16, 23),
(28, 19, 23),
(28, 41, 23),
(29, 19, 23),
(29, 41, 23),
(91, 12, 23),
(91, 15, 23),
(91, 16, 23),
(91, 33, 23),
(91, 39, 23),
(92, 16, 23),
(92, 19, 23),
(93, 12, 23),
(93, 20, 23),
(94, 12, 23),
(94, 20, 23),
(95, 11, 23),
(95, 12, 23),
(97, 11, 23),
(97, 17, 23),
(99, 15, 23),
(99, 16, 23),
(100, 12, 23),
(100, 15, 23),
(101, 15, 23),
(101, 16, 23),
(102, 12, 23),
(102, 15, 23),
(103, 15, 23),
(103, 23, 23),
(104, 15, 23),
(104, 23, 23),
(106, 31, 23),
(106, 32, 23),
(107, 31, 23),
(107, 32, 23),
(11, 25, 24),
(15, 39, 24),
(16, 39, 24),
(17, 39, 24),
(18, 39, 24),
(23, 29, 24),
(24, 29, 24),
(28, 17, 24),
(29, 17, 24),
(92, 20, 24),
(93, 16, 24),
(94, 16, 24),
(95, 13, 24),
(97, 16, 24),
(99, 17, 24),
(100, 17, 24),
(101, 17, 24),
(102, 17, 24),
(103, 25, 24),
(104, 25, 24),
(106, 33, 24),
(107, 33, 24),
(22, 13, 25),
(108, 48, 25),
(22, 23, 26),
(105, 10, 26),
(108, 10, 26);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posto_grad`
--

CREATE TABLE IF NOT EXISTS `posto_grad` (
  `idpg` int(11) NOT NULL AUTO_INCREMENT,
  `nomepg` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idpg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Fazendo dump de dados para tabela `posto_grad`
--

INSERT INTO `posto_grad` (`idpg`, `nomepg`) VALUES
(36, 'Cel'),
(37, 'TCel'),
(38, 'Maj'),
(39, 'Cap'),
(40, '1T'),
(41, '2T'),
(42, 'Asp'),
(43, 'SO'),
(44, '1S'),
(45, '2S'),
(46, '3S'),
(47, 'Cb');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `PRE_INFO_COM`
--
CREATE TABLE IF NOT EXISTS `PRE_INFO_COM` (
`idcom` int(11)
,`idcont` int(11)
,`idempresa` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`tipocont` enum('receita','despesa')
,`numerocont` int(11)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `PRE_VIEW_COM`
--
CREATE TABLE IF NOT EXISTS `PRE_VIEW_COM` (
`idcom` int(11)
,`idmilitar` int(11)
,`idfuncao` int(11)
,`contratos_idcont` int(11)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `PRE_VIEW_COM_1`
--
CREATE TABLE IF NOT EXISTS `PRE_VIEW_COM_1` (
`idcom` int(11)
,`tipocom` enum('FISCALIZAÇÃO','RECEBIMENTO','FISCALIZAÇÃO OBRAS/SV ENGENHARIA','RECEBIMENTO EM DEFINITIVO')
,`tipocont` enum('receita','despesa')
,`numerocont` int(11)
,`omcont` enum('GAPGL','GAPGL-PAGL','GAPRJ')
,`anocont` year(4)
,`idempresa` int(11)
,`idpg` int(11)
,`nomegr` varchar(20)
,`idfuncao` int(11)
,`nomefuncao` varchar(45)
);
-- --------------------------------------------------------

--
-- Estrutura para view `COMISSOES_INTEGRANTES`
--
DROP TABLE IF EXISTS `COMISSOES_INTEGRANTES`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `COMISSOES_INTEGRANTES` AS select `pvc`.`idcom` AS `idcom`,`pvc`.`tipocom` AS `tipocom`,`pvc`.`tipocont` AS `tipocont`,`pvc`.`numerocont` AS `numerocont`,`pvc`.`omcont` AS `omcont`,`pvc`.`anocont` AS `anocont`,`e`.`nomeempresa` AS `nomeempresa`,`pg`.`nomepg` AS `nomepg`,`pvc`.`nomegr` AS `nomegr`,`pvc`.`idfuncao` AS `idfuncao`,`f`.`nomefuncao` AS `nomefuncao` from (((`PRE_VIEW_COM_1` `pvc` join `empresas` `e` on((`pvc`.`idempresa` = `e`.`idempresa`))) join `posto_grad` `pg` on((`pvc`.`idpg` = `pg`.`idpg`))) join `funcoes` `f` on((`pvc`.`idfuncao` = `f`.`idfuncao`))) order by `pvc`.`idcom`,`pvc`.`idfuncao`;

-- --------------------------------------------------------

--
-- Estrutura para view `COM_INTEG_AGRUP`
--
DROP TABLE IF EXISTS `COM_INTEG_AGRUP`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `COM_INTEG_AGRUP` AS select `COMISSOES_INTEGRANTES`.`idcom` AS `idcom`,concat(`COMISSOES_INTEGRANTES`.`tipocom`,' CT ',`COMISSOES_INTEGRANTES`.`numerocont`,'/',convert(`COMISSOES_INTEGRANTES`.`omcont` using utf8),'/',`COMISSOES_INTEGRANTES`.`anocont`,' - ',convert(`COMISSOES_INTEGRANTES`.`nomeempresa` using utf8)) AS `COMISSAO`,concat(`COMISSOES_INTEGRANTES`.`nomepg`,' ',`COMISSOES_INTEGRANTES`.`nomegr`,' - ',`COMISSOES_INTEGRANTES`.`nomefuncao`) AS `INTEGRANTE` from `COMISSOES_INTEGRANTES` order by `COMISSOES_INTEGRANTES`.`tipocom`,`COMISSOES_INTEGRANTES`.`anocont`,`COMISSOES_INTEGRANTES`.`numerocont`,`COMISSOES_INTEGRANTES`.`idfuncao`;

-- --------------------------------------------------------

--
-- Estrutura para view `CONTRATOS_LANCADOS_VW`
--
DROP TABLE IF EXISTS `CONTRATOS_LANCADOS_VW`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CONTRATOS_LANCADOS_VW` AS select `contratos`.`idcont` AS `idcont`,`contratos`.`numerocont` AS `numerocont`,`contratos`.`omcont` AS `omcont`,`contratos`.`anocont` AS `anocont`,`empresas`.`nomeempresa` AS `nomeempresa` from (`contratos` join `empresas`) where (`contratos`.`idempresa` = `empresas`.`idempresa`) order by `empresas`.`nomeempresa`;

-- --------------------------------------------------------

--
-- Estrutura para view `CONT_AGRUP`
--
DROP TABLE IF EXISTS `CONT_AGRUP`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CONT_AGRUP` AS select distinct `COMISSOES_INTEGRANTES`.`idcom` AS `idcom`,`COMISSOES_INTEGRANTES`.`tipocom` AS `tipocom`,concat(`COMISSOES_INTEGRANTES`.`numerocont`,'/',`COMISSOES_INTEGRANTES`.`omcont`,'/',`COMISSOES_INTEGRANTES`.`anocont`,' - ',`COMISSOES_INTEGRANTES`.`nomeempresa`) AS `CONTRATO` from `COMISSOES_INTEGRANTES` order by `COMISSOES_INTEGRANTES`.`tipocont`,`COMISSOES_INTEGRANTES`.`anocont`,`COMISSOES_INTEGRANTES`.`numerocont`;

-- --------------------------------------------------------

--
-- Estrutura para view `CONT_AGRUP1`
--
DROP TABLE IF EXISTS `CONT_AGRUP1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CONT_AGRUP1` AS select distinct `COMISSOES_INTEGRANTES`.`idcom` AS `idcom`,`COMISSOES_INTEGRANTES`.`tipocom` AS `tipocom`,concat(`COMISSOES_INTEGRANTES`.`numerocont`,'/',`COMISSOES_INTEGRANTES`.`omcont`,'/',`COMISSOES_INTEGRANTES`.`anocont`,' ','-',' ',`COMISSOES_INTEGRANTES`.`nomeempresa`) AS `CONTRATO` from `COMISSOES_INTEGRANTES` order by `COMISSOES_INTEGRANTES`.`tipocont`,`COMISSOES_INTEGRANTES`.`anocont`,`COMISSOES_INTEGRANTES`.`numerocont`;

-- --------------------------------------------------------

--
-- Estrutura para view `CONT_AGRUP2`
--
DROP TABLE IF EXISTS `CONT_AGRUP2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `CONT_AGRUP2` AS select distinct `COMISSOES_INTEGRANTES`.`idcom` AS `idcom`,`COMISSOES_INTEGRANTES`.`tipocom` AS `tipocom`,concat(`COMISSOES_INTEGRANTES`.`numerocont`,'/',`COMISSOES_INTEGRANTES`.`omcont`,'/',`COMISSOES_INTEGRANTES`.`anocont`,'-',`COMISSOES_INTEGRANTES`.`nomeempresa`) AS `CONTRATO` from `COMISSOES_INTEGRANTES` order by `COMISSOES_INTEGRANTES`.`tipocont`,`COMISSOES_INTEGRANTES`.`anocont`,`COMISSOES_INTEGRANTES`.`numerocont`;

-- --------------------------------------------------------

--
-- Estrutura para view `ID_CONTRATOS`
--
DROP TABLE IF EXISTS `ID_CONTRATOS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ID_CONTRATOS` AS select `contratos`.`idcont` AS `idcont`,`contratos`.`numerocont` AS `numerocont`,`contratos`.`omcont` AS `omcont`,`contratos`.`anocont` AS `anocont`,`empresas`.`nomeempresa` AS `nomeempresa` from (`contratos` join `empresas`) where (`contratos`.`idempresa` = `empresas`.`idempresa`) order by `empresas`.`nomeempresa`;

-- --------------------------------------------------------

--
-- Estrutura para view `INFO_COMISSAO`
--
DROP TABLE IF EXISTS `INFO_COMISSAO`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `INFO_COMISSAO` AS select `pic`.`idcom` AS `idcom`,`pic`.`tipocom` AS `tipocom`,`pic`.`tipocont` AS `tipocont`,`pic`.`numerocont` AS `numerocont`,`ct`.`anocont` AS `anocont`,`e`.`nomeempresa` AS `nomeempresa`,`c`.`vigencia_fim` AS `vigencia_fim` from (((`PRE_INFO_COM` `pic` join `contratos` `ct` on((`pic`.`idcont` = `ct`.`idcont`))) join `empresas` `e` on((`pic`.`idempresa` = `e`.`idempresa`))) join `comissoes` `c` on((`pic`.`idcom` = `c`.`idcom`)));

-- --------------------------------------------------------

--
-- Estrutura para view `INTEG_FUNC_AGRUP`
--
DROP TABLE IF EXISTS `INTEG_FUNC_AGRUP`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `INTEG_FUNC_AGRUP` AS select `idcom` AS `idcom`,concat(`nomepg`,' ',`nomegr`) AS `militar`,`nomefuncao` AS `funcao` from `COMISSOES_INTEGRANTES` ``;

-- --------------------------------------------------------

--
-- Estrutura para view `PRE_INFO_COM`
--
DROP TABLE IF EXISTS `PRE_INFO_COM`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PRE_INFO_COM` AS select `c`.`idcom` AS `idcom`,`ct`.`idcont` AS `idcont`,`ct`.`idempresa` AS `idempresa`,`c`.`tipocom` AS `tipocom`,`ct`.`tipocont` AS `tipocont`,`ct`.`numerocont` AS `numerocont` from (`comissoes` `c` join `contratos` `ct` on((`c`.`contratos_idcont` = `ct`.`idcont`)));

-- --------------------------------------------------------

--
-- Estrutura para view `PRE_VIEW_COM`
--
DROP TABLE IF EXISTS `PRE_VIEW_COM`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PRE_VIEW_COM` AS select `mhc`.`idcom` AS `idcom`,`mhc`.`idmilitar` AS `idmilitar`,`mhc`.`idfuncao` AS `idfuncao`,`comissoes`.`contratos_idcont` AS `contratos_idcont` from (`militares_has_comissoes` `mhc` join `comissoes`) where (`mhc`.`idcom` = `comissoes`.`idcom`);

-- --------------------------------------------------------

--
-- Estrutura para view `PRE_VIEW_COM_1`
--
DROP TABLE IF EXISTS `PRE_VIEW_COM_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PRE_VIEW_COM_1` AS select `pvc`.`idcom` AS `idcom`,`c`.`tipocom` AS `tipocom`,`ct`.`tipocont` AS `tipocont`,`ct`.`numerocont` AS `numerocont`,`ct`.`omcont` AS `omcont`,`ct`.`anocont` AS `anocont`,`ct`.`idempresa` AS `idempresa`,`m`.`idpg` AS `idpg`,`m`.`nomegr` AS `nomegr`,`f`.`idfuncao` AS `idfuncao`,`f`.`nomefuncao` AS `nomefuncao` from ((((`PRE_VIEW_COM` `pvc` join `comissoes` `c` on((`pvc`.`idcom` = `c`.`idcom`))) join `contratos` `ct` on((`pvc`.`contratos_idcont` = `ct`.`idcont`))) join `militares` `m` on((`pvc`.`idmilitar` = `m`.`idmilitar`))) join `funcoes` `f` on((`pvc`.`idfuncao` = `f`.`idfuncao`)));

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `comissoes`
--
ALTER TABLE `comissoes`
  ADD CONSTRAINT `fk_comissoes_contratos1` FOREIGN KEY (`contratos_idcont`) REFERENCES `contratos` (`idcont`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `fk_contratos_empresas` FOREIGN KEY (`idempresa`) REFERENCES `empresas` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `militares`
--
ALTER TABLE `militares`
  ADD CONSTRAINT `fk_militares_posto_grad1` FOREIGN KEY (`idpg`) REFERENCES `posto_grad` (`idpg`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
