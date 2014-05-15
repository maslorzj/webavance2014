-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 15 Mai 2014 à 09:24
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `biblibd`
--
CREATE DATABASE IF NOT EXISTS `biblibd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `biblibd`;

-- --------------------------------------------------------

--
-- Structure de la table `bd`
--

CREATE TABLE IF NOT EXISTS `bd` (
  `isbn` varchar(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `authorName` varchar(255) NOT NULL,
  `authorFirstname` varchar(255) NOT NULL,
  `illusName` varchar(255) NOT NULL,
  `illusFirstname` varchar(255) NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `colorFirstname` varchar(255) DEFAULT NULL,
  `editor` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `publishDate` date NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bd`
--

INSERT INTO `bd` (`isbn`, `title`, `serie`, `authorName`, `authorFirstname`, `illusName`, `illusFirstname`, `colorName`, `colorFirstname`, `editor`, `language`, `publishDate`) VALUES
('5946257468211', 'title', NULL, 'authorName', 'authorFirstname', 'illusName', 'illusFirstname', NULL, NULL, 'editor', 'language', '2014-05-13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
