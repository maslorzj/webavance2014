-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 02 Juin 2014 à 13:17
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
  `id` varchar(13) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bd`
--

INSERT INTO `bd` (`id`, `title`, `serie`, `authorName`, `authorFirstname`, `illusName`, `illusFirstname`, `colorName`, `colorFirstname`, `editor`, `language`, `publishDate`) VALUES
('1562358465987', 'title3', NULL, 'authorName3', 'authorFirstname3', 'illusName3', 'illusFirstname3', NULL, NULL, 'editor3', 'language3', '2014-06-02'),
('2464519738246', 'title1', NULL, 'authorName1', 'authorFirstname1', 'illusName1', 'illusFirstname1', NULL, NULL, 'editor1', 'language1', '2014-06-02'),
('4856215935485', 'title2', NULL, 'authorName2', 'authorFirstname2', 'illusName2', 'illusFirstname2', NULL, NULL, 'editor2', 'language2', '2014-06-02');

-- --------------------------------------------------------

--
-- Structure de la table `bd_user`
--

CREATE TABLE IF NOT EXISTS `bd_user` (
  `userId` int(11) NOT NULL,
  `bdId` varchar(13) NOT NULL,
  PRIMARY KEY (`userId`,`bdId`),
  KEY `fk_bd_user_bd` (`bdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `bd_user`
--

INSERT INTO `bd_user` (`userId`, `bdId`) VALUES
(1, '1562358465987'),
(2, '1562358465987'),
(1, '2464519738246'),
(2, '2464519738246'),
(2, '4856215935485');

-- --------------------------------------------------------

--
-- Structure de la table `classifying`
--

CREATE TABLE IF NOT EXISTS `classifying` (
  `userId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `classifying`
--

INSERT INTO `classifying` (`userId`, `position`, `field`) VALUES
(1, 1, 'editor'),
(1, 2, 'authorName'),
(1, 3, 'title');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `name`, `firstname`) VALUES
(1, 'Epona5', 'Benoit', 'Eva'),
(2, 'CrazyDuckVlady', 'Tragnée', 'William');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bd_user`
--
ALTER TABLE `bd_user`
  ADD CONSTRAINT `fk_bd_user_bd` FOREIGN KEY (`bdId`) REFERENCES `bd` (`id`),
  ADD CONSTRAINT `fk_bd_user_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `classifying`
--
ALTER TABLE `classifying`
  ADD CONSTRAINT `fk_classifying_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
