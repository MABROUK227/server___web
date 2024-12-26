-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 déc. 2024 à 09:28
-- Version du serveur : 8.0.36
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mbk2`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

DROP TABLE IF EXISTS `BOOKS`;

CREATE TABLE IF NOT EXISTS `BOOKS` (
  `BOOK_ID` INT NOT NULL AUTO_INCREMENT,
  `AUTHOR` VARCHAR(25) NOT NULL,
  `KEYWORDS` VARCHAR(255) NOT NULL,
  `TITLE` VARCHAR(80) NOT NULL,
  `PRICE` INT NOT NULL,
  `IMAGE` VARCHAR(200) NOT NULL,
  `DESCRIPTION` TEXT NOT NULL,
  `LANGUAGE` VARCHAR(20) NOT NULL,
  `PAGES` INT NOT NULL,
  `DATE` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STOCK` INT NOT NULL,
  `ID_CATEGORY` INT NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  UNIQUE KEY `TITLE` (`TITLE`),
  KEY `CAT` (`ID_CATEGORY`)
) ENGINE=INNODB AUTO_INCREMENT=14 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`book_id`, `author`, `keywords`, `title`, `price`, `image`, `description`, `language`, `pages`, `date`, `stock`, `id_category`) VALUES
(2, 'ADJAHO MABROUK', 'Stephen', 'BIKE first ', 234, '\r\nhttps://m.media-amazon.com/images/I/71APjnmaaQL._AC_SY879_.jpg', 'ENGWE Velo Electrique Homme 20 Pouces-vélo électrique 48V 13Ah Batterie, VTT Electrique Adulte Homme Shimano 7 Vitesses avec écran LCD, 25km/h avec Moteur 250w, autonomie jusqu\'à 120km L20/L20 Boost', 'francais', 1135, '2022-06-10 01:05:19', 12, 3),
(3, 'ADJAHO MABROUK', 'Bike one le meilleur velo', 'BIke one', 120, 'https://th.bing.com/th/id/OIP.YFg1P8EKHR5H1k_tDIDsKgAAAA?rs=1&pid=ImgDetMain', 'ENGWE Velo Electrique Homme 20 Pouces-vélo électrique 48V 13Ah Batterie, VTT Electrique Adulte Homme Shimano 7 Vitesses avec écran LCD, 25km/h avec Moteur 250w, autonomie jusqu\'à 120km L20/L20 Boost', 'English', 1200, '2022-06-10 01:48:09', 12, 8),
(4, 'ADJAHO MABROUK', 'Gone,', 'BIKE 22', 145, 'https://cdn.futura-sciences.com/sources/images/reevo-vae-2.png', 'Concept de vélo électrique pour TeslaLa dissimulation d’une batterie lithium-ion dans le cadre permet d’alléger la carrosserie du vélo. La batterie est chargée grâce à l’utilisation de l’énergie cinétique produite pendant le trajet. L’écran intégré permet de surveiller en permanence ...', 'English', 1335, '2022-06-10 02:34:16', 13, 3),
(11, 'ADJAHO MABROUK', 'ADJAHO MABROUK', 'BIKE 4', 1244, 'https://m.media-amazon.com/images/I/611efID279L._AC_UY545_QL65_.jpg', 'GAYA a conçu ses vélos avec des urbain·e·s pour qu’ils s’intègrent dans leur quotidien beaucoup-trop-rock-&-roll.\r\nUn vélo cargo compact qui s\'adapte à toutes et à tous, un vélo traçable grâce à sa technologie antivol connectée, un vélo stable et confortable, un vélo rassurant grâce à son grand phare et ses clignotants. Un vélo qui vous donne des ailes et envie d\'aller plus loin !\r\n\r\n\r\n\r\nEligible pour les aides à l\'achat Cargo\r\nLivraison du vélo gratuite à domicile \r\nMarquage du vélo offert', 'English', 1900, '2022-06-10 03:05:08', 13, 9),
(12, 'ADJAHO MABROUK', 'lol lol ', 'BIKE 5', 368, 'https://m.media-amazon.com/images/I/71pTDZbjIxL._AC_SX679_.jpg', 'Eleglide M2 Vélo électrique Homme Femme, VTT électrique 27.5\'\'/29\", Vélo Électrique en Montagne pour Adulte, Batterie Amovible 36V 15Ah,24 Vitesses, Autonomie 125km', 'English', 1900, '2022-06-10 03:07:25', 13, 2),
(13, 'ADJAHO MABROUK', 'KFJIF MDR', 'BIKE 6', 368, 'https://m.media-amazon.com/images/I/71M31765CdL.__AC_SY300_SX300_QL70_ML2_.jpg', 'ENGWE Velo Electrique Homme 20 Pouces-vélo électrique 48V 13Ah Batterie, VTT Electrique Adulte Homme Shimano 7 Vitesses avec écran LCD, 25km/h avec Moteur 250w, autonomie jusqu\'à 120km L20/L20 Boost', 'English', 600, '2022-06-10 03:09:24', 13, 2);

-- Structure de la table `category`


DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `disabled`) VALUES
(1, 'VTT', 1),
(2, 'velo electrique', 0),
(3, 'BMX', 0),
(8, 'VÉLO DE VILLE ', 1),
(9, 'VELO DE COURSE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `cust_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`cust_id`, `email`, `password`, `cust_type`) VALUES
(33, 'm123@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'user'),
(34, 'ojk)jà123@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'user'),
(35, 'mo1@hotmail.fr', 'f416168b5eb1a5be010bbbc327eabee876de8b05', 'user'),
(36, 'momo@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'user'),
(37, 'admin01@gmail.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 'user'),
(38, 'khpolo@sophia.ma', '601f1889667efaebb33b8c12572835da3f027f78', 'admin'),
(39, 'root@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'user'),
(40, 'root4@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `message` varchar(11) NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_message`, `name`, `email`, `subject`, `message`) VALUES
(1, 'kaera rae ', 'i@gmail.com', 'hi my niggas', 'hi');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `cust_id` int NOT NULL,
  `book_id` int NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` int NOT NULL,
  `zip` int NOT NULL,
  `country` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `method` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `cust_id` (`cust_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id_order`, `cust_id`, `book_id`, `first_name`, `last_name`, `phone`, `zip`, `country`, `city`, `full_address`, `method`, `date`, `total`) VALUES
(11, 38, 11, 'pl', 'lkoo', 639964613, 38518, 'benin', 'cotonou', 'uhç_hug_iyuhuH', 'bill', '2022-06-10 08:10:04', 1244);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `setting` varchar(30) DEFAULT NULL,
  `value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setting` (`setting`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`) VALUES
(1, 'phone_number', '+330623025212'),
(2, 'email', 'momo@gmail.com'),
(3, 'facebook_link', '@'),
(4, 'twitter_link', 'https://'),
(5, 'linkedin_link', '@'),
(6, 'google_plus_link', 'https://'),
(7, 'website_link', 'https://');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `cat` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;