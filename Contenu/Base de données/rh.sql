-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 05 Janvier 2023 à 15:37
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmp` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Sexe` varchar(1) NOT NULL,
  `Salaire` int(11) NOT NULL,
  `TypeContrat` varchar(20) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(20) NOT NULL,
  `DateEmbauche` date NOT NULL,
  `DateNaissance` date NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmp`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `TypeContrat`, `Fonction`, `Site`, `DateEmbauche`, `DateNaissance`, `NoSrv`) VALUES
(13, 'Dupont', 'Charles', 'M', 1500, 'CDD', 'Agent accueil', 'Paris', '2018-04-18', '1990-01-19', 1),
(97, 'Charles', 'Jean', 'M', 1450, 'CDD', 'Agent entretien', 'Evry', '2018-03-31', '2001-07-20', 4),
(645, 'Cartier', 'Paulette', 'F', 3200, 'CDI', 'Comptable', 'Evry', '2009-07-31', '1979-01-02', 3),
(742, 'Diop', 'Kadiatou', 'F', 2500, 'CDI', 'Direction', 'Paris', '2015-11-27', '1995-12-11', 2);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` varchar(20) NOT NULL,
  `NoProj` int(11) NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `NoProj` (`NoProj`,`NoEmp`),
  KEY `NoEmp` (`NoEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NoProj`, `NoEmp`, `NbHeures`) VALUES
('16', 20, 97, 5),
('2', 6, 645, 60),
('28', 65, 13, 15),
('87', 11, 742, 122);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProj` int(11) NOT NULL,
  `LibelleProjet` varchar(20) NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProj`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProj`, `LibelleProjet`, `NoSrv`) VALUES
(6, 'Recrutement', 3),
(11, 'Cybersecurite', 2),
(20, 'Nettoyage WC', 4),
(65, 'Information', 1);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoServ` int(11) NOT NULL,
  `NomSrv` varchar(20) NOT NULL,
  PRIMARY KEY (`NoServ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoServ`, `NomSrv`) VALUES
(1, 'Accueil'),
(2, 'Informatique'),
(3, 'Direction'),
(4, 'Entretien');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoServ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NoProj`) REFERENCES `projet` (`NoProj`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoEmp`) REFERENCES `employe` (`NoEmp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoServ`) ON DELETE CASCADE ON UPDATE CASCADE;
