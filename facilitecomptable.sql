SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=NO_AUTO_VALUE_ON_ZERO */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/ `facilitecomptable`;
USE `facilitecomptable`;
CREATE TABLE `detailsecritures` (
  `IDDetailsEcriture` int(11) NOT NULL auto_increment,
  `IDEcriture` int(11) NOT NULL default '0',
  `numeroCompte` varchar(6) NOT NULL default '',
  `debit` decimal(10,0) NOT NULL default '0',
  `credit` decimal(10,0) NOT NULL default '0',
  PRIMARY KEY  (`IDDetailsEcriture`)
) TYPE=MyISAM COMMENT='Détails des écritures';
CREATE TABLE `ecriture` (
  `IDEcriture` int(11) NOT NULL auto_increment,
  `IDReference` varchar(15) default '',
  `dateTransaction` date NOT NULL default '0000-00-00',
  `descriptionTransaction` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`IDEcriture`)
) TYPE=MyISAM COMMENT='Entete des ecritures';
CREATE TABLE `rubrique` (
  `IDRubrique` smallint(6) NOT NULL default '0',
  `nomRubrique` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`IDRubrique`)
) TYPE=MyISAM COMMENT='Description des rubriques pour la charte des comptes';
INSERT INTO `rubrique` (`IDRubrique`,`nomRubrique`) VALUES (1,'Encaisse'),(2,'Autres actifs à court terme'),(3,'Immobilisations'),(21,'Passif à court terme'),(22,'Passif à long terme'),(41,'Avoir des actionnaires'),(51,'Produits d\'exploitation'),(71,'Charges d\'exploitation');
CREATE TABLE `chartecompte` (
  `IDCompte` varchar(10) NOT NULL default '100',
  `descriptionCompte` varchar(50) NOT NULL default '',
  `soldeDebut` decimal(10,0) unsigned zerofill NOT NULL default '0000000000',
  `calculCompte` smallint(6) NOT NULL default '1',
  `numeroRubrique` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`IDCompte`)
) TYPE=MyISAM COMMENT='La charte des comptes';
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
