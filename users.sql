-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2020 at 09:09 AM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `subadmin_id` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role_id`, `gender`, `address`, `subadmin_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khushal Chhotulal Patil', 'KHUSHALPATIL033@GMAIL.COM', 9766088612, NULL, '$2y$10$T1u1uiduDHkwDSFOpJ6CrOomCMgD0/QCtinPuHnxVXimPxz9PFh5y', 1, 'MALE', '492 NEAR JAYNAGAR ROAD', NULL, NULL, '2020-08-20 10:54:56', '2020-08-20 10:54:56'),
(2, 'hetvik amol patil', 'hetvik@gmail.com', 8888085102, NULL, '$2y$10$5eWFWC/tqeUWoMYR852AF.zk9KKq6Ty6cUrF9mTpRznaSN.aDUuN.', 2, NULL, NULL, NULL, NULL, '2020-08-20 10:56:24', '2020-08-20 10:56:24'),
(3, 'prem', 'prem@mail.com', 7418529630, NULL, '$2y$10$KXB8v.HJIBFhzaNL0UwPC.w8Z7Y5dJ5gslcA2P85qANfqIIMi6Z.K', 3, 'MALE', 'pune', NULL, NULL, '2020-08-20 10:57:15', '2020-08-20 10:57:15'),
(4, 'pratik', 'pratik@gmail.com', 1234567890, NULL, '$2y$10$zSNzwxjXd7fNWBcqKve4YuanHSG59nxugFroIc2s9aCswSUExYr9u', 3, 'MALE', 'dhule', 2, NULL, '2020-08-20 10:58:52', '2020-08-20 10:58:52'),
(5, 'shubham', 'shubham@gmail.com', 753154851, NULL, '$2y$10$v/JWj.7Yb9unJykMUfAZeuxhZmmSPeSU2QET1sy1b27cYmflvHlJ.', 2, NULL, NULL, NULL, NULL, '2020-08-20 11:06:13', '2020-08-20 11:06:13'),
(6, 'suraj', 'suraj@gmail.com', 74578457, NULL, '$2y$10$GJMD290MaTUYYahCyyeCeuNfAF9032kpdZ/HiZURwYaQTDVv3IBz6', 3, 'MALE', 'kahatul', 5, NULL, '2020-08-20 11:07:13', '2020-08-20 15:53:09'),
(7, 'krishna', 'krishna@gmail.com', 456123484, NULL, '$2y$10$JcE4i7vTutOs75ggCz0juOhU9nD2NB/mpYdWq44gyJaaeZKRb/u4S', 2, NULL, NULL, NULL, NULL, '2020-08-20 16:06:11', '2020-08-20 16:06:11'),
(8, 'jayram', 'jayram@gmail.com', 456789123, NULL, '$2y$10$5HZ1AuRSI6Z2OtmQakoKHOEZVZ.ZouMBx5.Z6ETvpkvleitro6b/y', 3, 'MALE', '492 NEAR JAYNAGAR ROAD', 7, NULL, '2020-08-20 16:08:17', '2020-08-20 16:08:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
