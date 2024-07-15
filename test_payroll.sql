-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 05:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group` varchar(765) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2024-04-30 07:39:02'),
(NULL, 2, 'user', '2024-05-10 10:12:32'),
(NULL, 3, 'user', '2024-05-10 10:13:08'),
(NULL, 4, 'user', '2024-05-10 10:16:28'),
(NULL, 5, 'user', '2024-05-10 10:17:35'),
(NULL, 6, 'user', '2024-05-10 10:25:51'),
(NULL, 7, 'user', '2024-05-10 10:26:59'),
(NULL, 8, 'user', '2024-05-10 10:27:40'),
(NULL, 9, 'user', '2024-05-10 10:27:47'),
(NULL, 10, 'user', '2024-05-10 10:27:54'),
(NULL, 11, 'user', '2024-05-10 10:31:04'),
(NULL, 12, 'user', '2024-05-15 11:48:12'),
(NULL, 13, 'user', '2024-05-16 09:10:47'),
(NULL, 14, 'user', '2024-05-29 09:14:15'),
(NULL, 15, 'user', '2024-05-29 09:58:02'),
(NULL, 16, 'user', '2024-05-29 10:14:25'),
(NULL, 17, 'user', '2024-05-30 10:25:59'),
(NULL, 18, 'user', '2024-06-12 11:47:30'),
(NULL, 19, 'user', '2024-06-27 15:03:03'),
(NULL, 22, 'user', '2024-07-08 11:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(765) DEFAULT NULL,
  `name` varchar(765) DEFAULT NULL,
  `secret` varchar(765) DEFAULT NULL,
  `secret2` varchar(765) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) DEFAULT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(40, 21, 'email_password', NULL, 'admin@gmail.com', '$2y$12$J5Rb09FSA503bjQ989KPMe8tE3jibxWrosUyaXcRcwTcAMGF7wM46', NULL, NULL, NULL, '2024-07-15 08:57:26', '2024-05-16 09:10:46', '2024-07-15 08:57:26'),
(33, 13, 'email_password', NULL, 'indra@indra.com', '$2y$12$U6Yp2VkZEz/5tMA/8ERU..ezBRLgoqX5m7R71TVfDNa1L5E8kK2ha', NULL, NULL, NULL, '2024-07-03 11:40:55', '2024-05-16 09:10:46', '2024-07-03 11:40:55'),
(41, 22, 'email_password', NULL, 'rizkyalfatahhillah@gmail.com', '$2y$12$h9nmXnyJkmLVfisSfsLaAe0.Udnt3A9UskFBP8OK6Fsc7Y373nl6K', NULL, NULL, NULL, NULL, '2024-07-08 11:46:20', '2024-07-08 11:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 07:40:11', 1),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 07:50:36', 1),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:17:06', 1),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.coma', NULL, '2024-04-30 08:17:21', 0),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:18:40', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:25:57', 1),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:35:04', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:36:32', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:43:11', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:51:13', 1),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:54:41', 1),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:56:08', 1),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 08:56:59', 1),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 09:10:03', 1),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-04-30 09:16:24', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-02 01:36:40', 1),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 01:39:23', 1),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 06:18:04', 1),
(19, '::1', 'PostmanRuntime/7.37.0', 'email_password', 'ilhamhamed0025@gmail.com', NULL, '2024-05-03 06:45:54', 0),
(20, '::1', 'PostmanRuntime/7.37.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 06:47:28', 1),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 07:11:23', 1),
(22, '::1', 'PostmanRuntime/7.37.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 07:15:40', 1),
(23, '::1', 'PostmanRuntime/7.37.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-03 07:16:10', 1),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-06 01:52:56', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-06 02:37:50', 1),
(26, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 02:37:14', 1),
(27, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 02:37:50', 1),
(28, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 04:44:04', 1),
(29, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 04:55:15', 1),
(30, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 04:57:26', 1),
(31, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-07 07:42:23', 1),
(32, '182.253.57.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-08 08:01:36', 1),
(33, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'ilhamhamed0025@gmail.com', 1, '2024-05-10 09:51:06', 1),
(34, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'hamed', 1, '2024-05-10 10:09:00', 1),
(35, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'nini', 10, '2024-05-10 10:28:20', 1),
(36, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'nini', 10, '2024-05-10 10:28:44', 1),
(37, '180.252.117.103', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-05-11 04:23:31', 1),
(38, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-13 04:43:50', 1),
(39, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-14 09:13:09', 0),
(40, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-14 09:13:16', 1),
(41, '180.252.114.238', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-05-14 17:04:35', 1),
(42, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-15 07:23:17', 0),
(43, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-15 07:23:23', 0),
(44, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migen', NULL, '2024-05-15 07:23:33', 0),
(45, '182.253.57.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-15 07:23:40', 1),
(46, '182.2.144.115', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-05-15 08:12:16', 1),
(47, '180.252.125.154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-05-15 11:27:10', 1),
(48, '180.252.125.154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'niningkurniasih', NULL, '2024-05-15 11:48:39', 0),
(49, '180.252.125.154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/124.0.6367.111 Mobile/15E148 Safari/604.1', 'username', 'niningkurniasih', 12, '2024-05-15 11:48:48', 1),
(50, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-16 02:41:32', 1),
(51, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-05-16 07:47:42', 0),
(52, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-05-16 07:47:48', 0),
(53, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-05-16 07:47:59', 0),
(54, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-05-16 07:48:04', 0),
(55, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'ilhamhamed0025@gmail.com', NULL, '2024-05-16 09:09:25', 0),
(56, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'ilhamhamed0025@gmail.com', NULL, '2024-05-16 09:09:29', 0),
(57, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'migent', NULL, '2024-05-16 09:09:38', 0),
(58, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'migen', NULL, '2024-05-16 09:09:45', 0),
(59, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'migen', NULL, '2024-05-16 09:10:05', 0),
(60, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migen', NULL, '2024-05-16 09:10:31', 0),
(61, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-16 09:10:39', 1),
(62, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migen', 13, '2024-05-16 09:10:58', 1),
(63, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'migen', 13, '2024-05-16 09:11:07', 1),
(64, '203.207.57.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'niningkurniasih', 12, '2024-05-16 09:14:19', 1),
(65, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-17 09:35:37', 0),
(66, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-17 09:35:42', 1),
(67, '182.253.57.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'username', 'migen', 13, '2024-05-17 10:28:33', 1),
(68, '149.113.74.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-17 22:52:22', 1),
(69, '203.207.57.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'niningkurniasih', 12, '2024-05-21 08:30:16', 1),
(70, '182.253.57.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-21 08:33:32', 0),
(71, '182.253.57.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-21 08:33:38', 1),
(72, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-24 01:41:24', 1),
(73, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-24 08:39:54', 0),
(74, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-05-29 09:07:12', 0),
(75, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-05-29 09:07:17', 1),
(76, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'nini', 14, '2024-05-29 09:14:30', 1),
(77, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', 12, '2024-05-29 09:55:38', 1),
(78, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'kusmanto', 15, '2024-05-29 09:58:17', 1),
(79, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'RONNY', 16, '2024-05-29 10:14:54', 1),
(80, '180.252.124.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'rony', NULL, '2024-05-29 13:47:03', 0),
(81, '180.252.124.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-29 13:47:14', 1),
(82, '180.252.124.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'RONNY', 16, '2024-05-29 13:47:45', 1),
(83, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-05-30 10:11:37', 1),
(84, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'nini', 14, '2024-05-30 10:12:32', 1),
(85, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'nini', 14, '2024-05-30 10:23:37', 1),
(86, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'SUCITRO', 17, '2024-05-30 10:26:14', 1),
(87, '182.2.137.184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-05-30 12:20:04', 1),
(88, '182.2.137.184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', 'username', 'nini', 14, '2024-05-30 12:20:27', 1),
(89, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-05-31 11:29:19', 0),
(90, '182.253.57.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-05-31 11:29:24', 1),
(91, '182.2.145.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', 'username', 'nini', 14, '2024-06-01 20:49:29', 1),
(92, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'username', 'hamed', NULL, '2024-06-03 09:02:53', 0),
(93, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'username', 'hamed', NULL, '2024-06-03 09:03:02', 0),
(94, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-03 09:03:15', 1),
(95, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'username', 'hameed', NULL, '2024-06-03 09:03:17', 0),
(96, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'username', 'hamed', 1, '2024-06-03 09:03:28', 1),
(97, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'nini', 14, '2024-06-03 09:07:46', 1),
(98, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-03 09:08:30', 1),
(99, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-03 10:51:15', 1),
(100, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'nini', 14, '2024-06-03 11:59:26', 1),
(101, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-03 14:50:57', 0),
(102, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-03 14:51:04', 0),
(103, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-03 14:51:54', 1),
(104, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-04 14:38:13', 1),
(105, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-06-05 10:43:33', 0),
(106, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-06-05 10:43:36', 0),
(107, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-05 10:43:42', 1),
(108, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', 12, '2024-06-05 10:56:22', 1),
(109, '182.253.54.104', 'Mozilla/5.0 (Android 14; Mobile; rv:124.0) Gecko/124.0 Firefox/124.0', 'username', 'niningkurniasih', 12, '2024-06-05 11:14:55', 1),
(110, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', 12, '2024-06-05 11:18:01', 1),
(111, '180.244.241.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'niningkurniasih', 12, '2024-06-05 21:40:34', 1),
(112, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-07 09:00:00', 1),
(113, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-07 10:02:28', 1),
(114, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-10 14:12:46', 1),
(115, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-11 10:00:05', 0),
(116, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-11 14:39:08', 1),
(117, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-11 14:52:23', 1),
(118, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-11 15:07:14', 1),
(119, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-11 15:19:34', 1),
(120, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-11 16:04:30', 1),
(121, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', 12, '2024-06-11 16:55:02', 1),
(122, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-11 17:27:06', 0),
(123, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-11 17:27:12', 0),
(124, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-11 17:27:16', 0),
(125, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migent', NULL, '2024-06-11 17:28:46', 0),
(126, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-11 17:29:33', 1),
(127, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-12 08:05:56', 1),
(128, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-12 08:11:24', 1),
(129, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-12 09:26:10', 1),
(130, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', NULL, '2024-06-12 10:06:39', 0),
(131, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'niningkurniasih', 12, '2024-06-12 10:06:46', 1),
(132, '114.124.238.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'username', 'rippana', NULL, '2024-06-12 11:19:01', 0),
(133, '182.253.54.104', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'username', 'niningkurniasih', 12, '2024-06-12 11:30:04', 1),
(134, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-06-12 11:30:35', 0),
(135, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'inzani', NULL, '2024-06-12 11:30:44', 0),
(136, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-12 11:30:58', 1),
(137, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'migen', 13, '2024-06-12 11:32:01', 1),
(138, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'TEGUHINDRASUBAGYO', 18, '2024-06-12 11:47:58', 1),
(139, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', NULL, '2024-06-12 11:54:22', 0),
(140, '180.252.113.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-12 11:54:31', 1),
(141, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-12 13:33:50', 1),
(142, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-12 16:07:16', 1),
(143, '182.253.54.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-13 08:58:25', 1),
(144, '182.253.57.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-13 15:22:55', 1),
(145, '182.253.57.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'migen', 13, '2024-06-14 08:45:45', 1),
(146, '182.253.57.205', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'username', 'niningkurniasih', 12, '2024-06-14 10:50:53', 1),
(147, '182.253.57.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', 13, '2024-06-14 16:17:37', 1),
(148, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-18 10:30:13', 1),
(149, '182.3.50.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/126.0.6478.54 Mobile/15E148 Safari/604.1', 'username', 'hamed', 1, '2024-06-18 12:09:52', 1),
(150, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'username', 'hamed', 1, '2024-06-18 13:35:46', 1),
(151, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', 13, '2024-06-18 15:03:01', 1),
(152, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-18 16:04:01', 1),
(153, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-18 16:18:37', 0),
(154, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-18 16:18:44', 0),
(155, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-18 16:19:25', 0),
(156, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-18 16:19:32', 0),
(157, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-19 08:51:40', 1),
(158, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', 13, '2024-06-19 13:43:38', 1),
(159, '182.3.51.136', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'username', 'hamed', 1, '2024-06-19 13:46:27', 1),
(160, '182.253.57.94', 'Mozilla/5.0 (Android 14; Mobile; rv:127.0) Gecko/127.0 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-19 13:48:46', 1),
(161, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-06-19 14:35:44', 0),
(162, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migen', NULL, '2024-06-19 14:35:50', 0),
(163, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-19 14:35:58', 1),
(164, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'Migen', 13, '2024-06-19 14:42:33', 1),
(165, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-19 14:43:42', 1),
(166, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-19 17:00:11', 0),
(167, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-19 17:12:15', 1),
(168, '180.252.122.64', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'username', 'hamed', 1, '2024-06-19 19:29:16', 1),
(169, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-20 08:53:37', 1),
(170, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-20 10:50:00', 1),
(171, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-20 10:54:22', 1),
(172, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-20 10:56:29', 1),
(173, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 10:56:58', 0),
(174, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 10:57:08', 0),
(175, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 10:57:14', 0),
(176, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-20 10:57:24', 0),
(177, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-20 10:57:43', 1),
(178, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 11:03:06', 0),
(179, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 11:03:13', 0),
(180, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-20 11:03:19', 0),
(181, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-20 11:12:23', 1),
(182, '182.253.57.94', 'Mozilla/5.0 (Android 14; Mobile; rv:127.0) Gecko/127.0 Firefox/127.0', 'username', 'migent', NULL, '2024-06-20 11:18:06', 0),
(183, '182.253.57.94', 'Mozilla/5.0 (Android 14; Mobile; rv:127.0) Gecko/127.0 Firefox/127.0', 'username', 'migent', 13, '2024-06-20 11:18:23', 1),
(184, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-20 11:25:03', 0),
(185, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-20 11:25:21', 1),
(186, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-20 11:26:48', 1),
(187, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-20 11:42:52', 1),
(188, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-20 14:44:37', 0),
(189, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-20 14:44:46', 1),
(190, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-20 14:57:00', 1),
(191, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-21 09:10:46', 1),
(192, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-06-21 09:47:17', 0),
(193, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', 13, '2024-06-21 09:47:22', 1),
(194, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-21 09:49:00', 0),
(195, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-21 09:49:09', 1),
(196, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-21 14:58:44', 1),
(197, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-21 16:18:51', 0),
(198, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-21 16:19:01', 1),
(199, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-21 16:19:06', 1),
(200, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'niningkurniasih', 12, '2024-06-21 17:23:11', 1),
(201, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-06-24 13:33:18', 0),
(202, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', 13, '2024-06-24 13:33:24', 1),
(203, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-24 13:45:58', 1),
(204, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-24 14:36:53', 0),
(205, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-24 14:37:01', 0),
(206, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-24 14:37:37', 1),
(207, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-25 08:48:53', 1),
(208, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-25 08:49:11', 0),
(209, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-25 08:49:17', 0),
(210, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-25 08:49:26', 0),
(211, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-25 08:49:32', 0),
(212, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-25 08:49:37', 0),
(213, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 08:49:44', 1),
(214, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-25 13:47:53', 0),
(215, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 13:48:04', 1),
(216, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-25 14:30:21', 1),
(217, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-25 14:30:32', 0),
(218, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migen', NULL, '2024-06-25 14:30:37', 0),
(219, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 14:30:56', 1),
(220, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-25 17:56:38', 0),
(221, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 17:56:55', 1),
(222, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-25 18:11:07', 1),
(223, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 18:11:26', 1),
(224, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-25 18:45:30', 0),
(225, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-25 18:45:35', 1),
(226, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-26 16:33:22', 1),
(227, '182.253.57.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-26 16:36:03', 1),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', NULL, '2024-06-26 17:23:43', 0),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-26 17:23:57', 1),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-06-27 14:31:10', 1),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-27 15:02:14', 0),
(232, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', NULL, '2024-06-27 15:02:26', 0),
(233, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'hamed', 1, '2024-06-27 15:02:39', 1),
(234, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'inzani', 19, '2024-06-27 15:03:23', 1),
(235, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-07-01 09:13:37', 1),
(236, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-07-03 09:36:48', 1),
(237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'migent', 13, '2024-07-03 11:40:55', 1),
(238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'username', 'admin', 21, '2024-07-03 13:00:51', 1),
(239, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', NULL, '2024-07-08 11:26:41', 0),
(240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'migent', NULL, '2024-07-08 11:33:47', 0),
(241, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', NULL, '2024-07-08 15:25:48', 0),
(242, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', NULL, '2024-07-08 15:26:04', 0),
(243, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-08 15:26:47', 1),
(244, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-09 08:26:45', 1),
(245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-09 19:48:40', 1),
(246, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-10 11:01:50', 1),
(247, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-10 15:04:26', 1),
(248, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-10 15:05:37', 1),
(249, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-10 15:08:27', 1),
(250, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-11 14:46:51', 1),
(251, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-12 09:32:14', 1),
(252, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-12 13:19:08', 1),
(253, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'username', 'admin', 21, '2024-07-15 08:57:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permission` varchar(765) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) DEFAULT NULL,
  `selector` varchar(765) DEFAULT NULL,
  `hashedValidator` varchar(765) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_token_logins`
--

INSERT INTO `auth_token_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:17:46', 0),
(2, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:17:46', 0),
(3, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:17:46', 0),
(4, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:06', 0),
(5, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:06', 0),
(6, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:06', 0),
(7, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:10', 0),
(8, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:10', 0),
(9, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:18:10', 0),
(10, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:55', 0),
(11, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:55', 0),
(12, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:55', 0),
(13, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:58', 0),
(14, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:58', 0),
(15, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:19:58', 0),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-03 07:21:07', 0),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-03 07:21:07', 0),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-03 07:21:07', 0),
(19, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:21', 0),
(20, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:21', 0),
(21, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:21', 0),
(22, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:37', 0),
(23, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:37', 0),
(24, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:37', 0),
(25, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:39', 0),
(26, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:39', 0),
(27, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:39', 0),
(28, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:46', 0),
(29, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:46', 0),
(30, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:23:46', 0),
(31, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:24:00', 0),
(32, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:24:00', 0),
(33, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:24:00', 0),
(34, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:24:07', 0),
(35, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:24:07', 0),
(36, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Basic aWxoYW1oYW1lZDAwMjVAZ21haWwuY29tOmFjb3JkaW9uMTI=', NULL, '2024-05-03 07:24:07', 0),
(37, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:24:13', 0),
(38, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:24:13', 0),
(39, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:24:13', 0),
(40, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:16', 0),
(41, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:16', 0),
(42, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:16', 0),
(43, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:31', 0),
(44, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:31', 0),
(45, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:31', 0),
(46, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:47', 0),
(47, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:47', 0),
(48, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:28:47', 0),
(49, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:10', 0),
(50, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:10', 0),
(51, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:10', 0),
(52, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:19', 0),
(53, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:19', 0),
(54, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:32:19', 0),
(55, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:33:00', 0),
(56, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:33:01', 0),
(57, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:33:01', 0),
(58, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:36:53', 0),
(59, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:36:53', 0),
(60, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 8758460bc08338aeddcd5fb41d8b2618e8a3811c0c4ff91982980c8075cf04bc', NULL, '2024-05-03 07:36:53', 0),
(61, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 594b6db64821ea92c60d6de9fcbc03287feadea9ea1f424d26ed991b84f74ffe', NULL, '2024-05-03 07:38:00', 0),
(62, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 594b6db64821ea92c60d6de9fcbc03287feadea9ea1f424d26ed991b84f74ffe', NULL, '2024-05-03 07:38:00', 0),
(63, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 594b6db64821ea92c60d6de9fcbc03287feadea9ea1f424d26ed991b84f74ffe', NULL, '2024-05-03 07:38:00', 0),
(64, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:38:06', 0),
(65, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:38:06', 0),
(66, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:38:06', 0),
(67, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:15', 0),
(68, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:15', 0),
(69, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:15', 0),
(70, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:34', 0),
(71, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:34', 0),
(72, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:40:34', 0),
(73, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:10', 0),
(74, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:10', 0),
(75, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:10', 0),
(76, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:27', 0),
(77, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:28', 0),
(78, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 34cc8001c325772d43dee48bab056373b6a0c2fb08671448c3059cd087c580c0', NULL, '2024-05-03 07:41:28', 0),
(79, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:13', 0),
(80, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:13', 0),
(81, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:13', 0),
(82, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:17', 0),
(83, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:17', 0),
(84, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:17', 0),
(85, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:34', 0),
(86, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:34', 0),
(87, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 9f16e9712ad8caa8adc9c453b94b71743c4c1c2d62785bbbf777939fb4e9ef219', NULL, '2024-05-03 07:42:34', 0),
(88, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:52', 0),
(89, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:53', 0),
(90, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:53', 0),
(91, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:57', 0),
(92, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:58', 0),
(93, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:42:58', 0),
(94, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:12', 0),
(95, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:13', 0),
(96, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:13', 0),
(97, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:18', 0),
(98, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:18', 0),
(99, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:18', 0),
(100, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:38', 0),
(101, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:38', 0),
(102, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:43:39', 0),
(103, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:44:16', 0),
(104, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:44:16', 0),
(105, '::1', 'PostmanRuntime/7.37.0', 'access_token', 'Bearer 0b3834b642e9795fd4ad5d3ec5b5087fb583f96b38d9fe4be23ba7f6109ffda1', NULL, '2024-05-03 07:44:16', 0),
(106, '::1', 'PostmanRuntime/7.37.0', 'access_token', '', NULL, '2024-05-03 07:49:03', 0),
(107, '::1', '', 'access_token', '', NULL, '2024-05-03 08:13:49', 0),
(108, '::1', '', 'access_token', '', NULL, '2024-05-03 08:13:49', 0),
(109, '::1', '', 'access_token', '', NULL, '2024-05-03 08:13:49', 0),
(110, '::1', '', 'access_token', '', NULL, '2024-05-03 08:15:48', 0),
(111, '::1', '', 'access_token', '', NULL, '2024-05-03 08:15:48', 0),
(112, '::1', '', 'access_token', '', NULL, '2024-05-03 08:15:48', 0),
(113, '::1', '', 'access_token', '', NULL, '2024-05-03 08:16:08', 0),
(114, '::1', '', 'access_token', '', NULL, '2024-05-03 08:16:08', 0),
(115, '::1', '', 'access_token', '', NULL, '2024-05-03 08:16:08', 0),
(116, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:12', 0),
(117, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:12', 0),
(118, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:12', 0),
(119, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:42', 0),
(120, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:42', 0),
(121, '::1', '', 'access_token', '', NULL, '2024-05-03 08:17:42', 0),
(122, '::1', '', 'access_token', '', NULL, '2024-05-03 08:20:54', 0),
(123, '::1', '', 'access_token', '', NULL, '2024-05-03 08:20:54', 0),
(124, '::1', '', 'access_token', '', NULL, '2024-05-03 08:20:54', 0),
(125, '::1', '', 'access_token', '', NULL, '2024-05-03 08:23:27', 0),
(126, '::1', '', 'access_token', '', NULL, '2024-05-03 08:23:27', 0),
(127, '::1', '', 'access_token', '', NULL, '2024-05-03 08:23:27', 0),
(128, '::1', '', 'access_token', '', NULL, '2024-05-03 08:26:04', 0),
(129, '::1', '', 'access_token', '', NULL, '2024-05-03 08:26:04', 0),
(130, '::1', '', 'access_token', '', NULL, '2024-05-03 08:26:04', 0),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:16', 0),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:16', 0),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:16', 0),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:57', 0),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:58', 0),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:46:58', 0),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:01', 0),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:01', 0),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:02', 0),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:02', 0),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:02', 0),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:02', 0),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:07', 0),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:07', 0),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:47:07', 0),
(146, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:48:50', 0),
(147, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:48:50', 0),
(148, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:48:50', 0),
(149, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:02', 0),
(150, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:02', 0),
(151, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:02', 0),
(152, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:07', 0),
(153, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:07', 0),
(154, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:07', 0),
(155, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:25', 0),
(156, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:25', 0),
(157, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:49:25', 0),
(158, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:51:11', 0),
(159, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:51:11', 0),
(160, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:51:11', 0),
(161, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:31', 0),
(162, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:31', 0),
(163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:31', 0),
(164, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:32', 0),
(165, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:32', 0),
(166, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:32', 0),
(167, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(168, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(169, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(170, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(171, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(172, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:33', 0),
(173, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:34', 0),
(174, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:34', 0),
(175, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:34', 0),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:44', 0),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:44', 0),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:52:44', 0),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:53:01', 0),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:53:01', 0),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:53:01', 0),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:34', 0),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:35', 0),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:35', 0),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:48', 0),
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:48', 0),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:48', 0),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:49', 0),
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:49', 0),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:54:49', 0),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:32', 0),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:32', 0),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:32', 0),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:52', 0),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:52', 0),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:52', 0),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:58', 0),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:55:59', 0),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:00', 0),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:01', 0),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:01', 0),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 01:56:01', 0),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:00:15', 0),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:00:15', 0),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:00:15', 0),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:01', 0),
(219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:01', 0),
(220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:01', 0),
(221, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:02', 0),
(222, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:02', 0),
(223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:02', 0),
(224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:03', 0),
(225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:03', 0),
(226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:01:03', 0),
(227, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:03', 0),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:03', 0),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:03', 0),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:47', 0),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:47', 0),
(232, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:47', 0),
(233, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:51', 0),
(234, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:51', 0),
(235, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:02:51', 0),
(236, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:03:51', 0),
(237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:03:51', 0),
(238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:03:51', 0),
(239, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:04:47', 0),
(240, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:04:47', 0),
(241, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:04:47', 0),
(242, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:05:02', 0),
(243, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:05:02', 0),
(244, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434c5', NULL, '2024-05-06 02:05:02', 0),
(245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:05:13', 0),
(246, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:05:13', 0),
(247, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:05:13', 0),
(248, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:57', 0),
(249, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:57', 0),
(250, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:57', 0),
(251, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:59', 0),
(252, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:59', 0),
(253, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:59', 0),
(254, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:19:59', 0),
(255, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:00', 0),
(256, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:00', 0),
(257, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:00', 0),
(258, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:00', 0),
(259, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:00', 0),
(260, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:19', 0),
(261, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:19', 0),
(262, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:20:19', 0),
(263, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:21:51', 0),
(264, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:21:51', 0),
(265, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:21:51', 0),
(266, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:03', 0),
(267, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:03', 0),
(268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:03', 0),
(269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:04', 0),
(270, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:04', 0),
(271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:22:04', 0),
(272, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:26:11', 0),
(273, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:26:11', 0),
(274, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:26:11', 0),
(275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:07', 0),
(276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:07', 0),
(277, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:07', 0),
(278, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:42', 0),
(279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:42', 0),
(280, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:42', 0),
(281, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:44', 0),
(282, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:44', 0),
(283, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:35:44', 0),
(284, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:36:14', 0),
(285, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:36:14', 0),
(286, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:36:14', 0),
(287, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:37:19', 0),
(288, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:37:20', 0),
(289, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 02:37:20', 0),
(290, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:39:08', 0),
(291, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:39:08', 0),
(292, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:39:08', 0),
(293, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:43:28', 0),
(294, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:43:28', 0),
(295, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:43:28', 0),
(296, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:03', 0),
(297, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:03', 0),
(298, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:03', 0),
(299, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:04', 0),
(300, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:04', 0),
(301, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:44:04', 0),
(302, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:37', 0),
(303, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:37', 0),
(304, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:37', 0),
(305, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:39', 0),
(306, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:39', 0),
(307, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:39', 0),
(308, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:49', 0),
(309, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:50', 0),
(310, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:45:50', 0),
(311, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:52', 0),
(312, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:52', 0),
(313, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:52', 0),
(314, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0),
(315, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0),
(316, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0),
(317, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0);
INSERT INTO `auth_token_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(318, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0),
(319, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:46:57', 0),
(320, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:50:11', 0),
(321, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:50:11', 0),
(322, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'access_token', '', NULL, '2024-05-06 04:50:11', 0),
(323, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434cf', NULL, '2024-05-06 04:51:54', 0),
(324, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434cf', NULL, '2024-05-06 04:51:54', 0),
(325, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer de30e47249456e1659679e6a68a443a486d8dacecd2bf14d9633cb540083434cf', NULL, '2024-05-06 04:51:54', 0),
(326, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:53:42', 0),
(327, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:53:43', 0),
(328, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:53:43', 0),
(329, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:03', 0),
(330, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:03', 0),
(331, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:03', 0),
(332, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:08', 0),
(333, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:08', 0),
(334, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:08', 0),
(335, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:30', 0),
(336, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:30', 0),
(337, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:54:30', 0),
(338, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:14', 0),
(339, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:15', 0),
(340, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:15', 0),
(341, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:17', 0),
(342, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:17', 0),
(343, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:55:17', 0),
(344, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:57:17', 0),
(345, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:57:17', 0),
(346, '::1', 'PostmanRuntime/7.37.3', 'access_token', 'Bearer 68295e688e95c6ffde320af7ab26fcfbf5f65419363176bb97416b167a28b02a', NULL, '2024-05-06 04:57:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perpal`
--

CREATE TABLE `perpal` (
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `id` int(20) DEFAULT NULL,
  `nama` char(30) DEFAULT NULL,
  `jlh_hari_perpal` int(55) DEFAULT NULL,
  `total_` int(55) NOT NULL,
  `hasil_perhitungan_` int(55) NOT NULL,
  `lokasi` char(20) DEFAULT NULL,
  `keterangan` char(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpal`
--

INSERT INTO `perpal` (`no_transaksi`, `tanggal`, `id`, `nama`, `jlh_hari_perpal`, `total_`, `hasil_perhitungan_`, `lokasi`, `keterangan`, `created_at`, `created_by`) VALUES
('PP-24070001', '2024-07-15', NULL, 'MARMOYO', 5, 10, 50, 'testa', 'tester', '2024-07-15 10:41:26', 21);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `min_masuk` int(11) DEFAULT NULL,
  `komisi_patas` int(11) NOT NULL,
  `keterlambatan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `kode_karyawan` varchar(150) NOT NULL,
  `nama_karyawan` varchar(90) DEFAULT NULL,
  `alamat1` varchar(150) DEFAULT NULL,
  `alamat2` varchar(150) DEFAULT NULL,
  `jabatan` varchar(150) DEFAULT NULL,
  `no_sim` varchar(150) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `no_ktp` varchar(60) DEFAULT NULL,
  `qr_code` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supir`
--

INSERT INTO `supir` (`kode_karyawan`, `nama_karyawan`, `alamat1`, `alamat2`, `jabatan`, `no_sim`, `tanggal_masuk`, `no_ktp`, `qr_code`) VALUES
('001', 'Cahyono', 'Matraman', 'Jakarta Timur', 'kernet', 'SIM12345', '2020-01-01', 'KTP12345', '001.png'),
('002', 'Ucok', 'Jakarta', '', 'sopir', 'sim456', '2020-01-01', 'ktp456', '002.png'),
('003', 'tea', 'jak', '', 'kernet', '123', '2020-02-12', '123', '003.png'),
('004', 'Karya', 'jakarta', '', 'kernet', '1222111', '2020-02-12', '1222111', '004.png'),
('005', 'wahyono', '-', '-', 'sopir', '-', '2020-01-12', '-', '005.png'),
('K001', 'malih', '-', '-', 'sopir', '-', '2020-01-12', '-', 'K001.png'),
('KBC0002', 'AGUNG SUBENO', 'DSN SUMBER RT 013 RW 003', 'DESA SUMBER GEDEKEC. KEPOHBARU KAB. BOJONEGORO', 'kernet', '-', NULL, '35220900000000000000', 'KBC0002.png'),
('KBC0004', 'M. ASIK', 'DUSUN LOSARI RT 003/001', 'KEL. MEJOYOLOSARI KEC. GUDO KAB. JOMBANG', 'kernet', '-', NULL, '3517021902750000', 'KBC0004.png'),
('KBC0005', 'AGUS YULIANTO', 'DS KRAJAN RT 026 RW 007', 'KEL. DINGIL KEC. JATIROTO KAB. TUBAN', 'kernet', '-', NULL, '35230200000000000000', 'KBC0005.png'),
('KBC0008', 'SUCITRO', 'LESANPURO XII NO. 7 RT 005 RW 009', 'KEL. LESANPURO KEC. KEDUNG KANDANG KOTA MALANG', 'kernet', '-', NULL, '35730300000000000000', 'KBC0008.png'),
('KBC0009', 'EDI DARMAWAN', 'MARIBAYA RT 005 RW 003', 'KEL. MARIBAYA KEC. KRAMAT KAB. TEGAL', 'kernet', '-', NULL, '33281500000000000000', 'KBC0009.png'),
('KBC00101', 'NUR ROHMAN', 'BOJONEGORO', '', 'kernet', 'XXXXX', '2022-05-13', '35222200000000000000', 'KBC00101.png'),
('KBC0016', 'JOKO WALUYO', 'JL. RE MARTADINATA GG PETEK RT 003 RW 007', 'KEL. PELUTAN KEC. PEMALANG KAB. PEMALANG', 'kernet', '-', NULL, '33270800000000000000', 'KBC0016.png'),
('KBC0018', 'KARMADI', 'DUSUN LOSARI RT 003/001', 'KEL. MEJOYOLOSARI KEC. GUDO KAB. JOMBANG', 'kernet', 'XXXX', '2022-05-13', '35170200000000000000', 'KBC0018.png'),
('KBC0021', 'SUKISNO ADI', 'DSN MENGANTO RT 004 RW 001', 'KEL. MENGANTO KEC. MOJOWARNO KAB. JOMBANG', 'kernet', '-', NULL, '35170700000000000000', 'KBC0021.png'),
('KBC0023', 'MARMOYO', 'PRAJEKAN LOR RT 001 RW 010', 'KEC. PRAJEKAN KAB. BONDOWOSO', 'kernet', '-', NULL, '51116000000000000000', 'KBC0023.png'),
('KBC0024', 'MARTIN', 'LEBAK KANTIN RT 001 RW 005', 'KEL. SEMPUR KEC. BOGOR TENGAH KOTA BOGOR', 'kernet', '-', NULL, '32710300000000000000', 'KBC0024.png'),
('KBC0025', 'MASIR WIDODO', 'DUSUN TEGAL REJO RT 026 RW 007', '', 'kernet', '-', NULL, '35051900000000000000', 'KBC0025.png'),
('KBC0031', 'NURKASAN', 'DSN LEGUNDI RT 008 RW 003', 'KEL. GEMPOL LEGUNDI KEC. GUDO KAB. JOMBANG', 'kernet', '-', NULL, '35170200000000000000', 'KBC0031.png'),
('KBC0032', 'PUJI PRAYITNO', 'NGLABAN RT 002 RW 004', 'DESA NGLABAN KEC. LOCERET KAB. NGANJUK', 'kernet', '-', NULL, '35180400000000000000', 'KBC0032.png'),
('KBC0033', 'RANTO MARYANTO', 'DUSUN BATANG RT 001 RW 003', 'KEL. MANDALA WANGI KEC. SUKASARI KAB. SUBANG', 'kernet', '-', NULL, '32132400000000000000', 'KBC0033.png'),
('KBC0037', 'MOCHAMAD SOLEH', 'DSN LOSARI RT 004 RW 001', 'KEL. MEJOYOLOSARI KEC. GUDO KAB. JOMBANG', 'kernet', '-', NULL, '02000000000000000', 'KBC0037.png'),
('KBC0038', 'SUGENG SURANTO', 'KARANG KEMIRI RT 005 RW 003', 'KEL. KARANG KEMIRI KEC. PEKUNCEN KAB. BANYUMAS', 'kernet', '-', NULL, '33021600000000000000', 'KBC0038.png'),
('KBC0039', 'SUKRI', 'PULO TEGAL SARI RT 009 RW 007', 'KEL. WONOKROMO KEC. WONOKROMO KOTA SURABAYA', 'kernet', '-', NULL, '35780400000000000000', 'KBC0039.png'),
('KBC0046', 'ANDRI MULYONO', 'DSN REJOSARI RT 001 RW 005', 'DESA TINGGAR KEC. BANDAR KEDUNG MULYO KAB. JOMBANG', 'kernet', '-', NULL, '33070900000000000000', 'KBC0046.png'),
('KBC0048', 'heru setiono', 'madiun', '', 'kernet', '-', '2022-11-27', '-', 'KBC0048.png'),
('KBC0052', 'SYAMSUL HUDA', 'DSN LOSARI RT 008 RW 001', 'KEL. MEJOYOLOSARI KEC. GUDO KAB. JOMBANG', 'kernet', '-', NULL, '35170200000000000000', 'KBC0052.png'),
('KBC0053', 'SUPRIYANTO', 'DSN GODONGAN KIDUL RT 036 RW 004', 'KEL. PURWOREJO KEC. GEGER KAB. MADIUN', 'kernet', '-', NULL, '35190300000000000000', 'KBC0053.png'),
('KBC0061', 'RIZKY MAULANA ISKANDAR', 'JL. LODER UJUNG RT 004 RW 008', 'KEL. BARANANG SIANG KEC. BOGOR TIMUR KOTA BOGOR', 'kernet', '-', NULL, '32023600000000000000', 'KBC0061.png'),
('KBC0072', 'YAYAT HIDAYAT', 'KP CIMUNCANG RT 002 RW 006', 'KEL. MARGALAKSANA KEC. CILAWU KAB. GARUT', 'kernet', '-', NULL, '32051900000000000000', 'KBC0072.png'),
('KBC0081', 'TIHALI', 'PINANG RANTI RT 005 RW 002', 'KEL. PINANG RANTI KEC. MAKASAR JAKARTA TIMUR', 'kernet', '-', NULL, '31750800000000000000', 'KBC0081.png'),
('KBC0083', 'AGUS SETIAWAN', 'DK. SOROBOJAN RT 002 RW 008', 'KEL. GROGOL KEC. WERUKAB. SUKOHARJO', 'kernet', '-', NULL, '33110100000000000000', 'KBC0083.png'),
('KBC0084', 'AGUS SANG SANG', 'JL. KEBON DUREN RT 003 RW 013', 'KEL. CIPUTAT KEC. CIPUTAT KOTA TANGERANG SELATAN', 'kernet', '-', NULL, '36740400000000000000', 'KBC0084.png'),
('KBC0086', 'CANDRA BAGUS N', 'DUKUH SEMBIR RT 016/006', 'KEL. BLADO KEC. BLADO KAB. BATANG', 'kernet', '-', NULL, '3325030907950000', 'KBC0086.png'),
('KBC0088', 'SYAMSUN ABROR', 'KP. GAGA RT 006 RW 009', 'KEL. SEMANAN KEC. KALIDERES JAKARTA BARAT', 'kernet', '-', NULL, '31730600000000000000', 'KBC0088.png'),
('KBC0092', 'DEDEN HENDRYANA', 'KP. CITANGTU RT 002 RW 005', 'KEL. CITANGTU KEC. PANGATIKAN KAB. GARUT', 'kernet', '-', '2024-01-01', '32054100000000000000', 'KBC0092.png'),
('KBC0093', 'ADJIS ISMAIL', 'MENAN RT 002 RW 003 DESA SUKAMAJU ', 'KEC. JONGGOL KAB. BOGOR', 'kernet', '-', NULL, '32010600000000000000', 'KBC0093.png'),
('KBC0097', 'MUFARIZKY', 'KP SUMUR RT 012 RW 017', 'KEL. KLENDER KEC. DUREN SAWIT JAKARTA TIMUR', 'kernet', '-', NULL, '16710900000000000000', 'KBC0097.png'),
('KBC0098', 'M. YUSUP S', 'DUSUN WARUNG NANGKA RT 010/003', 'KEL. CIASEM KEC. CIASEM KAB. SUBANG', 'kernet', '-', NULL, '3213093004920000', 'KBC0098.png'),
('KBC0099', 'BANYU ROHMAN', 'TANGSEL', '', 'kernet', 'XXXX', '2022-05-13', '36747800000000000000', 'KBC0099.png'),
('KBC0100', 'RIYAN ANDRIANSYAH', 'DUSUN WARUNG NANGKA', 'RT 011 RW 003 KEL CIASEM TENGAH KEC CIASEM KAB SUB', 'kernet', '-', NULL, '32130900000000000000', 'KBC0100.png'),
('KBC0102', 'AGIL OKTOBI', 'JAKARTA', '', 'kernet', 'XXX', '2022-05-13', '31740500000000000000', 'KBC0102.png'),
('KBC0103', 'DICKY aryanto', 'JAKSEL', '', 'kernet', 'XXX', '2022-05-13', '31741000000000000000', 'KBC0103.png'),
('KBC0104', 'NUR ROHMAN', 'DUSUN PAYUNG RT 002 RW 002 ', 'GENENG, MARGO MULYO, BOJONEGORO', 'kernet', '-', '2022-07-04', '3522220402820003', 'KBC0104.png'),
('KBC0105', 'DEDY SUPRIYANTO', 'PEKALONGAN', '', 'kernet', 'XXXX', '2022-05-13', '33261000000000000000', 'KBC0105.png'),
('KBC0106', 'M RANGGA', 'KLIPAN RT 001/002', 'KEL. TOHUDAN KEC. COLOMADU KAB. KARANGANYAR', 'kernet', '321', '2022-01-05', '3175072812030000', 'KBC0106.png'),
('KBC0107', 'NANDANG AHMAD', 'KP PEUNDEUY RT 005 RW 002 KEL. TENJOWARINGIN ', 'KEC. SALAWU KAB. TASIKMALAYA', 'kernet', '-', NULL, '32061400000000000000', 'KBC0107.png'),
('KBC0108', 'AEP', 'DUSUN SINGKUP RT 007/006', 'KEL. MEDANGLAYANG KEC. PANUMBANGAN KAB. CIAMIS', 'kernet', '-', NULL, '3207070511790000', 'KBC0108.png'),
('KBC0109', 'ILHAM', 'DUSUN I RT 002/003', 'KEL. BUMI MAKMUR KEC. MESUJI RAYA KAB. OKI', 'kernet', '-', '2022-09-22', '1606050507940000', 'KBC0109.png'),
('Kbc0110', 'Akbar', 'Jkt', '', 'kernet', '-', NULL, '-', 'Kbc0110.png'),
('kbc0111', 'roni saefulul ulum', 'KP PANIS HILIR RT 023 RW 006 MANDALAGIRI', 'LEUWISARI - TASIKMALAYA', 'kernet', '-', '2022-11-19', '3206281907930002', 'kbc0111.png'),
('Kbc0112', 'andreas ANGGORO ', 'KP. CIAWI RT 004 RW 001 CIAWI', 'KARANG NUNGGAL, TASIKMALAYA', 'kernet', '-', '2022-12-27', '1803162005690003', 'Kbc0112.png'),
('Kbc0114', 'Ruli afandi', 'DESA BELIMBING RT 004 RW 003 ', 'DEMIT, JATIROGO, TUBAN', 'kernet', '-', '2023-04-04', '3523022009900002', 'Kbc0114.png'),
('kbc0115', 'MOMOT RIANTO', 'KARANG MONCOL RT 013 RW 004', 'RANDU DONGKAL - PRMALANG, TAWA TENGAH', 'kernet', '-', '2023-07-20', '3327071001870085', 'kbc0115.png'),
('KBC0116', 'Idris avandi', 'DUSUN NENEK RT 003 RW 002', 'KALIREJO, DRINGU, PROBOLINGGO', 'kernet', '-', '2023-12-03', '3513191509970001', 'KBC0116.png'),
('KBC0117', 'ali khitoh', 'BLOK PASAR LAMA RT 003 RW 003', 'SONGGOM LOR - SONGGOM - BREBES', 'kernet', '-', '2023-12-22', '3329101001960010', 'KBC0117.png'),
('KBC0118', 'aditya herdiansyah', 'JL RADAR NO.45 RT 003 RW 002 ', 'MARGA JAYA - BOGOR BARAT', 'kernet', '-', '2024-01-20', '3271042506960007', 'KBC0118.png'),
('kbc0119', 'andika adi nugroho', 'JUMOG RT 020 RW 000 SAMBIREJO', 'SAMBIREJO - SRAGEN', 'kernet', '-', '2024-02-11', '3314051804040002', 'kbc0119.png'),
('KBC0120', 'hendra', 'DUSUN BABAKAN SUKAATI RT 005 RW 002', 'PATOK BEUSI - SUBANG', 'kernet', '-', '2024-02-23', '3213160705820012', 'KBC0120.png'),
('KBC0121', 'MOH ANDI NURHIDAYAT', 'MUNCANG LARANG RT 005 RW 002', 'BUMI JAWA - TEGAL', 'kernet', '-', '2024-04-10', '3328020204000004', 'KBC0121.png'),
('KBC0122', 'AHMAD MAULANA', 'KP. PONDOK MIRI RT 001 RW 006', 'RAWAKALONG - GUNUNG SINDUR - BOGOR', 'kernet', '-', '2024-04-10', '3201112104000003', 'KBC0122.png'),
('kbc0123', 'BEJO', 'GLAGAH RT 009 RW 005', 'BIRIT, WEDI, KLATEN', 'kernet', '-', '2024-05-02', '3173081504750014', 'kbc0123.png'),
('KBK0001', 'TARYONO', 'KP SUMUR WANGI 003/002 DESA MUNJUL', 'PAGADEN BARAT,SUBANG', 'kernet', '321', '0000-00-00', '3213.2801.0170.0008', 'KBK0001.png'),
('KBK0002', 'PARJONO', 'DK KARANGASEM 003/011 TAWANGSARI', 'SUKOHARJO,JATENG', 'kernet', '321', '0000-00-00', '3311.0302.0460.0002', 'KBK0002.png'),
('KBK0003', 'NANO', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0003.png'),
('KBK0004', 'DENI CARLES', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0004.png'),
('KBK0005', 'HAMDAN', 'KP CIMANGGU 001/007 CIMANGGU II CIBUNGBULANG', 'BOGOR,JABAR', 'kernet', '321', '0000-00-00', '3201161306840004', 'KBK0005.png'),
('KBK0006', 'DADANG PERMANA', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0006.png'),
('KBK0007', 'IYANG', 'PALABUAN 007/001 SUKAMELANG SUBANG', 'SUBANG,JAWA BARAT', 'kernet', '321', '0000-00-00', '3213031609650001', 'KBK0007.png'),
('KBK0008', 'DADANG KACA', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0008.png'),
('KBK0009', 'DENI B', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0009.png'),
('KBK0010', 'IIN', 'KP CIKADU 011/005 TANJUNGSIANG', 'SUBANG,JAWA BARAT', 'kernet', '321', '0000-00-00', '3213141003840001', 'KBK0010.png'),
('KBK0011', 'IYAN SOPYAN', 'KP WANAREJA 009/003 WANAREJA SUBANG', 'SUBANG,JAWA BARAT', 'kernet', '321', '0000-00-00', '3213031007750016', 'KBK0011.png'),
('KBK0012', 'SAEPUDIN', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0012.png'),
('KBK0014', 'TARMO RUSTAM', 'JL AHMAD YANI 008/003 PASIRKAREUMBI SUBANG', 'SUBANG,JAWA BARAT', 'kernet', '312', '0000-00-00', '3213032104730509', 'KBK0014.png'),
('KBK0015', 'GUSRIN', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0015.png'),
('KBK0016', 'ATIK', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0016.png'),
('KBK0020', 'UJANG SUPRIATNA', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0020.png'),
('KBK0021', 'AEP', 'JL BIMA BLOK SUKAMEKAR 030/019 CIGADUNG', 'SUBANG,JAWA BARAT', 'kernet', '321', '0000-00-00', '3211160409750002', 'KBK0021.png'),
('KBK0023', 'SUWARYANTO', 'JL MUARA TEGAL I RT 001 RW 001', 'KEL. SINDANGRASA KEC. BOGOR TIMUR KOTA BOGOR', 'kernet', '321', '2021-01-01', '3521022701800002', 'KBK0023.png'),
('KBK0024', 'HERMAN HERMAWAN', 'JL. SUKAMULYA RT 007 RW 003', 'KEL. SUKASARI KEC. BOGOR TIMUR  KOTA BOGOR', 'kernet', '321', '2021-01-01', '3271010106900008', 'KBK0024.png'),
('KBK0025', 'KOHAR', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0025.png'),
('KBK0026', 'PARTO', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0026.png'),
('KBK0027', 'ASEP', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0027.png'),
('KBK0029', 'AAP SAEPULROHMAN', 'KP BURUJUL RT 001 RW 004', 'KEL. CIGINTUNG KEC. SINGAJAYA KAB. GARUT', 'kernet', '321', '2021-01-01', '3205241011950002', 'KBK0029.png'),
('KBK0030', 'SUTISNA KDT', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0030.png'),
('KBK0031', 'SAMSIR', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0031.png'),
('KBK0032', 'JUJUN', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0032.png'),
('KBK0033', 'ROHMAT', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0033.png'),
('KBK0034', 'RUSDANI', 'JKT', '', 'kernet', '321', NULL, '123', 'KBK0034.png'),
('KBK0036', 'MULYANA', 'KP CUKANGGALEUH 2 RT 003 RW 004', 'KEL. JAMBULUWUK KEC. CIAWI KAB. BOGOR', 'kernet', '321', '2021-01-01', '3201240107760014', 'KBK0036.png'),
('KBK0037', 'SUJANA', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0037.png'),
('KBK0038', 'ADIT', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0038.png'),
('KBK0039', 'SUDRAJAT', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0039.png'),
('KBK0040', 'OPICK', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0040.png'),
('KBK0041', 'FAUZY', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0041.png'),
('KBK0042', 'AMIN', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0042.png'),
('KBK0043', 'SAYUTI', 'JKT', '', 'kernet', '321', NULL, '123', 'KBK0043.png'),
('KBK0044', 'AYUB', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0044.png'),
('KBK0045', 'KOMAR', 'JIPANG 004/005 JIPANG BANTAR KAWUNG', 'BREBES,JATENG', 'kernet', '321', '0000-00-00', '3329121007800016', 'KBK0045.png'),
('KBK0046', 'RADIT', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KBK0046.png'),
('KBK0047', 'TARJONO', 'TEGAL', '', 'kernet', 'XXXX', '0000-00-00', '33280900000000000000', 'KBK0047.png'),
('KDP-S0001', 'GATOT PAMUNGKAS', 'JAKARTA', '', 'sopir', '321', '2000-01-01', '123', 'KDP-S0001.png'),
('KDP-S0002', 'JUMONO', 'JAKARTA', '', 'sopir', '321', '2000-01-01', '123', 'KDP-S0002.png'),
('KDP-S0003', 'HENDRI P', 'JAKARTA', '', 'sopir', '321', '2010-01-01', '123', 'KDP-S0003.png'),
('KDP-S0004', 'WEGI SASMITA', 'DEPOK', '', 'sopir', '321', '2010-01-01', '123', 'KDP-S0004.png'),
('KDP-S0005', 'ALI MUSA MUHAJIR', 'JAKARTA', '', 'sopir', '321', '2010-01-01', '123', 'KDP-S0005.png'),
('kpt0001', 'ade', 'jkt', '', 'kernet', '321', '2021-01-01', '123', 'kpt0001.png'),
('kpt0002', 'alfian', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'kpt0002.png'),
('KPT00021', 'CHANDRA BAGUS NUGROHO', 'DUKUH SEMBIR ', 'BATAM', 'kernet', 'XXX', '2022-04-25', '33250300000000000000', 'KPT00021.png'),
('KPT00022', 'SAMSUDIN', 'HARJOWINANGUN', 'GROBOGAN', 'kernet', 'XX', '2022-04-25', '31504100000000000000', 'KPT00022.png'),
('KPT00023', 'PARGAULAN SIMAMORA', 'DS SARADAN ', 'PEMALANG', 'kernet', 'XXXX', '2022-04-25', '33270800000000000000', 'KPT00023.png'),
('KPT00025', 'ASARI ', 'CEPIRING', 'KENDAL', 'kernet', 'XXXX', '2022-04-25', '33241300000000000000', 'KPT00025.png'),
('KPT00026', 'nardi', 'DSN MOJOLEGI', 'GROBOGAN', 'kernet', 'XXXX', '2022-04-25', '33150400000000000000', 'KPT00026.png'),
('KPT00027', 'KASLARI', 'SASTRODIRJAN', 'PEKALONGAN', 'kernet', 'XXXXX', '2022-04-25', '33261200000000000000', 'KPT00027.png'),
('KPT00028', 'TRI HARI S', 'JL H ABDUL GHONI', 'TEGAL', 'kernet', 'XXXXX', '2022-04-25', '33760100000000000000', 'KPT00028.png'),
('KPT00029', 'SYAMSUL HUDA', 'DSN LOSARI', 'JOMBANG', 'kernet', 'XXXX', '2022-04-25', '35170200000000000000', 'KPT00029.png'),
('KPT0003', 'AZDI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0003.png'),
('KPT00030', 'WARDONO', 'PAKEMBARAN TEGAL', '', 'kernet', 'XXXX', '2022-05-13', '33281000000000000000', 'KPT00030.png'),
('KPT00031', 'M MUKTI ALI', 'PEMALANG', '', 'kernet', 'XX', '2022-05-13', '33271031XXXX', 'KPT00031.png'),
('KPT00032', 'AHMAD KUSWANTO', 'GROBOGAN', '', 'kernet', 'XXXX', '2022-05-13', '331502000000000000', 'KPT00032.png'),
('KPT00033', 'EKO KURNIAWAN', 'PEMALANG', '', 'kernet', 'XXXX', '2022-05-13', '33271000000000000000', 'KPT00033.png'),
('KPT00034', 'MUHAMMAD TEGUH', 'BLORA', '', 'kernet', 'XXX', '2022-05-13', '33160800000000000000', 'KPT00034.png'),
('KPT00035', 'ENDRO PRAYITNO', 'GROBOGAN', '', 'kernet', 'XXXX', '2022-05-13', '33151600000000000000', 'KPT00035.png'),
('KPT00036', 'LOLLYYANTO', 'BLORA', '', 'kernet', 'XXXX', '2022-05-13', '33160800000000000000', 'KPT00036.png'),
('KPT00037', 'CANDRA BAGUS', 'BATANG', 'XXXX', 'kernet', 'XXXX', '2022-05-13', '33250300000000000000', 'KPT00037.png'),
('KPT00038', 'AHMAD NUR S', 'GROBOGAN', '', 'kernet', 'XXXX', '2022-05-13', '33150600000000000000', 'KPT00038.png'),
('KPT00039', 'akmad ripai', 'GROBOGAN', '', 'kernet', 'XXXXX', '2022-05-13', '33151300000000000000', 'KPT00039.png'),
('KPT0004', 'DENI ROLIS', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0004.png'),
('KPT00040', 'TRI SUSANTO', 'GROBOGAN', '', 'kernet', 'XXXXX', '2022-05-13', '33151200000000000000', 'KPT00040.png'),
('KPT00041', 'MUHAMMAD ARI', 'GROBOGAN', '', 'kernet', 'XXXXX', '2022-05-13', '33151800000000000000', 'KPT00041.png'),
('KPT00042', 'SAIFUL BAHRI', 'JEPARA', '', 'kernet', 'XXXXX', '2022-05-13', '33200300000000000000', 'KPT00042.png'),
('KPT00043', 'DHARMA SETYAWAN', 'GROBOGAN', '', 'kernet', 'XXXXXX', '2022-05-13', '33151600000000000000', 'KPT00043.png'),
('KPT00044', 'ONY WIBOWO', 'SURABAYA', '', 'kernet', 'XXXXX', '2022-05-13', '35781000000000000000', 'KPT00044.png'),
('KPT00045', 'DARNO', 'Grobogan', '', 'kernet', 'Xxx', '2022-08-19', '33150600000000000000', 'KPT00045.png'),
('KPT00046', 'M Ali mukhlis', 'Jakarta', '', 'kernet', 'Xxx', '2022-08-09', 'Xxx', 'KPT00046.png'),
('KPT0005', 'DIDI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0005.png'),
('kpt0006', 'didik', 'jkt', '', 'kernet', '321', '2021-01-01', '123', 'kpt0006.png'),
('kpt0007', 'dodo', 'jkt', '', 'kernet', '321', NULL, '123', 'kpt0007.png'),
('kpt0008', 'doni', 'jkt', '', 'kernet', '321', '2021-01-01', '123', 'kpt0008.png'),
('kpt0009', 'eko', 'jkt', '', 'kernet', '321', '2021-01-01', '123', 'kpt0009.png'),
('KPT0010', 'FERRY', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0010.png'),
('kpt0011', 'heri', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'kpt0011.png'),
('KPT0012', 'MUSTAK FIRI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0012.png'),
('KPT0013', 'PARYANTO', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0013.png'),
('KPT0014', 'RENDI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0014.png'),
('KPT0015', 'RIDWAN', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0015.png'),
('KPT0016', 'ROBBY', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0016.png'),
('KPT0017', 'SULISTYO', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0017.png'),
('KPT0018', 'TEGAR', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0018.png'),
('KPT0019', 'TRI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0019.png'),
('KPT0020', 'YOGI', 'JKT', '', 'kernet', '321', '2021-01-01', '123', 'KPT0020.png'),
('KPT0021', 'FAJAR EDI S', 'KEBUMEN', '', 'kernet', '-', NULL, '33050700000000000000', 'KPT0021.png'),
('KPT0047', 'AKHSAN AMINUDIN', 'PESANTUNAN RT 002 RW 009', 'KEL. PESANTUNAN KEC. WANASARI KAB. BREBES', 'kernet', '-', '2022-11-03', '3329081308790010', 'KPT0047.png'),
('KPT0048', 'saiful bahri', 'KAUMAN RT 007 RW 004', 'KEL. KALIPUCANG WETAN KEC. WELAHAN KAB. JEPARA', 'kernet', '-', '2022-11-22', '3320030303780002', 'KPT0048.png'),
('KWS0002', 'AGUS SUWANTO', 'KP TEGAL WARU RT 009 RW 004 KEL. TEGAL WARU', 'KEC. TEGAL WARU KAB. PURWAKARTA', 'kernet', '-', NULL, '32170500000000000000', 'KWS0002.png'),
('KWS0006', 'WIKJOKO', 'LIMBANGAN RT 007 RW 005', 'KEL LIMBANGAN KEC. KERSANA KAB. BREBES', 'kernet', '-', NULL, '33291100000000000000', 'KWS0006.png'),
('KWS0009', 'RUSKIAWAN', 'BOGOR', '', 'kernet', '-', NULL, '-', 'KWS0009.png'),
('KWS0013', 'SAPRUDIN', 'KP CIRUKUY RT 001 RW 001 KEL. SUKAJADI KEC. CISAYO', '', 'kernet', '-', NULL, '31750800000000000000', 'KWS0013.png'),
('KWS0018', 'DEDI PURNAMA', 'BUMI JAWA RT 005 RW 002 KEL. BUMI JAWA', 'KEC. BUI JAWAKAB. TEGAL', 'kernet', '-', NULL, '33280900000000000000', 'KWS0018.png'),
('KWS0019', 'HERMAWAN', 'KP BOJONG KONENG RT 005/002', 'DESA CIHERANG PONDOK KEC. CARINGIN KAB. BOGOR', 'kernet', 'Xxx', NULL, '3201272812800002', 'KWS0019.png'),
('KWS0020', 'ALDIANO VAJAR', 'GROBOGAN', '', 'kernet', 'XXXX', '2022-05-13', '33150900000000000000', 'KWS0020.png'),
('KWS0021', 'DEDI PURNAMA', 'BUMIJAWA RT 005/002', 'KEL. BUMIJAWA KEC. BUMIJAWA KAB. TEGAL', 'kernet', 'XXXXX', '2022-05-13', '3328091203870012', 'KWS0021.png'),
('KWS0022', 'JAJA', 'TAMBAK SARI RT 002 RW 001', 'GARUT', 'kernet', '-', '2023-07-01', '3205112208890002', 'KWS0022.png'),
('kws0023', 'arip', 'DUSUN BOJONG JATI RT 002 RW 002', 'TARIK KOLOT - JATI NUNGGAL, SUMEDANG', 'kernet', '-', '2024-05-01', '3206180607910001', 'kws0023.png'),
('S-ANT0001', 'AMANULOH', 'JAKARTA', '', 'sopir', '321', '2010-01-01', '123', 'S-ANT0001.png'),
('S-ANT0002', 'SAMAHUDI', 'JAKARTA', '', 'sopir', '321', '2005-01-01', '123', 'S-ANT0002.png'),
('S-ANT0003', 'JUKI', 'BOGOR', '', 'sopir', '321', '2000-01-01', '123', 'S-ANT0003.png'),
('S-ANT0004', 'HIDAYAT', 'JAKARTA', '', 'sopir', '321', '2000-01-01', '123', 'S-ANT0004.png'),
('S-ANT0005', 'EKO SUWITONO', 'JAKARTA', '', 'sopir', '321', '2010-01-01', '123', 'S-ANT0005.png'),
('SAK0001', 'ARDIAN', 'PINANG RANTI RT 005 RW 002 PINANG RANTI', 'JAKARTA TIMUR', 'sopir', '12058.7060.04990', '0000-00-00', '3175082306870002', 'SAK0001.png'),
('SAK0002', 'ALAMSYAH', 'KP CIBUCIL RT05/RW02 KEC JONGGOL', 'BOGOR,JABAR', 'sopir', '7602.1325.1620', '0000-00-00', '3201060802760012', 'SAK0002.png'),
('SAK0003', 'ZENAL MUNAWAR', 'KP PERTANIAN SELATAN 013/003 KLENDER DUREN SAWIT', 'JAKARTA TIMUR', 'sopir', '8302.1330.0746', '0000-00-00', '3213101402830016', 'SAK0003.png'),
('SAK0004', 'SAPTO MULYONO', 'SUDAH RESIGN/MENINGGAL', '', 'sopir', '321', '2021-01-01', '123', 'SAK0004.png'),
('SAK0005', 'SARTA DJAYA', 'JL ROROTAN II 004/004 ROROTAN CILINCING', 'JAKARTA UTARA', 'sopir', '1205.5907.001354', '0000-00-00', '3172042107590004', 'SAK0005.png'),
('SAK0006', 'TORDI', 'BATU AMPAR 004/002 KRAMAT DJATI', 'JAKARTA TIMUR', 'sopir', '1205.6306.001244', '0000-00-00', '3175041806630002', 'SAK0006.png'),
('SAK0007', 'HASAN', 'CILODONG 001/005 CILODONG', 'DEPOK JABAR', 'sopir', '1205.8108.004240', '0000-00-00', '276083108810001', 'SAK0007.png'),
('SAK0008', 'CHALIA AZIZ IDHAM', 'KP JARAKOSTA 004/002 SUKADANAU CIKARANG BARAT', 'BEKASI,JABAR', 'sopir', '1306.1223.30531', '0000-00-00', '321608080875.0010', 'SAK0008.png'),
('SAK0009', 'KARYA KHOIRUL ANWAR', 'KP LW MALANG SUKARESMI,CIKARANG SELATAN', 'BEKASI,JABAR', 'sopir', '1205.8204.003844', '0000-00-00', '3216190204820005', 'SAK0009.png'),
('SAK0010', 'DEDE ROMDONA', 'KP SINGAJAYA 002/001 SINGAJAYA', 'GARUT, JABAR', 'sopir', '7111.1333.0511', '0000-00-00', '3205240311710002', 'SAK0010.png'),
('SB0027', 'KUWAT', 'JKT', '', 'sopir', '321', NULL, '123', 'SB0027.png'),
('SBC0005', 'ANDRE RAHAYU', 'JL. LIMAU RT 004 RW 001', 'KEL. LIMAU KEC. SEMBAWA KAB. BANYUASIN', 'sopir', '78101100000000000', NULL, '16070300000000000000', 'SBC0005.png'),
('SBC0006', 'ARIES ARIYANTO', 'SIMORI JOSARI AA-08/6 RT 005 RW 006', 'KEL. SIMOMULYO BARU KEC. SUKOMANUNGGAL KOTA SURABA', 'sopir', '1514-6708-000212', NULL, '35782700000000000000', 'SBC0006.png'),
('SBC0009', 'HAIRUL MUMIN', 'DS CIDEMPET RT 08 RW 02', 'KEC. ARAHAN KAB. INDRAMAYU', 'sopir', '77121300000000000', NULL, '32121700000000000000', 'SBC0009.png'),
('SBC0012', 'DEDI RETIA MAHENDRA', 'JL. RAYA PARUNG RT 002 RW 001', 'KEL. PARUNG KEC. PARUNG KAB. BOGOR', 'sopir', '1205-6508-001197', NULL, '32011000000000000000', 'SBC0012.png'),
('SBC0014', 'EDI ARTONO', 'DSN PLAWANGAN RT 003 RW 006', 'KEL. GROBOGAB KEC. KEDUNG JAJANG KAB. LUMAJANG', 'sopir', '7103-1529-0464', NULL, '35081600000000000000', 'SBC0014.png'),
('SBC0017', 'ABDUL GHOFAR GHOZALI', 'KARANGDAWA RT 003 RW 005', 'KEL. KARANGDAWA KEC. MARGASARI KAB. TEGAL', 'sopir', '1430-8412-000136', NULL, '33280100000000000000', 'SBC0017.png'),
('SBC0024', 'ACHMAD JUMADI', 'BLOK KEBON I RT 004 RW 006 ', 'KEL. ERETAN KULON KEC. KANDANGHAUR KAB. INDRAMAYU', 'sopir', '73101300000000000', NULL, '32123100000000000000', 'SBC0024.png'),
('SBC0026', 'NUR KHAMID', 'DK DAMPAK RT 004 RW 004 ', 'KEL. SIDOMULYO KEC. DEMPET KAB. DEMAK', 'sopir', '1434690000000000000', NULL, '31710100000000000000', 'SBC0026.png'),
('SBC0031', 'KUSMANTO', 'SUMUR KIDANG RT 018 RW 007', 'KEL. SUMUR KIDANG KEC. BANTAR BOLANG KAB. PEMALANG', 'sopir', '1428-7303-000021', NULL, '33270600000000000000', 'SBC0031.png'),
('SBC0035', 'MUCHAROM', 'JL. KYAI ILYAS MUSHOLA I RT 001 RW 011', 'CITRODIWANGSAN LUMAJANG', 'sopir', '74041500000000000', NULL, '35081000000000000000', 'SBC0035.png'),
('SBC0036', 'MULYADI', 'DS KLAMPITAN RT 005 RW 002', 'KEC. PURWOSARI KAB. KEDIRI', 'sopir', '1535-6412-000157', NULL, '35061500000000000000', 'SBC0036.png'),
('SBC0038', 'SUNARDI', 'NGARIBOYO RT 002 RW 003', 'KEL. MANISHARJO KEC. NGRAMBE KAB. NGAWI', 'sopir', '1324-7802-000018', NULL, '32710100000000000000', 'SBC0038.png'),
('SBC0041', 'OTONG MASNA', 'DUSUN SEMILIRAN RT 005/001', 'KEL. BANTARBOLANG KEC. BANTARBOLANG KAB. PEMALANG', 'sopir', '6603-1428-0286', NULL, '3327061603660004', 'SBC0041.png'),
('SBC0044', 'RAWIT HARYANTO', 'JL. A. YANI RT 002 RW 003', 'KEL. DUKUHTURI KEC. KETANGGUNGAN KAB BREBES', 'sopir', '1431-7506-000233', NULL, '33291600000000000000', 'SBC0044.png'),
('SBC0046', 'ROJAI', 'KARANGDAWA RT 004 RW 004 ', 'KEL. KARANGDAWA KEC. MARGASARI KAB. TEGAL', 'sopir', '69121400000000000', '2023-01-01', '3328 013112690135', 'SBC0046.png'),
('SBC0047', 'RONNY', 'JL. MASTRIP IV/3 RT 005 RW 013', 'KEL. KANIGARAN KEC. KANIGARAN KOTA PROBOLINGGO', 'sopir', '1527680000000000000', NULL, '35740400000000000000', 'SBC0047.png'),
('SBC0048', 'SEKHUDIN', 'DS PAGIYANTEN RT 12 RW 03', 'KEC. ADIWERNA KAB. TEGAL', 'sopir', '74011400000000000', NULL, '33281100000000000000', 'SBC0048.png'),
('SBC0051', 'SIDIQ CAHYONO', 'JL. BHAKTI RT 001 RW 007', 'KEL. BALE ARJOSARI KEC. BLIMBING KOTA MALANG', 'sopir', '79031500000000000', NULL, '35730100000000000000', 'SBC0051.png'),
('SBC0059', 'TOTO SUMANTO', 'DSN IV DESA PEDAMARAN IV', 'KEC. PEDAMARAN KAB. OGAN KOMERING ILIR', 'sopir', '111980000000000000', NULL, '16020300000000000000', 'SBC0059.png'),
('SBC0060', 'TB SAPRUDIN', 'KP CITANGKIL RT 001 RW 001 KEL. KADUENGANG KEC. CA', 'KAB. PANDEGLANG', 'sopir', '88052500000000000', NULL, '36012200000000000000', 'SBC0060.png'),
('sbc0062', 'WAKIMAN', 'SIMO KWAGEAN KUBURAN 32 RT 008 RW 014', 'KEL. PUTAT JAYA KEC. SAWAHAN KOTA SURABAYA', 'sopir', '60061500000000000', NULL, '35780600000000000000', 'sbc0062.png'),
('SBC0063', 'WARTONO', 'KALIJAMBE RT 003 RW 003', 'KEL. KALIJAMBE KEC. TARUB KAB. TEGAL', 'sopir', '67011400000000000', NULL, '33281400000000000000', 'SBC0063.png'),
('SBC0064', 'WAWAN HARIYANTO', 'DS LABRUK KIDUL RT 33 RW 05', 'KEC. SUMBERSUKO LUMAJANG', 'sopir', '1529730000000000000', NULL, '35082100000000000000', 'SBC0064.png'),
('SBC0065', 'WIYONO', 'KP. PD. KACANG RT 004 RW 005 KEL PONDOK KACANG', 'KEC. PONDOK AREN KOTA TANGERANG SELATAN', 'sopir', '61121200000000000', NULL, '36744000000000000000', 'SBC0065.png'),
('SBC0069', 'SULKHIN', 'JL. IKAN PIRANHA K 64 F RT 008 RW 003', 'KEL. PURWODADI KEC. BLIMBING KOTA MALANG', 'sopir', '1525-7712-000167', NULL, '35170200000000000000', 'SBC0069.png'),
('SBC0070', 'AGUNG PRASETYO', 'GANDU RT 003 RW 002 ', 'KEL. SAMBIREJO KEC. NGRAMBE KA', 'sopir', '1542-8404-000243', NULL, '35210200000000000000', 'SBC0070.png'),
('SBC0074', 'EDI SUYATNO', 'JL. BATU AMARIL NO. 31 RT 003 RW 004', 'KEL. PANDANWANGI KEC. BLIMBING KOTA MALANG', 'sopir', '1525-6604-000114', NULL, '35730100000000000000', 'SBC0074.png'),
('SBC0077', 'KHUDORI', 'KARANG MONCOL RT 013 RW 004', 'KEC. RANDU DONGKAL KAB. PEMALANG', 'sopir', '6411-1428-0036', NULL, '33270700000000000000', 'SBC0077.png'),
('SBC0080', 'radum', 'JATIBOGOR RT 03 RW 09 ', 'SURADAI, TEGAL, JAWA TENGAH', 'sopir', '14306902000018', '2023-07-26', '3328161202690003', 'SBC0080.png'),
('SBC0081', 'SETIAWAN KRISTIANTO', 'DK KRAJAN RT 003 RW 001', 'KEL. PULOSARI KEC. PULOSARI KAB. PEMALANG', 'sopir', '1428-8009-000227', NULL, '33270200000000000000', 'SBC0081.png'),
('SBC0083', 'SUWARNO', 'JL. SELAT KARIMATA RT 005 RW 003', 'KEL. BANDENGAN KEC. PEKALONGAN UTARA KOTA PEKALONG', 'sopir', '65081400000000000', NULL, '35211200000000000000', 'SBC0083.png'),
('SBC0084', 'TEGUH WIDODO', 'PURI HARAPAN BLOK D4/46 RT 009 RW 021', 'KEL. SETIA ASIH KEC. TARUMA JAYA KAB. BEKASI', 'sopir', '68091200000000000', NULL, '32160100000000000000', 'SBC0084.png'),
('SBC0085', 'WAWAN SARWANI', 'KP NAGROG RT 002 RW 005 ', 'KEL. CIADEG KEC. CIGOMBONG KAB. BOGOR', 'sopir', '75051300000000000', NULL, '32013800000000000000', 'SBC0085.png'),
('SBC0088', 'ACHMAD YUNEDI CHADIANTO', 'DUKUH PLOSOREJO RT 003 RW 005', 'KEL. TOSO KEC. BANDAR KAB. BATANG', 'sopir', '1427-7906-000049', NULL, '32013800000000000000', 'SBC0088.png'),
('SBC0091', 'ASEP YUDI', 'KP PANIIS HILIR RT 23 RW 06', 'MANDALAGIRI LEUWISARI KAB. TASIKMALAYA', 'sopir', '76091300000000000', NULL, '32062800000000000000', 'SBC0091.png'),
('SBC0092', 'BAMBANG WANTORO', 'DS BABAKAN RT 003 RW 001 ', 'KEC. KRAMAT KAB. TEGAL', 'sopir', '1429-7806-000135', NULL, '33281500000000000000', 'SBC0092.png'),
('SBC0096', 'SUPRIYANTO', 'MADE WETAN RT 021 RW 000', 'KEL. GABUS KEC. NGRAMPAL KAB. SRAGEN', 'sopir', '79011400000000000', NULL, '36031200000000000000', 'SBC0096.png'),
('SBC0099', 'IBENG LALAN ABDUL ZAELANI', 'JL. KARTAWIHENDA GG TENGAH 018 RT 018 RW 005', 'KEL. KARANGANYAR KEC. SUBANG KAB. SUBANG', 'sopir', '1330-9409-000150', NULL, '32780800000000000000', 'SBC0099.png'),
('SBC0100', 'IWAN EFENDI', 'DUSUN PLAWANGAN RT 003 RW 006', 'KEL. GROBOGAN KEC. KEDUNGJAJANGKAB. LUMAJANG', 'sopir', '82041500000000000', NULL, '35081600000000000000', 'SBC0100.png'),
('SBC0101', 'IWAN GUNAWAN', 'JL LODER UJUNG RT 004 RW 008', 'KEL. BARANAGN SIANG KEC. BOGOR TIMUR KOTA BOGOR', 'sopir', '69061300000000000', NULL, '32023600000000000000', 'SBC0101.png'),
('SBC0103', 'MUHAMMAD LUTFI', 'PETUNJUNGAN RT 003 RW 001', 'KEC. BULAKAMBA KAB. BREBES', 'sopir', '1618-8706-001036', NULL, '33290800000000000000', 'SBC0103.png'),
('SBC0104', 'MOHAMMAD YUSUP EPENDI', 'DUSUN PAYUNG RT 001 RW 002 ', 'KEL. GENENG KEC. MARGOMULYO KAB. BOJONEGORO', 'sopir', '1324940000000000000', NULL, '33280500000000000000', 'SBC0104.png'),
('SBC0112', 'SANTOSO', 'KENDAL DOYONG RT 002/001  ', 'KEL. KENDAL DOYONG KEC. PETARUKAN KAB. PEMALANG', 'sopir', '6804-1428-0007', NULL, '3327102904680000', 'SBC0112.png'),
('SBC0115', 'YURIZAL', 'JL. SRIKANDIRT 002 RW 004', 'PONDOK BENDA PAMULANG', 'sopir', '1205-5901-000846', NULL, '36740600000000000000', 'SBC0115.png'),
('SBC0118', 'IYUS RIYANSYAH', 'KP KARAWANG WETAN RT 004 RW 002 ', 'KEL. KARAWANG KEC. SUKABUMI KAB. SUKABUMI', 'sopir', '77031300000000000', NULL, '32023300000000000000', 'SBC0118.png'),
('SBC0125', 'ATO HERIYANTO', 'KP CIMAHI RT 002 RW 001', 'KEL. MEKARSARI KEC. PAGELARAN KAB. CIANJUR', 'sopir', '1327-7805-000122', NULL, '32031800000000000000', 'SBC0125.png'),
('SBC0126', 'SLAMET WIDODO', 'NGUNDUK RT 001 RW 003', 'KEL. BAYEMHARJO KEC. GIRITONTRO KAB. WONOGIRI', 'sopir', '1453-7106-000108', NULL, '36031800000000000000', 'SBC0126.png'),
('SBC0136', 'ACENG MASYKURI', 'SUMBANG RT 003 RW 001', 'KEL. SUMBANG KEC. SUMBANG KAB. BANYUMAS', 'sopir', '1414-6308-000149', NULL, '33022000000000000000', 'SBC0136.png'),
('SBC0138', 'DADANG MARYADI', 'PETAMBURAN RT 008 RW 006', 'KEL PETAMBURAN KEC TANAH ABANG JAKARTA PUSAT', 'sopir', '1205-6909-000062', NULL, '31710700000000000000', 'SBC0138.png'),
('SBC0144', 'INDRA SUCIPTA', 'JL SILIWANGI BLOK 126 RT 003 RW 001', 'KEL. BATUTULIS KEC. BOGOR SELATAN KOTA BOGOR', 'sopir', '85111300000000000', NULL, '32130900000000000000', 'SBC0144.png'),
('SBC0145', 'BAMBANG HERMAWAN', 'KP PEMAGARSARI RT 002 RW 001', 'KEL. PARUNG KEC. PARUNG KAB. BOGOR', 'sopir', '1324-7807-000085', NULL, '32011000000000000000', 'SBC0145.png'),
('SBC0146', 'WURYANTO', 'KIRINGAN RT 005 RW 001 ', 'KEL. TIDAR UTARA KEC. MAGELANG SELATAN KOTA MAGELA', 'sopir', '73041500000000000', NULL, '33710100000000000000', 'SBC0146.png'),
('SBC0149', 'IWAN KUSHENDAR', 'BLOK JALTRI GG. JALITRI RT 003/009', 'KEL. KARANGANYAR KEC. SUBANG KAB. SUBANG', 'sopir', '1331-7312-000233', '2022-10-04', '3213031512730000', 'SBC0149.png'),
('sbc0151', 'YANA CARYANA', 'DUSUN CIREJAG RT 01/02 ', 'BELENDUNG KLARI KARAWANG', 'sopir', '8206-1328-2252', '2022-05-07', '123', 'sbc0151.png'),
('sbc0152', 'ASEP', 'BABAKAN LIO RT 01/08 ', 'BALUMBANG JAYA KOTA BOGOR', 'sopir', '7110-1324-0624', '2022-07-13', '3271041010710010', 'sbc0152.png'),
('SBC0154', 'APRIADI', 'DUSUN DUA RT 002/003', 'KEL. PEDAMARAN II KEC. PEDAMARAN II KAB. OKI', 'sopir', '2536-8704-000049', '2022-01-08', '1602032404870000', 'SBC0154.png'),
('SBC0155', 'KOMAR', 'KP JONGOR RT 001/007 ', 'KEL. MARGALUYU KEC. LELES KAB. GARUT', 'sopir', '7206-1333-1042', '2022-01-09', '3205090106720000', 'SBC0155.png'),
('SBC0156', 'FANDI SETIAWAN', 'TIMOHO II RT 005 RW 003', 'BULUSAN, TEMBALANG, SEMARANG', 'sopir', '14218908000034', '2022-10-28', '3374102508890006', 'SBC0156.png'),
('SBC0157', 'SADRAH KURNIAWAN', 'GUNUNG PUTRI RT 01 RW 07', 'KAWALU, KOTA TASIKMALAYA', 'sopir', '13347003000158', '2022-10-28', '3278050503700006', 'SBC0157.png'),
('SBC0158', 'ANDI HANDOKO', 'LINGK BEROKAN RT 002 RW 006', 'BAWEN, SEMARANG, JAWA TENGAH', 'sopir', '791114320172', '2022-10-28', '3322011111790001', 'SBC0158.png'),
('SBC0159', 'BENI KASRI', 'KP CIWASMANDI RT 001 RW 008 SUKAJAYA', 'PURBARATU - TASIKMALAYA', 'sopir', '13348208000404', '2022-12-30', '1303031608820008', 'SBC0159.png'),
('SBC0160', 'DIDIN', 'KP CIJAGRA RT 001 RW 005 CIJAGRA', 'PASEH - BANDUNG', 'sopir', '13437402000301', '2022-12-30', '3204351802740001', 'SBC0160.png'),
('SBC0161', 'ened mulyadi', 'KEL. CIGUGUR RT 06/9 CIGUGUR, KUNINGAN', '', 'sopir', '13407609000186', '2023-04-13', '3208180509760003', 'SBC0161.png'),
('SBC0162', 'UDIN HASANUDIN', 'KP JANGAN RT5/2 ASEM - CIBADAK', 'LEBAK - BANTEN', 'sopir', '13207702000203', '2023-04-13', '3602180702770001', 'SBC0162.png'),
('SBC0163', 'M AGUS SUHENDAR', 'KP KAMURANG RT 004/002 CITEUREUP', 'CITEUREUP - BOGOR', 'sopir', '780813251281', '2023-04-13', '3201031608780006', 'SBC0163.png'),
('SBC0164', 'MULYONO', 'KP CEGER RT 002/003 SUKAJAYA', 'CIBITUNG - BEKASI', 'sopir', '12057507000163', '2023-04-13', '3216090307750010', 'SBC0164.png'),
('SBC0165', 'DANI RAHMAT P', 'DUSUN CIGATI RT 001/005 CIJATI', 'SITURAJA - SUMEDANG', 'sopir', '13327403000120', '2023-04-13', '3211050503740002', 'SBC0165.png'),
('SBC0166', 'YAYA SUNARYA', 'DUSUN LAMPENI RT 20/4 DESA TANJUNGSARI TIMUR', 'CIKAUM - SUBANG', 'sopir', '13307408001344', '2023-04-13', '3213221408740003', 'SBC0166.png'),
('SBC0167', 'MARTIN', 'PADURENAN RT 10/5 PABUARAN', 'CIBINONG - BOGOR', 'sopir', '12057601000607', '2023-04-13', '3674050101761001', 'SBC0167.png'),
('SBC0168', 'dede haryanto', 'GG MASJID AL-ISHLAH CISALAK RT 004 RW 003', 'CISALAK, SUKMAJAYA, DEPOK', 'sopir', '1205-7701-003918', '2023-06-23', '3202330101770042', 'SBC0168.png'),
('SBC0169', 'MUHAMMAD BILAL', 'KARANG DAWA RT 002 RW 004 ', 'MARGASARI, TEGAL, JAWA TENGAH', 'sopir', '1430-9311-000356', '2023-07-04', '3328012311930006', 'SBC0169.png'),
('Sbc0170', 'Nuridin', 'KP KETAPANG RT 003 RW 02 ', 'KALIJAYA - Kab bekasi', 'sopir', '12057203004519', '2023-07-15', '3216080203720011', 'Sbc0170.png'),
('SBC0171', 'SANRADY MYLENDY PUTRA', 'JATINEGARA KAUM UTR RT 006 RW 007 ', 'GADUNG - JAKARTA TIMUR', 'sopir', '12057409003213', '2023-10-19', '3175020909740032', 'SBC0171.png'),
('SBC0172', 'ARIF LUKMAN HAKIM', 'KB NANAS RT 003 RW 010', 'GROGOL SELATAN - JAKARTA SELATAN', 'sopir', '12058701000958', '2023-10-19', '3325071901870001', 'SBC0172.png'),
('SBC0173', 'suharno ariadi', 'KARYA BAKTI NO.92 RT 04 RW 11', 'PONDOK KOPI - JAKARTA TIMUR', 'sopir', '12057701005499', '2023-11-01', '3175061307670004', 'SBC0173.png'),
('SBC0174', 'NOVA CHRISTANTO', 'JL TIPAR RT 002 RW 007 PEKAYON', 'PASAR REBO - JAKARTA TIMUR', 'sopir', '12058711003125', '2023-11-01', '3175051411870004', 'SBC0174.png'),
('SBC0175', 'asep mulyana', 'DK BANTAR GUNUNG RT 001 RW 002', 'ROWOKELE - KEBUMEN', 'sopir', '780714561315', '2023-12-18', '3273030307780009', 'SBC0175.png'),
('SBC0176', 'RIAN JUANDA', 'BEKASI MEDE RT 007 RW 002', 'BEKASI JAYA - BEKASI TIMUR', 'sopir', '12058308004693', '2023-12-18', '3', 'SBC0176.png'),
('SBC0177', 'MUHAMAD TOKHIDIN', 'KERTAHARJA RT 006 RW 003', 'KERTAHARJA PAGERBARANG, TEGAL', 'sopir', '14307801000132', '2023-12-18', '3328051201780003', 'SBC0177.png'),
('SBC0178', 'RODI', 'KRAMAT DJATI RT 009 RW 009', 'KRAMAT JATI - JAKARTA TIMUR', 'sopir', '85111205974513', '2023-12-18', '3328050911850002', 'SBC0178.png'),
('SBC0179', 'ROCHALI', 'RAJEGWESI RT 02 RW 02', 'PAGER BARANG - TEGAL', 'sopir', '14308402000337', '2024-01-31', '332805092840001', 'SBC0179.png'),
('SBC0180', 'MAMAT R', 'KP NANGGELENG RT 002 RW 001', 'CIKALONG KULON - CIANJUR', 'sopir', '13277306000197', '2024-01-31', '3203120306730006', 'SBC0180.png'),
('SBC0181', 'nuryanto', 'SLATRI RT 001 RW 003', 'LARANGAN - BREBES', 'sopir', '870714311463', '2024-03-04', '3329150507870011', 'SBC0181.png'),
('SBC0182', 'ANDHIKA MAHENDRA PUTRA PRATAMA', 'DUSUN SUMBER RT 037 RW 008 PRIGI', 'WATULIMO - TRENGGALEK', 'sopir', '15398604000301', '2024-03-04', '3308092004930004', 'SBC0182.png'),
('SBC0183', 'KUMBARA', 'DUSUN TARIKOLOT TR 022 RW 005', 'KALANGSARI - RENGASDENGKLOK, KARAWANG', 'sopir', '13287209000244', '2024-03-04', '3215061009720001', 'SBC0183.png'),
('SBC0184', 'b agus widodo', 'PERUMAHAN ABIRAMA NO.A5 RT 003 RW 006', 'KETANDAN - KLATEN UTARA, KLATEN', 'sopir', '700813161295', '2024-03-06', '3215011008700007', 'SBC0184.png'),
('SBC0185', 'ANWAR SUHERMAN', 'KP KARAWANG KULON  RT 002 RW 008', 'KARAWANG - SUKABUMI', 'sopir', '13267503000223', '2024-03-06', '32023201103750002', 'SBC0185.png'),
('SBC0186', 'BASUKI WIDODO', 'KEDUNG SUKUN RT 007 RW 001', 'ADIWERNA - TEGAL', 'sopir', '14307906000178', '2024-04-10', '3328111106790009', 'SBC0186.png'),
('Sbco115', 'Didin', 'Jkt', '', 'sopir', '-', '2022-12-30', '-', 'Sbco115.png'),
('SBK0002', 'ADITIA SETIAWAN', 'KP LEBAK SIUH 004/005 DESA SUKASARI,DAWUAN', 'SUBANG,JAWA BARAT', 'sopir', '8404.1330.1114', '2021-01-01', '3213270404840003', 'SBK0002.png'),
('SBK0003', 'ABDUL FAISAL IBRAHUM', 'BLOK RAMBUTAN 048/013 CIGADUNG SUBANG', 'SUBANG,JAWA BARAT', 'sopir', '1330.6908.000121', '2021-01-01', '3213030408690002', 'SBK0003.png'),
('SBK0004', 'SUHERMAN', 'KP SUDARJO 013/003 DS KASOMALANG WETAN', 'SUBANG,JAWA BARAT', 'sopir', '1330.80006.000146', '2021-01-01', '123', 'SBK0004.png'),
('SBK0005', 'DADI RIPANDI', 'SUKAHEGAR 060/017 DESA SUKAMELANG ', 'SUBANG,JAWA BARAT', 'sopir', '1330.6802.000028', '2021-01-01', '3213030202680011', 'SBK0005.png'),
('SBK0006', 'YATONO', 'DUSUN WANTILAN 010/004 WANTILAN CIPENDEUY', 'SUBANG,JAWA BARAT', 'sopir', '6810.1330.0003', '0000-00-00', '3213201110680002', 'SBK0006.png'),
('SBK0010', 'DIDIN', 'KP CIKADUU 011/005 TANJUNGSIANG', 'SUBANG,JAWA BARAT', 'sopir', '1330.7506.000253', '0000-00-00', '3213141306750003', 'SBK0010.png'),
('SBK0011', 'DANI EKO PRASETYO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SBK0011.png'),
('SBK0014', 'WAHYU AK', 'KEBON DUREN RT05/RW02 KALIMULYA', 'DEPOK JABAR', 'sopir', '321', NULL, '123', 'SBK0014.png'),
('SBK0015', 'NANA SUPRIATNA', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SBK0015.png'),
('SBK0017', 'ADANG SUTISNA', 'JALAN CAGAK 014/002 JALANCAGAK SUBANG', 'SUBANG,JAWA BARAT', 'sopir', '6607.1330.0034', NULL, '123', 'SBK0017.png'),
('SBK0018', 'EMAN SULAEMAN', 'KP LINGGARSARI 002/001 TELAGASARI', 'KARAWANG,JABAR', 'sopir', '1328.7605.000507', NULL, '3215170405750006', 'SBK0018.png'),
('SBK0019', 'ABDUL ROHIM', 'KP KANTALARANG 002/005 LEUWIBATU RUMPIN', 'BOGOR,JABAR', 'sopir', '8408.1325.5555', NULL, '123', 'SBK0019.png'),
('SBK0020', 'RASAM', 'DSN SARPADAS 025/007 PADAMULYA CIPUNAGARA', 'SUBANG,JAWA BARAT', 'sopir', '7507.1330.0063', NULL, '3213181273500010', 'SBK0020.png'),
('SBK0021', 'SAEFUL ANWAR', 'KP BANJARAN TENGAH 007/002 CIRANGKONG CIJAMBE ', 'SUBANG,JAWA BARAT', 'sopir', '8210.1330.1081', NULL, '3213190510820002', 'SBK0021.png'),
('SBK0022', 'GIGIN SUGIANTO', 'KP MUNJUL 007/004 MUNJUL PAGADEN BARAT', 'SUBANG,JAWA BARAT', 'sopir', '1330.8507.000021', NULL, '3213172007850001', 'SBK0022.png'),
('SBK0023', 'UDIN SYAMSUDIN', '', '', 'sopir', '321', NULL, '123', 'SBK0023.png'),
('SBK0024', 'DADANG', 'JKT', '', 'sopir', '321', NULL, '123', 'SBK0024.png'),
('SBK0025', 'ANDRI', 'KP AL BISO 001/002 KARANGAGUNG,SINGAJAYA', 'GARUT, JABAR', 'sopir', '8902.1333.0926', NULL, '3205240702830802', 'SBK0025.png'),
('SBK0026', 'UCI', 'DUSUN KARANG JAYA 006/012 DESA SUKAHAJI,CIASEM', 'SUBANG,JAWA BARAT', 'sopir', '6610.1330.0085', NULL, '3213091010660003', 'SBK0026.png'),
('SBK0027', 'KUWAT', 'JLN LESTARI IX 003/010 CILINCING', 'JAKARTA UTARA', 'sopir', '7011.1205.5972.886', NULL, '3172042511700001', 'SBK0027.png'),
('SBK0028', 'DARSONO', 'JKT', '', 'sopir', '321', NULL, '123', 'SBK0028.png'),
('SBK0029', 'KAMALUDIN', 'KP PARUNG ALENG 003/007 CIKEAS,SUKARAJA', 'BOGOR,JABAR', 'sopir', '1324.6306.000206', NULL, '3201041406630002', 'SBK0029.png'),
('SBK0030', 'WANALUDIN', 'JKT', '', 'sopir', '321', NULL, '123', 'SBK0030.png'),
('SBK0031', 'HERI', 'JL SUKAMULYA RT 007 RW 003', 'KEL. SUKASARI KEC. BOGOR TIMUR  KOTA BOGOR', 'sopir', '1324-6409-000188', NULL, '3271012806640008', 'SBK0031.png'),
('SBK0032', 'JAJANG KHOERUDIN', 'KP BABAKAN RT 001 RW 003', 'KEL. MALEBER KEC. KARANGTENGAH KAB. CIANJUR', 'sopir', '1327-5906-000026', NULL, '3203070106590015', 'SBK0032.png'),
('SBK0033', 'HELMI', 'KP CIBOGO 003/004 CIPAYUNG,MEGA MEGAMENDUNG', 'BOGOR,JABAR', 'sopir', '8206.1324.2572', NULL, '3271042806820010', 'SBK0033.png'),
('SBK0034', 'USMAN', 'KP CIHELEUT  003/006 CIBULUH,BOGOR UTARA', 'BOGOR,JABAR', 'sopir', '7001.1324.1711', '0000-00-00', '3305220901700001', 'SBK0034.png'),
('SBK0035', 'ARA KOSWARA', 'KP SADAYU RT 025 RW 008', 'KEL. KALIJATI BARAT KEC. KALIJATI KAB. SUBANG', 'sopir', '1330-8212-000161', NULL, '3211213112820007', 'SBK0035.png'),
('SBK0036', 'SUTISNA', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SBK0036.png'),
('SBK0037', 'BAYU', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SBK0037.png'),
('SBK0039', 'FIRDAUS', 'KEBON MANGGIS 004/004 PALEDANG,BOGOR TENGAH', 'BOGOR,JABAR', 'sopir', '1324.7604.000038', NULL, '3271030704760002', 'SBK0039.png'),
('SBK0040', 'INDRA PERMANA', 'JKT', '', 'sopir', '321', NULL, '123', 'SBK0040.png'),
('SBK0042', 'GUGUN', 'KP PAMUKIMAN 004/002 SINGAJAYA', 'GARUT, JABAR', 'sopir', '1333.9009.000037', NULL, '3205240109900003', 'SBK0042.png'),
('SBK0043', 'WAWAN AK', '', '.', 'sopir', '321', NULL, '123', 'SBK0043.png'),
('SBK0044', 'AGUS', 'JKT', '.', 'sopir', '321', NULL, '123', 'SBK0044.png'),
('SBK0045', 'RADI', 'KP BANTARPETEUY 004/003 TAJUR,BOGOR TIMUR', 'BOGOR,JABAR', 'sopir', '1324.7211.000213', NULL, '3202471111720002', 'SBK0045.png'),
('SBK0046', 'HADI', 'JKT', '.', 'sopir', '321', NULL, '123', 'SBK0046.png'),
('SBK0048', 'ETIK', 'JKT', '.', 'sopir', '321', NULL, '123', 'SBK0048.png'),
('SBK0051', 'SURYA', 'KP MARGAMULYA RT01/05 JOMIN BARAT MARGAMULYA', 'KARAWANG,JABAR', 'sopir', '7701.1328.1580', NULL, '123', 'SBK0051.png'),
('SBK0052', 'NURAHMAD', 'JKT', '.', 'sopir', '321', NULL, '123', 'SBK0052.png'),
('SPT0001', 'AAN', 'BOGOWANTI RT 003/002', 'KEC NGAWEN KAB BLORA', 'sopir', '1435,8904,900100', '2021-01-01', '3315130804890004', 'SPT0001.png'),
('SPT0002', 'ABDUL AZIZ', 'DESA KERTABESUKI RT 06/02 ', 'KEC WANASARI BREBES', 'sopir', '831014310828', '2021-01-01', '3329082010830003', 'SPT0002.png'),
('SPT0003', 'ABDUL GHOFIR', 'DESA SEWAKA RT 02/12 ', 'PEMALANG ', 'sopir', '1428,7005,00030', '2021-01-01', '3327082005700027', 'SPT0003.png'),
('SPT0004', 'ADI LAKSONO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0004.png'),
('SPT0005', 'AGUS SUJONO', 'BLOK PRATIN RT 005/002, TENAJAR KIDUL', ' KEC. KERTASMAYA, INDRAMAYU , JABAR', 'sopir', '680813381568', '2021-01-01', '3212081508680003', 'SPT0005.png'),
('SPT0006', 'AGUS JASROKHAN / BOJA', 'DUSUN GADING KIDUL RT 001/005 ', 'KEC PURWOGONDO KENDAL ', 'sopir', '7711,14330470', '2021-01-01', '3324072611770001', 'SPT0006.png'),
('SPT0007', 'AGUS PEMALANG', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0007.png'),
('SPT0008', 'AGUS WIYONO', 'DESA KEMBANGAN UTARA RT 005/007 ', 'KEC PULOKULON ', 'sopir', '830214350780', '2021-01-01', '3315662102830002', 'SPT0008.png'),
('SPT0009', 'AJI', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0009.png'),
('SPT0010', 'ANDI PRASETYO', 'KUDU RT 002/001', 'KEL. KUDU KEC. BAKI KAB. SUKOHARJO', 'sopir', '1442-7812-000249', '2021-01-01', '3311100612780001', 'SPT0010.png'),
('SPT0011', 'BAGUS', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0011.png'),
('SPT0012', 'BAGUS BUDI LAKSONO', 'PERUM KCVRI DK NGASEM RT 001/006', 'KEL. TIMBULHARJO KEC. SEWON KAB. BANTUL', 'sopir', '1454-7806-000420', '2021-01-01', '3310242907670002', 'SPT0012.png'),
('SPT0013', 'BAGUS PRAKOSO', 'SEMIREJO RT 003 RW 004 ', 'KEL. SEMIREJO KEC. GEMBRONG KAB. PATI', 'sopir', '1436-9309-000243', '2021-01-01', '3318110809930002', 'SPT0013.png'),
('SPT0014', 'BEJO', 'JL S.SYAHRIR RT 2/1 ', 'KEC KETUREN TEGAL SELATAN ', 'sopir', '14297305000137', '2021-01-01', '3376032205738006', 'SPT0014.png'),
('SPT0015', 'BUDI PURWANTO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0015.png'),
('SPT0016', 'DARWANI', 'BLOK KOSAMBI DOYONG, RT 003/001', ' JUMLEMG LOSARANG, INDRAMAYU, JABAR', 'sopir', '321', '2021-01-01', '3212201802850001', 'SPT0016.png'),
('SPT0017', 'DAVID MALIZA', 'GUMAYU , RT017/006 GUMAYUN', ' KEC. DUKUHWARU, KAB. TEGAL , JATENG', 'sopir', '321', '2021-01-01', '3328184106900004', 'SPT0017.png'),
('SPT0018', 'DEDE', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0018.png'),
('SPT0019', 'DONI', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0019.png'),
('SPT0020', 'ABDUL HADI', 'DESA SAWOJAJAR RT 03/05 ', ' KECAMATAN WANASARI KAB BREBES ', 'sopir', '321', '2021-01-01', '3329082106680000', 'SPT0020.png'),
('SPT0021', 'EDI PURNOMO', 'DUSUN KAYEN RT 005/003', 'KARANG NGAYUN GROBOGAN ', 'sopir', '1435971200022', '2021-01-01', '3315020312750003', 'SPT0021.png'),
('SPT0022', 'EKO HARTANTO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0022.png'),
('SPT0023', 'ENDAR KURNIAWAN', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0023.png'),
('SPT0024', 'FERRY BUDI UTOMO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0024.png'),
('SPT0025', 'GIONO', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0025.png'),
('SPT0026', 'H. ENDANG', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0026.png'),
('SPT0027', 'HARYADI', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0027.png'),
('SPT0028', 'IMAM SUGIHARTONO', 'JL. SAIMAN RT 004/001', 'KEL. PONDOK PINANG KEC. KEBAYORAN LAMA JAKARTA SEL', 'sopir', '3174052607910005', '2021-01-01', '12059107005124', 'SPT0028.png'),
('SPT0029', 'ISOM', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0029.png'),
('SPT0030', 'MUH IHWAN ', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0030.png'),
('SPT0032', 'MUHAMAD KAPID KHOIRULLOH ', 'DESA KEMANTREN RT 15/03 ', 'KEC GODONG KAB GROBOGAN PURWODADI ', 'sopir', '940414352398', '2021-01-01', '123', 'SPT0032.png'),
('spt0033', 'TEADY KUNCORO', 'JL TIPAR CAKUNG RT 006/005 ', 'KEC SUKAPURA CILINCING JAK - UTARA', 'sopir', '760326320051', '2021-01-01', '3172041503760016', 'spt0033.png'),
('SPT0034', 'MADI', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0034.png'),
('SPT0035', 'MASHURI', 'DUSUN KLAMPOK RT 004/006 ', 'KEC LEBAK KAB GROBOGAN', 'sopir', '74055120517207', '2021-01-01', '3315100905740006', 'SPT0035.png'),
('SPT0036', 'AHMAT SAFI\"I', 'DESA GEDANGAN RT 01/03 ', 'KEC WIROSARI KAB GROGOGAN', 'sopir', '321', '2021-01-01', '3315100710820009', 'SPT0036.png'),
('SPT0038', 'MUINDRO', 'DESA KERANGKUPON RT 003/001 ', 'KEC WONO SALAM DEMAK', 'sopir', '0720114340654', '2021-01-01', '3216071501720008', 'SPT0038.png'),
('SPT0040', 'MUKHAMAD SETIABUDI', 'KAMPUNG BUDMULYA RT 021/001', 'KEL SLAWI WETAN ', 'sopir', '', '2021-01-01', '3328102511840009', 'SPT0040.png'),
('SPT0041', 'NURHADI', 'DESA SEDADI RT 04/03', 'KEC PENAWANGAN KAB GROBOGAN', 'sopir', '321', '2021-01-01', '123', 'SPT0041.png'),
('SPT0042', 'PUJO ANOM', 'LINGKUNGAN KALONGAN RT 01/01 ', 'PURWODADI ', 'sopir', '701214350147', '2021-01-01', '3315133112700074', 'SPT0042.png'),
('SPT0043', 'PUTUT PAMUJI', 'DK KETANGAR RT 07/01', 'KEL KARANG JATI BLORA', 'sopir', '820414400562', '2021-01-01', '3316092204820003', 'SPT0043.png'),
('SPT0044', 'RAJAN', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0044.png'),
('SPT0046', 'SARTONO', 'BLOK BENDA RT 010/003 ', 'KEC SIDAMULYA INDRAMAYU ', 'sopir', '771113380666', '2021-01-01', '3212221010770006', 'SPT0046.png'),
('SPT0047', 'MUH SLAMET', 'JL CENGJEH RT 07/07 ', 'TAMAN SARI JAKARTA BARAT', 'sopir', '321', '2021-01-01', '123', 'SPT0047.png'),
('SPT0049', 'SRIYONO', 'DESA PILANGREJO RT  03/04 ', 'KEC WONOSALAM KAB DEMAK ', 'sopir', '770314340658', '2021-01-01', '3321062603770001', 'SPT0049.png'),
('SPT0050', 'SUGIYANTO', 'DESA TEMBELANG RT 04/01', 'KEC JATIBARANG BREBES', 'sopir', '610314310416', '2021-01-01', '', 'SPT0050.png'),
('SPT0051', 'SUMAR SUPANDI', 'DESA TEGALANDONG RT 01/04 ', 'KEC LEBAKSIU KAB TEGAL ', 'sopir', '1430-7609-000118', '2021-01-01', '3175021210740011', 'SPT0051.png'),
('SPT0052', 'SUMARNO', 'DESA TEGALREJO RT 01/04 ', 'KEC WIROSARI , KAB GROBOGAN ', 'sopir', '741214350047', '2021-01-01', '3315101008780009', 'SPT0052.png'),
('SPT0055', 'SYARIFUDIN', 'BLOK BOJONG RT 013/004', 'KEL. JATISAWIT LOR KEC. JATIBARANG KAB. INDRAMAYU', 'sopir', '6812-1430-1195', '2021-01-01', '3212133112660008', 'SPT0055.png'),
('SPT0056', 'TAHID', 'GEDANGALAS RT 004/003', 'KEC GEDANGALAS KEC GAJAH DEMAK', 'sopir', '321', '2021-01-01', '123', 'SPT0056.png'),
('SPT0057', 'TEGUH APRIYANTO', 'DK PECANGAKAN RT 002/008', 'JKECTONJONG BREBES ', 'sopir', '900114310822', '2021-01-01', '3329060101900010', 'SPT0057.png'),
('SPT0058', 'UNTUNG SETIAWAN', 'JL TARUMA NEGARA RT 001/011', 'KEC PISANGAN KAB CIPUTAT UTARA', 'sopir', '1432-7111-000042', '2021-01-01', '3324061709720002', 'SPT0058.png'),
('SPT0059', 'WAHIB', 'MOROREJO RT 001/002', 'KALIWUNGU KENDAL', 'sopir', '1733,7203,000061', '2021-01-01', '3324083003720000', 'SPT0059.png'),
('SPT0060', 'WARDAI', 'PONCOL GG MENTARI RT 007/002 NO 7', 'PEKALONGAN TIMUR ', 'sopir', '660914260135', '2021-01-01', '3375021309660001', 'SPT0060.png'),
('SPT0061', 'WARDIKA', 'DUSUN CINGANGGU RT 13/03 DESA PAMANUKAN HILIR', 'KEC PAMANUKAN KAB SUBANG', 'sopir', '750813301128', '2021-01-01', '3213111308750000', 'SPT0061.png');
INSERT INTO `supir` (`kode_karyawan`, `nama_karyawan`, `alamat1`, `alamat2`, `jabatan`, `no_sim`, `tanggal_masuk`, `no_ktp`, `qr_code`) VALUES
('SPT0062', 'WARLI', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0062.png'),
('SPT0064', 'NYAMIN', 'DS TLOGOTIRTO RT 06/03 ', 'KEC GABUS KAB GROBOGAN', 'sopir', '700114350096', '2021-01-01', '3315082401770001', 'SPT0064.png'),
('SPT0065', 'YANTO KAYEN', 'JKT', '', 'sopir', '321', '2021-01-01', '123', 'SPT0065.png'),
('SPT0066', 'KHODORI', 'POOL', '', 'sopir', '321', NULL, '123', 'SPT0066.png'),
('SPT0067', 'RUMBAN', 'PEMALANG', '', 'sopir', 'XXXX', '2022-05-13', '33271000000000000000', 'SPT0067.png'),
('SPT0068', 'DANAWI', 'BLM KESAMBI DOYONG', 'INDRAMAYU', 'sopir', 'XXXXX', '2022-04-25', '32122000000000000000', 'SPT0068.png'),
('SPT0069', 'WADONO', 'TEGAL', '', 'kernet', 'XXXX', '2022-05-13', '33281000000000000000', 'SPT0069.png'),
('SPT0073', 'MUHAMMAD KAFID', 'GROBOGAN', '', 'sopir', 'XXXX', '2022-05-13', '33151600000000000000', 'SPT0073.png'),
('SPT0074', 'RIZKY ALFAROUK', 'PEMALANG', '', 'sopir', 'XXXX', '2022-05-13', '33271100000000000000', 'SPT0074.png'),
('SPT0075', 'SUDARMANTO', 'KP PONDOK DUA RT 002/001', 'PANTAI HARAPAN INDAH BEKASI', 'sopir', '1205180308339', '2022-05-13', '3216171102780004', 'SPT0075.png'),
('SPT0076', 'EKO BUDIONO', 'DESA KEDUSUNAN RT 06/02 KEC WIROSARI KAB GROBOGAN', 'KEC WIROSARI KAB GROBOGAN', 'sopir', 'XXXX', '2022-05-13', '', 'SPT0076.png'),
('SPT0077', 'ARIF', 'DESA WANASARI RT 003/003 ', 'KEC WANASARI KAB BREBES', 'sopir', '1431-7004-000175', '2022-05-13', '3329080304700000', 'SPT0077.png'),
('SPT0078', 'MOCH NUR ROBI', 'JL GETAS PENDOWO RT 04/006', 'KEC KURIPAN KAB GROBOGAN', 'sopir', '8701143650902', '2022-05-13', '3315131003870006', 'SPT0078.png'),
('SPT0080', 'AHMAD S', 'GROBONGAN', '', 'sopir', 'XXXXXX', '2022-05-13', '33151000000000000000', 'SPT0080.png'),
('SPT0081', 'FAJAR ARIYANTO', 'GROBOGAN', '', 'sopir', 'XXXXX', '2022-05-13', '31504300000000000000', 'SPT0081.png'),
('SPT0082', 'LISTIYONO', 'DUSUN KAGOK RT 003/005', 'NGARAP ARAP NGARINGAN ', 'sopir', '', '2022-07-22', '3315090310850000', 'SPT0082.png'),
('SWS0002', 'ASEP SAEPUDIN', 'BLOK SELASA RT 003 RW 003', 'KEL. KERTAJATI KEC. KERTAJATI KAB. MAJALENGKA', 'sopir', '1327-8403-000218', NULL, '32101400000000000000', 'SWS0002.png'),
('SWS0006', 'IYOS SUNARYO', 'KP CICADAS RT 013/002', 'KEL. DARAWATI KEC. CIPATUJAH KAB. TASIKMALAYA', 'sopir', '8002-2527-0529', '2022-04-25', '32060100000000000000', 'SWS0006.png'),
('SWS0007', 'AJI WIBOWO', 'TEGAL', '', 'sopir', '94121400000000000', '2022-05-13', 'XXXX', 'SWS0007.png'),
('SWS0008', 'NURDIN', 'BUBULAK RT 03 RW 009 ', 'KEL. LALADON KEC. CIOMAS KAB. BOGOR', 'sopir', '6211-1324-1529', NULL, '32012900000000000000', 'SWS0008.png'),
('SWS0011', 'TEGUH INDRA SUBAGYO', 'DK KRAJAN RT 003 RW 001', 'KEL. PULOSARI KEC. PULOSARI KAB. PEMALANG', 'sopir', '85021400000000000', NULL, '33270200000000000000', 'SWS0011.png'),
('SWS0012', 'TIO SUSATIO', 'JL. SUMATERA RT 002 RW 017', 'KEL. JOMBANG KEC. CIPUTAT KOTA TANGERANG SELATAN', 'sopir', '6412-1205-3495', NULL, '36740400000000000000', 'SWS0012.png'),
('SWS0014', 'M. YAMANI', 'DUSUN BO JONG LOA RT 003 RW 005 KEL. GIRIMUKTI', 'KEC. SUMEDANG UTARA KAB. SUMEDANG', 'sopir', '56061300000000000', NULL, '32122000000000000000', 'SWS0014.png'),
('SWS0015', 'WAHYUDI', 'MUNCANGLARANGRT 005 RW 002', 'KEL. MUNCANGLARANG KEC. BUMIJAWA KAB. TEGAL', 'sopir', '7212-1430-1233', NULL, '33280200000000000000', 'SWS0015.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `role` int(1) DEFAULT NULL,
  `access` text DEFAULT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `id_crew` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`, `role`, `access`, `id_karyawan`, `id_crew`) VALUES
(13, 'migent', NULL, NULL, 1, '2024-07-03 13:00:42', '2024-05-16 09:10:46', '2024-05-16 09:10:47', NULL, 1, '[\"null\"]', 4, NULL),
(21, 'admin', NULL, NULL, 1, '2024-07-15 10:49:22', '2024-05-16 09:10:46', '2024-05-16 09:10:47', NULL, 1, '[\"null\"]', 3, NULL),
(22, 'tes', NULL, NULL, 1, '2024-07-08 15:24:35', '2024-07-08 11:46:19', '2024-07-08 11:46:20', NULL, 1, '[\"null\"]', 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`(191),`identifier`(191)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`(191),`identifier`(191)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpal`
--
ALTER TABLE `perpal`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`kode_karyawan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
