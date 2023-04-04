-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 14:50
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_des_commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `cat_num` int(11) NOT NULL,
  `cat_nom` varchar(20) NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`cat_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--


-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL,
  `client_civilite` varchar(5) NOT NULL,
  `client_nom` varchar(20) NOT NULL,
  `client_prenom` varchar(20) NOT NULL,
  `client_dep` varchar(20) NOT NULL,
  `client_ville` varchar(30) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--


-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `com_num` int(11) NOT NULL,
  `com_date` date NOT NULL,
  `com_montant` float NOT NULL,
  `client_id` int(30) NOT NULL,
  `prod_ref` varchar(30) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `client_id` (`client_id`),
  KEY `prod_ref` (`prod_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--


-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `prod_ref` varchar(30) NOT NULL,
  `prod_nom` varchar(30) NOT NULL,
  `prod_prix` float NOT NULL,
  `prod_poids` float NOT NULL,
  `prod_vues` int(11) NOT NULL,
  `prod_stock` int(11) NOT NULL,
  `prod_code` int(11) NOT NULL,
  `cat_num` int(11) NOT NULL,
  PRIMARY KEY (`prod_ref`),
  KEY `cat_num` (`cat_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`prod_ref`) REFERENCES `produits` (`prod_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`cat_num`) REFERENCES `categorie` (`cat_num`) ON DELETE CASCADE ON UPDATE CASCADE;
