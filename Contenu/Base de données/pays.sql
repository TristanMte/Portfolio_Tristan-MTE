-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 19 Janvier 2023 à 16:22
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` int(11) NOT NULL,
  `Nom_commune` varchar(20) NOT NULL,
  `population_2010` int(11) NOT NULL,
  `population_1999` int(11) NOT NULL,
  `Surface` int(11) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `num_departement` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `Nom_commune`, `population_2010`, `population_1999`, `Surface`, `longitude`, `latitude`, `num_departement`) VALUES
(33000, 'Bordeaux', 239, 215, 49, '44° 50? 16? N', '0° 34? 46? O', 33),
(69000, 'Lyon', 491, 445, 47, '45° 45? 28? N', '4° 49? 56? E', 69),
(75000, 'Paris', 2, 2, 105, '48° 51? 24? N', '2° 21? 07? E', 75);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE IF NOT EXISTS `departements` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(20) NOT NULL,
  `code_region` varchar(20) NOT NULL,
  PRIMARY KEY (`num_departement`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departements`
--

INSERT INTO `departements` (`num_departement`, `nom_departement`, `code_region`) VALUES
(33, 'Gironde', 'NA'),
(69, 'Rhone', 'ARA'),
(75, 'Paris', 'IDF');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `code_region` varchar(20) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`code_region`, `nom_region`) VALUES
('ARA', 'Auvergne Thone Alpes'),
('IDF', 'Ile de France'),
('NA', 'Nouvelle Aquitaine');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `communes` (`num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `departements` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
