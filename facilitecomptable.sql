-- MySQL dump 9.11
--
-- Host: localhost    Database: facilitecomptable
-- ------------------------------------------------------
-- Server version	4.0.21-log

--
-- Current Database: facilitecomptable
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `facilitecomptable`;

USE facilitecomptable;

--
-- Table structure for table `chartecompte`
--

CREATE TABLE `chartecompte` (
  `IDCompte` varchar(10) NOT NULL default '100',
  `descriptionCompte` varchar(50) NOT NULL default '',
  `soldeDebut` decimal(10,0) unsigned zerofill NOT NULL default '0000000000',
  `calculCompte` smallint(6) NOT NULL default '1',
  `numeroRubrique` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`IDCompte`)
) TYPE=MyISAM COMMENT='La charte des comptes';

--
-- Dumping data for table `chartecompte`
--


--
-- Table structure for table `detailsecritures`
--

CREATE TABLE `detailsecritures` (
  `IDDetailsEcriture` int(11) NOT NULL auto_increment,
  `IDEcriture` int(11) NOT NULL default '0',
  `numeroCompte` varchar(6) NOT NULL default '',
  `debit` decimal(10,0) NOT NULL default '0',
  `credit` decimal(10,0) NOT NULL default '0',
  PRIMARY KEY  (`IDDetailsEcriture`)
) TYPE=MyISAM COMMENT='Détails des écritures';

--
-- Dumping data for table `detailsecritures`
--


--
-- Table structure for table `ecriture`
--

CREATE TABLE `ecriture` (
  `IDEcriture` int(11) NOT NULL auto_increment,
  `IDReference` varchar(15) default '',
  `dateTransaction` date NOT NULL default '0000-00-00',
  `descriptionTransaction` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`IDEcriture`)
) TYPE=MyISAM COMMENT='Entete des ecritures';

--
-- Dumping data for table `ecriture`
--


--
-- Table structure for table `rubrique`
--

CREATE TABLE `rubrique` (
  `IDRubrique` smallint(6) NOT NULL default '0',
  `nomRubrique` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`IDRubrique`)
) TYPE=MyISAM COMMENT='Description des rubriques pour la charte des comptes';

--
-- Dumping data for table `rubrique`
--

INSERT INTO `rubrique` VALUES (1,'Encaisse');
INSERT INTO `rubrique` VALUES (2,'Autres actifs Ã  court terme');
INSERT INTO `rubrique` VALUES (3,'Immobilisations');
INSERT INTO `rubrique` VALUES (21,'Passif Ã  court terme');
INSERT INTO `rubrique` VALUES (22,'Passif Ã  long terme');
INSERT INTO `rubrique` VALUES (41,'Avoir des actionnaires');
INSERT INTO `rubrique` VALUES (51,'Produits d\'exploitation');
INSERT INTO `rubrique` VALUES (71,'Charges d\'exploitation');

