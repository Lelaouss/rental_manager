-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  ven. 24 mai 2019 à 13:41
-- Version du serveur :  8.0.12
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
-- Base de données :  `rentalmanager`
--

-- --------------------------------------------------------

--
-- Structure de la table `county`
--

DROP TABLE IF EXISTS `county`;
CREATE TABLE IF NOT EXISTS `county` (
  `id_county` int(11) NOT NULL AUTO_INCREMENT,
  `id_country` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_county`),
  KEY `IDX_58E2FF255CA5BEA7` (`id_country`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `county`
--

INSERT INTO `county` (`id_county`, `id_country`, `name`, `code`, `active`) VALUES
(1, 75, 'Ain', '01', 1),
(2, 75, 'Aisne', '02', 1),
(3, 75, 'Allier', '03', 1),
(4, 75, 'Alpes-de-Haute-Provence', '04', 1),
(5, 75, 'Hautes-Alpes', '05', 1),
(6, 75, 'Alpes-Maritimes', '06', 1),
(7, 75, 'Ardèche', '07', 1),
(8, 75, 'Ardennes', '08', 1),
(9, 75, 'Ariège', '09', 1),
(10, 75, 'Aube', '10', 1),
(11, 75, 'Aude', '11', 1),
(12, 75, 'Aveyron', '12', 1),
(13, 75, 'Bouches-du-Rhône', '13', 1),
(14, 75, 'Calvados', '14', 1),
(15, 75, 'Cantal', '15', 1),
(16, 75, 'Charente', '16', 1),
(17, 75, 'Charente-Maritime', '17', 1),
(18, 75, 'Cher', '18', 1),
(19, 75, 'Corrèze', '19', 1),
(20, 75, 'Corse-du-sud', '2a', 1),
(21, 75, 'Haute-corse', '2b', 1),
(22, 75, 'Côte-d\'or', '21', 1),
(23, 75, 'Côtes-d\'armor', '22', 1),
(24, 75, 'Creuse', '23', 1),
(25, 75, 'Dordogne', '24', 1),
(26, 75, 'Doubs', '25', 1),
(27, 75, 'Drôme', '26', 1),
(28, 75, 'Eure', '27', 1),
(29, 75, 'Eure-et-Loir', '28', 1),
(30, 75, 'Finistère', '29', 1),
(31, 75, 'Gard', '30', 1),
(32, 75, 'Haute-Garonne', '31', 1),
(33, 75, 'Gers', '32', 1),
(34, 75, 'Gironde', '33', 1),
(35, 75, 'Hérault', '34', 1),
(36, 75, 'Ile-et-Vilaine', '35', 1),
(37, 75, 'Indre', '36', 1),
(38, 75, 'Indre-et-Loire', '37', 1),
(39, 75, 'Isère', '38', 1),
(40, 75, 'Jura', '39', 1),
(41, 75, 'Landes', '40', 1),
(42, 75, 'Loir-et-Cher', '41', 1),
(43, 75, 'Loire', '42', 1),
(44, 75, 'Haute-Loire', '43', 1),
(45, 75, 'Loire-Atlantique', '44', 1),
(46, 75, 'Loiret', '45', 1),
(47, 75, 'Lot', '46', 1),
(48, 75, 'Lot-et-Garonne', '47', 1),
(49, 75, 'Lozère', '48', 1),
(50, 75, 'Maine-et-Loire', '49', 1),
(51, 75, 'Manche', '50', 1),
(52, 75, 'Marne', '51', 1),
(53, 75, 'Haute-Marne', '52', 1),
(54, 75, 'Mayenne', '53', 1),
(55, 75, 'Meurthe-et-Moselle', '54', 1),
(56, 75, 'Meuse', '55', 1),
(57, 75, 'Morbihan', '56', 1),
(58, 75, 'Moselle', '57', 1),
(59, 75, 'Nièvre', '58', 1),
(60, 75, 'Nord', '59', 1),
(61, 75, 'Oise', '60', 1),
(62, 75, 'Orne', '61', 1),
(63, 75, 'Pas-de-Calais', '62', 1),
(64, 75, 'Puy-de-Dôme', '63', 1),
(65, 75, 'Pyrénées-Atlantiques', '64', 1),
(66, 75, 'Hautes-Pyrénées', '65', 1),
(67, 75, 'Pyrénées-Orientales', '66', 1),
(68, 75, 'Bas-Rhin', '67', 1),
(69, 75, 'Haut-Rhin', '68', 1),
(70, 75, 'Rhône', '69', 1),
(71, 75, 'Haute-Saône', '70', 1),
(72, 75, 'Saône-et-Loire', '71', 1),
(73, 75, 'Sarthe', '72', 1),
(74, 75, 'Savoie', '73', 1),
(75, 75, 'Haute-Savoie', '74', 1),
(76, 75, 'Paris', '75', 1),
(77, 75, 'Seine-Maritime', '76', 1),
(78, 75, 'Seine-et-Marne', '77', 1),
(79, 75, 'Yvelines', '78', 1),
(80, 75, 'Deux-Sèvres', '79', 1),
(81, 75, 'Somme', '80', 1),
(82, 75, 'Tarn', '81', 1),
(83, 75, 'Tarn-et-Garonne', '82', 1),
(84, 75, 'Var', '83', 1),
(85, 75, 'Vaucluse', '84', 1),
(86, 75, 'Vendée', '85', 1),
(87, 75, 'Vienne', '86', 1),
(88, 75, 'Haute-Vienne', '87', 1),
(89, 75, 'Vosges', '88', 1),
(90, 75, 'Yonne', '89', 1),
(91, 75, 'Territoire de Belfort', '90', 1),
(92, 75, 'Essonne', '91', 1),
(93, 75, 'Hauts-de-Seine', '92', 1),
(94, 75, 'Seine-Saint-Denis', '93', 1),
(95, 75, 'Val-de-Marne', '94', 1),
(96, 75, 'Val-d\'oise', '95', 1),
(97, 75, 'Mayotte', '976', 1),
(98, 75, 'Guadeloupe', '971', 1),
(99, 75, 'Guyane', '973', 1),
(100, 75, 'Martinique', '972', 1),
(101, 75, 'Réunion', '974', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
