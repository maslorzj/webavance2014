-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 20 Juin 2014 à 11:58
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
  `id` bigint(13) NOT NULL,
  `couvPath` varchar(255) NOT NULL DEFAULT 'resources/img/couv/default.png',
  `title` varchar(255) NOT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `authorName` varchar(255) NOT NULL,
  `authorFirstname` varchar(255) DEFAULT NULL,
  `illusName` varchar(255) NOT NULL,
  `illusFirstname` varchar(255) DEFAULT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `colorFirstname` varchar(255) DEFAULT NULL,
  `editor` varchar(255) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `publishDate` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bd`
--

INSERT INTO `bd` (`id`, `couvPath`, `title`, `serie`, `authorName`, `authorFirstname`, `illusName`, `illusFirstname`, `colorName`, `colorFirstname`, `editor`, `language`, `publishDate`) VALUES
(9782012100066, 'resources/img/couv/asterix_et_cleopatre.png', 'Astérix et Cléopâtre', 'Astérix', 'Goscinny', 'René', 'Uderzo', 'Albert', 'Uderzo', 'Albert', 'Hachette', 'FR', 1965),
(9782012100082, 'resources/img/couv/asterix_le_breton.png', 'Astérix chez les Bretons', 'Astérix', 'Goscinny', 'René', 'Uderzo', 'Albert', 'Uderzo', 'Albert', 'Dargaud', 'FR', 1966),
(9782012100104, 'resources/img/couv/asterix_legionnaire.png', 'Astérix Légionnaire', 'Astérix', 'Goscinny', 'René', 'Uderzo', 'Albert', 'Uderzo', 'Albert', 'Dargaud', 'FR', 1967),
(9782203001003, 'resources/img/couv/tintin_au_pays_des_soviets.png', 'Tintin au pays des Soviets', 'Tintin', 'Rémi', 'Georges', 'Rémi', 'Georges', 'Rémi', 'Georges', 'Casterman', 'FR', 1930),
(9782203001054, 'resources/img/couv/tintin_l_oreille_cassee.png', 'L''oreille cassée', 'Tintin', 'Rémi', 'Georges', 'Rémi', 'Georges', 'Rémi', 'Georges', 'Casterman', 'FR', 1947),
(9782203001100, 'resources/img/couv/tintin_le_secret_de_la_licorne.png', 'Le secret de la licorne', 'Tintin', 'Prosper Remi', 'Georges', 'Prosper Remi', 'Georges', 'Prosper Remi', 'Georges', 'Casterman', 'FR', 1942),
(9782203001176, 'resources/img/couv/tintin_l_affaire_tournesol.png', 'L''affaire Tournesol', 'Tintin', 'Prosper Remi', 'Georges', 'Prosper Remi', 'Georges', 'Prosper Remi', 'Georges', 'Casterman', 'FR', 1956),
(9782205049145, 'resources/img/couv/achille_talon_tout_va_bien.png', 'Tout va bien !', 'Achille Talon', 'Christmann', 'Didier', 'Windenlocher', 'Roger', 'Windenlocher', 'Roger', 'Dargaud', 'FR', 2000),
(9782359660258, 'resources/img/couv/la_balade_de_yaya_la_fugue.png', 'La fugue', 'La Balade de Yaya', 'Omont', 'Jean-Marie', 'Omont', 'Jean-Marie', 'Zhao', 'Golo', 'Les éditions FEI', 'FR', 2011),
(9782365770132, 'resources/img/couv/daytripper_au_jour_le_jour.png', 'Au jour le Jour', 'Daytripper', 'Ba', 'Gabriel', 'Moon', 'Fábio', 'Stewart', 'Dave', 'Urban comics', 'FR', 2012),
(9782505006084, 'resources/img/couv/une_vie_chinoise_le_temps_du_pere.png', 'Le temps du père', 'Une vie chinoise', 'Kunwu', 'Li', 'Otie', 'P', 'Otie', 'P', 'Kana', 'FR', 2009),
(9782505017097, 'resources/img/couv/boule_et_bill_un_amour_de_cocker.png', 'Un amour de cocker', 'Boule et Bill', 'Aranega', 'Diego', 'Verron', 'Laurent', 'Verron', 'Laurent', 'Dargaud', 'FR', 2013),
(9782745957405, 'resources/img/couv/Journal_de_Julie_J_oserai_jamais.png', 'J''oserai jamais !', 'Le journal de Julie', 'Prince', 'Hélène', 'Prince', 'Hélène', 'Prince', 'Hélène', 'Milan', 'Français', 2013),
(9782800131009, 'resources/img/couv/violine_les_yeux_de_la_tete.png', 'Les yeux de la tête', 'Violine', 'Vasseur', 'Didier', 'Tarrin', 'Fabrice', 'Tarrin', 'Fabrice', 'Dupuis', 'FR', 2001),
(9782800147215, 'resources/img/couv/zombillenium_gretchen.png', 'Gretchen', 'Zombillenium', 'De Pins', 'Arthur', 'De Pins', 'Arthur', 'De Pins', 'Arthur', 'Dupuis', 'FR', 2010),
(9782800150543, 'resources/img/couv/zombillenium_ressources_humaines.png', 'Ressources humaines', 'Zombillénium', 'De Pins', 'Arthur', 'De Pins', 'Arthur', 'De Pins', 'Arthur', 'Dupuis', 'FR', 2011),
(9782809422269, 'resources/img/couv/avengers_la_couronne_du_serpent.png', 'La couronne du serpent', 'Avengers', 'Englehart', 'Steve', 'Englehart', 'Steve', 'Pérez', 'George', 'Panini Comics', 'FR', 2012),
(9782870970021, 'resources/img/couv/blake_et_mortimer_le_secret_de_l_espadon_tome_1.png', 'Le secret de l''Espadon T1', 'Blake et Mortimer', 'Jacobs', 'Edgar Pierre', 'Biermé', 'Philippe', 'Daniels', 'Luce', 'Hachette', 'FR', 1954),
(9782870970102, 'resources/img/couv/blake_et_mortimer_la_marque_jaune.png', 'La marque jaune', 'Blake et Mortimer', 'Jacobs', 'Edgar Pierre', 'Biermé', 'Philippe', 'Daniels', 'Luce', 'Hachette', 'FR', 1956),
(9782870971895, 'resources/img/couv/blake_et_mortimer_l_onde_septimus.png', 'L''onde septimus', 'Blake et Mortimer', 'Dufaux', 'Jean', 'Aubin', 'Antoine', 'Aubin', 'Antoine', 'Blake & Mortimer', 'FR', 2013),
(9782870971896, 'resources/img/couv/default.png', 'El Cakr', 'Assassin''s Creed', 'Corbeyran', 'Eric', 'Defali', 'Djillali', '', '', 'Les Deux Royaumes', 'FR', 2013);

-- --------------------------------------------------------

--
-- Structure de la table `bd_user`
--

CREATE TABLE IF NOT EXISTS `bd_user` (
  `userId` int(11) NOT NULL,
  `bdId` bigint(13) NOT NULL,
  PRIMARY KEY (`userId`,`bdId`),
  KEY `fk_bd_user_bd` (`bdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bd_user`
--

INSERT INTO `bd_user` (`userId`, `bdId`) VALUES
(1, 9782012100066),
(1, 9782012100104),
(3, 9782012100104),
(3, 9782203001003),
(1, 9782203001054),
(3, 9782203001054),
(1, 9782203001100),
(1, 9782203001176),
(3, 9782205049145),
(3, 9782359660258),
(3, 9782745957405),
(1, 9782800131009),
(3, 9782800147215),
(1, 9782800150543),
(3, 9782800150543),
(1, 9782809422269),
(3, 9782870970021),
(1, 9782870971896),
(3, 9782870971896);

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
  `email` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'Epona5', 'chevalvava@hotmail.fr', -1243019935),
(2, 'CrazyDuckVlady', 'archo666@hotmail.fr', 3045692),
(3, 'user', 'user@gmail.com', 1509442);

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
