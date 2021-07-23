-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 20 mai 2021 à 16:07
-- Version du serveur :  10.3.27-MariaDB-0+deb10u1
-- Version de PHP : 7.4.18

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

CREATE TABLE `annonces` (
  `id` int(11) NOT NULL,
  `link_annonce_id` int(11) NOT NULL,
  `link_categorie_id` int(11) DEFAULT NULL,
  `annonces` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `valide` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `link_annonce_id`, `link_categorie_id`, `annonces`, `date`, `description`, `valide`) VALUES
(1, 1, NULL, 'Offre', '2021-05-20 10:07:06', 'Je propose mes services de bricolage pour les mamies', 1),
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
(20, 1, 7, 'Chant', '2021-05-20 12:27:56', 'Je propose des cours de chants à domicile les mardi après-midi. Répertoire années 50-60', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210520073825', '2021-05-20 09:38:29', 88);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `ville`, `tel`) VALUES
(1, 'yechichian.cyril@free.fr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$AjEv7GDXq0zd7pDPY24oXg$qGLnYF1Z7th+FYUUj6yg4IAdmcnrfApCTthohkLGBsk', 'Yechichian', 'Cyril', 'Saint Voictore L\'Abbaye', '0605040302');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CB988C6FDF8F6BDA` (`link_annonce_id`),
  ADD KEY `IDX_CB988C6F4E5A67EF` (`link_categorie_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD CONSTRAINT `FK_CB988C6F4E5A67EF` FOREIGN KEY (`link_categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FK_CB988C6FDF8F6BDA` FOREIGN KEY (`link_annonce_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
