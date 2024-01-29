-- Adminer 4.8.1 MySQL 5.7.40 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `book`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Dr. Delbert Schneider',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(2,	'Sharon Braun Jr.',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(3,	'Mariana Tromp',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(4,	'Perry Schowalter',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(5,	'Miss Nora Cole III',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(6,	'Ms. Sabryna Altenwerth',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(7,	'Ola Kassulke',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(8,	'Elise Kiehn',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(9,	'Agustina Mertz',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(10,	'Cristopher Streich',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(11,	'Dock Wilkinson',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(12,	'Mackenzie McDermott',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(13,	'Dr. Mckenzie Sanford',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(14,	'Brian Miller',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(15,	'Viva Ryan',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(16,	'Grant Pacocha',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(17,	'Ignacio Friesen',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(18,	'Haley Strosin',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(19,	'Dr. Cierra Homenick III',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(20,	'Prof. Luisa Pouros Jr.',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(21,	'Vicente Champlin',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(22,	'Ada Wehner',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(23,	'Prof. Merl Ziemann',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(24,	'Amina Wolf',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(25,	'Prof. Hobart Johns',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50');

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_category_id_foreign` (`category_id`),
  KEY `books_author_id_foreign` (`author_id`),
  CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `books` (`id`, `title`, `category_id`, `year`, `author_id`, `created_at`, `updated_at`) VALUES
(1,	'Officiis omnis recusandae et vel.',	1,	'2024',	1,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(2,	'Dolores voluptatem a exercitationem omnis fugit aperiam.',	2,	'2024',	2,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(3,	'Iusto pariatur repellendus consequatur ipsa eius aut harum.',	3,	'2024',	3,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(4,	'Molestiae fugit sint consequatur sint praesentium consequatur.',	4,	'2024',	4,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(5,	'Quidem sequi officiis pariatur deserunt repellat numquam enim.',	5,	'2024',	5,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(6,	'Similique aut quia recusandae temporibus ut rerum voluptatem.',	6,	'2024',	6,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(7,	'Ea ea minima qui voluptas recusandae totam autem hic.',	7,	'2024',	7,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(8,	'Sequi rem aut ea voluptatem officiis.',	8,	'2024',	8,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(9,	'Quo inventore consequuntur non molestias aut omnis.',	9,	'2024',	9,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(10,	'Rerum cum qui voluptas.',	10,	'2024',	10,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(11,	'Quis ipsum quis nemo recusandae porro.',	11,	'2024',	11,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(12,	'Cum in aut delectus ipsa velit reiciendis voluptatibus.',	12,	'2024',	12,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(13,	'Iste magni quia deleniti velit.',	13,	'2024',	13,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(14,	'Et pariatur sapiente voluptas excepturi soluta.',	14,	'2024',	14,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(15,	'Aut voluptatem laboriosam incidunt et sed placeat voluptatem.',	15,	'2024',	15,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(16,	'Quibusdam aut provident et quaerat velit officia accusantium.',	16,	'2024',	16,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(17,	'Culpa ipsam rerum odio porro iste.',	17,	'2024',	17,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(18,	'Doloribus asperiores consequatur earum voluptas rerum cum.',	18,	'2024',	18,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(19,	'Tempora eius totam aut autem.',	19,	'2024',	19,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(20,	'Aliquid facere dolor voluptas asperiores porro.',	20,	'2024',	20,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(21,	'Ipsa ea est et qui non.',	21,	'2024',	21,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(22,	'Tempora occaecati tempora magnam.',	22,	'2024',	22,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(23,	'Eum ullam dolores ullam veritatis et.',	23,	'2024',	23,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(24,	'Et ea beatae itaque quis mollitia laboriosam.',	24,	'2024',	24,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(25,	'Voluptatum vero et pariatur distinctio ea pariatur.',	25,	'2024',	25,	'2024-01-29 01:41:50',	'2024-01-29 01:41:50');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'est',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(2,	'aut',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(3,	'sit',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(4,	'ut',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(5,	'nostrum',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(6,	'repellendus',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(7,	'animi',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(8,	'quo',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(9,	'eos',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(10,	'exercitationem',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(11,	'aliquid',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(12,	'molestiae',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(13,	'quidem',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(14,	'reiciendis',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(15,	'deleniti',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(16,	'recusandae',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(17,	'at',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(18,	'non',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(19,	'quia',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(20,	'delectus',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(21,	'laudantium',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(22,	'rem',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(23,	'aspernatur',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(24,	'consectetur',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50'),
(25,	'aperiam',	'2024-01-29 01:41:50',	'2024-01-29 01:41:50');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2024_01_28_131748_create_categories_table',	1),
(6,	'2024_01_28_131818_create_authors_table',	1),
(7,	'2024_01_28_131826_create_books_table',	1);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2024-01-29 01:59:32
