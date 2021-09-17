-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 07 oct. 2018 à 17:01
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `babel`
--
CREATE DATABASE IF NOT EXISTS `babel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `babel`;

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examen` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `local` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`id`, `examen`, `date`, `local`) VALUES
(1, 'math', '2017-03-01', 'B21'),
(2, 'gym', '2017-03-02', 'A23'),
(3, 'anatomie', '2017-03-03', 'B22'),
(4, 'géographie', '2017-03-04', 'B23'),
(5, 'Histoire', '2017-03-05', 'B21'),
(6, 'Français', '2017-01-30', 'B22'),
(7, 'Anglais', '2017-01-31', 'B23'),
(8, 'histoire', '2018-10-17', 'B11'),
(9, 'math', '2018-11-14', 'B23'),
(10, 'Géographie', '2018-12-19', 'B11'),
(11, 'Sciences', '2019-02-14', 'B21'),
(12, 'math', '2019-02-13', 'A12'),
(13, 'Géographie', '2019-02-19', 'B11'),
(14, 'Sciences', '2018-10-15', 'B3'),
(15, 'math', '2018-11-20', 'B22'),
(16, 'math', '2019-03-14', 'B22'),
(17, 'Géographie', '2019-04-04', 'B11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
