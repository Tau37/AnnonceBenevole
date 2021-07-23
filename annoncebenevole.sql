-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 juil. 2021 à 08:06
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `annoncebenevole`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
CREATE TABLE IF NOT EXISTS `annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_annonce_id` int(11) NOT NULL,
  `link_categorie_id` int(11) DEFAULT NULL,
  `annonces` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CB988C6FDF8F6BDA` (`link_annonce_id`),
  KEY `IDX_CB988C6F4E5A67EF` (`link_categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `link_annonce_id`, `link_categorie_id`, `annonces`, `date`, `description`, `valide`) VALUES
(1, 1, 1, 'Offre', '2021-05-20 10:07:06', 'Je propose mes services de bricolage pour les mamies', 1),
(2, 1, 1, 'Dispo Bricolage', '2021-05-20 11:13:13', 'Bonjour, j\'ai du temps de libre, je sais bricoler. Je peux intervenir dans la zone d\' Arques la Bataille le mercredi après-midi.', 1),
(3, 1, 2, 'Dispo Jardinage', '2021-05-20 11:22:03', 'Bonjour, j\'ai du temps de libre, je sais jardiner. Je peux intervenir dans la zone de Rouen le mercredi matin.', 1),
(4, 1, 3, 'Porpose promenade', '2021-05-20 11:24:25', 'Bonjour, j\'ai du temps de libre. Je peux intervenir dans la zone d\' Arques la Bataille le mercredi après-midi pour de la promenade.', 1),
(5, 1, 2, 'Jardinage', '2021-05-20 11:25:38', 'Je propose mes services pour du jardinage chez papi et mami. Je suis outillé, travail soigné.', 1),
(6, 1, 3, 'Promenade', '2021-05-20 11:28:01', 'Bonjour, j\'ai du temps de libre pour promener mami et pourquoi pas la perdre ou l\'abandonner dans une forêt (sur demande).', 1),
(7, 1, 1, 'Pour du bricolage', '2021-05-20 11:29:14', 'Bonjour, j\'ai du temps de libre, je sais bricoler. Je peux intervenir dans la zone de Dieppe le samedi', 1),
(8, 1, 1, 'Offre', '2021-05-20 11:30:53', 'Bonjour, j\'ai du temps de libre, j\'aime rendre service et je sais bricoler. Je peux intervenir dans la zone d\' Arques la Bataille le jeudi matin.', 1),
(9, 1, 4, 'Cuisine', '2021-05-20 11:34:03', 'Je suis disponible pour préparer le repas de personnes dépendantes les vendredi sur Rouen', 1),
(10, 1, 5, 'Sport', '2021-05-20 11:36:10', 'Bonjour, je suis prof de sport à la retraite, je propose des activités sportives adaptées aux personnes désirants s\'entretenir dans la joie et la bonne humeur. Seulement le lundi matin', 1),
(11, 1, 7, 'Activités musicales', '2021-05-20 11:38:06', 'Si vous aimez chanter, j\'ai un très grand répertoire à vous proposer. J\'ai dans l\'idée de faire une chorale avec mes meilleurs élèves si cela vous dit ou simplement pour le plaisir de chanter chez vous.', 1),
(12, 1, 6, 'Propose cours de dessins', '2021-05-20 11:41:01', 'Bonjour, je propose d\'intervenir en EHPAD pour des activités d\'art plastique en groupe avec un projet d\'exposition. Possibilité d\'exposer dans la salle communale d\'Arques la Bataille pour fin juin.', 1),
(13, 1, 4, 'Cuisine Créole', '2021-05-20 11:43:53', 'Bonjour Marie-Thérèse propose d\'égayer vos repas une fois par semaine avec des plats créoles de type colombo, accras, j\'adore cuisiner et rendre service.', 1),
(14, 1, 5, 'Yoga', '2021-05-20 11:51:07', 'Je propose des séances de yoga les lundi après-midi sur Dieppe.', 1),
(15, 1, 7, 'Violoncelliste', '2021-05-20 12:09:38', 'Bonjour, je propose de passer en EHPAD ou a domicile jouer du violoncelle   pendant une petite heure et passer un agréable moment ensemble.', 1),
(16, 1, 3, 'Balade', '2021-05-20 12:12:35', 'Bonjour, je peux me promener sur la voie verte d\'Arques la bataille avec personnes dépendantes l\'arpès-midi', 1),
(17, 1, 2, 'Tonte de gazon', '2021-05-20 12:14:47', 'Bonjour, je peux intervenir chez particuliers pour tondre leur gazon, je suis équipé d\'une tondeuse si besoin. En fin de journée, vers 18 h. Rouen', 1),
(18, 1, 4, 'Cours de cuisine', '2021-05-20 12:25:06', 'Je souhaite partager mes connaissances en cuisine, vous permettre de créer des plats simples et délicieux. Disponible les lundi et vendredi après-midi', 1),
(19, 1, 6, 'Peinture', '2021-05-20 12:26:30', 'Je propose un atelier peinture en structure le mercredi matin sur Barentin', 1),
(20, 1, 7, 'Chant', '2021-05-20 12:27:56', 'Je propose des cours de chants à domicile les mardi après-midi. Répertoire années 50-60', 1),
(21, 19, 2, 'Etablissement cherche bénévoles', '2021-06-21 23:46:14', 'Bonjour, l\'établissement les lilas cherche une personne pour entretenir les potagers réservés\r\naux résidents et animer les périodes de plantation 2 fois par mois.', 1),
(22, 19, 6, 'Structure les lilas cherche bénévole', '2021-06-21 23:59:04', 'La structure Les Lilas sur Dieppe souhaiterais dispenser des cours de dessins, de poterie pour ses\r\nrésidents. Bonne humeur et pédagogie souhaités.', 1),
(23, 19, 1, 'test', '2021-06-22 00:05:10', 'test', 1),
(24, 19, 5, 'blabla', '2021-06-22 00:15:30', 'fjieomfhreqiofmrehfieqomfniofmqcdqciqoùcec', 1),
(25, 20, 5, 'Dispo pour cuisine', '2021-06-22 00:21:19', 'j\'aime la cuisine. Bisous de Jean......', 1),
(26, 20, 1, 'test', '2021-06-22 00:27:50', ',felfùldfjqofùqjofiùqfjoidùfjodùpfopz%FE', 1),
(27, 20, 5, 'je fais du sport', '2021-06-22 00:31:30', 'Je fais du sport avec les vieux', 1),
(28, 20, 5, 'je fais du sport', '2021-06-22 00:35:16', 'Je fais du sport avec les vieux', 1),
(29, 20, 3, 'promenade avec mami', '2021-06-22 00:36:37', 'Je peux me promener avec mami. Si elle sent bon.', 1),
(30, 20, 7, 'Je chante sous la douche', '2021-06-22 00:40:07', 'Je peux donner des cours de chant.', 1),
(31, 21, 3, 'Cherche Bénévoles', '2021-07-17 09:44:34', 'HEPAD Fondation Lemauve, aurait besoin de bénévoles pour promenade de résidents les mercredi et vendredi après-midi selon météo.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `categorie`) VALUES
(1, 'Bricolage'),
(2, 'Jardinage'),
(3, 'Promenade'),
(4, 'Cuisine'),
(5, 'Activité Sportive'),
(6, 'Art plastique'),
(7, 'musique / chant');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210715130602', '2021-07-15 15:06:14', 23),
('DoctrineMigrations\\Version20210718081750', '2021-07-18 08:18:09', 210);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DB021E96F624B39D` (`sender_id`),
  KEY `IDX_DB021E96E92F8F78` (`recipient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `recipient_id`, `title`, `message`, `created_at`, `is_read`) VALUES
