-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 15, 2020 lúc 10:28 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `flexfit`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 8, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-09-15 13:27:38'),
(3, 2, 9, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-09-15 13:27:38'),
(4, 2, 10, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-09-15 13:27:38'),
(5, 2, 11, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-09-15 13:27:38'),
(6, 2, 12, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-09-15 13:27:38'),
(7, 2, 13, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-09-15 13:27:38'),
(8, 0, 2, 'Hợp Đồng', 'fa-file-o', '/contracts', NULL, '2020-09-10 12:20:20', '2020-09-10 12:22:50'),
(9, 0, 7, 'Sản Phẩm', 'fa-product-hunt', '/products', NULL, '2020-09-10 12:28:24', '2020-09-15 13:27:38'),
(10, 8, 4, 'Bảo Trì 1', 'fa-list-alt', 'contracts_warranty_1', NULL, '2020-09-11 11:04:05', '2020-09-15 13:27:38'),
(11, 8, 5, 'Bảo Trì 2', 'fa-list-alt', 'contracts_warranty_2', NULL, '2020-09-15 13:23:54', '2020-09-15 13:27:38'),
(12, 8, 6, 'Bảo Trì 3', 'fa-list-alt', 'contracts_warranty_3', NULL, '2020-09-15 13:24:25', '2020-09-15 13:27:38'),
(13, 8, 3, 'Danh Sách', 'fa-archive', 'contracts', NULL, '2020-09-15 13:27:29', '2020-09-15 13:27:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-10 12:18:25', '2020-09-10 12:18:25'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:18:36', '2020-09-10 12:18:36'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"H\\u1ee3p \\u0110\\u1ed3ng\",\"icon\":\"fa-file-o\",\"uri\":\"\\/contracts\",\"roles\":[null],\"permission\":null,\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 12:20:20', '2020-09-10 12:20:20'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:20:20', '2020-09-10 12:20:20'),
(5, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 12:20:28', '2020-09-10 12:20:28'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:20:28', '2020-09-10 12:20:28'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:20:29', '2020-09-10 12:20:29'),
(8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:21:38', '2020-09-10 12:21:38'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:22:17', '2020-09-10 12:22:17'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:22:38', '2020-09-10 12:22:38'),
(11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-10 12:22:50', '2020-09-10 12:22:50'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:22:51', '2020-09-10 12:22:51'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:22:51', '2020-09-10 12:22:51'),
(14, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:22:56', '2020-09-10 12:22:56'),
(15, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:22:59', '2020-09-10 12:22:59'),
(16, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:23:23', '2020-09-10 12:23:23'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:27:58', '2020-09-10 12:27:58'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:28:00', '2020-09-10 12:28:00'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:28:02', '2020-09-10 12:28:02'),
(20, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"S\\u1ea3n Ph\\u1ea9m\",\"icon\":\"fa-product-hunt\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 12:28:24', '2020-09-10 12:28:24'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:28:24', '2020-09-10 12:28:24'),
(22, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 12:28:28', '2020-09-10 12:28:28'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:28:28', '2020-09-10 12:28:28'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:28:31', '2020-09-10 12:28:31'),
(25, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-10 12:28:38', '2020-09-10 12:28:38'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:28:38', '2020-09-10 12:28:38'),
(27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-10 12:28:39', '2020-09-10 12:28:39'),
(28, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:28:43', '2020-09-10 12:28:43'),
(29, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:31:10', '2020-09-10 12:31:10'),
(30, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:31:11', '2020-09-10 12:31:11'),
(31, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:40:14', '2020-09-10 12:40:14'),
(32, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:40:16', '2020-09-10 12:40:16'),
(33, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:44:11', '2020-09-10 12:44:11'),
(34, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:44:26', '2020-09-10 12:44:26'),
(35, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:44:38', '2020-09-10 12:44:38'),
(36, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:44:57', '2020-09-10 12:44:57'),
(37, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:46:37', '2020-09-10 12:46:37'),
(38, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:46:39', '2020-09-10 12:46:39'),
(39, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:46:39', '2020-09-10 12:46:39'),
(40, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:46:47', '2020-09-10 12:46:47'),
(41, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:47:26', '2020-09-10 12:47:26'),
(42, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:47:28', '2020-09-10 12:47:28'),
(43, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"V\\u1ea3i th\\u00f4\",\"provider\":\"Flexfit\",\"status_maitain_product\":\"1\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/products\"}', '2020-09-10 12:47:49', '2020-09-10 12:47:49'),
(44, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 12:47:49', '2020-09-10 12:47:49'),
(45, 1, 'admin/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:47:55', '2020-09-10 12:47:55'),
(46, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2020-09-10 12:49:03', '2020-09-10 12:49:03'),
(47, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2020-09-10 12:49:31', '2020-09-10 12:49:31'),
(48, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2020-09-10 12:50:20', '2020-09-10 12:50:20'),
(49, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2020-09-10 12:52:10', '2020-09-10 12:52:10'),
(50, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:52:13', '2020-09-10 12:52:13'),
(51, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 12:52:31', '2020-09-10 12:52:31'),
(52, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:52:54', '2020-09-10 12:52:54'),
(53, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"V\\u1ea3i b\\u1ed1\",\"provider\":\"Flexfit\",\"status_maitain_product\":\"1\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/products\"}', '2020-09-10 12:53:01', '2020-09-10 12:53:01'),
(54, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 12:53:01', '2020-09-10 12:53:01'),
(55, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:53:04', '2020-09-10 12:53:04'),
(56, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"V\\u1ea3i b\\u1ed1\",\"provider\":\"Flexfit\",\"status_maitain_product\":\"0\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/products\"}', '2020-09-10 12:53:07', '2020-09-10 12:53:07'),
(57, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 12:53:07', '2020-09-10 12:53:07'),
(58, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:53:17', '2020-09-10 12:53:17'),
(59, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 12:53:57', '2020-09-10 12:53:57'),
(60, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:56:48', '2020-09-10 12:56:48'),
(61, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 12:59:59', '2020-09-10 12:59:59'),
(62, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:00:25', '2020-09-10 13:00:25'),
(63, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:01:03', '2020-09-10 13:01:03'),
(64, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:02:49', '2020-09-10 13:02:49'),
(65, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:04:43', '2020-09-10 13:04:43'),
(66, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:04:52', '2020-09-10 13:04:52'),
(67, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:06:27', '2020-09-10 13:06:27'),
(68, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:06:32', '2020-09-10 13:06:32'),
(69, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:06:35', '2020-09-10 13:06:35'),
(70, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"G\\u1ea5m\",\"provider\":\"Flexfit\",\"status_maitain_product\":\"1\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/products\"}', '2020-09-10 13:06:51', '2020-09-10 13:06:51'),
(71, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 13:06:51', '2020-09-10 13:06:51'),
(72, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:06:53', '2020-09-10 13:06:53'),
(73, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"L\\u1ee5a\",\"provider\":null,\"status_maitain_product\":\"1\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/products\"}', '2020-09-10 13:07:01', '2020-09-10 13:07:01'),
(74, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:01', '2020-09-10 13:07:01'),
(75, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"L\\u1ee5a\",\"provider\":\"Flexfit\",\"status_maitain_product\":\"1\",\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 13:07:05', '2020-09-10 13:07:05'),
(76, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:05', '2020-09-10 13:07:05'),
(77, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:07:07', '2020-09-10 13:07:07'),
(78, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:07:08', '2020-09-10 13:07:08'),
(79, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:12', '2020-09-10 13:07:12'),
(80, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:28', '2020-09-10 13:07:28'),
(81, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:36', '2020-09-10 13:07:36'),
(82, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:07:47', '2020-09-10 13:07:47'),
(83, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:09:00', '2020-09-10 13:09:00'),
(84, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:15:17', '2020-09-10 13:15:17'),
(85, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:15:57', '2020-09-10 13:15:57'),
(86, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2020-09-10 13:16:04', '2020-09-10 13:16:04'),
(87, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"Vair\"}', '2020-09-10 13:16:07', '2020-09-10 13:16:07'),
(88, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:16:09', '2020-09-10 13:16:09'),
(89, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"Va\"}', '2020-09-10 13:16:10', '2020-09-10 13:16:10'),
(90, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\"}', '2020-09-10 13:16:11', '2020-09-10 13:16:11'),
(91, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\\u00f4\"}', '2020-09-10 13:16:12', '2020-09-10 13:16:12'),
(92, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:16:20', '2020-09-10 13:16:20'),
(93, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i\"}', '2020-09-10 13:16:21', '2020-09-10 13:16:21'),
(94, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:16:23', '2020-09-10 13:16:23'),
(95, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2020-09-10 13:16:25', '2020-09-10 13:16:25'),
(96, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:17:01', '2020-09-10 13:17:01'),
(97, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3\"}', '2020-09-10 13:17:01', '2020-09-10 13:17:01'),
(98, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112_\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_maitain\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 13:17:41', '2020-09-10 13:17:41'),
(99, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:17:42', '2020-09-10 13:17:42'),
(100, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:18:30', '2020-09-10 13:18:30'),
(101, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\\u00f4\"}', '2020-09-10 13:18:31', '2020-09-10 13:18:31'),
(102, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i b\\u1ed1\"}', '2020-09-10 13:18:35', '2020-09-10 13:18:35'),
(103, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112_\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_maitain\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 13:18:37', '2020-09-10 13:18:37'),
(104, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:18:38', '2020-09-10 13:18:38'),
(105, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\\u00f4\"}', '2020-09-10 13:21:35', '2020-09-10 13:21:35'),
(106, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\\u00f4,\"}', '2020-09-10 13:21:36', '2020-09-10 13:21:36'),
(107, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i th\\u00f4\"}', '2020-09-10 13:21:36', '2020-09-10 13:21:36'),
(108, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3i b\\u1ed1\"}', '2020-09-10 13:21:40', '2020-09-10 13:21:40'),
(109, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112_\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 13:21:43', '2020-09-10 13:21:43'),
(110, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-10 13:21:43', '2020-09-10 13:21:43'),
(111, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:22:32', '2020-09-10 13:22:32'),
(112, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3\"}', '2020-09-10 13:22:33', '2020-09-10 13:22:33'),
(113, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112_\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\"}', '2020-09-10 13:22:35', '2020-09-10 13:22:35'),
(114, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-10 13:22:35', '2020-09-10 13:22:35'),
(115, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:22:38', '2020-09-10 13:22:38'),
(116, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-10 13:22:40', '2020-09-10 13:22:40'),
(117, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\\u1ea3\"}', '2020-09-10 13:22:41', '2020-09-10 13:22:41'),
(118, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112_\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-10 13:22:43', '2020-09-10 13:22:43'),
(119, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-10 13:22:44', '2020-09-10 13:22:44'),
(120, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:22:46', '2020-09-10 13:22:46'),
(121, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:22:50', '2020-09-10 13:22:50'),
(122, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:22:53', '2020-09-10 13:22:53'),
(123, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-10 13:25:38', '2020-09-10 13:25:38'),
(124, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:25:45', '2020-09-10 13:25:45'),
(125, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:25:47', '2020-09-10 13:25:47'),
(126, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:25:49', '2020-09-10 13:25:49'),
(127, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:25:50', '2020-09-10 13:25:50'),
(128, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:25:53', '2020-09-10 13:25:53'),
(129, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:26:00', '2020-09-10 13:26:00'),
(130, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:26:02', '2020-09-10 13:26:02'),
(131, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-10 13:26:16', '2020-09-10 13:26:16'),
(132, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-10 13:26:26', '2020-09-10 13:26:26'),
(133, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_method\":\"PUT\"}', '2020-09-10 13:26:30', '2020-09-10 13:26:30'),
(134, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-10 13:26:31', '2020-09-10 13:26:31'),
(135, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:26:33', '2020-09-10 13:26:33'),
(136, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"G\"}', '2020-09-10 13:26:43', '2020-09-10 13:26:43'),
(137, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-10 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"YEe0Ts0ngypdJlEUDnVotMvrNBU8QxxvXPxSBdDr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-10 13:26:46', '2020-09-10 13:26:46'),
(138, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-10 13:26:46', '2020-09-10 13:26:46'),
(139, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:26:53', '2020-09-10 13:26:53'),
(140, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:45:01', '2020-09-10 13:45:01'),
(141, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:45:37', '2020-09-10 13:45:37'),
(142, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:47:10', '2020-09-10 13:47:10'),
(143, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:49:14', '2020-09-10 13:49:14'),
(144, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:50:01', '2020-09-10 13:50:01'),
(145, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:50:28', '2020-09-10 13:50:28'),
(146, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:51:27', '2020-09-10 13:51:27'),
(147, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:55:05', '2020-09-10 13:55:05'),
(148, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 13:55:38', '2020-09-10 13:55:38'),
(149, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 13:56:53', '2020-09-10 13:56:53'),
(150, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-09-10 14:01:36', '2020-09-10 14:01:36'),
(151, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-10 14:01:44', '2020-09-10 14:01:44'),
(152, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:01:48', '2020-09-10 14:01:48'),
(153, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:02:06', '2020-09-10 14:02:06'),
(154, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:02:29', '2020-09-10 14:02:29'),
(155, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:03:13', '2020-09-10 14:03:13'),
(156, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:03:15', '2020-09-10 14:03:15'),
(157, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:03:16', '2020-09-10 14:03:16'),
(158, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:03:19', '2020-09-10 14:03:19'),
(159, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:11:10', '2020-09-10 14:11:10'),
(160, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 14:11:12', '2020-09-10 14:11:12'),
(161, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:11:31', '2020-09-10 14:11:31'),
(162, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:11:41', '2020-09-10 14:11:41'),
(163, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:23:25', '2020-09-10 14:23:25'),
(164, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:23:44', '2020-09-10 14:23:44'),
(165, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:25:28', '2020-09-10 14:25:28'),
(166, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:25:55', '2020-09-10 14:25:55'),
(167, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:26:48', '2020-09-10 14:26:48'),
(168, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:27:42', '2020-09-10 14:27:42'),
(169, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:29:09', '2020-09-10 14:29:09'),
(170, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:29:30', '2020-09-10 14:29:30'),
(171, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:29:42', '2020-09-10 14:29:42'),
(172, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:30:05', '2020-09-10 14:30:05'),
(173, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:30:29', '2020-09-10 14:30:29'),
(174, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:31:23', '2020-09-10 14:31:23'),
(175, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:31:33', '2020-09-10 14:31:33'),
(176, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:32:40', '2020-09-10 14:32:40'),
(177, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:32:52', '2020-09-10 14:32:52'),
(178, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:34:05', '2020-09-10 14:34:05'),
(179, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:36:00', '2020-09-10 14:36:00'),
(180, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:36:11', '2020-09-10 14:36:11'),
(181, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:36:22', '2020-09-10 14:36:22'),
(182, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:39:09', '2020-09-10 14:39:09'),
(183, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:39:32', '2020-09-10 14:39:32'),
(184, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:39:42', '2020-09-10 14:39:42'),
(185, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:40:24', '2020-09-10 14:40:24'),
(186, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:41:44', '2020-09-10 14:41:44'),
(187, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:42:09', '2020-09-10 14:42:09'),
(188, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:42:53', '2020-09-10 14:42:53'),
(189, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:46:10', '2020-09-10 14:46:10'),
(190, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:47:56', '2020-09-10 14:47:56'),
(191, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:48:54', '2020-09-10 14:48:54'),
(192, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 14:49:29', '2020-09-10 14:49:29'),
(193, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 15:10:05', '2020-09-10 15:10:05'),
(194, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 15:11:21', '2020-09-10 15:11:21'),
(195, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 15:22:23', '2020-09-10 15:22:23'),
(196, 1, 'admin/contracts/1', 'GET', '127.0.0.1', '[]', '2020-09-10 15:23:04', '2020-09-10 15:23:04'),
(197, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 15:27:41', '2020-09-10 15:27:41'),
(198, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 15:27:44', '2020-09-10 15:27:44'),
(199, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 15:27:51', '2020-09-10 15:27:51'),
(200, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-10 15:28:06', '2020-09-10 15:28:06'),
(201, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 11:03:09', '2020-09-11 11:03:09'),
(202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:03:23', '2020-09-11 11:03:23'),
(203, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"HD S\\u1eafp B\\u1ea3o Tr\\u00ec\",\"icon\":\"fa-file\",\"uri\":\"\\/contracts_filter\",\"roles\":[null],\"permission\":null,\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\"}', '2020-09-11 11:04:05', '2020-09-11 11:04:05'),
(204, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-11 11:04:06', '2020-09-11 11:04:06'),
(205, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-11 11:04:12', '2020-09-11 11:04:12'),
(206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:04:13', '2020-09-11 11:04:13'),
(207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-11 11:04:13', '2020-09-11 11:04:13'),
(208, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:04:17', '2020-09-11 11:04:17'),
(209, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:07:30', '2020-09-11 11:07:30'),
(210, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status_mainten\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:07:34', '2020-09-11 11:07:34'),
(211, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status_mainten\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:07:35', '2020-09-11 11:07:35'),
(212, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status_mainten\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:07:36', '2020-09-11 11:07:36'),
(213, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status_mainten\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:07:37', '2020-09-11 11:07:37'),
(214, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:10:03', '2020-09-11 11:10:03'),
(215, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:11:10', '2020-09-11 11:11:10'),
(216, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:11:15', '2020-09-11 11:11:15'),
(217, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:11:16', '2020-09-11 11:11:16'),
(218, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:11:19', '2020-09-11 11:11:19'),
(219, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-11 11:11:47', '2020-09-11 11:11:47'),
(220, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-11 11:11:49', '2020-09-11 11:11:49'),
(221, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"V\"}', '2020-09-11 11:11:51', '2020-09-11 11:11:51'),
(222, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-002\",\"name_customer\":\"Hoang Anh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-08-02 18:11:19\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 11:11:54', '2020-09-11 11:11:54'),
(223, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 11:11:54', '2020-09-11 11:11:54'),
(224, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:11:57', '2020-09-11 11:11:57'),
(225, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:12:05', '2020-09-11 11:12:05'),
(226, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:13:55', '2020-09-11 11:13:55'),
(227, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:21:39', '2020-09-11 11:21:39'),
(228, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:33:58', '2020-09-11 11:33:58'),
(229, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:34:07', '2020-09-11 11:34:07'),
(230, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:34:10', '2020-09-11 11:34:10'),
(231, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:34:13', '2020-09-11 11:34:13'),
(232, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:34:18', '2020-09-11 11:34:18'),
(233, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-30 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 11:34:24', '2020-09-11 11:34:24'),
(234, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 11:34:25', '2020-09-11 11:34:25'),
(235, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 11:34:27', '2020-09-11 11:34:27'),
(236, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:47:27', '2020-09-11 11:47:27'),
(237, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:47:50', '2020-09-11 11:47:50'),
(238, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:48:41', '2020-09-11 11:48:41'),
(239, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:49:06', '2020-09-11 11:49:06'),
(240, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:50:14', '2020-09-11 11:50:14'),
(241, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:50:47', '2020-09-11 11:50:47'),
(242, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:51:25', '2020-09-11 11:51:25'),
(243, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:51:27', '2020-09-11 11:51:27'),
(244, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:51:52', '2020-09-11 11:51:52'),
(245, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:53:45', '2020-09-11 11:53:45'),
(246, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:54:27', '2020-09-11 11:54:27'),
(247, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:54:45', '2020-09-11 11:54:45'),
(248, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:55:16', '2020-09-11 11:55:16'),
(249, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:55:40', '2020-09-11 11:55:40'),
(250, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:56:16', '2020-09-11 11:56:16'),
(251, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:56:40', '2020-09-11 11:56:40'),
(252, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:56:50', '2020-09-11 11:56:50'),
(253, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:57:05', '2020-09-11 11:57:05'),
(254, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:57:22', '2020-09-11 11:57:22'),
(255, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:57:37', '2020-09-11 11:57:37'),
(256, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:57:46', '2020-09-11 11:57:46'),
(257, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 11:57:54', '2020-09-11 11:57:54'),
(258, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:07:10', '2020-09-11 12:07:10'),
(259, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:11:57', '2020-09-11 12:11:57'),
(260, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:12:26', '2020-09-11 12:12:26'),
(261, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:12:50', '2020-09-11 12:12:50'),
(262, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:12:59', '2020-09-11 12:12:59'),
(263, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:13:10', '2020-09-11 12:13:10'),
(264, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:13:59', '2020-09-11 12:13:59'),
(265, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:17:12', '2020-09-11 12:17:12'),
(266, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:18:01', '2020-09-11 12:18:01'),
(267, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:19:13', '2020-09-11 12:19:13'),
(268, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:19:24', '2020-09-11 12:19:24'),
(269, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:20:20', '2020-09-11 12:20:20'),
(270, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:20:23', '2020-09-11 12:20:23'),
(271, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2019-09-30 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:20:33', '2020-09-11 12:20:33'),
(272, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:20:34', '2020-09-11 12:20:34'),
(273, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:20:36', '2020-09-11 12:20:36'),
(274, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:20:39', '2020-09-11 12:20:39'),
(275, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:20:40', '2020-09-11 12:20:40'),
(276, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:22:08', '2020-09-11 12:22:08'),
(277, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:22:27', '2020-09-11 12:22:27'),
(278, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:25:08', '2020-09-11 12:25:08'),
(279, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:26:05', '2020-09-11 12:26:05'),
(280, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:26:31', '2020-09-11 12:26:31'),
(281, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:27:25', '2020-09-11 12:27:25'),
(282, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:27:46', '2020-09-11 12:27:46'),
(283, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:28:04', '2020-09-11 12:28:04'),
(284, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:28:22', '2020-09-11 12:28:22'),
(285, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:28:43', '2020-09-11 12:28:43'),
(286, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:29:30', '2020-09-11 12:29:30'),
(287, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:30:27', '2020-09-11 12:30:27'),
(288, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:30:30', '2020-09-11 12:30:30'),
(289, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:30:35', '2020-09-11 12:30:35'),
(290, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-08-30 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:30:48', '2020-09-11 12:30:48'),
(291, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:30:48', '2020-09-11 12:30:48'),
(292, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:30:51', '2020-09-11 12:30:51'),
(293, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:31:22', '2020-09-11 12:31:22'),
(294, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:31:28', '2020-09-11 12:31:28'),
(295, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:31:53', '2020-09-11 12:31:53'),
(296, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:32:02', '2020-09-11 12:32:02'),
(297, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:32:08', '2020-09-11 12:32:08'),
(298, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:32:32', '2020-09-11 12:32:32'),
(299, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:32:37', '2020-09-11 12:32:37'),
(300, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-06-30 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:32:45', '2020-09-11 12:32:45'),
(301, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:32:45', '2020-09-11 12:32:45'),
(302, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:32:47', '2020-09-11 12:32:47'),
(303, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:34:59', '2020-09-11 12:34:59'),
(304, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:03', '2020-09-11 12:35:03'),
(305, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:06', '2020-09-11 12:35:06'),
(306, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:11', '2020-09-11 12:35:11'),
(307, 1, 'admin/contracts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:14', '2020-09-11 12:35:14'),
(308, 1, 'admin/contracts/2', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-002\",\"name_customer\":\"Hoang Anh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-12-02 18:11:19\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:35:25', '2020-09-11 12:35:25'),
(309, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:35:25', '2020-09-11 12:35:25'),
(310, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:28', '2020-09-11 12:35:28'),
(311, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:55', '2020-09-11 12:35:55'),
(312, 1, 'admin/contracts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:35:58', '2020-09-11 12:35:58'),
(313, 1, 'admin/contracts/2', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-002\",\"name_customer\":\"Hoang Anh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-01-02 18:11:19\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:36:09', '2020-09-11 12:36:09'),
(314, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:36:09', '2020-09-11 12:36:09'),
(315, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:36:11', '2020-09-11 12:36:11'),
(316, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:37:42', '2020-09-11 12:37:42'),
(317, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:37:57', '2020-09-11 12:37:57'),
(318, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:38:15', '2020-09-11 12:38:15'),
(319, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:38:38', '2020-09-11 12:38:38'),
(320, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:39:00', '2020-09-11 12:39:00'),
(321, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:39:24', '2020-09-11 12:39:24'),
(322, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:42:00', '2020-09-11 12:42:00'),
(323, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:42:37', '2020-09-11 12:42:37'),
(324, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:42:50', '2020-09-11 12:42:50'),
(325, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:43:07', '2020-09-11 12:43:07'),
(326, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:43:24', '2020-09-11 12:43:24'),
(327, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:47:30', '2020-09-11 12:47:30'),
(328, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:47:34', '2020-09-11 12:47:34'),
(329, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:47:36', '2020-09-11 12:47:36'),
(330, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:47:38', '2020-09-11 12:47:38'),
(331, 1, 'admin/contracts/1', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-001\",\"name_customer\":\"\\u0110inh H\\u1ed3ng S\\u01a1n\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"H\\u00e0 N\\u1ed9i\",\"email\":\"giaiphapweb.co.ltd@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-07-02 20:15:57\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"1\",\"2\",\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:47:47', '2020-09-11 12:47:47'),
(332, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:47:47', '2020-09-11 12:47:47'),
(333, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:47:49', '2020-09-11 12:47:49'),
(334, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:48:22', '2020-09-11 12:48:22'),
(335, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:26', '2020-09-11 12:48:26'),
(336, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:28', '2020-09-11 12:48:28'),
(337, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:31', '2020-09-11 12:48:31'),
(338, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:35', '2020-09-11 12:48:35'),
(339, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:40', '2020-09-11 12:48:40'),
(340, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:48:42', '2020-09-11 12:48:42'),
(341, 1, 'admin/api/product', 'GET', '127.0.0.1', '{\"q\":\"G\"}', '2020-09-11 12:49:08', '2020-09-11 12:49:08'),
(342, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-003\",\"name_customer\":\"\\u0110\\u1ee9c Minh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-09-11 19:48:42\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:49:10', '2020-09-11 12:49:10'),
(343, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:49:11', '2020-09-11 12:49:11'),
(344, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:49:13', '2020-09-11 12:49:13'),
(345, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 12:49:19', '2020-09-11 12:49:19'),
(346, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 12:49:21', '2020-09-11 12:49:21'),
(347, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 12:49:23', '2020-09-11 12:49:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(348, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 12:49:26', '2020-09-11 12:49:26'),
(349, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 12:49:29', '2020-09-11 12:49:29'),
(350, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 12:49:34', '2020-09-11 12:49:34'),
(351, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:49:39', '2020-09-11 12:49:39'),
(352, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:49:54', '2020-09-11 12:49:54'),
(353, 1, 'admin/contracts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:49:57', '2020-09-11 12:49:57'),
(354, 1, 'admin/contracts/3', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-003\",\"name_customer\":\"\\u0110\\u1ee9c Minh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-07-29 19:48:42\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:50:09', '2020-09-11 12:50:09'),
(355, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:50:09', '2020-09-11 12:50:09'),
(356, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:50:11', '2020-09-11 12:50:11'),
(357, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:50:27', '2020-09-11 12:50:27'),
(358, 1, 'admin/contracts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:50:32', '2020-09-11 12:50:32'),
(359, 1, 'admin/contracts/3', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-003\",\"name_customer\":\"\\u0110\\u1ee9c Minh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"finish_date\":\"2020-06-01 19:48:42\",\"language\":\"Vi\\u1ec7t Nam\",\"products\":[\"3\",null],\"_token\":\"WJeNHKctXWhLCPAgcKPksPTmmsooMLcvjxIWNWAr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-11 12:50:41', '2020-09-11 12:50:41'),
(360, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-11 12:50:41', '2020-09-11 12:50:41'),
(361, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 12:50:43', '2020-09-11 12:50:43'),
(362, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:50:47', '2020-09-11 12:50:47'),
(363, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:50:54', '2020-09-11 12:50:54'),
(364, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:51:23', '2020-09-11 12:51:23'),
(365, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:51:26', '2020-09-11 12:51:26'),
(366, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 12:57:06', '2020-09-11 12:57:06'),
(367, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:04:53', '2020-09-11 13:04:53'),
(368, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:05:57', '2020-09-11 13:05:57'),
(369, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:06:06', '2020-09-11 13:06:06'),
(370, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:06:09', '2020-09-11 13:06:09'),
(371, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 13:06:44', '2020-09-11 13:06:44'),
(372, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:06:55', '2020-09-11 13:06:55'),
(373, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:06:57', '2020-09-11 13:06:57'),
(374, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:06:58', '2020-09-11 13:06:58'),
(375, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:07:27', '2020-09-11 13:07:27'),
(376, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:07:31', '2020-09-11 13:07:31'),
(377, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:07:34', '2020-09-11 13:07:34'),
(378, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:07:46', '2020-09-11 13:07:46'),
(379, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:08:04', '2020-09-11 13:08:04'),
(380, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 13:08:07', '2020-09-11 13:08:07'),
(381, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:10', '2020-09-11 13:08:10'),
(382, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:11', '2020-09-11 13:08:11'),
(383, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:12', '2020-09-11 13:08:12'),
(384, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:13', '2020-09-11 13:08:13'),
(385, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:14', '2020-09-11 13:08:14'),
(386, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:18', '2020-09-11 13:08:18'),
(387, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:37', '2020-09-11 13:08:37'),
(388, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:58', '2020-09-11 13:08:58'),
(389, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:08:59', '2020-09-11 13:08:59'),
(390, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:09:44', '2020-09-11 13:09:44'),
(391, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:09:48', '2020-09-11 13:09:48'),
(392, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:09:49', '2020-09-11 13:09:49'),
(393, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:10:07', '2020-09-11 13:10:07'),
(394, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:10:10', '2020-09-11 13:10:10'),
(395, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:10:14', '2020-09-11 13:10:14'),
(396, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:10:16', '2020-09-11 13:10:16'),
(397, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:10:18', '2020-09-11 13:10:18'),
(398, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 13:10:20', '2020-09-11 13:10:20'),
(399, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:10:24', '2020-09-11 13:10:24'),
(400, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:10:56', '2020-09-11 13:10:56'),
(401, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"desc\"}}', '2020-09-11 13:11:59', '2020-09-11 13:11:59'),
(402, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:12:04', '2020-09-11 13:12:04'),
(403, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-09-11 13:12:06', '2020-09-11 13:12:06'),
(404, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 13:14:15', '2020-09-11 13:14:15'),
(405, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"finish_date\",\"type\":\"asc\"}}', '2020-09-11 13:14:35', '2020-09-11 13:14:35'),
(406, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:14:47', '2020-09-11 13:14:47'),
(407, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:15:09', '2020-09-11 13:15:09'),
(408, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:18:24', '2020-09-11 13:18:24'),
(409, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:18:40', '2020-09-11 13:18:40'),
(410, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:18:46', '2020-09-11 13:18:46'),
(411, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-11 13:20:20', '2020-09-11 13:20:20'),
(412, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-13 02:37:29', '2020-09-13 02:37:29'),
(413, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-13 02:58:11', '2020-09-13 02:58:11'),
(414, 1, 'admin/contracts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-13 02:58:22', '2020-09-13 02:58:22'),
(415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-15 03:47:43', '2020-09-15 03:47:43'),
(416, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 03:51:46', '2020-09-15 03:51:46'),
(417, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 03:51:47', '2020-09-15 03:51:47'),
(418, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 03:54:52', '2020-09-15 03:54:52'),
(419, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 03:55:00', '2020-09-15 03:55:00'),
(420, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 03:57:38', '2020-09-15 03:57:38'),
(421, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 03:57:45', '2020-09-15 03:57:45'),
(422, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 03:59:29', '2020-09-15 03:59:29'),
(423, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 03:59:33', '2020-09-15 03:59:33'),
(424, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 04:01:34', '2020-09-15 04:01:34'),
(425, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:01:37', '2020-09-15 04:01:37'),
(426, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:23', '2020-09-15 04:04:23'),
(427, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:25', '2020-09-15 04:04:25'),
(428, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 04:04:29', '2020-09-15 04:04:29'),
(429, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:34', '2020-09-15 04:04:34'),
(430, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:34', '2020-09-15 04:04:34'),
(431, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 04:04:46', '2020-09-15 04:04:46'),
(432, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:52', '2020-09-15 04:04:52'),
(433, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 04:04:53', '2020-09-15 04:04:53'),
(434, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-15 05:48:39', '2020-09-15 05:48:39'),
(435, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 05:49:22', '2020-09-15 05:49:22'),
(436, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"selected:1\"}', '2020-09-15 05:49:32', '2020-09-15 05:49:32'),
(437, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"selected:1\"}', '2020-09-15 05:49:40', '2020-09-15 05:49:40'),
(438, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 05:58:59', '2020-09-15 05:58:59'),
(439, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 05:59:03', '2020-09-15 05:59:03'),
(440, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:03:15', '2020-09-15 06:03:15'),
(441, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-09-15 06:03:28', '2020-09-15 06:03:28'),
(442, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"selected:1\"}', '2020-09-15 06:03:40', '2020-09-15 06:03:40'),
(443, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:07:03', '2020-09-15 06:07:03'),
(444, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 06:07:10', '2020-09-15 06:07:10'),
(445, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 06:07:30', '2020-09-15 06:07:30'),
(446, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:07:40', '2020-09-15 06:07:40'),
(447, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:11:30', '2020-09-15 06:11:30'),
(448, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 06:11:33', '2020-09-15 06:11:33'),
(449, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:11:37', '2020-09-15 06:11:37'),
(450, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"1\"}', '2020-09-15 06:11:56', '2020-09-15 06:11:56'),
(451, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-09-15 06:17:54', '2020-09-15 06:17:54'),
(452, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-15 10:35:16', '2020-09-15 10:35:16'),
(453, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 10:35:31', '2020-09-15 10:35:31'),
(454, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 10:35:39', '2020-09-15 10:35:39'),
(455, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:01:06', '2020-09-15 11:01:06'),
(456, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:01:12', '2020-09-15 11:01:12'),
(457, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:01:12', '2020-09-15 11:01:12'),
(458, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-15 11:05:57', '2020-09-15 11:05:57'),
(459, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 11:06:02', '2020-09-15 11:06:02'),
(460, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:06:06', '2020-09-15 11:06:06'),
(461, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:06:24', '2020-09-15 11:06:24'),
(462, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:09:22', '2020-09-15 11:09:22'),
(463, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:10:27', '2020-09-15 11:10:27'),
(464, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:10:31', '2020-09-15 11:10:31'),
(465, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:10:35', '2020-09-15 11:10:35'),
(466, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:10:37', '2020-09-15 11:10:37'),
(467, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:16:43', '2020-09-15 11:16:43'),
(468, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:19:58', '2020-09-15 11:19:58'),
(469, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:24:31', '2020-09-15 11:24:31'),
(470, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:25:04', '2020-09-15 11:25:04'),
(471, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:25:35', '2020-09-15 11:25:35'),
(472, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:27:04', '2020-09-15 11:27:04'),
(473, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:27:15', '2020-09-15 11:27:15'),
(474, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:27:32', '2020-09-15 11:27:32'),
(475, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:28:33', '2020-09-15 11:28:33'),
(476, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:28:47', '2020-09-15 11:28:47'),
(477, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:29:55', '2020-09-15 11:29:55'),
(478, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:30:53', '2020-09-15 11:30:53'),
(479, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:31:15', '2020-09-15 11:31:15'),
(480, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:31:56', '2020-09-15 11:31:56'),
(481, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:32:11', '2020-09-15 11:32:11'),
(482, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:32:24', '2020-09-15 11:32:24'),
(483, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:38:12', '2020-09-15 11:38:12'),
(484, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_contract\":{\"new_1\":{\"product\":\"1\",\"created_at\":\"2020-09-15 18:38:12\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_filter\"}', '2020-09-15 11:38:45', '2020-09-15 11:38:45'),
(485, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:38:48', '2020-09-15 11:38:48'),
(486, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_contract\":{\"new_1\":{\"product\":\"1\",\"created_at\":\"2020-09-15 18:38:12\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 11:39:42', '2020-09-15 11:39:42'),
(487, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:39:43', '2020-09-15 11:39:43'),
(488, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:42:33', '2020-09-15 11:42:33'),
(489, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":null,\"address\":null,\"email\":null,\"status_mainten\":\"1\",\"language\":null,\"product_contract\":{\"new_1\":{\"product_id\":\"1\",\"created_at\":\"2020-09-15 18:42:33\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_filter\"}', '2020-09-15 11:42:51', '2020-09-15 11:42:51'),
(490, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:42:52', '2020-09-15 11:42:52'),
(491, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Hoang Anh\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_contract\":{\"new_1\":{\"product_id\":\"1\",\"created_at\":\"2020-09-15 18:42:33\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 11:43:01', '2020-09-15 11:43:01'),
(492, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:43:01', '2020-09-15 11:43:01'),
(493, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:47:05', '2020-09-15 11:47:05'),
(494, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:52:52', '2020-09-15 11:52:52'),
(495, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_list\":{\"new_1\":{\"product_id\":\"1\",\"created_at\":\"2020-09-15 18:52:52\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_filter\"}', '2020-09-15 11:53:08', '2020-09-15 11:53:08'),
(496, 1, 'admin/contracts/create', 'GET', '127.0.0.1', '[]', '2020-09-15 11:53:10', '2020-09-15 11:53:10'),
(497, 1, 'admin/contracts', 'POST', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_list\":{\"new_1\":{\"product_id\":\"1\",\"created_at\":\"2020-09-15 18:52:52\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 11:56:17', '2020-09-15 11:56:17'),
(498, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 11:56:17', '2020-09-15 11:56:17'),
(499, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:56:22', '2020-09-15 11:56:22'),
(500, 1, 'admin/contracts/7', 'PUT', '127.0.0.1', '{\"contract_code\":\"HD-004\",\"name_customer\":\"Minh H\\u1eb1ng\",\"construction_items\":\"V\\u1ea3i\",\"phone\":\"0356594112\",\"address\":\"Th\\u00e1i Nguy\\u00ean\",\"email\":\"pichusanvqtc@gmail.com\",\"status_mainten\":\"1\",\"language\":\"Vi\\u1ec7t Nam\",\"product_list\":{\"1\":{\"product_id\":\"1\",\"selected_at\":\"2020-09-16 01:56:17\",\"id\":\"1\",\"_remove_\":\"0\"},\"new_1\":{\"product_id\":\"1\",\"selected_at\":\"2020-09-15 18:56:22\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts\"}', '2020-09-15 11:56:51', '2020-09-15 11:56:51'),
(501, 1, 'admin/contracts', 'GET', '127.0.0.1', '[]', '2020-09-15 11:56:51', '2020-09-15 11:56:51'),
(502, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 11:57:02', '2020-09-15 11:57:02'),
(503, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '[]', '2020-09-15 11:58:32', '2020-09-15 11:58:32'),
(504, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '[]', '2020-09-15 11:59:25', '2020-09-15 11:59:25'),
(505, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '[]', '2020-09-15 11:59:36', '2020-09-15 11:59:36'),
(506, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '[]', '2020-09-15 12:00:00', '2020-09-15 12:00:00'),
(507, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:00:33', '2020-09-15 12:00:33'),
(508, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:01:43', '2020-09-15 12:01:43'),
(509, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:01:47', '2020-09-15 12:01:47'),
(510, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '[]', '2020-09-15 12:06:53', '2020-09-15 12:06:53'),
(511, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '[]', '2020-09-15 12:07:05', '2020-09-15 12:07:05'),
(512, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '[]', '2020-09-15 12:07:39', '2020-09-15 12:07:39'),
(513, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '[]', '2020-09-15 12:08:13', '2020-09-15 12:08:13'),
(514, 1, 'admin/contracts/7', 'GET', '127.0.0.1', '[]', '2020-09-15 12:08:48', '2020-09-15 12:08:48'),
(515, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:09:32', '2020-09-15 12:09:32'),
(516, 1, 'admin/contracts/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:10:58', '2020-09-15 12:10:58'),
(517, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:11:02', '2020-09-15 12:11:02'),
(518, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:11:03', '2020-09-15 12:11:03'),
(519, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:11:40', '2020-09-15 12:11:40'),
(520, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:11:43', '2020-09-15 12:11:43'),
(521, 1, 'admin/contracts_filter', 'GET', '127.0.0.1', '[]', '2020-09-15 12:24:26', '2020-09-15 12:24:26'),
(522, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:25:18', '2020-09-15 12:25:18'),
(523, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:25:22', '2020-09-15 12:25:22'),
(524, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"HD S\\u1eafp B\\u1ea3o Tr\\u00ec\",\"icon\":\"fa-file\",\"uri\":\"contracts_warranty_1\",\"roles\":[null],\"permission\":null,\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-09-15 12:25:33', '2020-09-15 12:25:33'),
(525, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 12:25:34', '2020-09-15 12:25:34'),
(526, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 12:25:41', '2020-09-15 12:25:41'),
(527, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:25:45', '2020-09-15 12:25:45'),
(528, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:28:23', '2020-09-15 12:28:23'),
(529, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:30:15', '2020-09-15 12:30:15'),
(530, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:30:48', '2020-09-15 12:30:48'),
(531, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:31:08', '2020-09-15 12:31:08'),
(532, 1, 'admin/contracts_warranty_1/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:31:11', '2020-09-15 12:31:11'),
(533, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:31:14', '2020-09-15 12:31:14'),
(534, 1, 'admin/contracts_warranty_1/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:31:20', '2020-09-15 12:31:20'),
(535, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:31:24', '2020-09-15 12:31:24'),
(536, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:32:37', '2020-09-15 12:32:37'),
(537, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:32:51', '2020-09-15 12:32:51'),
(538, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:33:44', '2020-09-15 12:33:44'),
(539, 1, 'admin/contracts_warranty_1/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:33:54', '2020-09-15 12:33:54'),
(540, 1, 'admin/contracts_warranty_1/1', 'PUT', '127.0.0.1', '{\"contract_id\":\"7\",\"product_id\":\"1\",\"selected_at\":\"2020-05-16 01:56:17\",\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_warranty_1\"}', '2020-09-15 12:33:58', '2020-09-15 12:33:58'),
(541, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:33:59', '2020-09-15 12:33:59'),
(542, 1, 'admin/contracts_warranty_1/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:34:19', '2020-09-15 12:34:19'),
(543, 1, 'admin/contracts_warranty_1/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-15 12:34:53', '2020-09-15 12:34:53'),
(544, 1, 'admin/contracts_warranty_1/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:34:58', '2020-09-15 12:34:58'),
(545, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:35:00', '2020-09-15 12:35:00'),
(546, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:35:01', '2020-09-15 12:35:01'),
(547, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:35:10', '2020-09-15 12:35:10'),
(548, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:35:20', '2020-09-15 12:35:20'),
(549, 1, 'admin/contracts_warranty_1/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:35:24', '2020-09-15 12:35:24'),
(550, 1, 'admin/contracts_warranty_1/1', 'PUT', '127.0.0.1', '{\"contract_id\":\"7\",\"product_id\":\"1\",\"selected_at\":\"2020-07-16 01:56:17\",\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_warranty_1\"}', '2020-09-15 12:35:36', '2020-09-15 12:35:36'),
(551, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:35:36', '2020-09-15 12:35:36'),
(552, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:35:40', '2020-09-15 12:35:40'),
(553, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:36:48', '2020-09-15 12:36:48'),
(554, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:39:09', '2020-09-15 12:39:09'),
(555, 1, 'admin/contracts_warranty_1/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:39:15', '2020-09-15 12:39:15'),
(556, 1, 'admin/contracts_warranty_1/2', 'PUT', '127.0.0.1', '{\"contract_id\":\"7\",\"product_id\":\"2\",\"selected_at\":\"2020-09-15 18:56:22\",\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_warranty_1\"}', '2020-09-15 12:39:19', '2020-09-15 12:39:19'),
(557, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:39:20', '2020-09-15 12:39:20'),
(558, 1, 'admin/contracts_warranty_1/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:39:27', '2020-09-15 12:39:27'),
(559, 1, 'admin/contracts_warranty_1/2', 'PUT', '127.0.0.1', '{\"contract_id\":\"7\",\"product_id\":\"2\",\"selected_at\":\"2020-10-15 18:56:22\",\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/contracts_warranty_1\"}', '2020-09-15 12:39:35', '2020-09-15 12:39:35'),
(560, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:39:35', '2020-09-15 12:39:35'),
(561, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 12:50:03', '2020-09-15 12:50:03'),
(562, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"id\":null,\"selected_at\":{\"start\":\"2020-09-16 00:00:00\",\"end\":\"2020-09-30 00:00:00\"},\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:50:18', '2020-09-15 12:50:18'),
(563, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"selected_at\":{\"start\":\"2020-09-08 00:00:00\",\"end\":\"2020-09-30 00:00:00\"}}', '2020-09-15 12:50:23', '2020-09-15 12:50:23'),
(564, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 12:50:26', '2020-09-15 12:50:26'),
(565, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:12:12', '2020-09-15 13:12:12'),
(566, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:12:28', '2020-09-15 13:12:28'),
(567, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:12:37', '2020-09-15 13:12:37'),
(568, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:12:39', '2020-09-15 13:12:39'),
(569, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:12:48', '2020-09-15 13:12:48'),
(570, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:12:50', '2020-09-15 13:12:50'),
(571, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:12:53', '2020-09-15 13:12:53'),
(572, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:13:01', '2020-09-15 13:13:01'),
(573, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:14:00', '2020-09-15 13:14:00'),
(574, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:14:23', '2020-09-15 13:14:23'),
(575, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:15:00', '2020-09-15 13:15:00'),
(576, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:15:08', '2020-09-15 13:15:08'),
(577, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:15:41', '2020-09-15 13:15:41'),
(578, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:15:51', '2020-09-15 13:15:51'),
(579, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:16:10', '2020-09-15 13:16:10'),
(580, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:16:42', '2020-09-15 13:16:42'),
(581, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:16:58', '2020-09-15 13:16:58'),
(582, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:21:10', '2020-09-15 13:21:10'),
(583, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:22:34', '2020-09-15 13:22:34'),
(584, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:22:39', '2020-09-15 13:22:39'),
(585, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"B\\u1ea3o Tr\\u00ec 1\",\"icon\":\"fa-list-alt\",\"uri\":\"contracts_warranty_1\",\"roles\":[null],\"permission\":null,\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-09-15 13:23:11', '2020-09-15 13:23:11'),
(586, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:23:11', '2020-09-15 13:23:11'),
(587, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '[]', '2020-09-15 13:23:28', '2020-09-15 13:23:28'),
(588, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"B\\u1ea3o Tr\\u00ec 2\",\"icon\":\"fa-list-alt\",\"uri\":\"contracts_warranty_2\",\"roles\":[null],\"permission\":null,\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 13:23:54', '2020-09-15 13:23:54'),
(589, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:23:54', '2020-09-15 13:23:54'),
(590, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-15 13:24:06', '2020-09-15 13:24:06'),
(591, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-15 13:24:06', '2020-09-15 13:24:06'),
(592, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:24:06', '2020-09-15 13:24:06'),
(593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:24:07', '2020-09-15 13:24:07'),
(594, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"B\\u1ea3o Tr\\u00ec 3\",\"icon\":\"fa-list-alt\",\"uri\":\"contracts_warranty_3\",\"roles\":[null],\"permission\":null,\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 13:24:25', '2020-09-15 13:24:25'),
(595, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:24:25', '2020-09-15 13:24:25'),
(596, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-15 13:24:32', '2020-09-15 13:24:32'),
(597, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:24:32', '2020-09-15 13:24:32'),
(598, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:24:35', '2020-09-15 13:24:35'),
(599, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:24:41', '2020-09-15 13:24:41'),
(600, 1, 'admin/contracts_warranty_2', 'GET', '127.0.0.1', '[]', '2020-09-15 13:25:13', '2020-09-15 13:25:13'),
(601, 1, 'admin/contracts_warranty_2', 'GET', '127.0.0.1', '[]', '2020-09-15 13:25:35', '2020-09-15 13:25:35'),
(602, 1, 'admin/contracts_warranty_3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:25:44', '2020-09-15 13:25:44'),
(603, 1, 'admin/contracts_warranty_2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:25:50', '2020-09-15 13:25:50'),
(604, 1, 'admin/contracts_warranty_3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:25:53', '2020-09-15 13:25:53'),
(605, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:22', '2020-09-15 13:26:22'),
(606, 1, 'admin/contracts_warranty_2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:24', '2020-09-15 13:26:24'),
(607, 1, 'admin/contracts_warranty_3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:26', '2020-09-15 13:26:26'),
(608, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:29', '2020-09-15 13:26:29'),
(609, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:32', '2020-09-15 13:26:32'),
(610, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:34', '2020-09-15 13:26:34'),
(611, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:36', '2020-09-15 13:26:36'),
(612, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:39', '2020-09-15 13:26:39'),
(613, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:45', '2020-09-15 13:26:45'),
(614, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:26:50', '2020-09-15 13:26:50'),
(615, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Danh S\\u00e1ch\",\"icon\":\"fa-archive\",\"uri\":\"contracts\",\"roles\":[null],\"permission\":null,\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\"}', '2020-09-15 13:27:29', '2020-09-15 13:27:29'),
(616, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:27:29', '2020-09-15 13:27:29'),
(617, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eVdQ86rZLessXOKMZLNivdtwzBPkfattf6Hijg7s\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-09-15 13:27:38', '2020-09-15 13:27:38'),
(618, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:27:39', '2020-09-15 13:27:39'),
(619, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-15 13:27:41', '2020-09-15 13:27:41'),
(620, 1, 'admin/contracts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:27:46', '2020-09-15 13:27:46'),
(621, 1, 'admin/contracts_warranty_1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:27:51', '2020-09-15 13:27:51'),
(622, 1, 'admin/contracts_warranty_2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:27:54', '2020-09-15 13:27:54'),
(623, 1, 'admin/contracts_warranty_3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-15 13:27:56', '2020-09-15 13:27:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-09-10 12:17:41', '2020-09-10 12:17:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$SPgOGRGDv2LVuDTB13Bpau5mO3UCzNShSrK3uucvO/cUsRO5r4C4S', 'Administrator', NULL, NULL, '2020-09-10 12:17:41', '2020-09-10 12:17:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract`
--

CREATE TABLE `contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `construction_items` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_mainten` tinyint(1) NOT NULL,
  `finish_date` datetime DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contract`
--

INSERT INTO `contract` (`id`, `contract_code`, `name_customer`, `construction_items`, `phone`, `address`, `email`, `status_mainten`, `finish_date`, `language`, `products`, `created_at`, `updated_at`) VALUES
(1, 'HD-001', 'Đinh Hồng Sơn', 'Vải', '0356594112', 'Hà Nội', 'giaiphapweb.co.ltd@gmail.com', 1, '2020-07-02 20:15:57', 'Việt Nam', '1,2,3', '2020-09-10 13:22:35', '2020-09-11 12:47:47'),
(2, 'HD-002', 'Hoang Anh', 'Vải', '0356594112', 'Thái Nguyên', 'pichusanvqtc@gmail.com', 1, '2020-01-02 18:11:19', 'Việt Nam', '1,2', '2020-09-11 11:11:54', '2020-09-11 12:36:09'),
(3, 'HD-003', 'Đức Minh', 'Vải', '0356594112', 'Thái Nguyên', 'pichusanvqtc@gmail.com', 1, '2020-06-01 19:48:42', 'Việt Nam', '3', '2020-09-11 12:49:10', '2020-09-11 12:50:41'),
(7, 'HD-004', 'Minh Hằng', 'Vải', '0356594112', 'Thái Nguyên', 'pichusanvqtc@gmail.com', 1, NULL, 'Việt Nam', NULL, '2020-09-15 11:56:17', '2020-09-15 11:56:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract_product`
--

CREATE TABLE `contract_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `selected_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contract_product`
--

INSERT INTO `contract_product` (`id`, `contract_id`, `product_id`, `selected_at`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2020-07-15 18:56:17', '2020-09-15 11:56:17', '2020-09-15 12:35:36'),
(2, 7, 2, '2020-10-15 11:56:22', '2020-09-15 11:56:51', '2020-09-15 12:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(5, '2020_09_10_182100_create_product_table', 1),
(6, '2020_09_10_164851_create_contract_table', 2),
(8, '2020_09_15_172930_create_contract_product_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_maitain_product` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `provider`, `status_maitain_product`, `created_at`, `updated_at`) VALUES
(1, 'Vải thô', 'Flexfit', 1, '2020-09-10 12:47:49', '2020-09-10 12:47:49'),
(2, 'Vải bố', 'Flexfit', 0, '2020-09-10 12:53:01', '2020-09-10 12:53:07'),
(3, 'Gấm', 'Flexfit', 1, '2020-09-10 13:06:51', '2020-09-10 13:06:51'),
(4, 'Lụa', 'Flexfit', 1, '2020-09-10 13:07:05', '2020-09-10 13:07:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contract_product`
--
ALTER TABLE `contract_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=624;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contract_product`
--
ALTER TABLE `contract_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
