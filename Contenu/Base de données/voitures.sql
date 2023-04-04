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
-- Base de données: `voitures`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(5) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` text NOT NULL,
  `ville` varchar(10) NOT NULL,
  `code_postale` varchar(5) NOT NULL,
  `date_permis` date NOT NULL,
  `mail` varchar(20) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_naissance`, `adresse`, `ville`, `code_postale`, `date_permis`, `mail`, `telephone`) VALUES
('A0001', 'Pierre J', '1998-06-25', '13 bis rue Charles de Gaulle', 'Paris', '75018', '2021-05-26', 'pierre.j@yahoo.fr', '0607080910'),
('A0002', 'Rémy P', '1997-12-08', '35 allée Paul Cezanne', 'Paris', '75016', '2019-12-05', 'remy.p@gmail.com', '0708101214');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` int(11) NOT NULL AUTO_INCREMENT,
  `dat_location` date NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `code_client` varchar(10) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`,`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `dat_location`, `duree`, `prix_jour`, `code_client`, `immatriculation`) VALUES
(12, '2022-12-07', 5, 80, 'A0002', 'CB-456-VN'),
(13, '2022-12-07', 3, 60, 'A0001', 'FG-123-ML');

-- --------------------------------------------------------

--
-- Structure de la table `reparations`
--

CREATE TABLE IF NOT EXISTS `reparations` (
  `num_reparation` int(11) NOT NULL AUTO_INCREMENT,
  `date_reparation` date NOT NULL,
  `duree_reparation` varchar(10) NOT NULL,
  `cout_reparation` int(20) NOT NULL,
  `responsable_rep` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`num_reparation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `reparations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(10) NOT NULL,
  `modele` int(10) NOT NULL,
  `couleur` varchar(10) NOT NULL,
  `annee_circulation` date NOT NULL,
  `kilometrage` int(11) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `couleur`, `annee_circulation`, `kilometrage`) VALUES
('CB-456-VN', 'Mercedes', 0, 'Noir', '2000-12-12', 20000),
('FG-123-ML', 'Renault', 0, 'Rouge', '2006-12-03', 30000);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;