(5, 1, 1, 'test', 'trd', '2021-07-19 09:52:51', 1),
(6, 1, 19, 'test', 'test', '2021-07-19 09:53:39', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finess` int(11) DEFAULT NULL,
  `structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpostal` int(11) NOT NULL,
  `lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `ville`, `tel`, `finess`, `structure`, `cpostal`, `lon`, `lat`) VALUES
(1, 'yechichian.cyril@free.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Yechichian', 'Cyril', 'Saint Voictore L\'Abbaye', '0605040302', NULL, NULL, 0, NULL, NULL),
(19, 'dubois.riton@gmail.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$no2EzcZ5zqpRIazBOevcTg$LV1qNeZFNylzVS8CCp7s/aR+s4Zg6bAd0dOtHrGBhk4', 'Dubois', 'Henri', 'Dieppe', '0605040302', 574129351, 'les lilas', 76200, NULL, NULL),
(20, 'dupre.jean@htomail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$lyZdJOf4lgbNxAsHFly+uA$gaoRtRtztJOIZIg/1Fhhs4y1U9dXhu+J1LxacHORd2A', 'Dupré', 'Jean', 'Rouen', '0655417785', NULL, NULL, 76000, NULL, NULL),
(21, 'fondation-lamauve@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232102830', 760790659, 'EHPAD Fondation Lamauve', 76000, 1.078521, 49.448828),
(22, 'foyersaintjoseph@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235712935', 760790923, 'EHPAD Foyer Saint-Joseph', 76000, 1.104433, 49.444981),
(23, 'korian.lejardin@groupe-korian.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235701662', 760790907, 'EHPAD Korian Le Jardin', 76000, 1.079247, 49.420887),
(24, 'korian.lescentclochers@korian.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235032002', 760915173, 'EHPAD Korian Les Cent Clochers', 76000, 1.044781, 49.432656),
(25, 'pleiade@rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235720173', 760915702, 'EHPAD La Pleiade', 76000, 1.086673, 49.429667),
(26, 'contact.sapins@filseine.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235602035', 760790949, 'EHPAD La Résidence des Sapins', 76000, 1.135895, 49.462615),
(27, 'accueil@maisondelacompassion.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235985500', 760790642, 'EHPAD La compassion', 76000, 1.096246, 49.447025),
(28, 'maisonretraite-sacrecoeur@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235703350', 760919498, 'EHPAD Sacré-coeur d\'Ernemont', 76000, 1.101087, 49.449277),
(29, 'administration.rsa@filseine.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235716618', 760792978, 'EHPAD Sainte-Anne', 76000, 1.102414, 49.446155),
(30, 'tt-rouen@domusvi.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235145353', 760919829, 'EHPAD Tiers Temps', 76000, 1.088373, 49.444734),
(31, 'adhap76a@adhapservices.eu', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232185901', 760027045, 'SAAD ADHAP SERVICES', 76000, 1.075021, 49.429817),
(32, 'saad.rouen@amapa.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235716703', 760916122, 'SAAD AMAPA ROUEN', 76000, 1.084777, 49.440178),
(33, 'rouen@apef-services.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232814121', 760032003, 'SAAD APEF (STE SOLEXIS)  ROUEN', 76000, 1.093888, 49.447524),
(34, 'angad76@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235888842', 760024935, 'SAAD ASS ANGAD ROUEN', 76000, 1.081304, 49.432731),
(35, 'sads.lacle@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235736090', 760035477, 'SAAD ASS LA CLE ROUEN', 76000, 1.080371, 49.430635),
(36, 'association.promaction@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235709593', 760031880, 'SAAD ASS PROMACTION ROUEN', 76000, 1.098257, 49.435049),
(37, 'a.blondel@autonhome.net', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232185901', 760034322, 'SAAD AUTONHOME', 76000, 1.082622, 49.431678),
(38, 'rouen@bienalamaison.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232101219', 760035329, 'SAAD BIEN A LA MAISON (ONELA) ROUEN', 76000, 1.08659, 49.44074),
(39, 'aideadomicile@ccas-rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232185940', 760916478, 'SAAD CCAS ROUEN', 76000, 1.096953, 49.443197),
(40, 'contact762@cleyade.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235731736', 760031807, 'SAAD CLEYADE SARL AAD ROUEN', 76000, 1.098805, 49.450635),
(41, 'agence76@domidom.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235651830', 760026955, 'SAAD DOMIDOM SERVICES ROUEN', 76000, 1.088206, 49.439283),
(42, 'laetitia.levasseur@juniorsenior.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232080687', 760028811, 'SAAD JUNIOR SENIOR\'S SERVICES ROUEN', 76000, 1.091357, 49.438492),
(43, 'f.benamara@lesessentielles.eu', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '761446234', 760038281, 'SAAD LES ESSENTIELLES FLAUBERT', 76000, 1.076734, 49.434813),
(44, 'valerie.letellier@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '243720202', 760028910, 'SAAD O2 ROUEN', 76000, 1.103282, 49.43569),
(45, 'severine.klein@a2micile.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '232084525', 760032292, 'SAAD ROUEN SARL A2MICILE', 76000, 1.083687, 49.437711),
(46, 'rouen@domicilis.net', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235730303', 760038372, 'SAAD ROUEN SARL DOMICILIS', 76000, 1.096373, 49.439617),
(47, 'rouen@sousmontoit.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '646676324', 760031849, 'SAAD SARL ADHEO SERVICES ROUEN', 76000, 1.107972, 49.442261),
(48, 'frederique.paumier@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '243720202', 760032276, 'SAAD SARL O2 ROUEN', 76000, 1.084668, 49.443442),
(49, 'olivier.lanos@ologi.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '276306486', 760028423, 'SAAD SARL OLOGI ROUEN', 76000, 1.093014, 49.438516),
(50, 'agence-rouen@domusvi.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ROUEN', '235984834', 760018788, 'SPASAD Domusvi Rouen', 76000, 1.090641, 49.43978),
(51, 'lajosa76000@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '232102760', 760028043, 'SPASAD Lajosa', 76000, 1.077005, 49.449631),
(52, 'ssiad@rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ROUEN', '235078734', 760801514, 'SSIAD CCAS Rouen', 76000, 1.096953, 49.443197),
(53, 'goderville.ccad@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'GODERVILLE', '235279807', 760804138, 'SAAD CCAD GODERVILLE', 76110, 0.365742, 49.6473),
(54, 'veronique.mouteliere@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BUCHY', '235325832', 760035204, 'SAAD O2 RY-BUCHY', 76116, 1.341069, 49.470174),
(55, 'accueil@lesjardinsmatisse.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GRAND QUEVILLY', '235696633', 760023358, 'EHPAD Les Jardin de Matisse', 76120, 1.041782, 49.405711),
(56, 'secretariat.pole-usld-ehpad@chu-rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'MONT SAIN-AIGNAN ', '232889285', 760790873, 'EHPAD Boucicaut Mont Saint-Aignan', 76130, 1.082591, 49.471442),
(57, 'les.iliades@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'MONT SAIN-AIGNAN ', '235761212', 760919035, 'EHPAD Les iliades', 76130, 1.086765, 49.473465),
(59, 'montsaintaignan@axeoservices.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'MONT SAIN-AIGNAN ', '278940479', 760038901, 'SAAD ALM LES SERVICES - AXEO SERVICES', 76130, 1.097593, 49.474197),
(60, 'valerie.bailleux@ville-mont-saint-aignan.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'MONT SAIN-AIGNAN ', '235143068', 760010629, 'SPASAD du CCAS de Mont-Saint-Aignan', 76130, 1.080184, 49.459753),
(63, 'elena.filotti@vitalliance.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'PETIT-QUEVILLY', '666891625', 760034108, 'SAAD VITALLIANCE LE PETIT-QUEVILLY', 76140, 1.061388, 49.415132),
(64, 'ssiad.saint-julien@chu-rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'PETIT-QUEVILLY', '232886535', 760803098, 'SSIAD Petit-Quevilly Centre hospitalier', 76140, 1.055579, 49.421182),
(65, 'accueil@village-des-aubepins.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'MAROMME', '232135800', 760782359, 'EHPAD Le Village des Aubépins', 76150, 1.042726, 49.480746),
(66, 'administration@chdl-darnetal.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DARNETAL', '232123232', 760803007, 'EHPAD Darnetal', 76160, 1.148486, 49.445288),
(67, 'secretariat.castel@smsj.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST JACQUES SUR DARNETAL', '235234301', 760790667, 'EHPAD Le Castel Saint-Jacques', 76160, 1.206247, 49.437172),
(68, 'mishkane@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BOIS L\'ÉVÊQUE', '235592800', 760920298, 'EHPAD Mishkane', 76160, 1.270541, 49.460156),
(70, 'aid76@aid76.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'SAINT-LEGER DU BOURG DENIS', '235712033', 760800763, 'SAAD ST-LEGER DU BOURG DENIS ASS AID76', 76160, 1.163984, 49.431908),
(71, 'delcombre.sylvie@neuf.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DARNETAL', '235083953', 760800995, 'SSIAD AIPA Darnetal', 76160, 1.148486, 49.445288),
(72, 'direction@chi-cauxvalleedeseine.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LILLEBONNE', '235393636', 760802900, 'EHPAD Rosenberg', 76170, 0.537515, 49.473899),
(73, 'adef.lillebonne@aliceadsl.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LILLEBONNE', '235383778', 760025460, 'SAAD ASS ADEF LILLEBONNE', 76170, 0.535111, 49.519341),
(74, 'cindy.renier@juniorsenior.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LILLEBONNE', '232651944', 760033837, 'SAAD JUNIORSENIOR\'S SERVICES LILLEBONNE', 76170, 0.534353, 49.518469),
(75, 'secretariat-general@hopital-yvetot.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'YVETOT', '235957300', 760802967, 'EHPAD Asselin Hedelin', 76190, 0.745068, 49.618332),
(76, 'lesdamesblanches@fondationpartageetvie.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'YVETOT', '235950876', 760801308, 'EHPAD Les Dames-Blanches', 76190, 0.759503, 49.621397),
(77, 'yvetot@bienalamaison.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'YVETOT', '278940275', 760035337, 'SAAD BIEN A LA MAISON (ONELA) YVETOT', 76190, 0.751939, 49.61849),
(79, 'sophie.pfaff@ccas-yvetot.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'YVETOT', '235959140', 760913210, 'SSIAD CCAS Yvetot', 76190, 0.75701, 49.619664),
(80, 'dguerinbachelot@ch-dieppe.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'DIEPPE', '232147680', 760802884, 'EHPAD Château Michel', 76200, 1.075991, 49.907734),
(81, 'direction.residence-jacquesbonvoisin@fces.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'DIEPPE', '232903920', 760028621, 'EHPAD Jacques Bonvoisin', 76200, 1.079568, 49.920002),
(82, 'accueil.village@gmail.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DIEPPE', '235841095', 760790758, 'EHPAD Village Opad', 76200, 1.070631, 49.918898),
(83, 'ludovic.letondeur@mairie-dieppe.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DIEPPE', '235066212', 760795161, 'SAAD CCAS DIEPPE', 76200, 1.0797972185143012, 49.92840274762947),
(84, 'alain.philippe@senior-compagnie.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'DIEPPE', '232068628', 760035584, 'SAAD SENIOR COMPAGNIE DIEPPE', 76200, 1.073662, 49.925339),
(85, 'dieppe-paysdecaux@axeoservices.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DIEPPE', '235839018', 760034678, 'SAAD SERVICAUX PERSONNES (Axéo) DIEPPE', 76200, 1.071594, 49.924699),
(86, 'SMaillard@ch-dieppe.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DIEPPE', '232147796', 760028779, 'SSIAD Centre hospitalier Dieppe', 76200, 1.078587, 49.92155),
(87, 'ssiad.off@gmail.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DIEPPE', '235848555', 760802462, 'SSIAD OPAD', 76200, 1.070516, 49.919237),
(89, 'AB3A@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BOLBEC', '235312668', 760794115, 'SAAD ASS ADEF  BOLBEC', 76210, 0.471333, 49.566481),
(91, 'ljdg@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GOURNAY EN BRAY', '232899323', 760919886, 'EHPAD Les Jardins de Gournay', 76220, 1.7099178999999367, 49.47175319999999),
(92, 'contact@ehpad-la-feuillie.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LA FEUILLIE', '232899530', 760782292, 'EHPAD Noury', 76220, 1.513248, 49.459715),
(93, 'direction.hopital@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GOURNAY EN BRAY', '232899060', 760802959, 'EHPAD du Centre hospitalier de Gournay-en-Bray', 76220, 1.724008, 49.478329),
(94, 'pbs@eco-solidaire.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GOURNAY EN BRAY', '235902703', 760028092, 'SAAD PBS PAYS DE BRAY SERVICES GOURNAY', 76220, 1.724926, 49.480625),
(95, 'ssiadpa.gournay@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GOURNAY EN BRAY', '235901298', 760802454, 'SSIAD 76 Croix-Rouge française', 76220, 1.722893, 49.483869),
(96, 'korian.villasaintdo@groupe-korian.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'BOIS GUILLAUME', '235524700', 760916312, 'EHPAD Korian Villa Saint-Do', 76230, 1.115963, 49.4641),
(97, 'contact@la-buissonniere.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ISNEAUVILLE', '235600768', 760790840, 'EHPAD La Buissonnière', 76230, 1.140726, 49.496004),
(98, 'info@la-boiseraie.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'BOIS GUILLAUME', '235121400', 760023572, 'EHPAD La boiseraie', 76230, 1.112099, 49.480683),
(99, 'ass.lesterrasses@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BOIS GUILLAUME', '235611117', 760792200, 'EHPAD Les terrasses', 76230, 1.102719, 49.453997),
(100, 'direction@residence-saint-antoine.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BOIS GUILLAUME', '235126100', 760918052, 'EHPAD Résidence Saint-Antoine', 76230, 1.106212, 49.457122),
(101, 'sylvie-juilien@ville-bois-guillaume.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'BOIS GUILLAUME', '235122476', 760794065, 'SAAD CCAS BOIS-GUILLAUME', 76230, 1.119589, 49.470242),
(102, 'ehpad.le.mesnil.esnard@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE MESNIEL ESNARD', '235806161', 760919647, 'EHPAD Le Moulin des près', 76240, 1.148983, 49.408641),
(103, 'accueil@hautesbruyeres.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BONSECOURS', '232865230', 760800730, 'EHPAD Les Hautes Bruyères', 76240, 1.127729, 49.4173771),
(104, 'ccas@le-mesnil-esnard.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE MESNIEL ESNARD', '232865658', 760797068, 'SAAD CCAS LE MESNIL ESNARD', 76240, 1.153394, 49.404676),
(105, 'elbeuf@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ELBEUF', '235346410', 760038174, 'SAAD TBS2 O2 ROUEN EST', 76240, 1.156947, 49.397251),
(106, 'contact@chg-lafilandiere.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'DÉVILLE LÈS ROUEN', '235752020', 760920413, 'EHPAD la Filandière', 76250, 1.054085, 49.456854),
(107, 'ssiad@chg-lafilandiere.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'DÉVILLE LÈS ROUEN', '235763091', 760026336, 'SSIAD La Filandière', 76250, 1.054085, 49.456854),
(108, 'secretariatdirection@ch-de-eu.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'EU', '227282222', 760802892, 'EHPAD du Centre hospitalier de Eu', 76260, 1.4215, 50.050684),
(109, 'bienchezsoi@9business.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'EU', '232140213', 760028068, 'SAAD BIEN CHEZ SOI (EU)', 76260, 1.418946, 50.046605),
(111, 'smenager@ch-neufchatel.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NEUFCHÂTEL EN BRAY', '232975656', 760802918, 'EHPAD Centre hospitalier Fernand Langlois', 76270, 1.449189, 49.731248),
(112, 'ahautebethune@ahautebethune.fede.76.admr.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NEUFCHÂTEL EN BRAY', '235949241', 760797407, 'SAAD ASS LOCALE ADMR LA HAUTE BETHUNE', 76270, 1.493239, 49.694919),
(113, 'mairie-neufchatel-enbray@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NEUFCHÂTEL EN BRAY', '232975310', 760797373, 'SAAD CCAS NEUFCHATEL EN BRAY', 76270, 1.441718, 49.732948),
(114, 'odelestre@ch-neufchatel.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NEUFCHÂTEL EN BRAY', '232975667', 760808667, 'SSIAD du Centre hospitalier de Neufchâtel', 76270, 1.454847, 49.727018),
(115, 'thomas.drouin@asso-lapommeraie.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CRIQUELOT L\'ESNEVAL', '235102100', 760782904, 'EHPAD La Pommeraie', 76280, 0.265031, 49.642614),
(116, 'aapacanino@club-internet.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CRIQUELOT L\'ESNEVAL', '235283991', 760025163, 'SAAD AAPA CRIQUETOT L\'ESNEVAL', 76280, 0.265878, 49.643997),
(117, 'ssiadcriquetot@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CRIQUELOT L\'ESNEVAL', '235297789', 760010025, 'SSIAD ADMR Criquetot', 76280, 0.268023, 49.640641),
(118, 'philippe.labalme@korian.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'MONTIVILLIERS', '235130083', 760023259, 'EHPAD Korian Hauts de l\'Abbaye', 76290, 0.180172, 49.536405),
(119, 'lehavrenord@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'MONTIVILLIERS', '615616567', 760038877, 'SAAD REN SERVICES - 02 LE HAVRE NORD', 76290, 0.186726, 49.534365),
(120, 'brochet.thierry@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST MARTIN DU MANOIR', '235305959', 760027458, 'SAAD SARL AGATE SAINT-MARTIN DU MANOIR', 76290, 0.239235, 49.541774),
(121, 'contact.rsj@filseine.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'SOTTEVILLE LES ROUEN', '235725268', 760790675, 'EHPAD Saint-Joseph', 76300, 1.095701, 49.418637),
(122, 'confortetsoinsadomicile@gmail.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'SOTTEVILLE LES ROUEN', '651897593', 760033738, 'SAAD CONFORT ET SOINS A DOMICILE', 76300, 1.080672, 49.417704),
(123, 'scopservices76@free.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'SOTTEVILLE LES ROUEN', '235724695', 760026757, 'SAAD SCOP SERVICES 76', 76300, 1.080971, 49.414372),
(124, 'ssad@mairie-sotteville-les-rouen.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'SOTTEVILLE LES ROUEN', '235636232', 760922013, 'SSIAD CCAS Sotteville', 76300, 1.089693, 49.414123),
(125, 'direction.cogerpa@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'SAINTE ADRESSE', '235483070', 760913731, 'EHPAD La Roseraie', 76310, 0.084238, 49.506386),
(126, 'secdirection@ch-lecallier-leriche.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'CAUDEBEC LES ELBEUF', '232960888', 760803031, 'EHPAD Lecallier Leriche Epms', 76320, 1.025073, 49.286391),
(127, 'ccascaudebec@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'CAUDEBEC LES ELBEUF', '232960580', 760794578, 'SAAD CCAS CAUDEBEC LES ELBEUF', 76320, 1.019556, 49.285935),
(128, 'ehpad.notredamedegravenchon@coallia.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NOTRE DAME DE GRAVENCHON', '235389191', 760913590, 'EHPAD Le Telhuet', 76330, 0.574629, 49.496949),
(129, 'mairie-ccas@notre-dame-de-gravenchon.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'NOTRE DAME DE GRAVENCHON', '232845520', 760034355, 'SAAD CCAS PORT-JEROME EN SEINE', 76330, 0.568208, 49.489511),
(130, 'ssiad.nddegravenchon@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'NOTRE DAME DE GRAVENCHON', '235386478', 760916155, 'SSIAD de la Croix-Rouge', 76330, 0.571929, 49.489812),
(131, 'ssoyez@monsieurvincent.asso.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'HOLDENG AU BOSC', '235935527', 760782896, 'EHPAD Castel Saint-Joseph Hodeng au Bosc', 76340, 1.696715, 49.888277),
(132, 'cormeilles-direction@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BLANGY SUR BRESLE', '232975190', 760782193, 'EHPAD Masse de Cormeilles', 76340, 1.631878, 49.928702),
(133, 'ssiadtroisrivieres@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FOUCARMONT', '235943898', 760025874, 'SSIAD Foucarmont', 76340, 1.569768, 49.847461),
(134, 'lequesnot@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'OISSEL', '235649740', 760915579, 'EHPAD Le Quesnot', 76350, 1.083606, 49.341241),
(136, 'ccas@ville-oissel.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'OISSEL', '232958967', 760797563, 'SAAD CCAS OISSEL', 76350, 1.088843, 49.339347),
(137, 'christine.baliere@chbarentin.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BARENTIN', '235928256', 760802868, 'EHPAD du centre hospitalier de l\'Austreberthe', 76360, 0.95434, 49.542513),
(139, 'ssiad@chbarentin.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'BARENTIN', '235928242', 760023879, 'SSIAD Seine - Caux Austreberthe', 76360, 0.954549, 49.542275),
(140, 'accueilmatinsbleus@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'BELLEVILLE SUR MER', '235046500', 760921304, 'EHPAD Les Matins Bleus', 76370, 1.156725, 49.946674),
(141, 'contact@vivrechezsoiennormandie.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'SAINT MARTIN EN CAMPAGNE', '235832109', 760026641, 'SAAD VIVRE CHEZ SOI EN NORMANDIE', 76370, 1.189379, 49.956511),
(142, 'ehpad.jeanferrat@mfn-ssam.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CANTELEU', '232107890', 760028639, 'EHPAD Jean-Ferrat', 76380, 1.016724, 49.443078),
(143, 'contact.ssiad@mutualite76.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CANTELEU', '235700534', 760034389, 'SSIAD de Flore', 76380, 1.016724, 49.443078),
(144, 'maison.de.retraite.aumale@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'AUMALE', '232975230', 760782185, 'EHPAD Résidence du Duc d\'Aumale', 76390, 1.750738, 49.767605),
(145, 'sam.aumale@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'AUMALE', '235949904', 760029801, 'SSIAD de la Croix Rouge', 76390, 1.750722, 49.767661),
(146, 'boismartel@ch-fecamp.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'FECAMP', '235294343', 760922625, 'EHPAD Le Bois-Martel', 76400, 0.400461, 49.749581),
(147, 'moulinsauroy@ch-fecamp.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FECAMP', '235274515', 760920629, 'EHPAD Le Moulin au Roy', 76400, 0.38848, 49.755051),
(148, 'shamrock@ch-fecamp.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'FECAMP', '235287128', 760920637, 'EHPAD Le Shamrock', 76400, 0.381174, 49.750995),
(149, 'CYL@ch-fecamp.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FECAMP', '235101560', 760028290, 'EHPAD Yvon Lamour', 76400, 0.385373, 49.748205),
(151, 'charlene.hautot@juniorsenior.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FECAMP', '235284365', 760035287, 'SAAD JUNIOR & SENIOR\'S FECAMP', 76400, 0.379223, 49.756061),
(152, 'contact@acomad.asso.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FECAMP', '235292118', 760802512, 'SSIAD ACOMAD Fécamp', 76400, 0.372565, 49.759273),
(153, 'ehpad@chi-elbeuf-louviers.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'CLEON', '232827878', 760922062, 'EHPAD Le Bois-Rond', 76410, 1.035462, 49.307359),
(154, 'direction-ehpad@tourville-la-riviere.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'TOURVILLE LA RIVIERE', '235770007', 760023697, 'EHPAD Les Jonquilles', 76410, 1.105134, 49.328122),
(156, 'ccas@ville-cleon.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CLEON', '232962540', 760794685, 'SAAD CCAS CLEON', 76410, 1.033357, 49.314602),
(157, 'aideadomicile@ville-saint-aubin-les-elbeuf.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST AUBIN LES ELBEUF', '235819666', 760798355, 'SAAD CCAS SAINT-AUBIN LES ELBEUF', 76410, 1.013308, 49.299478),
(158, 'hopital@hl-saintromain.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST ROMAIN DE COLBOSC', '232795998', 760802975, 'EHPAD CH SAINT-ROMAIN-DE-COLBOSC', 76430, 0.361942, 49.526613),
(159, 'isabelle.gerard@hl-saintromain.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST ROMAIN DE COLBOSC', '232795151', 760919019, 'USLD CH SAINT-ROMAIN-DE-COLBOSC', 76430, 0.361942, 49.526613),
(160, 'AGCSR@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST ROMAIN DE COLBOSC', '235300485', 760799031, 'SAAD AGCSR SAINT-ROMAIN DE COLBOSC', 76430, 0.359806, 49.527858),
(161, 'aurelie.bonnard@juniorsenior.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST ROMAIN DE COLBOSC', '235204805', 760033829, 'SAAD JUNIOR SENIOR\'S SERVICES', 76430, 0.356606, 49.529924),
(162, 'ssiad@hl-saintromain.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST ROMAIN DE COLBOSC', '232795151', 760916171, 'SSIAD de l\'Hôpital local de Saint-Romain', 76430, 0.363562, 49.525609),
(163, 'm.r.beaufils@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'FORGES LES EAUX', '235905093', 760782300, 'EHPAD Fondation Beaufils', 76440, 1.539635, 49.610681),
(164, 'aideadomicile@forgesleseaux.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'FORGES LES EAUX', '232899423', 760795682, 'SAAD CCAS FORGES LES EAUX', 76440, 1.545078, 49.613435),
(165, 'contact@ehpad-grainville.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'GRAINVILLE', '235978211', 760782326, 'EHPAD Anne-Françoise Le Boultz', 76450, 0.638753, 49.747953),
(166, 'durdent@fede76.admr.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CANY BARVILLE', '278930080', 760038356, 'SAAD ADMR LA DURDENT', 76450, 0.638214, 49.787482),
(167, 'accueil@hopstval.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST VALERY EN CAUX', '235579560', 760802934, 'EHPAD du Centre hospitalier du Grand Large', 76460, 0.706878, 49.866452),
(168, 'alesfalaises@lesfalaises.fede76.admr.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST VALERY EN CAUX', '235972553', 760917260, 'SAAD ASS LOCALE ADMR LES FALAISES', 76460, 0.712635, 49.867458),
(170, 'ssiadpa.saintvalerycaux@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST VALERY EN CAUX', '235971099', 760800912, 'SSIAD de la Croix Rouge', 76460, 0.71473, 49.86936),
(171, 'direction@ehpad-letreport.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE TRÉPORT', '235862789', 760781609, 'EHPAD Jean-Ferrat', 76470, 1.380644, 50.057646),
(172, 'ccas@ville-le-treport.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE TRÉPORT', '235505522', 760799643, 'SAAD CCAS LE TREPORT', 76470, 1.382867, 50.058924),
(173, 'larchipel@fondationpartageetvie.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'DUCLAIR', '232826400', 760028894, 'EHPAD L\'Archipel', 76480, 0.868646, 49.479053),
(174, 'sssiad.lesbouclesdelaseine@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'YAINVILLE', '235374722', 760917609, 'SSIAD de Yainville', 76480, 0.832176, 49.457739),
(175, 'mrcollet.juilien@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'CAUDEBEC EN CAUX', '235959050', 760782128, 'EHPAD Maurice Collet', 76490, 0.721453, 49.524674),
(176, 'sabrina.chaigneau@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ELBEUF', '235788403', 760802686, 'EHPAD La Ruche', 76500, 1.019183, 49.288012),
(178, 'thierry.beaucousin@o2.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ELBEUF', '243720202', 760035030, 'SAAD (O2) Sté TB SERVICES CAUDEBEC', 76500, 1.015291, 49.286988),
(179, 'ccaselbeuf-am@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ELBEUF', '235810697', 760795294, 'SAAD CCAS ELBEUF', 76500, 1.00307, 49.290784),
(181, 'elbeuf@bienalamaison.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ELBEUF', '235776160', 760035311, 'SAAD ONELA (Sté BIEN A LA MAISON)', 76500, 1.009885, 49.286339),
(182, 'direction@opaer.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ELBEUF', '235773145', 760024950, 'SAAD OPAER ELBEUF', 76500, 1.008085, 49.289983),
(183, 'ssiad@chi-elbeuf-louviers.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ELBEUF', '235873632', 760802504, 'SSIAD Chi Elbeuf-Louviers', 76500, 0.995349, 49.295756),
(184, 'accueil@mairie-saintnicolas.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST NICOLAS D ALIERMONT', '235858011', 760798868, 'SAAD CCAS SAINT-NICOLAS D\'ALIERMONT', 76510, 1.22062, 49.879191),
(185, 'rouen-est@axeoservices.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'FRANQUEVILLE ST PIERRE', '235800999', 760031294, 'SAAD AXEO SERVICES ROUEN-EST', 76520, 1.182075, 49.396103),
(186, 'contact@residencecarola.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'GRAND COURONNE', '232115900', 760026732, 'EHPAD Résidence Carola', 76530, 1.010905, 49.361022),
(187, 'lespaquerettes@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'SASSETOT LE MAUCONDUIT', '235274484', 760792044, 'EHPAD Les Pâquerettes', 76540, 0.523291, 49.80388),
(188, 'mairie-offranville@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'OFFRANVILLE', '235854042', 760797530, 'SAAD CCAS OFFRANVILLE', 76550, 1.049193, 49.870668),
(189, 'claire.chartres@chbarentin.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'PAVILLY', '235921370', 760782391, 'EHPAD du centre hospitalier de l\'Austreberthe', 76570, 0.946931, 49.57159),
(190, 'asef@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'PAVILLY', '235921543', 760025130, 'SAAD ASEF (PAVILLY) AUSTREBERTHE SERV', 76570, 0.95363, 49.564083),
(191, 'sad.pavilly@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'PAVILLY', '232940889', 760024851, 'SAAD CRF PAVILLY', 76570, 0.955149, 49.567273),
(192, 'actionsociale@letrait.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE TRAIT', '235374953', 760799627, 'SAAD CCAS LE TRAIT', 76580, 0.804279, 49.48696),
(193, 'residence.lascie@wanadoo.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'ST CRESPIN', '235833149', 760782409, 'EHPAD Résidence La Scie', 76590, 1.109121, 49.789233),
(194, 'alongueville@longueville.fede76.admr.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LONGUEVILLE SUR SCIE', '235403208', 760917047, 'SAAD ASS LOCALE ADMR LONGUEVILLE', 76590, 1.107828, 49.792936),
(195, 'mdenis.ssiadstcrespin@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'ST CRESPIN', '235062795', 760026815, 'SSIAD de Saint-Crespin', 76590, 1.109776, 49.785288),
(196, 'contact@ehpad-havre.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '276321034', 760037614, 'EHPAD Jean Desaint - Les escales', 76600, 0.088302, 49.522161),
(197, 'francis.perna@korian.fr ', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '232853400', 760025973, 'EHPAD Korian Porte Océane', 76600, 0.102109, 49.491309),
(198, 'ehpad.lehavre@croix-rouge.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE HAVRE', '235545290', 760915397, 'EHPAD La Mare au Clerc', 76600, 0.122293, 49.514029),
(199, 'accueil-bois-de-bleville@groupe-sos.org', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE HAVRE', '235438000', 760791673, 'EHPAD Le bois de Bléville', 76600, 0.129338, 49.524226),
(200, 'les-jardins-d-elodie@les-matines.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '235496600', 760026773, 'EHPAD Les Jardins d\'Elodie', 76600, 0.103504, 49.528786),
(204, 'ms.havre@rennes-psdp.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '235424306', 760790832, 'EHPAD Ma Maison', 76600, 0.099193, 49.497148),
(205, 'ehpad.stjust@mfn-ssam.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE HAVRE', '232747950', 760791681, 'EHPAD Saint-Just', 76600, 0.093324, 49.519399),
(206, 'villa.saintnicolas@orange.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE HAVRE', '232724040', 760023549, 'EHPAD Villa Saint-Nicolas', 76600, 0.129921, 49.485203),
(209, 'annie.dauver@ch-havre.fr', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '232734716', 760806984, 'USLD les Terrasses de Flaubert', 76600, 0.111196, 49.497952),
(210, 'eric.hedouin@azae.com', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'John', 'LE HAVRE', '276251131', 760031120, 'SAAD A2MICILE  LE HAVRE', 76600, 0.111527, 49.489693),
(211, 'adhap76c@adhapservices.eu', '[\"ROLE_STRUCTURE\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Doe', 'Jane', 'LE HAVRE', '235459031', 760028118, 'SAAD AMONDOM76 ADHAP SERVICES LE HAVRE', 76600, 0.106038, 49.51812),
(212, 'lehavre@apef-services.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235442402', 760034728, 'SAAD APEF STE MAPHIMAT SERVICES', 76600, 0.109868, 49.497333),
(213, 'catherine.osmont@adeo.asso.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '235211221', 760025031, 'SAAD ASS ADEO LE HAVRE', 76600, 0.103567, 49.492757),
(214, 'contact@vivre-devenir.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '232850344', 760034058, 'SAAD ASS VIVRE ET DEVENIR LE HAVRE', 76600, 0.106841, 49.49808),
(215, 'aadlehavre@orange.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '235450107', 760030783, 'SAAD CLEYADE AGENCE DU HAVRE', 76600, 0.108862, 49.487335),
(216, 'lh.crf@orange.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235253209', 760024844, 'SAAD CROIX ROUGE (MDT) CRF LE HAVRE', 76600, 0.110172, 49.50379),
(217, 'lehavre-caux@domidom.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235541677', 760032714, 'SAAD DOMIDOM STEOCEANE LE HAVRE', 76600, 0.102929, 49.489869),
(218, 'dynamik76@yahoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '688110046', 760032201, 'SAAD DYNAMIK\'76 LE HAVRE', 76600, 0.147057, 49.487184),
(219, 'alexandrine.mutel@juniorsenior.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235225316', 760026906, 'SAAD JUNIOR SENIOR\'S SERVICES LE HAVRE', 76600, 0.106233, 49.491656),
(220, 'lehavre@domicilis.net', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '278780250', 760038380, 'SAAD LE HAVRE  SARL DOMICILIS', 76600, 0.113421, 49.497186),
(221, 'lehavre@jardins-arcadie.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '235224622', 760034959, 'SAAD LES JARDINS D\'ARCADIE', 76600, 0.101186, 49.490473),
(222, 'lehavre@o2.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235421849', 760032102, 'SAAD SARL O2 LE HAVRE', 76600, 0.11325, 49.493826),
(223, 'valerie.martin@reside-etudes.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '258569000', 760035493, 'SAAD STE RESIDE ETUDES SENIORS', 76600, 0.13611, 49.484382),
(224, 'coralie.donne@vitalliance.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'LE HAVRE', '762968151', 760038265, 'SAAD VITALLIANCE - LE HAVRE', 76600, 0.10661, 49.486373),
(225, 'maryse.virmontois@una.solidarite-normande.fr', '\"ROLE_SPASAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235269050', 760796367, 'SPASAD Association UNA', 76600, 0.12791, 49.499917),
(226, 'siadpa.lehavre@croix-rouge.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235253209', 760802447, 'SSIAD Croix rouge française', 76600, 0.122305, 49.513858);
INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `ville`, `tel`, `finess`, `structure`, `cpostal`, `lon`, `lat`) VALUES
(228, 'info.ssiad-havre@groupe-sos.org', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'Jane', 'LE HAVRE', '235438010', 760034132, 'SSIAD du Blois de Bléville', 76600, 0.129346, 49.524302),
(229, 'ehpad.envermeu@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'ENVERMEU', '235857049', 760782268, 'EHPAD Lemarchand', 76630, 1.265629, 49.896196),
(230, 'apetitcaux@petitcaux.fede76.admr.org', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'ENVERMEU', '235845428', 760024984, 'SAAD ASS LOCALE ADMR DE PETIT CAUX', 76630, 1.254071, 49.895473),
(231, 'ssiadenvermeu@orange.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'Jane', 'ENVERMEU', '235831629', 760920355, 'SSIAD Envermeu', 76630, 1.265093, 49.896851),
(232, 'afauvilleencaux@fauvilleencaux.fede76.admr.org', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'FAUVILLE EN CAUX', '232700568', 760912014, 'SAAD ASS LOCALE ADMR FAUVILLE EN CAUX', 76640, 0.591024, 49.651484),
(233, 'bouic-manoury-ssiad@orange.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'John', 'FAUVILLE EN CAUX', '235961864', 760914168, 'SSIAD de l\'EHPAD Fauville-en-Caux', 76640, 0.596205, 49.652221),
(234, 'aidemenagere.londinieres@wanadoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LONDINIERES', '235931194', 760796755, 'SAAD ASS AIDE MENAGERE PA LONDINIERES', 76660, 1.404602, 49.83176),
(235, 'a.rochette@orange.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'ST MARTIN OSMONVILLE', '235341682', 760913624, 'EHPAD La Maison Normande', 76680, 1.292231, 49.653357),
(236, 'accueil@ehpad-saint-saens.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'ST MARTIN OSMONVILLE', '235341444', 760782417, 'EHPAD Résidence d\'Eawy', 76680, 1.286073, 49.672844),
(237, 'adar.st.saens@wanadoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'ST MARTIN OSMONVILLE', '235325993', 760799049, 'SAAD ASS ADAR SAINT-SAENS', 76680, 1.284004, 49.67246),
(238, 'ssiad.deawy@orange.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'John', 'ST MARTIN OSMONVILLE', '235341444', 760920496, 'SSIAD de l\'EHPAD Saint-Saens', 76680, 1.286073, 49.672844),
(239, 'direction@epd-grugny.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'GRUGNY', '232938000', 760781633, 'EHPAD de Grugny', 76690, 1.102824, 49.620805),
(240, 'accueil-lescharmettes@gonfreville-l-orcher.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'GONFREVILLE L ORCHER', '232853600', 760023218, 'EHPAD Les Charmettes', 76700, 0.230321, 49.504236),
(241, 'mdr.rogerville@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'ROGERVILLE', '232792500', 760782755, 'EHPAD Maison Saint-Joseph', 76700, 0.282576, 49.509722),
(243, 'ehpad-les-myosotis@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'MONTVILLE', '235337167', 760782375, 'EHPAD Les Myosotis', 76710, 1.076278, 49.54913),
(244, 'info.fede76@admr.org', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'MONTVILLE', '232939090', 760795419, 'SAAD FEDERATION ADMR DE SEINE-MARITIME', 76710, 1.076278, 49.54913),
(245, 'Mairiebacquevilleencaux@yahoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'BACQUEVILLE EN CAUX', '235832103', 760793521, 'SAAD CCAS BACQUEVILLE EN CAUX', 76730, 0.996934, 49.786051),
(246, 'ssiadpa@croix-rouge.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'Jane', 'BACQUEVILLE EN CAUX', '235854757', 760800979, 'SSIAD de la Croix Rouge', 76730, 1.00603, 49.789049),
(247, 'contact@ehpad-buchy.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'BUCHY', '235344185', 760782201, 'EHPAD Gilles-Martin', 76750, 1.354986, 49.585633),
(248, 'res-lestroishameaux@groupecolisee.com', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'BUCHY', '235609336', 760917005, 'EHPAD de Morgny la Pommeraye', 76750, 1.25094, 49.516921),
(249, 'agaagy@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'YERVILLE', '232704440', 760918250, 'EHPAD Les Bruyères', 76760, 0.897861, 49.666625),
(250, 'ayadyerville@wanadoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'YERVILLE', '232704446', 760027144, 'SAAD ASS YERVILLAISE D\'AIDE A DOMICILE', 76760, 0.897938, 49.666654),
(251, 'ssiadpa.yerville@croix-rouge.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'John', 'YERVILLE', '233961961', 760918987, 'SSIAD Croix-Rouge francaise', 76760, 0.897845, 49.669867),
(252, 'mapad.lasource@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'LE HOULME', '235760882', 760919282, 'EHPAD La Source', 76770, 1.040275, 49.501876),
(253, 'ccas@ville-lehoulme.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'LE HOULME', '235741104', 760796508, 'SAAD CCAS LE HOULME', 76770, 1.039415, 49.507341),
(254, 'etoile-etretat@ehpad-sedna.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'ETRETAT', '235103993', 760915405, 'EHPAD Etoile du Matin', 76790, 0.211877, 49.709259),
(255, 'grandpierre@mutuelle-mbv.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'ST ETIENNE DU ROUVRAY', '232190010', 760027268, 'EHPAD MBV Michel Grandpierre', 76800, 1.09979, 49.382007),
(256, 'efavrel@ser76.com', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'John', 'ST ETIENNE DU ROUVRAY', '232959328', 760919654, 'SSIAD CCAS Saint-Etienne', 76800, 1.107904, 49.377704),
(257, 'residence.a.jean@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'LUNERAY', '235853134', 760782342, 'EHPAD Albert Jean', 76810, 0.919185, 49.831029),
(258, 'ssiad159@orange.fr', '\"ROLE_SSIAD\"', 'azerty', 'Doe', 'John', 'BOSC LE HARD', '235337475', 760919589, 'SSIAD Le Cailly', 76850, 1.17824, 49.6256),
(259, 'contact@ehpad-gaillefontaine.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'GAILLEFONTAINE', '235909541', 760782318, 'EHPAD LEFEBVRE-BLONDEL-DUBUS', 76870, 1.603454, 49.656194),
(260, 'admr.gaillefontaine@orange.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'GAILLEFONTAINE', '632467700', 760795864, 'SAAD ASS LOCALE ADMR GAILLEFONTAINE', 76870, 1.61545, 49.652801),
(261, 'res-arqueslabataille@groupecolisee.com', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'ARQUES LA BATAILLE', '235063838', 760023028, 'EHPAD La Maison de Fannie', 76880, 1.134283, 49.884203),
(262, 'ciamapa@ville-arques-la-bataille.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'ARQUES LA BATAILLE', '235048931', 760793273, 'SAAD CIAP ARQUES LA BATAILLE', 76880, 1.126025, 49.880927),
(263, 'resid.valfleuri@wanadoo.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'Jane', 'VAL DE SAANE', '232809280', 760920066, 'EHPAD Le Val Fleuri', 76890, 0.964731, 49.7036),
(264, 'ccas.mairie-amfreville@wanadoo.fr', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'Jane', 'AMFREVILLE LA MIVOIE', '232989036', 760793075, 'SAAD CCAS AMFREVILLE LA MIVOIE', 76920, 1.12241, 49.406804),
(265, 'mdr@boisjoli.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'LES GRANDES VENTES', '235835975', 760918722, 'EHPAD Le Bois-Joli', 76950, 1.229417, 49.785825),
(266, 'accueil@cote-de-velours.fr', '\"ROLE_EHPAD\"', 'azerty', 'Doe', 'John', 'NOTRE DAME DE BONDEVILLE', '235054800', 760782383, 'EHPAD La Côte de Velours', 76960, 1.047296, 49.4898834),
(267, 'christophe.launay@proxim76.com', '\"ROLE_SAAD\"', 'azerty', 'Doe', 'John', 'NOTRE DAME DE BONDEVILLE', '232828494', 760026922, 'SAAD PROXIM SERVICES ND DE BONDEVILLE', 76960, 1.048229, 49.489822);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD CONSTRAINT `FK_CB988C6F4E5A67EF` FOREIGN KEY (`link_categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FK_CB988C6FDF8F6BDA` FOREIGN KEY (`link_annonce_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `FK_DB021E96E92F8F78` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_DB021E96F624B39D` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
