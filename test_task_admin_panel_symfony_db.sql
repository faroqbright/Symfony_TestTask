-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 04:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_task_admin_panel_symfony_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plubished_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `author_id`, `creator_id`, `content`, `slug`, `titre`, `blog_image`, `plubished_at`, `deleted`, `valid`, `created_at`) VALUES
(1, 1, 1, '<p>asdadas</p>', 'et-veniam-elit-reprehenderit-voluptatem-omnis-est-minima-unde-ut-adipisicing-culpa-quo-vitae-commodo-quia-accusantium-nisi-old-1', 'Et veniam elit reprehenderit voluptatem Omnis est minima unde ut adipisicing culpa quo vitae commodo quia accusantium nisi-old-1', 'et-veniam-elit-reprehenderit-voluptatem-omnis-est-minima-unde-ut-adipisicing-culpa-quo-vitae-commodo-quia-accusantium-nisi-6373abc14813e.jpeg', '2018-04-14 15:29:00', 1, 1, '2022-11-15 16:09:53'),
(2, 1, 1, '<p>Testing</p>', 'abcbbbbb', 'abcbbbbb', 'abc-6373ac55bbe91.jpeg', '2022-11-17 23:12:00', 0, 1, '2022-11-15 16:12:21'),
(3, 1, 1, '<p>sdasdasdasd</p>', 'aabbcc', 'aabbcc', 'aabbcc-6373ac7e510c0.jpeg', '2022-11-25 08:12:00', 0, 1, '2022-11-15 16:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categorie`
--

CREATE TABLE `blog_post_categorie` (
  `blog_post_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categorie`
--

INSERT INTO `blog_post_categorie` (`blog_post_id`, `categorie_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `categorie_parente_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie_parente_id`, `libelle`, `valid`, `deleted`) VALUES
(1, NULL, 'test category', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_post_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_date` datetime NOT NULL,
  `old_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historique`
--

INSERT INTO `historique` (`id`, `user_id`, `blog_post_id`, `action`, `action_date`, `old_post_id`) VALUES
(1, 1, 1, 'Creation', '2022-11-15 16:09:53', NULL),
(2, 1, 1, 'Suppression', '2022-11-15 16:11:53', NULL),
(3, 1, 2, 'Creation', '2022-11-15 16:12:21', NULL),
(4, 1, 3, 'Creation', '2022-11-15 16:13:02', NULL),
(5, 1, 2, 'Modification', '2022-11-15 16:22:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200729123337', '2022-11-15 13:26:03'),
('20200729163019', '2022-11-15 13:26:04'),
('20200729164730', '2022-11-15 13:26:04'),
('20200806150604', '2022-11-15 13:26:05'),
('20200806220840', '2022-11-15 13:26:08'),
('20200807001449', '2022-11-15 13:26:08'),
('20200807014721', '2022-11-15 13:26:09'),
('20200807015359', '2022-11-15 13:26:12'),
('20200807021818', '2022-11-15 13:26:12'),
('20200807124917', '2022-11-15 13:26:16'),
('20200809184236', '2022-11-15 13:26:17'),
('20200810064109', '2022-11-15 13:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `old_post`
--

CREATE TABLE `old_post` (
  `id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_post`
--

INSERT INTO `old_post` (`id`, `created_by_id`, `author_id`, `created_at`, `published_at`, `titre`, `content`, `image`) VALUES
(1, 1, 1, '2022-11-15 16:12:21', '2022-11-17 23:12:00', 'abc', '<p>Testing</p>', 'abc-6373ac55bbe91.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `old_post_categorie`
--

CREATE TABLE `old_post_categorie` (
  `old_post_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `libelle`) VALUES
(1, 'ROLE_SUPERUSER', 'Super Admin'),
(2, 'ROLE_EDITORIAL', 'Manager'),
(3, 'ROLE_ADMINISTRATOR', 'Admin'),
(4, 'ROLE_WRITER', 'Redacteur');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `nom_complet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `nom_complet`, `email`, `valid`, `deleted`, `password`, `admin`) VALUES
(1, 'admin', '[\"ROLE_SUPERUSER\"]', 'Admin', 'admin@gmail.com', 1, 0, '$argon2id$v=19$m=65536,t=4,p=1$YzlIZGtjYllKZER3NndJRw$8AjJabBw0AiNQyVCfp4ISPf36rJ3Xiu137dnBH8eHfs', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BA5AE01D989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_BA5AE01DFF7747B4` (`titre`),
  ADD KEY `IDX_BA5AE01DF675F31B` (`author_id`),
  ADD KEY `IDX_BA5AE01D61220EA6` (`creator_id`);

--
-- Indexes for table `blog_post_categorie`
--
ALTER TABLE `blog_post_categorie`
  ADD PRIMARY KEY (`blog_post_id`,`categorie_id`),
  ADD KEY `IDX_AC64037AA77FBEAF` (`blog_post_id`),
  ADD KEY `IDX_AC64037ABCF5E72D` (`categorie_id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_497DD6345CBD743C` (`categorie_parente_id`);

--
-- Indexes for table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EDBFD5EC381CDA7C` (`old_post_id`),
  ADD KEY `IDX_EDBFD5ECA76ED395` (`user_id`),
  ADD KEY `IDX_EDBFD5ECA77FBEAF` (`blog_post_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `old_post`
--
ALTER TABLE `old_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7217ED28B03A8386` (`created_by_id`),
  ADD KEY `IDX_7217ED28F675F31B` (`author_id`);

--
-- Indexes for table `old_post_categorie`
--
ALTER TABLE `old_post_categorie`
  ADD PRIMARY KEY (`old_post_id`,`categorie_id`),
  ADD KEY `IDX_9E9BAB81381CDA7C` (`old_post_id`),
  ADD KEY `IDX_9E9BAB81BCF5E72D` (`categorie_id`);

--
-- Indexes for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `old_post`
--
ALTER TABLE `old_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `FK_BA5AE01D61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_BA5AE01DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `blog_post_categorie`
--
ALTER TABLE `blog_post_categorie`
  ADD CONSTRAINT `FK_AC64037AA77FBEAF` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AC64037ABCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_497DD6345CBD743C` FOREIGN KEY (`categorie_parente_id`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `FK_EDBFD5EC381CDA7C` FOREIGN KEY (`old_post_id`) REFERENCES `old_post` (`id`),
  ADD CONSTRAINT `FK_EDBFD5ECA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_EDBFD5ECA77FBEAF` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_post` (`id`);

--
-- Constraints for table `old_post`
--
ALTER TABLE `old_post`
  ADD CONSTRAINT `FK_7217ED28B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_7217ED28F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `old_post_categorie`
--
ALTER TABLE `old_post_categorie`
  ADD CONSTRAINT `FK_9E9BAB81381CDA7C` FOREIGN KEY (`old_post_id`) REFERENCES `old_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9E9BAB81BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
