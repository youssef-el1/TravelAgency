-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 02 jan. 2022 à 18:26
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yallah`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idvoyage` int DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idvoyage` (`idvoyage`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `idvoyage`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(35, 25, '1641135688_masjidnabwi-1280x580.jpg', '2022-01-02 15:01:28', '2022-01-02 15:01:28', NULL),
(32, 24, '1641134857_istanbul-tours-1280x580.jpg', '2022-01-02 14:47:37', '2022-01-02 14:47:37', NULL),
(33, 24, '1641134945_joseph-barrientos-49318-unsplash-1280x580.jpg', '2022-01-02 14:49:05', '2022-01-02 14:49:05', NULL),
(34, 25, '1641135688_Hajj-1280x640-1-1280x580.jpg', '2022-01-02 15:01:28', '2022-01-02 15:01:28', NULL),
(29, 24, '1641134302_voyage-organisé-turkey.jpg', '2022-01-02 14:38:22', '2022-01-02 14:38:22', NULL),
(36, 26, '1641136643_34.jpg', '2022-01-02 15:17:23', '2022-01-02 16:03:54', NULL),
(37, 26, '1641136643_99.jpg', '2022-01-02 15:17:23', '2022-01-02 16:03:54', NULL),
(38, 26, '1641136731_barcelona-header-1-1280x580.jpg', '2022-01-02 15:18:51', '2022-01-02 16:03:54', NULL),
(39, 27, '1641146966_shutterstock_772769227-1280x580.jpg', '2022-01-02 18:09:26', '2022-01-02 18:17:20', NULL),
(40, 27, '1641146966_wallpapersden.com_city-night-paris_1280x720.jpg', '2022-01-02 18:09:26', '2022-01-02 18:17:20', NULL),
(41, 27, '1641146966_ws_Louvre_Paris_1280x720.jpg', '2022-01-02 18:09:26', '2022-01-02 18:17:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_26_172020_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('abdessamadourad1999@gmail.com', '$2y$10$eodbZJABPsaCh/Dl4IzYoucsXsJb5oh7oVWWVTT5TuMLNIVUAjPeG', '2021-12-15 23:00:37');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_nais` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tele` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_place` int DEFAULT NULL,
  `type_pay` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_recu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `voyage_id` int DEFAULT NULL,
  `statut` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `voyage_id` (`voyage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `created_at`, `updated_at`, `nom`, `prenom`, `tele`, `nbr_place`, `type_pay`, `photo_recu`, `user_id`, `voyage_id`, `statut`) VALUES
(8, '2022-01-02 15:38:48', '2022-01-02 18:15:55', 'ouarad', 'abdessamad', '+212600179429', 4, 'virement', '1641137928_img-20150423-wa0001.jpg', 3, 25, 1),
(6, '2022-01-02 15:32:43', '2022-01-02 15:32:43', 'sadiki', 'hatim', '0605617084', 2, 'virement', '1641137563_img-20150423-wa0001.jpg', 4, 26, 0),
(7, '2022-01-02 15:36:56', '2022-01-02 15:36:56', 'ouarad', 'abdessamad', '+212600179429', 2, 'virement', '1641137816_img-20150423-wa0001.jpg', 3, 24, 0),
(9, '2022-01-02 15:41:40', '2022-01-02 15:41:40', 'hind', 'elkholfi', '0678954312', 1, 'sur_place', NULL, 5, 24, 1),
(10, '2022-01-02 18:13:35', '2022-01-02 18:13:35', 'ahmed', 'alqadmiri', '0687953421', 3, 'sur_place', NULL, 6, 27, 1),
(11, '2022-01-02 18:15:15', '2022-01-02 18:15:48', 'issam', 'kamal', '+212600179429', 1, 'sur_place', NULL, 6, 27, 0);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nyuBZbPuoxRzrMaw2qQCo9PKb5V7G2wKd6yuAQKY', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaUN1WWphZWJZRUJiQkZWOEowYWJYRWNVdmFFQVFOdFBudHk4SHNPeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwNCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUd011MFVpdFZka2xGZGwxVUlJM011TDIuVnJXcC5LdnNIUlFQMTNONjZkc3ZPaHpRQzdrbSI7czo4OiJpZHZveWFnZSI7czoyOiIyNCI7fQ==', 1641147554);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'abdessamad ouarad', 'abdessamadourad199@gmail.com', 0, NULL, '$2y$10$TwMu0UitVdklFdl1UII3MuL2.VrWp.KvsHRQP13N66dsvOhzQC7km', NULL, NULL, NULL, NULL, NULL, '2022-01-02 13:15:17', '2022-01-02 13:15:17'),
(4, 'hatim sadiki', 'hatimsadiki@gmail.com', 1, NULL, '$2y$10$u0EDQhcLAKWRybSicTOQPOcDj8zTTWOXSYyoPvL8p1BEtRN3JcaxK', NULL, NULL, NULL, NULL, NULL, '2022-01-02 13:16:29', '2022-01-02 17:17:41'),
(5, 'hind elkholfi', 'hindelkholfi@gmail.com', 0, NULL, '$2y$10$1PJEwVCxM0sE/VW4wW1MMe2uswDNx2RzgAzP81EeqKn68BbFUE2rm', NULL, NULL, NULL, NULL, NULL, '2022-01-02 13:17:26', '2022-01-02 13:17:26'),
(6, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$3AjnOMd8W49Gy8dAZxlDHeKk3uUHLhFmqs/4tb4/kbp1MnEmnhWb2', NULL, NULL, NULL, NULL, NULL, '2022-01-02 13:18:44', '2022-01-02 13:18:44');

-- --------------------------------------------------------

--
-- Structure de la table `voyages`
--

DROP TABLE IF EXISTS `voyages`;
CREATE TABLE IF NOT EXISTS `voyages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_dp` date NOT NULL,
  `date_ar` date NOT NULL,
  `duree` int NOT NULL,
  `prix` int NOT NULL,
  `nbplace` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voyages`
--

INSERT INTO `voyages` (`id`, `titre`, `date_dp`, `date_ar`, `duree`, `prix`, `nbplace`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'Istanbul capitale du monde', '2022-01-08', '2022-01-15', 8, 5990, 30, '<h2><span style=\"text-decoration: underline; color: #f1c40f;\">Jour 1:</span></h2>\r\n<p><strong>- Rencontre &agrave; l&rsquo;a&eacute;roport Med V de Casablanca (3 heures minimum avant l\'heure du d&eacute;part)</strong></p>\r\n<p><strong>- D&eacute;part vers Istanbul</strong></p>\r\n<p><strong>- Arriv&eacute;e &agrave; l\'a&eacute;roport d\'Istanbul</strong></p>\r\n<p><strong>- Se diriger vers l&rsquo;h&ocirc;tel.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave; l\'h&ocirc;tel.&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"text-decoration: underline;\"><span style=\"color: #f1c40f; text-decoration: underline;\">Jour 2:</span></span></h2>\r\n<p><strong>-&nbsp;</strong><strong>Petit-d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel</strong></p>\r\n<p><strong>- Direction vers la place SultanAhmet. Cette visite comprend :</strong></p>\r\n<ul>\r\n<li><strong>Visite de la Mosqu&eacute;e Bleue: Mosqu&eacute;e SultanAhmet.</strong></li>\r\n<li><strong>Visite du palais Topkapı</strong></li>\r\n<li><strong>Visite de la mosqu&eacute;e Aya Sofia</strong></li>\r\n</ul>\r\n<p><strong>- Balade &agrave; pied pour visiter :</strong></p>\r\n<ul>\r\n<li><strong>Le Grand Bazard&nbsp;</strong><strong>: C\'est le plus&nbsp;grand bazar couvert au monde, avec la 58 rues, 18 portes, et 4000 boutiques.</strong></li>\r\n<li><strong>March&eacute; Mahmoud Pacha&nbsp;:</strong><strong>&nbsp;C\'est un march&eacute; diversifi&eacute; situ&eacute; &agrave; c&ocirc;t&eacute; du march&eacute; &eacute;gyptien et qui contient de nombreux magasins et boutiques qui vendent divers produits tels que des chaussures, des v&ecirc;tements, des couvertures, des rideaux, de la nourriture, etc.</strong></li>\r\n<li><strong>March&eacute; &Eacute;gyptien</strong><strong>: ou March&eacute; aux &Eacute;pices. C\'est l\'un des march&eacute;s populaires les plus c&eacute;l&egrave;bres d\'Istanbul et le deuxi&egrave;me apr&egrave;s le Grand Bazar. Un choix incroyable de douceurs aux couleurs et parfums vari&eacute;s sont propos&eacute;s &agrave; la d&eacute;gustation dans les petites boutiques du march&eacute; &Eacute;gyptien.</strong></li>\r\n</ul>\r\n<p><strong>- Direction vers le Port d&rsquo;Eminonu</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>N.B&nbsp;:</strong><strong>&nbsp;Le but de cette visite est de faire d&eacute;couvrir ces lieux aux participants pour avoir une id&eacute;e g&eacute;n&eacute;rale sur la r&eacute;gion du SultanAhmet et pour qu\'ils puissent y revenir pendant leur temps libre s\'ils souhaitent faire du shopping.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>- Temps libre pour le D&eacute;jeuner&nbsp;: Nous vous sugg&eacute;rons de d&eacute;jeuner au port d\'Eminonu avec un sandwich de poisson (Balık Ekmek), qui est l\'un des plats populaires les plus c&eacute;l&egrave;bres d\'Istanbul, servi par des bateaux &agrave; l\'allure ottomane sur le port. Vous pouvez le manger sur place ou l\'emporter avec vous.</strong></p>\r\n<p><strong>- Croisi&egrave;re au Bosphore pour une dur&eacute;e d&rsquo;une heure et demi.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave; l\'h&ocirc;tel.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"text-decoration: underline; color: #f1c40f;\">Jour 3:&nbsp;&nbsp;</span></h2>\r\n<p><strong>- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel</strong></p>\r\n<p><strong>- La visite du :</strong></p>\r\n<ul>\r\n<li><strong>Parc Miniaturk (La petite Turquie)</strong></li>\r\n<li><strong>Visite du Mus&eacute;e Rahmi Ko&ccedil;&nbsp;&nbsp;:&nbsp;</strong><strong>Le mus&eacute;e Rahmi Ko&ccedil; est l\'un des sites touristiques arch&eacute;ologiques les plus importants et les plus beaux d\'Istanbul, car il s\'agit du premier mus&eacute;e antique qui refl&egrave;te l\'histoire de l\'industrie turque, depuis le Khalifat Othoman jusqu\'&agrave; cette ann&eacute;e.</strong></li>\r\n</ul>\r\n<p><strong>- Visite de la Mosqu&eacute;e Sultan Eyup,</strong><strong>&nbsp;cette visite comprend aussi :</strong></p>\r\n<ul>\r\n<li><strong>La Mont&eacute;e en T&eacute;l&eacute;ph&eacute;rique</strong></li>\r\n<li><strong>Pause-caf&eacute; &agrave; &laquo; Pierre Lotti &raquo; pour profiter de la vue panoramique de la ville d&rsquo;Istanbul et la Corne d\'Or.</strong></li>\r\n<li><strong>Visite de la mosqu&eacute;e Sultan Eyup.</strong></li>\r\n</ul>\r\n<p><strong>-&nbsp;</strong><strong>Direction vers Venezia Mega Outlet</strong><strong>: Venezia Mega Outlet est un mall &agrave; ciel ouvert avec un tr&egrave;s bel concept qui rappelle la belle ville italienne de Venise. La mall comprend plus de 180 magasins divers, avec un canal au milieu o&ugrave; vous pouvez faire du bateau.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave; l\'h&ocirc;tel.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"text-decoration: underline;\"><span style=\"color: #f1c40f;\">Jour 4:&nbsp;</span></span>&nbsp;</h2>\r\n<p><strong>&nbsp;</strong><strong>- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel.</strong></p>\r\n<p><strong>- Matin&eacute;e libre pour faire du shopping.</strong></p>\r\n<p><strong>- Se rassembler &agrave; 15h00 pour commencer notre tourn&eacute;e:</strong></p>\r\n<ul>\r\n<li><strong>Visite du Mus&eacute;e Panorama 1453: C\'est un mus&eacute;e unique en son genre, qui retrace l\'histoire de la prise de Constantinople par Mehmet El Fatih en 1453.</strong></li>\r\n<li><strong>Direction vers Ortak&ouml;y</strong></li>\r\n<li><strong>Visite du port et de la mosqu&eacute;e d\'Ortak&ouml;y.</strong></li>\r\n<li><strong>Manger les c&eacute;l&egrave;bres pommes de terre turques farcies, connues sous le nom de \"Kumpir\".</strong></li>\r\n<li><strong>Direction vers la place Taksim</strong></li>\r\n<li><strong>Visite de la place Taksim et de l\'Avenue Istiklal</strong></li>\r\n<li><strong>Prendre le Tramway historique qui longe l\'Avenue Istiklal: C\'est un Tramway d\'un seul wagon, qui est devenu un symbole mythique de la ville d\'Istanbul. &nbsp;</strong></li>\r\n<li><strong>Visite externe de la tour de Galata&nbsp;: C\'est lun des monuments les plus visibles de la ville d\'Istanbul. Sa silhouette cylindrique caract&eacute;ristique constitue un rep&egrave;re imposant dans le ciel de ce quartier tout en offrant une vue panoramique de la vieille ville d\'Istanbul, la Corne d\'Or et le Bosphore.</strong></li>\r\n</ul>\r\n<p><strong>-&nbsp;</strong><strong>Nuit&eacute;e &agrave; l\'h&ocirc;tel.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"text-decoration: underline; color: #f1c40f;\"><strong>Jour 5:</strong></span></h2>\r\n<p><strong>- Prendre le petit d&eacute;jeuner &agrave; l\'h&ocirc;tel.</strong></p>\r\n<p><strong>- Direction vers la Mosqu&eacute;e Suleymaniye (&agrave; pieds)</strong></p>\r\n<p><strong>- Temps libre pour prendre des photos avec la vue panoramique sur la Corne d\'Or et le Bosphore.</strong></p>\r\n<p><strong>- Direction vers le port d\'Eminonu (A pieds)</strong></p>\r\n<p><strong>- Travers&eacute;e en bateau vers les &Icirc;les des Princesses (Buyukada)</strong></p>\r\n<p><strong>- Temps libre pour d&eacute;couvrir l\'&Icirc;le des Princesses.</strong></p>\r\n<p><strong>- D&eacute;jeuner</strong></p>\r\n<p><strong>- Retour en bateau vers Istanbul.</strong></p>\r\n<p><strong>- Visite de la Colline de &Ccedil;amlıca&nbsp;:</strong>&nbsp;<strong>Istanbul est situ&eacute;e sur sept collines, mais la colline de &Ccedil;amlıca est le meilleur endroit pour avoir une magnifique vue panoramique sur la ville.</strong></p>\r\n<p><strong>- Visite de la mosqu&eacute;e &Ccedil;amlica (la plus grande mosqu&eacute;e de la Turquie)</strong></p>\r\n<p><strong>- D&icirc;ner.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave; l&rsquo;h&ocirc;tel.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<h2><span style=\"text-decoration: underline;\"><span style=\"color: #f1c40f; text-decoration: underline;\"><strong>Jour 6:</strong></span></span></h2>\r\n<p><strong>- Petit d&eacute;jeuner &agrave; l\'h&ocirc;tel</strong></p>\r\n<p><strong>- Direction vers le mus&eacute;e de Chocolat Pelit.</strong></p>\r\n<p><strong>- Direction vers Uskudar:</strong></p>\r\n<p><strong>- Visite du parc Nakkaştepe:&nbsp;</strong></p>\r\n<ul>\r\n<li><strong>Profiter de la beaut&eacute; du jardin</strong></li>\r\n<li><strong>Participer &agrave; l&rsquo;activit&eacute; de tyrolienne: une descente qui vous offre une vue &eacute;poustouflante sur le pont du 15 Temmuz Şehitler.</strong></li>\r\n</ul>\r\n<p><strong>- Visite de la tour de t&eacute;l&eacute;vision et de radio &agrave; &Ccedil;amlıca.</strong></p>\r\n<p><strong>- Direction vers le Centre Commercial Emaar:</strong></p>\r\n<ul>\r\n<li><strong>Visite de l\'Aquarium</strong></li>\r\n<li><strong>Temps libre pour faire du shopping et d&eacute;couvrir le reste des activit&eacute;s disponibles dans le centre commercial.</strong></li>\r\n</ul>\r\n<p><strong>- Direction vers le centre commercial &laquo;&nbsp;</strong><strong>Water Garden&nbsp;</strong><strong>&raquo; qui comprend une tr&egrave;s belle fontaine dansante.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave; l&rsquo;h&ocirc;tel.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>&nbsp;</strong><span style=\"text-decoration: underline;\"><span style=\"color: #f1c40f; text-decoration: underline;\">Jour 7:</span></span></h2>\r\n<p><strong>- Petit d&eacute;jeuner &agrave; l\'h&ocirc;tel</strong></p>\r\n<p><strong>- Journ&eacute;e libre pour profiter de cette ville magique.</strong></p>\r\n<p><strong>- Nuit&eacute;e &agrave;&nbsp;l&rsquo;h&ocirc;tel</strong></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"text-decoration: underline; color: #f1c40f;\"><strong>Jour 8:</strong></span></h2>\r\n<p><strong>- Petit d&eacute;jeuner &agrave; l\'h&ocirc;tel</strong></p>\r\n<p><strong>- Check-out de&nbsp;l\'h&ocirc;tel</strong></p>\r\n<p><strong>- Direction vers l\'a&eacute;roport.</strong></p>\r\n<p><strong>- Proc&eacute;dures a&eacute;roportuaires</strong></p>\r\n<p><strong>- Vol vers le Maroc</strong></p>\r\n<p><strong>- Arriv&eacute;e &agrave; Casablanca, A&eacute;roport Mohammed V</strong></p>', '2022-01-02 14:38:22', '2022-01-02 14:40:41', NULL),
(25, 'Omra janvier', '2022-01-23', '2022-02-07', 15, 14500, 40, '<h2 dir=\"RTL\"><span style=\"font-size: 14pt; color: #e03e2d;\"><u>عمرة شهر يناير &ndash;فبراير من الموسم المقبل من سنة 2020 م</u></span></h2>\r\n<p dir=\"RTL\">تعلن وكالة الخزامة للأسفار والسياحة عن تنظيم رحلات دينية الى الديار المقدسة لأداء مناسك العمرة&nbsp; خلال شهر يناير &ndash;وفبراير&nbsp;من السنة المقبلة 2020 م ، ويسعدها أن تقدم مجموعة من البرامج المتنوعة&nbsp;حسب رغبة زبنائها الكرام وبأثمنة جد مناسبة في متناول الجميع وعليه فان التسجيل مفتوح.</p>\r\n<p dir=\"RTL\">----------------------------------------------------------------------</p>\r\n<p dir=\"RTL\">- الرحلة الاولى<span dir=\"LTR\">&nbsp;:&nbsp;</span>الذهاب يوم 23 يناير 2020، الرجوع يوم 7 فبراير 2020..رحلة غير مباشرةة</p>\r\n<p dir=\"RTL\">----------------------------------------------------------------------.</p>\r\n<p dir=\"RTL\"><u>-&nbsp;</u><u>البرنامج السياحي :</u>&nbsp;ابتداء من 14500 درهم.</p>\r\n<p dir=\"RTL\"><u>-&nbsp;</u><u>البرنامج الممتاز :</u>&nbsp;ابتداء من17000. درهم .</p>\r\n<p dir=\"RTL\">------------------------------------------------------------------------</p>\r\n<p dir=\"RTL\"><u>-<strong>&nbsp;وتشمل الأثمنة ما يلي:</strong></u></p>\r\n<p dir=\"RTL\">- الاقامة&nbsp; بمكة المكرمة&nbsp; والمدينة المنورة في فنادق مصنفة ممتازة حسب نوعية المنتوج المتفق عليه.</p>\r\n<p><span dir=\"RTL\" lang=\"AR-SA\">- تذكرة الطائرة ذهابا وايابا انطلاقا من وجدة الى المدينة المنورة<strong>&nbsp;</strong>عبر الدار البيضاء&nbsp;</span><span dir=\"RTL\" lang=\"AR-MA\">.</span></p>\r\n<p><span dir=\"RTL\" lang=\"AR-MA\">- جميع التنقلات داخل العربية السعودية بما فيها المزارات&nbsp;</span><span dir=\"RTL\" lang=\"AR-SA\">على متن حافلات سياحية مكيفة .</span></p>\r\n<p dir=\"RTL\">- خدمات التأشيرة.</p>\r\n<p dir=\"RTL\">- التأطير الكامل والرعاية الشاملة طيلة مدة الرحلة مع مرافقين من الوكالة ذو خبرة وكفاءة عالية.</p>\r\n<p dir=\"RTL\"><strong><u>ملحوظة:</u></strong><strong>&nbsp;الاثمنة لاتشمل</strong>&nbsp;التامين الصحي الذي فرضته المملكة العربية السعودية&nbsp;&nbsp;على كل معتمر (189 ريال سعودي) .</p>\r\n<p dir=\"RTL\">- وللتذكير عدد المقاعد محدود ولن يتم أي تسجيل إلا بعد دفع الجواز<strong>+ 70</strong>% من القيمة المتفق عليها.</p>', '2022-01-02 15:01:28', '2022-01-02 15:01:28', NULL),
(26, 'Barcelone', '2022-06-01', '2022-06-05', 5, 3500, 20, '<h2><span style=\"color: #236fa1;\">5 jours / 4 nuits</span></h2>\r\n<p><strong><span style=\"background-color: #236fa1; color: #ecf0f1;\">A partir de 3500 DHs&nbsp; / personne</span><br /></strong></p>\r\n<p>D&eacute;part de Casablanca garanti &agrave; partir de 2 personnes</p>\r\n<p><strong><u>Le pack inclut&nbsp;:</u></strong></p>\r\n<ul>\r\n<li>Billet d&rsquo;avion aller/retour avec Air Arabia (Bagages &agrave; main de 10kg inclus)</li>\r\n<li>4 nuit&eacute;es dans un h&ocirc;tel 3***</li>\r\n<li>Transfert : A&eacute;roport-H&ocirc;tel &amp; H&ocirc;tel-A&eacute;roport</li>\r\n</ul>\r\n<p><strong><u>N</u></strong><strong><u>B&nbsp;</u></strong><strong><u>:</u></strong>&nbsp;Notre &eacute;quipe pourra vous proposer des excursions ou activit&eacute;s &agrave; faire sur place, que vous pourrez r&eacute;server directement avec notre agence.</p>\r\n<ul>\r\n<li>Pour profiter de ce s&eacute;jour, le client doit avoir son VISA.</li>\r\n<li>L&rsquo;agence n&rsquo;intervient pas dans le processus d&rsquo;obtention de VISA.</li>\r\n</ul>', '2022-01-02 15:17:23', '2022-01-02 16:03:54', NULL),
(27, 'Paris', '2022-01-17', '2022-01-21', 5, 5600, 40, '<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"color: #e03e2d;\"> 1er jour : Maroc - Paris</span></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Envol de l&rsquo;a&eacute;roport Tanger vers Paris.</p>\r\n<p style=\"font-weight: 400;\">- Arriv&eacute;e, accueil et transfert par nos repr&eacute;sentants.</p>\r\n<p style=\"font-weight: 400;\">- Check in &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">- Promenade ( Libre ) &agrave; Paris.</p>\r\n<p style=\"font-weight: 400;\">- Retour &amp; Nuit&eacute;e &agrave; l\'h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"color: #e03e2d;\"> 2 &egrave;me jour : Journ&eacute;e Libre - Tour des Monuments Historiques</span></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">- Cette excursion, non seulement vous donne un aper&ccedil;u de l\'architecture, l\'histoire de la ville, et l\'histoire de l\'art, elle vous pr&eacute;sente aussi une image du r&ocirc;le et de l\'importance de Paris &agrave; travers l\'histoire europ&eacute;enne. Ch&acirc;teau et mus&eacute;e le Louvre est l\'endroit le plus accueillant et pour cause ses 35 000 &oelig;uvres hautes en couleurs et prestiges.</p>\r\n<p style=\"font-weight: 400;\">La Joconde de L&eacute;onard de Vinci est la peinture la plus admir&eacute;e au monde, elle est expos&eacute;e au Louvre. La place de la Concorde est la plus grande place de Paris, elle abor l\'ob&eacute;lisque de Louxor, plus vieux monument de Paris.</p>\r\n<p style=\"font-weight: 400;\">D&eacute;jeuner. <strong>( Libre )</strong></p>\r\n<p style=\"font-weight: 400;\">Apr&egrave;s avoir &eacute;t&eacute; pris en charge &agrave; votre h&ocirc;tel, vous d&eacute;couvrirez les lieux les plus c&eacute;l&egrave;bres de la capitale tels que les Champs-&Eacute;lys&eacute;es avec ses boutiques de grandes marques et ses h&ocirc;tels luxueux. Vous passerez devant l&rsquo;Arc de Triomphe, l&rsquo;Acad&eacute;mie fran&ccedil;aise et le Louvre.</p>\r\n<p style=\"font-weight: 400;\">La Tour Eiffel L\'une des merveilles d\'ing&eacute;nierie de l\'humanit&eacute;. Construite pour l\'Exposition universelle de 1889 afin de f&ecirc;ter le centenaire de la R&eacute;volution fran&ccedil;aise. <strong>( Tickets d\'entr&eacute;e non inclus )</strong></p>\r\n<p style=\"font-weight: 400;\">La Dame de Fer appara&icirc;t d&eacute;sormais comme une ic&ocirc;ne fier et bien-aim&eacute; de la France. Elle est encore la plus haute structure &agrave; Paris. Rendez-vous directement &agrave; la zone d&rsquo;embarquement et montez dans l&rsquo;un des c&eacute;l&egrave;bres bateaux de plaisance &laquo; Bateaux Parisiens &raquo;.</p>\r\n<p style=\"font-weight: 400;\">- En fin de la journ&eacute;e retour &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"color: #e03e2d;\"> 3&eacute;me jour : Une demi-journ&eacute;e &agrave; Paris.</span></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel</p>\r\n<p style=\"font-weight: 400;\">- D&eacute;couvrez le charme de Paris gr&acirc;ce &agrave; votre guide lors d&rsquo;une visite en petit groupe ou avec un guide priv&eacute; de 3h30 incluant un passage par le quartier de Montmartre o&ugrave; vous pourrez admirer la majestueuse basilique du Sacr&eacute;-C&oelig;ur et profiter d&rsquo;une vue imprenable sur la ville.</p>\r\n<p style=\"font-weight: 400;\">Vous ferez un arr&ecirc;t &agrave; la cath&eacute;drale gothique de Notre-Dame situ&eacute;e sur l&rsquo;&Icirc;le de la Cit&eacute;, lieu o&ugrave; fut fond&eacute;e la ville au Moyen-&Acirc;ge. Decouvrire le Quartier Latin pour admirer la Sorbonne. Votre guide vous fera d&eacute;couvrir l&rsquo;histoire, l&rsquo;architecture et le style de la capitale de France avant de vous conduire &agrave; Montmartre, quartier rendu c&eacute;l&egrave;bre par son b&acirc;timent au d&ocirc;me blanc dominant la butte, la basilique du Sacr&eacute;-C&oelig;ur. Avec des vues imprenables sur Paris et une r&eacute;putation centenaire comme quartier d&rsquo;artistes tels que Salvador Dal&iacute; et Pablo Picasso, Montmartre est devenu un des quartiers les plus courus pour sa vie nocturne.<strong> ( En option ) ( Tickets d\'entr&eacute;e non inclus )</strong></p>\r\n<p style=\"font-weight: 400;\">- Visite d\'opera&nbsp;<strong>( En option )</strong></p>\r\n<p style=\"font-weight: 400;\">- Visite de Galeries Lafayette</p>\r\n<p style=\"font-weight: 400;\">- En fin de la journ&eacute;e retour &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> 4&eacute;me jour : Disneyland Paris - Petit-d&eacute;jeuner.</strong></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">- R&eacute;server ce service pour obtenir un billet d&rsquo;entr&eacute;e au Paris Disneyland avec une prise en charge aller-retour depuis et vers votre h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">B&eacute;n&eacute;ficiez d&rsquo;un transport en monospace confortable avant de savourer une journ&eacute;e d&rsquo;amusement complet avec votre famille ou vos amis. Votre billet sera d&eacute;j&agrave; achet&eacute;, afin que vous n&rsquo;ayez pas &agrave; faire la queue &agrave; l&rsquo;entr&eacute;e du parc. Apr&egrave;s avoir pass&eacute; la journ&eacute;e dans l&rsquo;un ou l&rsquo;autre parc, retournez &agrave; votre h&ocirc;tel &agrave; bord de ce m&ecirc;me monospace confortable. <strong>( En option )</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>OU :</strong></p>\r\n<p style=\"font-weight: 400;\">- Journ&eacute;e libre &agrave; votre rythme.</p>\r\n<p style=\"font-weight: 400;\">- En fin de la journ&eacute;e retour &agrave; l&rsquo;h&ocirc;tel.</p>\r\n<p style=\"font-weight: 400;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> 5&eacute;me jour : Paris - Maroc Petit-d&eacute;jeuner.</strong></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Petit d&eacute;jeuner &agrave; l&rsquo;h&ocirc;tel</p>\r\n<p style=\"font-weight: 400;\">- Lib&eacute;ration des chambres et transfert par nos soins &agrave; l&rsquo;a&eacute;roport international de PARIS pour le retour &agrave; Tanger .</p>\r\n<p style=\"font-weight: 400;\">- Fin de nos services.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> L\'offre comprend :</strong></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Billet d\'avion ( Aller / Retour )&nbsp; Avec Air Arabia : De Tanger.</p>\r\n<p style=\"font-weight: 400;\">- H&ocirc;tel 3 &eacute;toiles ( En chambre double ou triple ).</p>\r\n<p style=\"font-weight: 400;\">- Le petit d&eacute;jeuner en buffet.</p>\r\n<p style=\"font-weight: 400;\">- Transfert A&eacute;roport / H&ocirc;tel / A&eacute;roport.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> Packages Optionnels :</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p style=\"font-weight: 400;\"><strong>Pack 01 : Paris : 890 DH Par Personne / 690 MAD Par Enf. Jusqu&rsquo;&agrave; 11 ans</strong></p>\r\n<p style=\"font-weight: 400;\">✓ Mus&eacute;e du Louvre de L&rsquo;ext&eacute;rieur, Le jardin des Tuileries, Place de la Concorde, La Tour Eiffel, L&rsquo;Arc de Triomphe. ( Tickets d\'entr&eacute;e non inclus )</p>\r\n<p style=\"font-weight: 400;\">✓ Ticket Croisi&egrave;re sur la Seine dans un bateau Parisien.</p>\r\n<p style=\"font-weight: 400;\">✓ Service guide accompagnateur.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"font-weight: 400;\"><strong>Pack 02 : ( 1490 MAD )</strong></p>\r\n<p style=\"font-weight: 400;\">- Mus&eacute;e du Louvre de L\'ext&eacute;rieur , Le jardin des Tuileries,&nbsp; Place de la Concorde ,La Tour Eiffel, L&rsquo;Arc de Triomphe ( Tickets d\'entr&eacute;e non inclus )</p>\r\n<p style=\"font-weight: 400;\">- Ticket Croisi&egrave;re sur la Seine dans un bateau Parisien.</p>\r\n<p style=\"font-weight: 400;\">- Basilique du Sacr&eacute;-C&oelig;ur,&nbsp; le Quartier Latin, Ch&acirc;telet , Op&eacute;ra, Galeries Lafayette</p>\r\n<p style=\"font-weight: 400;\">- Ticket Opera.</p>\r\n<p style=\"font-weight: 400;\">- Service guide accompagnateur ( 2 Journ&eacute;e )</p>\r\n<p>&nbsp;</p>\r\n<p style=\"font-weight: 400;\"><strong>Pack 03 : Disneyland : 1490 MAD Par Personne / 1290 MAD Par Enf. Jusqu&rsquo;&agrave; 11 ans</strong></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> Ce qui n&rsquo;est pas inclus :</strong></li>\r\n<li style=\"font-weight: 400;\">Les extras et pourboires</li>\r\n<li style=\"font-weight: 400;\">Toute d&eacute;pense &agrave; caract&egrave;re personnel</li>\r\n<li style=\"font-weight: 400;\">Tout ce qui n&rsquo;a pas &eacute;t&eacute; cit&eacute; dans le programme</li>\r\n<li style=\"font-weight: 400;\">Assurance</li>\r\n<li style=\"font-weight: 400;\">Les d&eacute;jeuner et les d&icirc;ners.</li>\r\n<li style=\"font-weight: 400;\">Les Boissons</li>\r\n<li style=\"font-weight: 400;\">Entr&eacute;e et visites optionnelles</li>\r\n<li style=\"font-weight: 400;\">Les taxes de promotion touristique et services h&ocirc;teliers.&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> Nos d&eacute;parts :</strong></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">- Du 21 au 25 F&eacute;vrier 2020<strong> ( 05 Jours / 04 Nuits )</strong></p>\r\n<p style=\"font-weight: 400;\">- Du 20 au 24 Mars 2020<strong> ( 05 Jours / 04 Nuits )</strong></p>\r\n<p style=\"font-weight: 400;\">- Du 03 au 07 Avril 2020<strong> ( 05 Jours / 04 Nuits )</strong><strong> ( +500 MAD )</strong></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\"><strong> Formalit&eacute;s :</strong></li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">Obligations administratives et douanes :</p>\r\n<p style=\"font-weight: 400;\">- Visa Schengen</p>\r\n<p style=\"font-weight: 400;\">- Autorisation de quitter le territoire pour les fonctionnaires</p>\r\n<p style=\"font-weight: 400;\">- Certificat m&eacute;dical pour les femmes enceintes</p>\r\n<p>&nbsp;</p>\r\n<p style=\"font-weight: 400;\"><strong>NB : Merci de nous contacter avant de proc&eacute;der au paiement pour v&eacute;rifier la disponibilit&eacute;.</strong></p>\r\n<p style=\"font-weight: 400;\">1 : Les taxes de promotion touristique et services hôteliers non sont pas inclus.</p>\r\n<p style=\"font-weight: 400;\">2 : Pour Quelques Hotels : Des frais de dépôt garantie sont mis à votre arrivée sur votre carte ou en espèce même si vous ne comptez rien dépenser dans l\'hôtel. Par contre, à la fin du séjour, il font un décompte de ce que vous aurez réellement dépensé et a nnule le surplus pris en garantie.</p>', '2022-01-02 18:09:26', '2022-01-02 18:17:20', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
