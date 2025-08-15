-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 16, 2025 lúc 03:31 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mysite`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add article', 8, 'add_article'),
(30, 'Can change article', 8, 'change_article'),
(31, 'Can delete article', 8, 'delete_article'),
(32, 'Can view article', 8, 'view_article'),
(33, 'Can add feed', 9, 'add_feed'),
(34, 'Can change feed', 9, 'change_feed'),
(35, 'Can delete feed', 9, 'delete_feed'),
(36, 'Can view feed', 9, 'view_feed'),
(37, 'Can add Planting Method', 10, 'add_plantingmethod'),
(38, 'Can change Planting Method', 10, 'change_plantingmethod'),
(39, 'Can delete Planting Method', 10, 'delete_plantingmethod'),
(40, 'Can view Planting Method', 10, 'view_plantingmethod'),
(41, 'Can add Product', 11, 'add_product'),
(42, 'Can change Product', 11, 'change_product'),
(43, 'Can delete Product', 11, 'delete_product'),
(44, 'Can view Product', 11, 'view_product'),
(45, 'Can add Category', 12, 'add_category'),
(46, 'Can change Category', 12, 'change_category'),
(47, 'Can delete Category', 12, 'delete_category'),
(48, 'Can view Category', 12, 'view_category'),
(49, 'Can add Contact', 13, 'add_contact'),
(50, 'Can change Contact', 13, 'change_contact'),
(51, 'Can delete Contact', 13, 'delete_contact'),
(52, 'Can view Contact', 13, 'view_contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$Yd7u6fKb6CxHBdL3bnFiLo$Bk8G+stRfgt5grKk3M2BPZIswOnuWvosBelvCrzFjZ4=', '2025-07-16 13:23:07.788755', 1, 'anhnt', '', '', 'anhnt@gmail.com', 1, 1, '2025-03-16 03:09:54.675813'),
(2, 'pbkdf2_sha256$600000$YEYCZiJ086Pz3syYEjvTq8$kpRjw7dR5bNZ1G2zfBdFY69294HnWZBv1iWGoAbINFU=', '2025-05-04 00:48:45.336581', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-05-04 00:47:59.110039');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-03-16 12:12:35.862707', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-03-16 12:13:45.397829', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2025-03-16 12:14:40.588466', '3', 'Chính trị', 1, '[{\"added\": {}}]', 7, 1),
(4, '2025-03-16 12:14:50.772781', '4', 'Pháp luật', 1, '[{\"added\": {}}]', 7, 1),
(5, '2025-03-16 12:14:57.173598', '1', 'Thể thao', 2, '[{\"changed\": {\"fields\": [\"Is homepage\"]}}]', 7, 1),
(6, '2025-03-16 12:21:05.181114', '3', 'Chính trị', 2, '[{\"changed\": {\"fields\": [\"Is homepage\"]}}]', 7, 1),
(7, '2025-03-16 13:03:57.763469', '1', 'Dermot Mee là ai?', 1, '[{\"added\": {}}]', 8, 1),
(8, '2025-03-16 13:11:52.630077', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(9, '2025-03-16 13:13:23.536171', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(10, '2025-03-16 13:28:27.613926', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(11, '2025-03-16 13:28:46.447336', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(12, '2025-03-16 13:28:57.824811', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(13, '2025-03-16 13:34:18.578611', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(14, '2025-03-16 13:34:25.868075', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(15, '2025-03-16 13:38:08.925292', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(16, '2025-03-16 13:38:24.747056', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(17, '2025-03-16 13:38:34.154598', '1', 'Dermot Mee là ai?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(18, '2025-03-16 14:55:56.431306', '1', 'Vnexpress', 1, '[{\"added\": {}}]', 9, 1),
(19, '2025-03-16 14:56:27.842398', '2', 'Báo Thanh Niên', 1, '[{\"added\": {}}]', 9, 1),
(20, '2025-03-16 14:56:52.224778', '3', 'Dân trí', 1, '[{\"added\": {}}]', 9, 1),
(21, '2025-03-26 02:53:48.497496', '5', 'Khoa học', 1, '[{\"added\": {}}]', 7, 1),
(22, '2025-03-26 03:01:10.114562', '2', 'Khán giả Thái Lan phản ứng khi tuyển Việt Nam thắng đậm Lào', 1, '[{\"added\": {}}]', 8, 1),
(23, '2025-03-26 03:07:47.457005', '2', 'Khán giả Thái Lan phản ứng khi tuyển Việt Nam thắng đậm Lào', 3, '', 8, 1),
(24, '2025-03-26 03:07:47.462667', '1', 'Dermot Mee là ai?', 3, '', 8, 1),
(25, '2025-03-26 03:09:00.097099', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 1, '[{\"added\": {}}]', 8, 1),
(26, '2025-03-26 03:20:36.586844', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[]', 8, 1),
(27, '2025-03-26 03:27:13.055176', '4', 'Những thành phố thông minh sử dụng AI để giảm tắc nghẽn', 1, '[{\"added\": {}}]', 8, 1),
(28, '2025-03-26 03:29:04.133914', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 1, '[{\"added\": {}}]', 8, 1),
(29, '2025-03-26 03:30:04.074148', '6', 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 1, '[{\"added\": {}}]', 8, 1),
(30, '2025-03-26 03:30:22.464903', '3', 'Chính trị', 3, '', 7, 1),
(31, '2025-03-26 03:30:22.467588', '2', 'Kinh tế', 3, '', 7, 1),
(32, '2025-03-26 03:31:00.364395', '7', 'Thần dược phòng the nào đáng sợ bậc nhất lịch sử Trung Quốc?', 1, '[{\"added\": {}}]', 8, 1),
(33, '2025-03-26 03:31:50.100405', '8', 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 1, '[{\"added\": {}}]', 8, 1),
(34, '2025-03-26 03:32:49.492549', '9', 'Sẽ giải quyết các vấn đề phát sinh khi tổ chức chính quyền địa phương 2 cấp', 1, '[{\"added\": {}}]', 8, 1),
(35, '2025-03-26 03:33:41.130025', '10', 'Cách nhóm can phạm tổ chức \'bay lắc\' trong nhà tạm giam', 1, '[{\"added\": {}}]', 8, 1),
(36, '2025-03-26 03:33:49.837976', '7', 'Thần dược phòng the nào đáng sợ bậc nhất lịch sử Trung Quốc?', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(37, '2025-03-26 03:33:55.910919', '9', 'Sẽ giải quyết các vấn đề phát sinh khi tổ chức chính quyền địa phương 2 cấp', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(38, '2025-03-26 03:34:37.698644', '11', '3 Pháp luậtThứ ba, 25/3/2025, 19:15 (GMT+7) Bốn dự án có dấu hiệu lãng phí bị đưa vào diện \'theo dõi\'', 1, '[{\"added\": {}}]', 8, 1),
(39, '2025-03-26 03:35:35.638970', '12', 'Ôtô bị trộm 4 bánh', 1, '[{\"added\": {}}]', 8, 1),
(40, '2025-03-26 03:35:57.511358', '11', '3 Pháp luậtThứ ba, 25/3/2025, 19:15 (GMT+7) Bốn dự án có dấu hiệu lãng phí bị đưa vào diện \'theo dõi\'', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(41, '2025-03-26 03:36:04.067766', '10', 'Cách nhóm can phạm tổ chức \'bay lắc\' trong nhà tạm giam', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(42, '2025-03-26 03:36:10.792770', '9', 'Sẽ giải quyết các vấn đề phát sinh khi tổ chức chính quyền địa phương 2 cấp', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(43, '2025-03-26 03:36:14.358968', '8', 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(44, '2025-03-26 03:36:17.877980', '7', 'Thần dược phòng the nào đáng sợ bậc nhất lịch sử Trung Quốc?', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(45, '2025-03-26 03:36:21.752314', '6', 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(46, '2025-03-26 03:36:26.386008', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(47, '2025-03-26 03:36:29.836426', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(48, '2025-03-26 03:37:17.923983', '13', 'Tuyển Việt Nam thắng đậm Lào: Đầu đã xuôi, chờ đuôi lọt', 1, '[{\"added\": {}}]', 8, 1),
(49, '2025-03-26 03:38:02.773130', '14', 'Tuyển Indonesia hạ Bahrain: 3 chìa khóa chiến thắng của Kluivert', 1, '[{\"added\": {}}]', 8, 1),
(50, '2025-03-26 03:38:44.645326', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 1, '[{\"added\": {}}]', 8, 1),
(51, '2025-03-26 03:39:50.465304', '16', 'Báo Trung Quốc: “Bàn thắng của cầu thủ Việt Nam thật đáng kinh ngạc”', 1, '[{\"added\": {}}]', 8, 1),
(52, '2025-03-26 03:40:32.349353', '13', 'Tuyển Việt Nam thắng đậm Lào: Đầu đã xuôi, chờ đuôi lọt', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(53, '2025-03-26 03:40:37.676575', '14', 'Tuyển Indonesia hạ Bahrain: 3 chìa khóa chiến thắng của Kluivert', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(54, '2025-03-26 03:40:42.861130', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(55, '2025-03-26 03:40:46.996198', '16', 'Báo Trung Quốc: “Bàn thắng của cầu thủ Việt Nam thật đáng kinh ngạc”', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(56, '2025-03-26 03:40:55.638651', '8', 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(57, '2025-03-26 03:40:59.486800', '9', 'Sẽ giải quyết các vấn đề phát sinh khi tổ chức chính quyền địa phương 2 cấp', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(58, '2025-03-26 03:41:08.421858', '10', 'Cách nhóm can phạm tổ chức \'bay lắc\' trong nhà tạm giam', 2, '[{\"changed\": {\"fields\": [\"Ordering\", \"Special\"]}}]', 8, 1),
(59, '2025-03-26 03:41:13.651286', '11', '3 Pháp luậtThứ ba, 25/3/2025, 19:15 (GMT+7) Bốn dự án có dấu hiệu lãng phí bị đưa vào diện \'theo dõi\'', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(60, '2025-03-26 03:41:19.639699', '12', 'Ôtô bị trộm 4 bánh', 2, '[{\"changed\": {\"fields\": [\"Ordering\", \"Special\"]}}]', 8, 1),
(61, '2025-03-26 03:41:25.325013', '14', 'Tuyển Indonesia hạ Bahrain: 3 chìa khóa chiến thắng của Kluivert', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(62, '2025-03-26 03:41:29.499448', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(63, '2025-03-26 03:41:38.001459', '6', 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(64, '2025-03-26 03:42:23.598491', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 1, '[{\"added\": {}}]', 8, 1),
(65, '2025-03-26 03:42:32.430756', '7', 'Thần dược phòng the nào đáng sợ bậc nhất lịch sử Trung Quốc?', 2, '[{\"changed\": {\"fields\": [\"Ordering\", \"Special\"]}}]', 8, 1),
(66, '2025-03-26 03:42:35.718890', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(67, '2025-03-26 03:44:48.279646', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(68, '2025-03-26 03:45:08.250851', '13', 'Tuyển Việt Nam thắng đậm Lào: Đầu đã xuôi, chờ đuôi lọt', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(69, '2025-03-26 04:01:57.851728', '5', 'Khoa học', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(70, '2025-03-26 04:02:04.399552', '4', 'Pháp luật', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(71, '2025-03-26 04:02:08.660728', '1', 'Thể thao', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(72, '2025-03-26 04:16:42.401826', '16', 'Báo Trung Quốc: “Bàn thắng của cầu thủ Việt Nam thật đáng kinh ngạc”', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(73, '2025-03-26 04:17:06.843994', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(74, '2025-03-26 04:17:14.311420', '14', 'Tuyển Indonesia hạ Bahrain: 3 chìa khóa chiến thắng của Kluivert', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(75, '2025-03-26 04:36:09.754634', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(76, '2025-03-26 07:12:43.395629', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 8, 1),
(77, '2025-03-26 07:13:39.950167', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(78, '2025-03-27 07:21:16.400656', '8', 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(79, '2025-03-27 07:21:23.512425', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(80, '2025-03-27 07:21:28.976276', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(81, '2025-03-27 07:21:37.335314', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(82, '2025-03-27 07:35:37.355640', '6', 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(83, '2025-03-27 07:36:23.031760', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(84, '2025-03-27 07:40:58.168905', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(85, '2025-03-27 07:41:03.072037', '13', 'Tuyển Việt Nam thắng đậm Lào: Đầu đã xuôi, chờ đuôi lọt', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(86, '2025-03-27 07:41:08.152987', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(87, '2025-03-27 07:41:23.336685', '8', 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(88, '2025-03-27 07:41:28.036822', '6', 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(89, '2025-03-27 07:43:46.881262', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(90, '2025-03-27 07:44:30.411100', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(91, '2025-03-27 07:45:22.367966', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(92, '2025-03-27 07:45:26.953185', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(93, '2025-03-27 07:45:31.215771', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 2, '[]', 8, 1),
(94, '2025-03-27 07:45:37.954323', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(95, '2025-03-27 07:45:42.199863', '16', 'Báo Trung Quốc: “Bàn thắng của cầu thủ Việt Nam thật đáng kinh ngạc”', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(96, '2025-03-27 07:45:48.063101', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(97, '2025-03-27 07:45:59.717983', '3', 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(98, '2025-03-27 07:46:04.934730', '15', 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(99, '2025-03-27 07:46:44.415851', '11', '3 Pháp luậtThứ ba, 25/3/2025, 19:15 (GMT+7) Bốn dự án có dấu hiệu lãng phí bị đưa vào diện \'theo dõi\'', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 8, 1),
(100, '2025-03-27 08:22:52.071748', '4', 'Những thành phố thông minh sử dụng AI để giảm tắc nghẽn', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(101, '2025-03-27 08:23:05.824374', '5', 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(102, '2025-03-27 08:24:07.486606', '4', 'Những thành phố thông minh sử dụng AI để giảm tắc nghẽn', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(103, '2025-03-27 08:24:33.499812', '4', 'Những thành phố thông minh sử dụng AI để giảm tắc nghẽn', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 8, 1),
(104, '2025-03-27 08:25:55.264236', '17', '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 8, 1),
(105, '2025-03-27 14:22:07.322702', '4', 'Pháp luật', 2, '[{\"changed\": {\"fields\": [\"Layout\"]}}]', 7, 1),
(106, '2025-03-28 09:34:50.757614', '2', 'Báo Thanh Niên', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(107, '2025-03-28 09:34:57.127138', '1', 'Vnexpress', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(108, '2025-03-29 03:53:48.490215', '3', 'Dân trí', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(109, '2025-03-29 04:01:21.869341', '4', 'Báo mới', 1, '[{\"added\": {}}]', 9, 1),
(110, '2025-03-29 04:01:44.631738', '3', 'Dân trí', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(111, '2025-03-29 04:10:49.543692', '1', 'Vnexpress', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(112, '2025-03-29 04:11:36.966302', '1', 'Vnexpress', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(113, '2025-03-29 09:10:28.978355', '5', 'Báo tin tức', 1, '[{\"added\": {}}]', 9, 1),
(114, '2025-03-29 09:11:52.695461', '5', 'Báo tin tức', 2, '[]', 9, 1),
(115, '2025-03-29 09:12:10.485906', '1', 'Vnexpress', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(116, '2025-03-29 09:12:34.102942', '5', 'Báo tin tức', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(117, '2025-03-29 09:12:58.875817', '1', 'Vnexpress', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(118, '2025-03-29 09:14:01.136417', '5', 'Báo Quân đội nhân dân', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\", \"Link\"]}}]', 9, 1),
(119, '2025-03-29 09:14:39.692661', '5', 'Báo Quân đội nhân dân', 2, '[]', 9, 1),
(120, '2025-03-29 09:14:50.141047', '5', 'Báo Quân đội nhân dân', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(121, '2025-03-29 09:16:25.325995', '5', 'Báo Quân đội nhân dân', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(122, '2025-03-29 09:19:45.406068', '5', 'Báo Quân đội nhân dân', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(123, '2025-03-29 09:20:17.870779', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 9, 1),
(124, '2025-03-29 09:24:21.680701', '4', 'Báo Quân đội nhân dân', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\", \"Link\"]}}]', 9, 1),
(125, '2025-03-29 13:09:52.507109', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(126, '2025-03-29 13:10:23.312141', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(127, '2025-03-29 13:10:40.308767', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(128, '2025-03-29 13:32:52.504816', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(129, '2025-03-29 13:42:26.457971', '5', 'Báo điện tử', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(130, '2025-04-20 14:21:16.119889', '1', 'Cây thủy sinh', 1, '[{\"added\": {}}]', 12, 1),
(131, '2025-04-20 14:21:30.789390', '2', 'Cây văn phòng', 1, '[{\"added\": {}}]', 12, 1),
(132, '2025-04-20 14:21:49.412846', '3', 'Cây ăn quả', 1, '[{\"added\": {}}]', 12, 1),
(133, '2025-04-20 14:22:04.451431', '1', 'Thủy sinh', 1, '[{\"added\": {}}]', 10, 1),
(134, '2025-04-20 14:22:16.573627', '2', 'Đất nền', 1, '[{\"added\": {}}]', 10, 1),
(135, '2025-04-20 14:23:31.567417', '1', 'Cây sen đá', 1, '[{\"added\": {}}]', 11, 1),
(136, '2025-04-20 14:32:27.958988', '2', 'Sen', 1, '[{\"added\": {}}]', 11, 1),
(137, '2025-04-20 14:34:25.233106', '3', 'Dâu tây', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'news', 'article'),
(7, 'news', 'category'),
(9, 'news', 'feed'),
(6, 'sessions', 'session'),
(12, 'shop', 'category'),
(13, 'shop', 'contact'),
(10, 'shop', 'plantingmethod'),
(11, 'shop', 'product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-16 03:08:27.304218'),
(2, 'auth', '0001_initial', '2025-03-16 03:08:27.634179'),
(3, 'admin', '0001_initial', '2025-03-16 03:08:27.718355'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-16 03:08:27.724541'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-16 03:08:27.730893'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-16 03:08:27.780940'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-16 03:08:27.816154'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-16 03:08:27.827815'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-16 03:08:27.834445'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-16 03:08:27.867184'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-16 03:08:27.872434'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-16 03:08:27.882093'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-16 03:08:27.894184'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-16 03:08:27.903908'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-16 03:08:27.913666'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-16 03:08:27.921319'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-16 03:08:27.931023'),
(18, 'sessions', '0001_initial', '2025-03-16 03:08:27.958869'),
(19, 'news', '0001_initial', '2025-03-16 03:41:42.304612'),
(20, 'news', '0002_article', '2025-03-16 12:58:25.505082'),
(21, 'news', '0003_feed_alter_article_image_alter_article_status', '2025-03-16 14:54:47.896922'),
(22, 'news', '0004_alter_article_options_alter_category_options_and_more', '2025-03-26 03:50:46.172068'),
(23, 'news', '0005_alter_article_status_alter_category_status_and_more', '2025-03-26 03:57:38.532971'),
(24, 'shop', '0001_initial', '2025-04-20 13:37:34.360975'),
(25, 'shop', '0002_contact_alter_product_price_real_and_more', '2025-05-04 01:17:41.647532');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2dleffwbendvfl1ggv1onif6hy7g6fj1', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1u1eSG:nofn4NL0niR-fhlIS2gP1PerjtECAbW1zkM1Kr4d0IU', '2025-04-21 04:51:28.759243'),
('2odnfdvexlzwr13539dvzzs5w7hlipla', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1u1gMa:V1AuvT4IoaV79F4C69Ip-49u2jpERrrCfeHRFh5cuA8', '2025-04-21 06:53:44.774314'),
('3ab53yv2ul20vj7hl5tc4f9f1q0lj5cf', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1uBNYT:G9Sd_cxp41Do42nhcKsRMu6f_Wz6ygxkfM3J3mBMOsY', '2025-05-18 00:50:05.746974'),
('4t7ltb08iqnlqyyc39h3uvvrmsaj6kwy', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1txo7I:nEX0FLgn4JILSlG1_dtf9_aOTnFEjbQ-3YxLCL-fgdM', '2025-04-10 14:21:56.851325'),
('6z7jzv2mf0skktjzh3cj1do06yui9k9v', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1tteO3:pXb26YMrkGTBKPYOBTLCOxjrz_z5282YZxzW9msqc_4', '2025-03-30 03:10:03.874242'),
('a14w91gifmujev3w89utsbfdzn5c8x0m', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1txhY0:UiFNYstlFc0aIFID3bHxkFMAvY8tXRJ9J5F1XIQIpvM', '2025-04-10 07:21:04.264950'),
('a1mq4su4vb16rrqjf3c0ls2ohqxzx00m', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1u5xHM:ptwusrKkUNg6EAzojj922dClnjwvuJyo6Zb6AwsNxjM', '2025-05-03 01:46:00.881711'),
('fx2e2e143gch4zrzz7rvwndjqk8k3yvp', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1u6V9Q:sSkNOa-SevmRy4LXfeT80UWdPKnEfDR3akrtpZHLhdM', '2025-05-04 13:56:04.880229'),
('fzi104qb24x8tq5szv76946cxskaym2l', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1ttmaB:3faFywoOgn75HFg0d0L8cOP7xUEPhsPuKwMWhkKhvkQ', '2025-03-30 11:55:07.288075'),
('lua5mf8uzca67ldf1z8znuvq4kns5bsy', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1txGqQ:ZHGjLgqLvZEQtKX7mBoAh77yla2PoKHwppCZkQjvCp0', '2025-04-09 02:50:18.436853'),
('mumj22wy07sru3g5dh76nbga4oxgkl17', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1tyS8o:ruCehxI4du4UXT1J197f_wS5NPmLXPWDoTipAEFhEP8', '2025-04-12 09:06:10.110200'),
('oxo7moy8jq8tg57tg0x13azx68cq75ny', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1uc26F:iqY0BtukDA_uk4FQM-yKWdpTv5r7ap92jXBmT7dBOlI', '2025-07-30 13:23:07.791777'),
('ryunuwzwpz0byxvcx3aityr92x86ztd1', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1twwlq:wk6JkuWpWy3kBZT_tyZY_bqSt8dUVKE4TDKl5Vstt7Y', '2025-04-08 05:24:14.766475'),
('s2awuuxkp5f56adb7i8dzhdqxom6mack', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1ty60r:Q75LsgP6K44kk38X3iV_Dl5SODsNOu9N0Ha9HAtnv_U', '2025-04-11 09:28:29.199046'),
('tj1sbvimqaxjarhexjed6xnxmurocwso', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1tyVSV:4RAnlEYwAH7LBQ-HeGMDJ2MMP596vZovhCevhrXLbD4', '2025-04-12 12:38:43.427878'),
('uvyz6in5bicikfgh64p9jvx22idaftcn', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1txKvK:PLwm7rmo82OXDIcsouV0v97yl5dqBsQAnhXn2Gq3Zeo', '2025-04-09 07:11:38.374775'),
('v4i9tjhyrmdn7wtebp77mtpwyr4eduza', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1tyMwt:I18T3OUUIFjot_JfzJ7MVm7IGsX9ITmqhN_Ma60AG-g', '2025-04-12 03:33:31.654579'),
('vglrmzi6rnh2baoy8o4s0qjlzkch844a', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1tyWHs:YUL2R1iouZI9wUzav1tQ__I11lCTl4NF9X0mXxFKjOY', '2025-04-12 13:31:48.638125'),
('y9l7k1hltr8qamtbcv3b7rt9pzfecvlu', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1txfzc:CT6TsmVIloA4Jsogl13xv_FAudLIs5p3o0qjAWbutiU', '2025-04-10 05:41:28.404921'),
('zy7nf5r6rx6uh4auxf3ev3h6k8yfpdvc', '.eJxVjDsOwjAQBe_iGlnr-LOGkj5nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxIXocTpd2OKj9x2kO7UbrOMc1uXieWuyIN2Oc4pP6-H-3dQqddvDRydYQ1k0WuwtoBBZGeQE3ttUGWvkIsGRey4UFY0IBAXPOdBgxfvD8x8N4s:1ttp9Y:KnolgD7Pc5YmKj8NM-bquP5JVxaOUBLqeizZEACRK1k', '2025-03-30 14:39:48.744920');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_article`
--

CREATE TABLE `news_article` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_article`
--

INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`) VALUES
(3, 'Argentina vùi dập Brazil tại vòng loại World Cup 2026', 'argentina-vui-dap-brazil-tai-vong-loai-world-cup-2026', 'published', 1, 1, '2025-03-23 00:00:00.000000', '<p>Argentina tr&igrave;nh diễn sức mạnh &aacute;p đảo v&agrave; đ&aacute;nh bại Brazil 4-1 ở trận cầu t&acirc;m điểm v&ograve;ng loại World Cup 2026 khu vực Nam Mỹ, khẳng định vị thế đương kim v&ocirc; địch thế giới.</p>\r\n<p><br>Trận &ldquo;si&ecirc;u kinh điển Nam Mỹ&rdquo; giữa Argentina v&agrave; Brazil đ&atilde; diễn ra với thế trận một chiều bất ngờ khi c&aacute;c học tr&ograve; của HLV Lionel Scaloni &aacute;p đảo to&agrave;n diện v&agrave; gi&agrave;nh chiến thắng đậm 4-1, d&ugrave; đối thủ tung ra đội h&igrave;nh nhiều ng&ocirc;i sao trẻ triển vọng.</p>\r\n<p>Ngay từ ph&uacute;t thứ 4, Argentina đ&atilde; c&oacute; b&agrave;n mở tỷ số. Julian Alvarez nhanh ch&acirc;n dứt điểm v&agrave;o ch&iacute;nh giữa khung th&agrave;nh sau một t&igrave;nh huống lộn xộn trong v&ograve;ng cấm, đưa đội chủ nh&agrave; vượt l&ecirc;n. Tới ph&uacute;t 12, Enzo Fernandez n&acirc;ng tỷ số l&ecirc;n 2-0 với một pha chớp cơ hội chuẩn x&aacute;c sau khi b&oacute;ng bật ra ngay trước khu vực 5m50.</p>\r\n<p>Trực tiếp Argentina 4-1 Brazil: Argentina &aacute;p đảo-610765<br>Enzo Fernandez ghi b&agrave;n thắng thứ 2 cho ĐT Argentina<br>Brazil v&ugrave;ng l&ecirc;n t&igrave;m b&agrave;n gỡ v&agrave; được tưởng thưởng ở ph&uacute;t 26. Matheus Cunha tận dụng sai lầm của h&agrave;ng thủ Argentina, cướp b&oacute;ng ngay trước v&ograve;ng cấm rồi dứt điểm gọn g&agrave;ng r&uacute;t ngắn tỷ số xuống 1-2. Nhưng hi vọng của Selecao chỉ tồn tại ngắn ngủi.</p>\r\n<p>Chỉ 11 ph&uacute;t sau, Argentina t&aacute;i lập c&aacute;ch biệt hai b&agrave;n. Enzo Fernandez treo b&oacute;ng như đặt từ c&aacute;nh phải, để Alexis Mac Allister băng v&agrave;o dứt điểm gọn g&agrave;ng trong v&ograve;ng cấm n&acirc;ng tỷ số l&ecirc;n 3-1 ở ph&uacute;t 37. D&ugrave; Bento chơi xuất sắc với nhiều pha cứu thua li&ecirc;n tiếp, thủ m&ocirc;n n&agrave;y vẫn kh&ocirc;ng thể cứu nổi h&agrave;ng thủ Brazil chơi lỏng lẻo.</p>\r\n<p>Sang hiệp hai, HLV Dorival Junior của Brazil thực hiện h&agrave;ng loạt thay đổi nhằm cứu v&atilde;n thế trận. Tuy nhi&ecirc;n, thế c&ocirc;ng yếu ớt c&ugrave;ng với sự thiếu gắn kết khiến Brazil kh&ocirc;ng tạo ra được kh&aacute;c biệt r&otilde; rệt. Trong khi đ&oacute;, Argentina vẫn chơi kỷ luật v&agrave; đầy t&iacute;nh s&aacute;t thương.</p>\r\n<p>Pause</p>\r\n<p><br>00:00<br>00:20<br>01:46<br>Mute</p>\r\n<p>Trực tiếp Argentina 4-1 Brazil: Argentina &aacute;p đảo 610778<br>Argentina đ&atilde; ch&iacute;nh thức gi&agrave;nh v&eacute; tham dự World Cup 2026<br>Ph&uacute;t 71, Giuliano Simeone - con trai của HLV Diego Simeone - ghi dấu ấn với b&agrave;n thắng ấn định tỷ số 4-1. Từ một t&igrave;nh huống phối hợp nhanh, anh dứt điểm bật x&agrave; rồi bay v&agrave;o lưới trong sự bất lực của h&agrave;ng thủ Brazil.</p>\r\n<p>Thắng đậm 4-1, Argentina kh&ocirc;ng chỉ phục th&ugrave; th&agrave;nh c&ocirc;ng trận thua trước Brazil trong qu&aacute; khứ m&agrave; c&ograve;n củng cố ng&ocirc;i đầu bảng v&ograve;ng loại khu vực Nam Mỹ với phong độ ổn định. Trong khi đ&oacute;, Brazil tiếp tục trượt d&agrave;i v&agrave; chịu sức &eacute;p lớn khi thi đấu thiếu ổn định v&agrave; li&ecirc;n tiếp mất điểm.</p>\r\n<p>Đ&acirc;y l&agrave; một trong những chiến thắng ấn tượng nhất của Argentina trước đại k&igrave;nh địch trong nhiều năm gần đ&acirc;y, đồng thời l&agrave; lời khẳng định đanh th&eacute;p cho tham vọng bảo vệ ng&ocirc;i v&ocirc; địch tại World Cup 2026.</p>', 'news/images/articles/f8682b4a914c4fc4b6b2b6e07f0522a9.jpg', 1),
(4, 'Những thành phố thông minh sử dụng AI để giảm tắc nghẽn', 'nhung-thanh-pho-thong-minh-su-dung-ai-de-giam-tac-nghen', 'published', 1, 0, '2025-03-28 08:24:28.000000', '<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu ở Li&ecirc;n minh ch&acirc;u &Acirc;u (EU) đang sử dụng AI để điều tiết lưu th&ocirc;ng tại những th&agrave;nh phố lớn, gi&uacute;p m&ocirc;i trường đ&ocirc; thị trở n&ecirc;n an to&agrave;n v&agrave; xanh hơn.</p>\r\n<p><img src=\"https://i1-vnexpress.vnecdn.net/2025/03/25/VNE-AI-1742891466-7436-1742891642.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=a7SgD-CEW8G_fe9OnVkIOw\"></p>\r\n<p>Ở ga t&agrave;u Las Matas tại th&agrave;nh phố Las Rozas ph&iacute;a bắc thủ đ&ocirc; Madrid của T&acirc;y Ban Nha, cuộc sống diễn ra như mọi khi. &Acirc;m thanh của đường cao tốc vọng đến khi t&agrave;u v&agrave;o ga. Ở v&ograve;ng xuyến ph&iacute;a trước nh&agrave; ga, một người b&aacute;n dạo đang rao h&agrave;ng trong l&uacute;c những người đi bộ hối hả bước qua giao lộ đ&ocirc;ng đ&uacute;c. Tất cả dường như giống một cảnh tượng b&igrave;nh thường ở v&ugrave;ng ngoại &ocirc; T&acirc;y Ban Nha. Tuy nhi&ecirc;n, kh&aacute;ch qua đường kh&ocirc;ng hề biết những camera th&ocirc;ng minh đang lặng lẽ quan s&aacute;t v&agrave; ph&acirc;n t&iacute;ch người đi bộ v&agrave; luồng giao th&ocirc;ng nhằm t&igrave;m hiểu c&aacute;ch sử dụng kh&ocirc;ng gian v&agrave; điều chỉnh tốt hơn, theo Phys.org.</p>\r\n<p>Quy hoạch th&agrave;nh phố th&acirc;n thiện với người d&ugrave;ng</p>\r\n<p>Las Rozas l&agrave; một trong những địa điểm thử nghiệm đối với c&aacute;c nh&agrave; nghi&ecirc;n cứu của s&aacute;ng kiến mang t&ecirc;n AMIGOS, sử dụng c&ocirc;ng nghệ mới như tr&iacute; tuệ nh&acirc;n tạo (AI) v&agrave; ph&acirc;n t&iacute;ch dữ liệu nhằm cải thiện chất lượng cuộc sống ở th&agrave;nh phố đ&ocirc;ng d&acirc;n. S&aacute;ng kiến n&agrave;y hỗ trợ chặt chẽ Sứ mệnh Th&agrave;nh phố của EU, nhắm tới trợ gi&uacute;p 112 th&agrave;nh phố ch&acirc;u &Acirc;u trở n&ecirc;n trung h&ograve;a kh&iacute; hậu v&agrave; trở th&agrave;nh th&agrave;nh phố th&ocirc;ng minh v&agrave;o năm 2030, đ&oacute;ng vai tr&ograve; như những trung t&acirc;m đổi mới s&aacute;ng tạo để biến đổi đ&ocirc; thị bền vững.</p>\r\n<p>Camera sử dụng bởi đội ngũ AMIGOS được thiết kế bởi Viện C&ocirc;ng nghệ &Aacute;o v&agrave; dựa v&agrave;o AI. Điều n&agrave;y cho ph&eacute;p họ xử l&yacute; nhanh ch&oacute;ng thước phim trong nhiều th&aacute;ng v&agrave; x&acirc;y dựng một bức tranh ch&iacute;nh x&aacute;c về c&aacute;ch sử dụng kh&ocirc;ng gian trong th&agrave;nh phố. Th&ocirc;ng tin thu thập được c&oacute; thể gi&uacute;p những nh&agrave; quy hoạch th&agrave;nh phố thiết kế lại kh&ocirc;ng gian c&ocirc;ng cộng theo t&igrave;nh h&igrave;nh thực tế. \"Dự &aacute;n sẽ gi&uacute;p trả lời những c&acirc;u hỏi thực sự cơ bản như \'T&ocirc;i c&oacute; thể để con tự đi học an to&agrave;n hay kh&ocirc;ng\'\", Martin Krekeler, nh&agrave; chức tr&aacute;ch ở th&agrave;nh phố Hamburg, Đức, điều phối đội ngũ AMIGOS, cho biết.</p>\r\n<p>Địa điểm thử nghiệm</p>\r\n<p>Ở bước đầu ti&ecirc;n, c&aacute;c nh&agrave; nghi&ecirc;n cứu hướng tới cải thiện độ an to&agrave;n v&agrave; thoải m&aacute;i của cư d&acirc;n th&agrave;nh phố tại khu phố Las Matas, nơi một đường cao tốc tới Madrid giao nhau với ga t&agrave;u, b&atilde;i đỗ xe v&agrave; nhiều con đường nhỏ. \"Th&agrave;nh phố của ch&uacute;ng t&ocirc;i vấp phải một số th&aacute;ch thức\", Nuria Blanco Caballero, người l&agrave;m việc cho cơ quan đổi mới s&aacute;ng tạo Las Rozas Innova, chia sẻ. Las Rozas rất d&agrave;n trải. Ba đường cao tốc chạy ngang qua th&agrave;nh phố v&agrave; c&oacute; nhiều luồng giao th&ocirc;ng đến v&agrave; đi từ Madrid, do đ&oacute; tương t&aacute;c giữa xe cộ v&agrave; người đi bộ rất lớn, đặt ra nguy cơ.</p>\r\n<p>Nh&agrave; chức tr&aacute;ch đang l&ecirc;n kế hoạch cải tạo ho&agrave;n to&agrave;n khu vực xung quanh ga t&agrave;u Las Matas, bao gồm nhiều cải tiến an to&agrave;n, khu vực đỗ xe cho xe đạp v&agrave; xe m&aacute;y điện, trạm sạc điện v&agrave; dịch vụ đi chung xe. Th&ocirc;ng tin thu thập bởi camera của nh&oacute;m nghi&ecirc;n cứu sẽ được kết hợp với phản hồi nhận được th&ocirc;ng qua khảo s&aacute;t địa phương để cung cấp cho thiết kế cải tạo. \"Một điều ch&uacute;ng t&ocirc;i nhận thấy l&agrave; người d&acirc;n kh&ocirc;ng phải lu&ocirc;n sử dụng vạch sang đường, c&oacute; thể dẫn tới t&igrave;nh huống nguy hiểm\", Blanco Caballero cho biết.</p>\r\n<p>Hiện nay, Las Rozas đang thiết kế lại khu vực với r&agrave;o chắn an to&agrave;n bằng b&ecirc; t&ocirc;ng, vỉa h&egrave; mới v&agrave; vạch kẻ đường r&otilde; hơn. Đ&acirc;y l&agrave; một v&iacute; dụ tốt về c&aacute;ch c&ocirc;ng nghệ mới c&oacute; thể gi&uacute;p c&aacute;c th&agrave;nh phố đưa ra quyết định th&ocirc;ng minh ph&ugrave; hợp với nhu cầu của người d&acirc;n.</p>\r\n<p>AI trong th&agrave;nh phố</p>\r\n<p>Camera AI tương tự ở Las Rozas cũng đang được triển khai tại nhiều th&agrave;nh phố ch&acirc;u &Acirc;u kh&aacute;c trong s&aacute;ng kiến độc lập mang t&ecirc;n ELABORATOR, điều phối bởi tiến sĩ Angelos Amditis, gi&aacute;m đốc nghi&ecirc;n cứu v&agrave; ph&aacute;t triển của Viện hệ thống m&aacute;y t&iacute;nh truyền th&ocirc;ng tại Đại học C&ocirc;ng nghệ Quốc gia Athens. V&iacute; dụ, ở Copenhagen, họ đang sử dụng camera th&ocirc;ng minh để ph&acirc;n t&iacute;ch lưu lượng giao th&ocirc;ng v&agrave; kiểm tra t&igrave;nh huống tai nạn xảy ra hoặc su&yacute;t xảy ra.</p>\r\n<p>Quận Issy-les-Moulineaux ở ngoại &ocirc; Paris của Ph&aacute;p đ&atilde; lắp đặt hệ thống đ&egrave;n giao th&ocirc;ng chủ động theo s&aacute;ng kiến. Dựa tr&ecirc;n người sử dụng giao lộ v&agrave; mức độ đ&ocirc;ng đ&uacute;c, nhiều kh&ocirc;ng gian được tạo ra cho người đi xe đạp v&agrave; l&aacute;i xe được cảnh b&aacute;o. Hệ thống sử dụng Ai để quản l&yacute; tự động.</p>\r\n<p>Ở cả hai s&aacute;ng kiến, mục ti&ecirc;u của nh&oacute;m nghi&ecirc;n cứu l&agrave; đặt ra v&iacute; dụ cho c&aacute;c th&agrave;nh phố kh&aacute;c noi theo. Đội ngũ AMIGOS đang l&agrave;m việc chặt chẽ với 10 th&agrave;nh phố: Gabrova (Bulgaria), Lappeenranta (Phần Lan), Hamburg (Đức), Reykjavik (Iceland), Nazareth (Israel), Bologna (Italy), Jurmala (Latvia), Las Rozas (T&acirc;y Ban Nha), Ankara v&agrave; Istanbul (Thổ Nhĩ Kỳ). Ngo&agrave;i ra, họ đang l&agrave;m việc với 5 th&agrave;nh phố kh&aacute;c để m&ocirc; phỏng kết quả đạt được ở những th&agrave;nh phố lớn: Laval ở Ph&aacute;p, Frankfurt v&agrave; Wiesbaden ở Đức, Um-al Fahm ở Israel v&agrave; Gozo ở Malta.</p>\r\n<p>Trong trường hợp nh&oacute;m nghi&ecirc;n cứu ELABORATOR, c&oacute; 6 th&agrave;nh phố họ đang l&agrave;m việc để cải thiện mức độ thoải m&aacute;i v&agrave; an to&agrave;n của đời sống đ&ocirc; thị, bao gồm Copenhagen (Đan Mạch), Helsinki (Phần Lan), Issey-les-Moulineaux (Ph&aacute;p), Trikala (Hy Lạp), Milan (Italy) v&agrave; Zaragoza (T&acirc;y Ban Nha). 6 th&agrave;nh phố kh&aacute;c l&agrave; Split (Croatia), Liberec (Cộng h&ograve;a Czech), Ioannina (Hy Lạp), Kru&scaron;evac (Serbia), Velenje (Slovenia) v&agrave; Lund (Thụy Điển) sẽ học hỏi b&agrave;i học từ giai đoạn đầu ti&ecirc;n.</p>\r\n<p>AI v&agrave; xử l&yacute; dữ liệu l&agrave; nguồn t&agrave;i nguy&ecirc;n qu&yacute; gi&aacute; đối với cả hai nh&oacute;m nghi&ecirc;n cứu. Cư d&acirc;n địa phương cũng được th&ocirc;ng tin về c&aacute;c hoạt động đang tiến h&agrave;nh.</p>', 'news/images/articles/2122a264d3b742a2a3638e2c16bbc927.JPG', 5),
(5, 'Nguyên tố của thần Mặt trời đang làm đau đầu các nhà khoa học', 'nguyen-to-cua-than-mat-troi-dang-lam-dau-dau-cac-nha-khoa-hoc', 'draft', 2, 0, '2025-03-26 00:00:00.000000', '<p>Helium l&agrave; nguy&ecirc;n tố đơn giản trong bảng tuần ho&agrave;n được đặt t&ecirc;n theo thần Mặt trời. Thế nhưng, l&yacute; thuyết hiện đại v&agrave; c&aacute;c th&iacute; nghiệm về n&oacute; lại đưa ra kết quả kh&aacute;c nhau rất kh&oacute; hiểu.</p>\r\n<p>Helium l&agrave; một trong những nguy&ecirc;n tố đơn giản nhất của tự nhi&ecirc;n, chỉ phức tạp hơn hidro. Thế nhưng, nguy&ecirc;n tố của thần Mặt trời đang khiến c&aacute;c nh&agrave; khoa học phải đau đầu sau khi nghi&ecirc;n cứu mới cho thấy c&aacute;c proton v&agrave; neutron trong nguy&ecirc;n tử heli kh&ocirc;ng hoạt động giống như tr&ecirc;n l&yacute; thuyết. Sự kh&ocirc;ng ph&ugrave; hợp giữa c&aacute;c dự đo&aacute;n l&yacute; thuyết về c&aacute;ch c&aacute;c hạt n&agrave;y hoạt động v&agrave; những g&igrave; đang xảy ra với nguy&ecirc;n tử heli c&oacute; thể gợi mở cho vật l&yacute; mới ngo&agrave;i M&ocirc; h&igrave;nh Chuẩn, m&ocirc; h&igrave;nh l&yacute; thuyết vốn bao tr&ugrave;m trong việc m&ocirc; tả thế giới c&aacute;c hạt hạ nguy&ecirc;n tử.</p>\r\n<p><br>Trong nghi&ecirc;n cứu được c&ocirc;ng bố v&agrave;o th&aacute;ng 4 tr&ecirc;n tạp ch&iacute; Physical Review Letters, c&aacute;c nh&agrave; vật l&yacute; đ&atilde; k&iacute;ch hoạt một khối chứa nguy&ecirc;n tử heli bằng c&aacute;c electron để đẩy hạt nh&acirc;n heli v&agrave;o trạng th&aacute;i k&iacute;ch th&iacute;ch, khiến hạt nh&acirc;n tạm thời phồng l&ecirc;n, giống như lồng ngực đang h&iacute;t v&agrave;o. Nh&oacute;m nghi&ecirc;n cứu ph&aacute;t hiện ra rằng phản ứng của c&aacute;c proton v&agrave; neutron trong hạt nh&acirc;n đối với ch&ugrave;m electron kh&aacute;c biệt đ&aacute;ng kể so với những g&igrave; được x&aacute;c nhận bởi l&yacute; thuyết vốn được c&aacute;c nh&agrave; khoa học đ&atilde; đ&uacute;c kết sau khi thực hiện nhiều th&iacute; nghiệm từ nhiều thập ni&ecirc;n trước.</p>\r\n<p>Nghi&ecirc;n cứu mới chứng minh rằng sự kh&ocirc;ng ph&ugrave; hợp n&agrave;y l&agrave; c&oacute; thật, kh&ocirc;ng phải l&agrave; tạo t&aacute;c của sai số trong thực nghiệm. Thay v&agrave;o đ&oacute;, c&oacute; vẻ như c&aacute;c nh&agrave; khoa học trước đ&acirc;y đơn giản l&agrave; kh&ocirc;ng nắm bắt đủ vững chắc về vật l&yacute; năng lượng thấp chi phối tương t&aacute;c giữa c&aacute;c hạt trong hạt nh&acirc;n.</p>\r\n<p><img src=\"https://e.khoahoc.tv/photos/image/2023/06/29/hat-nhan-nguyen-tu-heli.jpg\" alt=\"M&ocirc; phỏng hạt nh&acirc;n nguy&ecirc;n tử heli.\"><br>M&ocirc; phỏng hạt nh&acirc;n nguy&ecirc;n tử heli.</p>\r\n<p><br>Hạt nh&acirc;n nguy&ecirc;n tử heli phổ biến bao gồm hai proton v&agrave; hai neutron. C&aacute;c phương tr&igrave;nh m&ocirc; tả h&agrave;nh trạng của hạt nh&acirc;n heli được sử dụng cho tất cả c&aacute;c loại vật chất hạt nh&acirc;n v&agrave; neutron, v&igrave; vậy việc giải quyết sự kh&aacute;c biệt c&oacute; thể gi&uacute;p ch&uacute;ng ta hiểu c&aacute;c hiện tượng kỳ lạ kh&aacute;c, chẳng hạn như sự hợp nhất của c&aacute;c sao neutron.</p>\r\n<p>Sự kh&aacute;c biệt giữa l&yacute; thuyết v&agrave; thực nghiệm lần đầu ti&ecirc;n trở n&ecirc;n r&otilde; r&agrave;ng v&agrave;o năm 2013 sau c&aacute;c t&iacute;nh to&aacute;n về hạt nh&acirc;n heli do nh&oacute;m của nh&agrave; khoa học Sonia Bacca, khi đ&oacute; đang l&agrave;m việc tại m&aacute;y gia tốc hạt TRIUMF quốc gia của Canada (hiện Bacca l&agrave; Gi&aacute;o sư tại Đại học Johannes Gutenberg Mainz &ndash; Đức v&agrave; cũng l&agrave; đồng t&aacute;c giả của nghi&ecirc;n cứu mới). Bacca v&agrave; c&aacute;c đồng nghiệp đ&atilde; sử dụng c&aacute;c kỹ thuật n&acirc;ng cấp để t&iacute;nh to&aacute;n c&aacute;ch c&aacute;c proton v&agrave; neutron trong hạt nh&acirc;n heli hoạt động khi bị k&iacute;ch th&iacute;ch bởi một ch&ugrave;m electron, mang lại c&aacute;c số liệu kh&aacute;c biệt đ&aacute;ng kể so với dữ liệu thực nghiệm trước. Tuy nhi&ecirc;n, dữ liệu thực nghiệm trước được sử dụng để so s&aacute;nh c&oacute; từ những năm 1980 v&agrave; được ghi lại với độ ch&iacute;nh x&aacute;c kh&ocirc;ng đạt chuẩn ng&agrave;y nay.</p>\r\n<p>T&aacute;c giả ch&iacute;nh của nghi&ecirc;n cứu mới Simon Kegel, một nh&agrave; vật l&yacute; hạt nh&acirc;n đ&atilde; nghi&ecirc;n cứu hạt nh&acirc;n heli cho luận &aacute;n tiến sĩ của m&igrave;nh tại Đại học Johannes Gutenberg Mainz, đ&atilde; chỉ ra rằng c&aacute;c thiết bị m&agrave; trường đại học của &ocirc;ng đang sở hữu c&oacute; thể thực hiện lại c&aacute;c ph&eacute;p đo n&agrave;y với độ ch&iacute;nh x&aacute;c rất cao.</p>\r\n<p><br>C&agrave;ng hiện đại c&agrave;ng hại điện</p>\r\n<p>Lực giữ c&aacute;c hạt hạ nguy&ecirc;n tử trong hạt nh&acirc;n một nguy&ecirc;n tử li&ecirc;n kết lại với nhau được gọi l&agrave; lực tương t&aacute;c mạnh - nhưng v&ocirc; số hiệu ứng bắt nguồn từ c&aacute;c kh&iacute;a cạnh của c&aacute;c tương t&aacute;c n&agrave;y l&agrave;m phức tạp th&ecirc;m c&aacute;c t&iacute;nh to&aacute;n về c&aacute;ch c&aacute;c hạt n&agrave;y tương t&aacute;c. C&aacute;c nh&agrave; l&yacute; thuyết đ&atilde; đơn giản h&oacute;a vấn đề bằng c&aacute;ch sử dụng \"l&yacute; thuyết trường hiệu quả\" (EFT), l&yacute; thuyết xấp xỉ nhiều lực t&aacute;c dụng l&ecirc;n c&aacute;c hạt, giống như file ảnh phổ biến dạng jpeg gồm xấp xỉ tất cả dữ liệu trong file h&igrave;nh ảnh kh&ocirc;ng n&eacute;n. Phi&ecirc;n bản n&acirc;ng cấp của EFT đưa ra kết quả gần đ&uacute;ng hơn về c&aacute;c hiệu ứng l&agrave;m phức tạp c&aacute;c m&ocirc; phỏng lực tương t&aacute;c mạnh trong hạt nh&acirc;n. Tuy nhi&ecirc;n, khi c&aacute;c nh&agrave; nghi&ecirc;n cứu xử l&yacute; c&aacute;c con số, họ nhận thấy c&aacute;c dự đo&aacute;n l&yacute; thuyết mới thậm ch&iacute; c&ograve;n kh&aacute;c xa với c&aacute;c hiện tượng quan s&aacute;t được so với c&aacute;c ph&eacute;p t&iacute;nh gần đ&uacute;ng th&ocirc; sơ trước đ&acirc;y.</p>\r\n<p>Để kiểm tra xem c&oacute; bao nhi&ecirc;u sự kh&aacute;c biệt c&oacute; thể l&agrave; do sai số của th&iacute; nghiệm, Kegel v&agrave; đội Mainz đ&atilde; sử dụng cơ sở m&aacute;y gia tốc điện tử MAMI tại trường Đại học để bắn một ch&ugrave;m electron v&agrave;o một vật chứa nguy&ecirc;n tử heli. C&aacute;c electron đẩy hạt nh&acirc;n heli v&agrave;o trạng th&aacute;i k&iacute;ch th&iacute;ch được m&ocirc; tả l&agrave; một đơn cực đẳng hướng. Bacca m&ocirc; tả: &ldquo;H&atilde;y tưởng tượng hạt nh&acirc;n giống như một quả cầu thay đổi b&aacute;n k&iacute;nh, phồng l&ecirc;n v&agrave; co lại, giữ t&iacute;nh đối xứng h&igrave;nh cầu&rdquo;.</p>\r\n<p>Hai tham số đ&atilde; cải thiện độ ch&iacute;nh x&aacute;c của c&aacute;c ph&eacute;p đo - mật độ của c&aacute;c nguy&ecirc;n tử heli trong vật chứa v&agrave; cường độ của ch&ugrave;m electron năng lượng thấp. Kegel cho biết cả hai đều c&oacute; thể đạt gi&aacute; trị rất cao tại cơ sở của Đại học Mainz.</p>\r\n<p>Trước khi họ ho&agrave;n th&agrave;nh việc ph&acirc;n t&iacute;ch dữ liệu, r&otilde; r&agrave;ng l&agrave; bộ dữ liệu mới n&agrave;y sẽ kh&ocirc;ng giải quyết được vấn đề. C&aacute;c nh&agrave; khoa học vẫn chưa biết nguồn gốc của sự kh&aacute;c biệt giữa l&yacute; thuyết v&agrave; thực nghiệm. Nhưng Bacca gợi &yacute; rằng \"c&aacute;c phần tương t&aacute;c bị thiếu hoặc kh&ocirc;ng được hiệu chỉnh tốt\" c&oacute; thể l&agrave; nguy&ecirc;n nh&acirc;n.</p>\r\n<p>Sau khi M&aacute;y gia tốc si&ecirc;u dẫn phục hồi năng lượng Mainz (MESA) si&ecirc;u tối t&acirc;n đi v&agrave;o hoạt động v&agrave;o năm 2024, n&oacute; sẽ tạo ra c&aacute;c ch&ugrave;m electron c&oacute; cường độ lớn hơn so với m&aacute;y gia tốc hiện tại, mặc d&ugrave; vẫn ở mức năng lượng thấp cần thiết cho loại th&iacute; nghiệm n&agrave;y. Cường độ cao hơn của MESA sẽ cho ph&eacute;p c&aacute;c ph&eacute;p đo c&oacute; độ ch&iacute;nh x&aacute;c cao hơn nữa v&agrave; một c&aacute;i nh&igrave;n thậm ch&iacute; c&ograve;n chi tiết hơn về bi&ecirc;n giới năng lượng thấp của M&ocirc; h&igrave;nh Chuẩn.</p>', 'news/images/articles/7f547802fa0444ed95d54b41a014cd22.jpg', 5),
(6, 'Demodex - Loài rận chuyên ký sinh trên... da mặt người', 'demodex-loai-ran-chuyen-ky-sinh-tren-da-mat-nguoi', 'published', 3, 0, '2025-03-26 00:00:00.000000', '<p>Bạn kh&ocirc;ng cần cảm thấy ngứa ng&aacute;y khi đọc th&ocirc;ng tin n&agrave;y. Theo c&aacute;c nh&agrave; nghi&ecirc;n cứu, lo&agrave;i rận Demodex dường như kh&ocirc;ng g&acirc;y hại với cơ thể người v&agrave; c&oacute; lẽ bất kỳ ai đang sống cũng đều c&oacute; ch&uacute;ng ở tr&ecirc;n mặt m&igrave;nh.</p>\r\n<p>Phải biết c&aacute;ch diệt k&yacute; sinh tr&ugrave;ng tr&ecirc;n da<br>Những ph&aacute;t hiện \"g&acirc;y shock\" về cơ thể bạn<br>Lo&agrave;i rận chuy&ecirc;n \"đi vệ sinh\" tr&ecirc;n... da mặt người<br>M&ocirc; tả chung<br>Những đặc điểm ri&ecirc;ng<br>Lợi hay hại?<br>\"Y&ecirc;u\" con người<br>Nguồn gốc<br>Lời kết<br>Điều đầu ti&ecirc;n l&agrave; bạn kh&ocirc;ng nh&igrave;n thấy ch&uacute;ng bằng mắt thường, v&igrave; c&oacute; như vậy th&igrave; ch&uacute;ng mới c&oacute; thể sống thoải m&aacute;i v&agrave; tự do tr&ecirc;n \"mặt tiền\" của mỗi người. Nhưng thực ra nếu \"cố gắng\", với sự trợ gi&uacute;p của k&iacute;nh l&uacute;p hoặc k&iacute;nh hiển vi, bạn c&oacute; thể thấy lo&agrave;i bọ c&oacute; h&igrave;nh dạng như giun hoặc s&acirc;u n&agrave;y đang b&ograve; dưới lớp da của m&igrave;nh, như clip sau đ&acirc;y.</p>\r\n<p><br>M&ocirc; tả chung<br>Demodex lần đầu được ph&aacute;t hiện bởi Gustav Simon, một b&aacute;c sĩ da liễu người Đức, v&agrave;o năm 1842. Gần 200 năm sau, c&aacute;c nh&agrave; khoa học vẫn kh&ocirc;ng ho&agrave;n to&agrave;n chắc chắn tại sao những con rệp b&iacute; ẩn n&agrave;y tồn tại v&agrave; sống tr&ecirc;n động vật c&oacute; v&uacute;. Demodex v&agrave; động vật c&oacute; v&uacute; chỉ đơn giản l&agrave; tiến h&oacute;a c&ugrave;ng nhau theo thời gian, theo Michelle Trautwein, nh&agrave; c&ocirc;n tr&ugrave;ng học tại Viện Khoa học California (Mỹ).</p>\r\n<p>\"Demodex kh&ocirc;ng chỉ ở tr&ecirc;n da người, m&agrave; ở tất cả c&aacute;c lo&agrave;i động vật c&oacute; v&uacute;. Ch&uacute;ng tiến h&oacute;a tr&ecirc;n c&aacute;c lo&agrave;i động vật c&oacute; v&uacute; sơ khai v&agrave; tiếp tục c&ugrave;ng tồn tại\", Trautwein n&oacute;i với Insider.</p>\r\n<p>Demodex l&agrave; t&ecirc;n gọi của một loại k&yacute; sinh tr&ugrave;ng (hay c&ograve;n gọi l&agrave; bọ ve) ch&uacute;ng l&agrave; một trong số h&agrave;ng tỷ k&yacute; sinh tr&ugrave;ng, Demodex c&oacute; k&iacute;ch thước nhỏ nhất trong số loại k&yacute; sinh tr&ugrave;ng v&igrave; vậy rất kh&oacute; c&oacute; thể nh&igrave;n thấy bằng mắt thường. Lo&agrave;i k&yacute; sinh tr&ugrave;ng n&agrave;y th&iacute;ch cư ngụ những v&ugrave;ng thuộc c&aacute;c bộ phận nang l&ocirc;ng v&agrave; tuyến b&atilde; nhờn như: da mặt, mũi, tr&aacute;n, cằm, mắt,&hellip;</p>\r\n<p>C&oacute; 2 lo&agrave;i rận \"th&iacute;ch\" sống tr&ecirc;n mặt người l&agrave; Demodex folliculorum (D. folliculorum) v&agrave; D. brevis (c&ugrave;ng gọi Demodex). Tuy c&oacute; vẻ ngo&agrave;i giống s&acirc;u, nhưng ch&uacute;ng thực sự l&agrave; những lo&agrave;i gi&aacute;p x&aacute;c, giống như c&ocirc;n tr&ugrave;ng hoặc t&ocirc;m cua. Họ h&agrave;ng gần nhất của ch&uacute;ng l&agrave; nhện v&agrave; ve.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt ngườiPhần đầu của rận Demodex folliculorum c&oacute; 8 ch&acirc;n</p>\r\n<p>Cấu tạo của Demodex gồm phần đầu với 8 c&aacute;i ch&acirc;n ngắn v&agrave; mập chia đều ra 2 b&ecirc;n, phần th&acirc;n v&agrave; đu&ocirc;i c&oacute; k&iacute;ch thước bằng nhau v&agrave; k&eacute;o d&agrave;i th&agrave;nh một đoạn lớn khiến ch&uacute;ng nh&igrave;n giống như s&acirc;u. Nhưng do sự bất đối xứng qu&aacute; lớn như vậy n&ecirc;n rận Demodex di chuyển rất chậm. Dưới k&iacute;nh hiển vi, Demodex tr&ocirc;ng như đang bơi trong c&aacute;c \"bể\" dầu mỡ nằm dưới lớp da con người.</p>\r\n<p>2 lo&agrave;i Demodex n&agrave;y được ph&acirc;n biệt chủ yếu qua vị tr&iacute; sống. Lo&agrave;i D. folliculorum th&iacute;ch ngụ cư gần bề mặt da, trong c&aacute;c lỗ ch&acirc;n l&ocirc;ng hoặc ch&acirc;n t&oacute;c. C&ograve;n D. brevis sống ở lớp s&acirc;u hơn, ph&iacute;a dưới biểu b&igrave; của da, b&ecirc;n trong tuyến nhờn (dầu) bao quanh ch&acirc;n l&ocirc;ng của người.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>D. brevis sống trong c&aacute;c tuyến nhờn (sebaceious gland) của con người</p>\r\n<p>So với c&aacute;c phần kh&aacute;c của cơ thể, lỗ ch&acirc;n l&ocirc;ng ở mặt người c&oacute; k&iacute;ch thước rộng hơn v&agrave; cũng c&oacute; nhiều tuyến nhờn. Đ&oacute; cũng l&agrave; l&yacute; do m&agrave; rận Demodex ưa k&yacute; sinh tại đ&acirc;y hơn c&aacute;c v&ugrave;ng kh&aacute;c. Tuy nhi&ecirc;n v&igrave; một số l&yacute; do \"nhạy cảm\" n&agrave;o đ&oacute;, Demodex cũng được t&igrave;m thấy quanh v&ograve;ng một của phụ nữ cũng như khu vực 18+.</p>\r\n<p>Những đặc điểm ri&ecirc;ng<br>Tr&ecirc;n thực tế giới khoa học đ&atilde; biết đến rận Demodex từ kh&aacute; l&acirc;u. Năm 1842, lo&agrave;i D. folliculorum được ph&aacute;t hiện c&oacute; trong r&aacute;y tai người tại nước Ph&aacute;p. Song ch&uacute;ng kh&ocirc;ng được nghi&ecirc;n cứu kỹ cho tới tận b&acirc;y giờ. M&atilde;i tới 2014, c&aacute;c nh&agrave; nghi&ecirc;n cứu thuộc ĐH Bang Bắc Carolina (Mỹ) mới t&igrave;m hiểu về lo&agrave;i n&agrave;y. Trong số tất cả những người được nghi&ecirc;n cứu, c&oacute; tới 14% c&oacute; thể t&igrave;m thấy được lo&agrave;i rận tr&ecirc;n sống tr&ecirc;n mặt họ. To&agrave;n bộ những người c&ograve;n lại đều c&oacute; dấu vết DNA của Demodex sau khi ch&uacute;ng đ&atilde; chết!</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Ảnh lo&agrave;i Demodex folliculorum dưới k&iacute;nh h&agrave;nh vi điện tử qu&eacute;t (SEM)</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Dưới mỗi ch&acirc;n l&ocirc;ng mi c&oacute; thể l&agrave; một ch&uacute; rận Demomax</p>\r\n<p>Điều n&agrave;y dẫn tới nghi vấn rằng bất kỳ ai trong ch&uacute;ng ta cũng đều c&oacute; rận Demodex, nếu kh&ocirc;ng muốn n&oacute;i ch&uacute;ng c&oacute; số lượng rất lớn tr&ecirc;n cơ thể mỗi người. Megan Thoemmes, người đứng đầu nh&oacute;m nghi&ecirc;n cứu, cho biết: \"Vẫn hơi kh&oacute; để c&oacute; thể x&aacute;c định ch&iacute;nh x&aacute;c số lượng nhưng một quần thể rận nhỏ c&oacute; thể l&ecirc;n tới h&agrave;ng trăm con. Một quần thể cỡ lớn c&oacute; thể l&ecirc;n đến h&agrave;ng ng&agrave;n con\". N&oacute;i theo c&aacute;ch kh&aacute;c, c&oacute; thể dưới mỗi ch&acirc;n l&ocirc;ng mi của bạn đều c&oacute; một con rận bơi trong đ&oacute;.</p>\r\n<p>Lẽ tất nhi&ecirc;n, sẽ c&oacute; những người bị nhiều rận hơn người kh&aacute;c v&agrave; ngược lại. Cũng c&oacute; thể tr&ecirc;n c&ugrave;ng một người nhưng phần mặt b&ecirc;n tr&aacute;i sẽ c&oacute; nhiều hơn b&ecirc;n phải hoặc ngược lại.</p>\r\n<p>Song c&aacute;c nh&agrave; nghi&ecirc;n cứu chưa giải đ&aacute;p được c&acirc;u hỏi - lo&agrave;i rận n&agrave;y t&igrave;m kiếm g&igrave; tr&ecirc;n mặt của ch&uacute;ng ta? Tr&ecirc;n thực tế, ch&uacute;ng ta cũng chưa x&aacute;c định r&otilde; được khẩu phần của Demodex l&agrave; g&igrave;. \"V&agrave;i người cho rằng ch&uacute;ng ăn những con vi khuẩn thường sống tr&ecirc;n da ch&uacute;ng ta. Số kh&aacute;c lại nghĩ ch&uacute;ng ăn c&aacute;c tế b&agrave;o chết. Một số người nữa cho rằng ch&uacute;ng ăn những chất dầu sinh ra từ tuyến nhờn\", Thoemmes n&oacute;i th&ecirc;m.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Ảnh lo&agrave;i Demodex folliculorum dưới k&iacute;nh hiển vi quang học</p>\r\n<p>Hiện Thoemmes v&agrave; c&aacute;c cộng sự của c&ocirc; đang ph&acirc;n t&iacute;ch c&aacute;c mẫu vi sinh vật c&oacute; trong ruột của Demodex. Những sinh vật n&agrave;y c&oacute; thể gi&uacute;p ch&uacute;ng ta h&igrave;nh dung ra lo&agrave;i rận n&agrave;y ti&ecirc;u thụ c&aacute;i g&igrave; tr&ecirc;n mặt của ch&uacute;ng ta.</p>\r\n<p>Sự sinh sản của lo&agrave;i rận n&agrave;y cũng l&agrave; một vấn đề đ&aacute;ng quan t&acirc;m. Mặc d&ugrave; cho đến hiện tại, Demodex được xem l&agrave; v&ocirc; hại nhưng chắc hẳn kh&ocirc;ng &iacute;t người muốn loại bỏ ch&uacute;ng. Thế n&ecirc;n Demodex sinh sản như thế n&agrave;o cũng l&agrave; điều cần t&igrave;m hiểu. X&eacute;t tới c&aacute;c lo&agrave;i rận kh&aacute;c, c&aacute;ch thức sinh sản của ch&uacute;ng rất đa dạng, từ quan hệ kiểu \"truyền thống\" cho đến loạn lu&acirc;n v&agrave; ăn thịt bạn t&igrave;nh đều c&oacute; đủ. Nhưng lo&agrave;i Demodex c&oacute; vẻ \"l&agrave;nh t&iacute;nh\" hơn hẳn. \"Chưa c&oacute; ghi nhận n&agrave;o cho việc ch&uacute;ng ăn thịt con kh&aacute;c. C&oacute; vẻ l&agrave; ch&uacute;ng chỉ rời tổ v&agrave;o ban đ&ecirc;m để t&igrave;m bạn t&igrave;nh v&agrave; quay trở về sau ấy\", Thoemmes nhận x&eacute;t.</p>\r\n<p>Song, nh&oacute;m c&aacute;c nghi&ecirc;n cứu biết r&otilde; về việc đẻ trứng của Demodex. To&agrave;n bộ qu&aacute; tr&igrave;nh đ&atilde; được ghi h&igrave;nh ở clip b&ecirc;n dưới. Cụ thể c&aacute;c con Demodex c&aacute;i đẻ trứng ngay trong c&aacute;i lỗ ch&acirc;n l&ocirc;ng m&agrave; ch&uacute;ng đang ở. Demodex kh&ocirc;ng đẻ nhiều, gần như chỉ c&oacute; một trứng cho một lần đẻ.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Trứng của ch&uacute;ng thực sự lớn, từ 1/3 cho đến 1/2 k&iacute;ch thước cơ thể, điều đ&oacute; sẽ đ&ograve;i hỏi ch&uacute;ng phải bồi bổ lại cơ thể rất nhiều. Trứng của ch&uacute;ng lớn đến nỗi ch&uacute;ng gần như chỉ đẻ được một trứng tại một thời điểm. V&agrave; t&ocirc;i kh&ocirc;ng thể h&igrave;nh dung được liệu c&oacute; th&ecirc;m tr&aacute;i trứng n&agrave;o c&oacute; thể nh&eacute;t vừa v&agrave;o trong cơ thể ch&uacute;ng với k&iacute;ch thước như thế hay kh&ocirc;ng\", Thoemmes b&igrave;nh luận.</p>\r\n<p>Nhưng lo&agrave;i rận n&agrave;y c&oacute; một điểm rất kỳ lạ - ch&uacute;ng kh&ocirc;ng c&oacute; hậu m&ocirc;n. Vậy ch&uacute;ng \"ngũ cốc lu&acirc;n hồi\" như thế n&agrave;o? Tất nhi&ecirc;n, ch&uacute;ng vẫn cần phải \"xả ra ngo&agrave;i\", song theo một c&aacute;ch rất kịch t&iacute;nh - rận Demodex \"nổ tung\" sau khi chết. Dường như lo&agrave;i vật n&agrave;y \"t&iacute;ch trữ\" c&aacute;c chất thải trong suốt cuộc đời của m&igrave;nh, v&igrave; vậy m&agrave; ch&uacute;ng c&oacute; phần th&acirc;n v&agrave; đu&ocirc;i d&agrave;i như giun. V&agrave; sau khi qu&aacute; tr&igrave;nh trao đổi vật chất trong cơ thể đ&atilde; ngưng, cơ thể Demodex bị kh&ocirc; đi v&agrave; mọi chất thải của ch&uacute;ng vương v&atilde;i ra xung quanh. Cụm từ \"nổ tung\" c&oacute; thể hơi cường điệu ho&aacute; song r&otilde; r&agrave;ng l&uacute;c chết, ph&acirc;n của lo&agrave;i n&agrave;y nằm rải r&aacute;c tr&ecirc;n mặt bạn.</p>\r\n<p>Lợi hay hại?<br>Ve mặt (demodex folliculorum) ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; hậu m&ocirc;n. Ch&uacute;ng cũng kh&ocirc;ng b&agrave;i tiết qua miệng như một số sinh vật kh&aacute;c. Tất cả chất thải tạo ra sau khi ăn tế b&agrave;o da v&agrave; b&atilde; nhờn tr&ecirc;n mặt người được nhồi v&agrave;o ruột của ch&uacute;ng.</p>\r\n<p>Với kiểu ti&ecirc;u h&oacute;a lạ l&ugrave;ng n&agrave;y, ve mặt chỉ sống tối đa 16 ng&agrave;y. Sau khi ch&uacute;ng chết v&agrave; r&atilde; ra, chất thải lưu tồn ngay tr&ecirc;n mặt người, kết hợp với vi khuẩn g&acirc;y bệnh vi&ecirc;m da (hồng ban).</p>\r\n<p>Đ&atilde; từng c&oacute; những nghi&ecirc;n cứu cho thấy mối quan hệ giữa rận Demodex v&agrave; bệnh mụn trứng c&aacute; đỏ kinh ni&ecirc;n (rosacea). Cụ thể l&agrave; một số người ban đầu bị ửng đỏ mặt, sau đấy chuyển sang tr&igrave;nh trạng vĩnh viễn, xuất hiện c&aacute;c nốt đỏ đậm hơn v&agrave; trở n&ecirc;n nhạy cảm với sự thay đổi nhiệt độ m&ocirc;i trường. C&aacute;c nghi&ecirc;n cứu tr&ecirc;n ph&aacute;t hiện ra rằng ở những người bị chứng n&agrave;y thường c&oacute; nhiều rận Demodex hơn người b&igrave;nh thường. V&iacute; dụ thay v&igrave; chỉ c&oacute; 1 - 2 con tr&ecirc;n mỗi centimet vu&ocirc;ng th&igrave; ở họ l&ecirc;n tới 10 - 20 con.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Gương mặt người bị chứng Rosacea</p>\r\n<p>Song điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa rằng ch&uacute;ng l&agrave; t&aacute;c nh&acirc;n g&acirc;y ra rosacea. Số lượng rận Demodex c&oacute; thể chỉ l&agrave; hệ quả của chứng bệnh. Kevin Kavanagh, thuộc ĐH Maynooth (Ireland), nhận định: \"Những con rận c&oacute; li&ecirc;n quan tới chứng rosacea, nhưng ch&uacute;ng kh&ocirc;ng phải l&agrave; nguy&ecirc;n nh&acirc;n\". Trong nghi&ecirc;n cứu của &ocirc;ng hồi 2012, Kavanagh kết luận nguy&ecirc;n nh&acirc;n của sự gia tăng \"d&acirc;n số\" Demodex đến từ sự thay đổi của da người.</p>\r\n<p>Cụ thể da ch&uacute;ng ta thay đổi theo thời gian, cũng như điều kiện sinh hoạt v&agrave; m&ocirc;i trường sống. C&aacute;c t&aacute;c động n&agrave;y khiến cho tuyến nhờn b&ecirc;n dưới da ch&uacute;ng ta tiết ra nhiều chất nhờn dạng b&eacute;o hơn, nhằm giữ cho da ch&uacute;ng ta lu&ocirc;n ẩm. V&agrave; rất c&oacute; thể rận Demodex ăn c&aacute;c chất nhờn tr&ecirc;n n&ecirc;n nếu tuyến nhờn tiết ra c&agrave;ng nhiều th&igrave; ch&uacute;ng c&agrave;ng c&oacute; nhiều thức ăn hơn. Kết quả l&agrave; \"d&acirc;n số\" Demodex tăng vọt.</p>\r\n<p>Kavanagh m&ocirc; tả: \"Hiện tượng n&agrave;y dẫn tới t&igrave;nh trạng sưng tấy tr&ecirc;n khu&ocirc;n mặt ch&uacute;ng ta, v&igrave; khi đ&oacute; c&oacute; qu&aacute; nhiều rận sinh ra. Khi đ&aacute;m rận chết đi, ch&uacute;ng giải ph&oacute;ng c&aacute;c chất c&oacute; trong cơ thể m&igrave;nh. Những thứ đấy c&oacute; chứ nhiều vi khuẩn c&ugrave;ng độc chất dẫn tới việc g&acirc;y ngứa v&agrave; vi&ecirc;m nhiễm\".</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Việc chất nhờn được tiết ra nhiều c&oacute; thể l&agrave; nguy&ecirc;n nh&acirc;n cho rận Demodex ph&aacute;t triển mạnh</p>\r\n<p>Nhưng việc Demodex chết đi c&oacute; lẽ li&ecirc;n quan tới hệ miễn dịch của ch&uacute;ng ta hơn. Thoemmes cho biết ở những bệnh nh&acirc;n c&oacute; hệ miễn dịch bị suy yếu như người bị AIDS hoặc ung thư, số lượng rận Demodex trở n&ecirc;n kh&aacute; đ&aacute;ng kể. \"T&ocirc;i cho rằng đ&aacute;m rận bị nổ tung v&igrave; cơ thể bạn c&oacute; phản ứng miễn dịch với thứ g&igrave; đ&oacute; c&oacute; tr&ecirc;n ch&uacute;ng. Rosacea chỉ l&agrave; một phản ứng như vậy\". Khi hệ miễn dịch suy yếu, những phản ứng như thế kh&ocirc;ng c&ograve;n nhiều n&ecirc;n Demodex ph&aacute;t triển nhanh ch&oacute;ng.</p>\r\n<p>Tr&ecirc;n thực tế, mối quan hệ giữa ch&uacute;ng ta v&agrave; rận Demodex vẫn chưa ho&agrave;n to&agrave;n được l&agrave;m r&otilde;. K&yacute; sinh hay cộng sinh vẫn l&agrave; c&acirc;u hỏi chưa được giải đ&aacute;p. Mặc d&ugrave; Demodex c&oacute; li&ecirc;n hệ với chứng rosacea, song kh&ocirc;ng phải ai cũng bị bệnh tr&ecirc;n v&agrave; với người bị AIDS hay ung thư, họ cũng dễ d&agrave;ng bị c&aacute;c bệnh kh&aacute;c đến từ sự suy yếu của hệ miễn dịch. Điều đ&aacute;ng n&oacute;i l&agrave; d&ugrave; c&oacute; mặt ở hầu hết mọi người nhưng ch&uacute;ng ta hầu như kh&ocirc;ng cảm thấy \"kh&oacute; chịu\" g&igrave; về ch&uacute;ng.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Ảnh da người (t&iacute;m) bị vi khuẩn (cam) sinh s&ocirc;i v&agrave; nảy nở</p>\r\n<p>V&agrave; nếu giả thuyết rận Demodex c&oacute; ăn vi khuẩn sống tr&ecirc;n da hoặc tế b&agrave;o chết (ngo&agrave;i \"thực đơn\" chất b&eacute;o ra) l&agrave; đ&uacute;ng, th&igrave; r&otilde; r&agrave;ng ch&uacute;ng c&oacute; &iacute;ch cho cơ thể con người. H&atilde;y h&igrave;nh dung tới c&aacute;c c&ocirc;ng nh&acirc;n vệ sinh đang \"cần mẫn\" lau dọn văn ph&ograve;ng của bạn, rận Demodex rất c&oacute; thể đang thực hiện vai tr&ograve; đấy.</p>\r\n<p>\"Y&ecirc;u\" con người<br>Song chắc hẳn nhiều bạn vẫn muốn loại bỏ lo&agrave;i sinh vật c&oacute; 8 ch&acirc;n kia ra khỏi c&aacute;c lỗ ch&acirc;n l&ocirc;ng tr&ecirc;n cơ thể m&igrave;nh? Đ&aacute;p &aacute;n gần như l&agrave;... kh&ocirc;ng thể!</p>\r\n<p>Mặc d&ugrave; c&oacute; một số phương ph&aacute;p để loại bỏ rận Demodex, nhưng ch&uacute;ng vẫn t&aacute;i xuất hiện trở lại. Khoảng thời gian k&eacute;o d&agrave;i khoảng 6 tuần. V&agrave; nguồn l&acirc;y nhiễm tất nhi&ecirc;n l&agrave; từ những đồ vật xung quanh ta, những người sống quanh ta. \"Ch&uacute;ng ta bị l&acirc;y ch&uacute;ng từ những người m&agrave; ta c&oacute; tiếp x&uacute;c. Ch&uacute;ng ta bị l&acirc;y ch&uacute;ng từ chăn chiếu, gối &ocirc;m, khăn tắm. C&oacute; những bằng chứng r&otilde; r&agrave;ng về việc ch&uacute;ng ta \'trao đổi\' ch&uacute;ng qua lại giữa từng người\", Kavanagh cho hay.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Rận Demodex \"like\" mặt người</p>\r\n<p>V&agrave; rận Demodex \"y&ecirc;u\" khu&ocirc;n mặt của con người. D&ugrave; l&acirc;y nhiễm như thế n&agrave;o, ch&uacute;ng cũng lu&ocirc;n t&igrave;m c&aacute;ch b&ograve; l&ecirc;n tr&ecirc;n mặt ch&uacute;ng ta. Việc lo&agrave;i rận n&agrave;y xuất hiện ở khu vực v&ograve;ng một của phụ nữ cũng c&oacute; thể l&agrave; c&aacute;ch để ch&uacute;ng l&acirc;y nhiễm l&ecirc;n c&aacute;c đứa trẻ sơ sinh, khi b&agrave; mẹ cho con b&uacute;. Quan hệ t&igrave;nh dục giữa người với người cũng l&agrave; một con đường tốt cho Demodex l&acirc;y nhiễm.</p>\r\n<p>Đặc biệt khi ch&uacute;ng ta gi&agrave; đi, số lượng rận Demodex ng&agrave;y c&agrave;ng nhiều hơn. Nghi&ecirc;n cứu của Thoemmes cho thấy hoạt động của Demodex ở những người tr&ecirc;n 18 tuổi nhiều hơn hẳn c&aacute;c thiếu ni&ecirc;n. Rất c&oacute; thể v&igrave; hoạt động của tuyến nhờn hoặc sự thay đổi của da mặt theo tuổi t&aacute;c đ&atilde; k&iacute;ch th&iacute;ch ch&uacute;ng tăng trưởng.</p>\r\n<p>Nhưng hơn hết, lo&agrave;i rận tr&ecirc;n c&oacute; nguồn gốc từ đ&acirc;u? Lẽ tất nhi&ecirc;n ch&uacute;ng kh&ocirc;ng tự sinh ra tr&ecirc;n mặt của ch&uacute;ng ta m&agrave; l&acirc;y từ người kh&aacute;c. Vậy đ&acirc;u l&agrave; c&aacute;i gốc?</p>\r\n<p>Nguồn gốc<br>Vẫn c&ograve;n qu&aacute; &iacute;t th&ocirc;ng tin để c&oacute; c&acirc;u trả lời ch&iacute;nh x&aacute;c, nhưng dường như Demodex đ&atilde; đi c&ugrave;ng với sự tiến ho&aacute; của nh&acirc;n loại. Thoemmes suy đo&aacute;n rằng ch&uacute;ng c&oacute; thể đ&atilde; xuất hiện với con người \"kể từ khi ch&uacute;ng ta tiến ho&aacute; từ c&aacute;c tổ ti&ecirc;n Hominidae\". Tức rận Demodex đ&atilde; \"đồng h&agrave;nh\" với nh&acirc;n loại &iacute;t nhất 20.000 năm qua.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Phải chăng ch&uacute;ng đến từ ch&oacute;?</p>\r\n<p>Nhưng cũng c&oacute; khả năng con người đ&atilde; bị l&acirc;y giống D. brevis từ một lo&agrave;i tương tự sống tr&ecirc;n ch&oacute;. Khi nh&acirc;n loại đồng ho&aacute; ch&oacute; hoang th&agrave;nh ch&oacute; nh&agrave; m&agrave; đặc biệt l&agrave; s&oacute;i, c&oacute; lẽ sự trao đổi đ&atilde; diễn ra. \"Tổ ti&ecirc;n ch&uacute;ng ta đ&atilde; sống gần gũi với ch&uacute;ng, để săn bắn v&agrave; kiếm ăn v&agrave; bị nhiễm từ đấy\", Thoemmes nhận x&eacute;t.</p>\r\n<p>Nhưng d&ugrave; l&agrave; c&aacute;ch n&agrave;o, th&igrave; mối quan hệ giữa con người v&agrave; Demodex l&agrave; rất l&acirc;u đời. Theo Thoemmes, Demodex c&oacute; thể gi&uacute;p t&igrave;m hiểu qu&aacute; tr&igrave;nh di tr&uacute; của nh&acirc;n loại trong h&agrave;ng ng&agrave;n năm qua. Khi quan s&aacute;t mẫu DNA của đ&aacute;m rận, Thoemmes ph&aacute;t hiện nh&oacute;m rận thu được ở cộng đồng người Hoa kh&aacute;c hẳn với cộng đồng người ở Bắc v&agrave; Nam Mỹ. Chi tiết n&agrave;y cho thấy nghi&ecirc;n cứu về rận Demodex c&oacute; thể cung cấp th&ecirc;m th&ocirc;ng tin về lịch sử của lo&agrave;i người.</p>\r\n<p>Demodex - Lo&agrave;i rận chuy&ecirc;n k&yacute; sinh tr&ecirc;n... da mặt người<br>Ảnh rận Demodex folliculorum đang b&ograve; tr&ecirc;n da người</p>\r\n<p>\"Ch&uacute;ng ta c&oacute; thể h&igrave;nh dung ra c&aacute;c mối quan hệ trong cộng đồng lo&agrave;i người... Những mối quan hệ m&agrave; trước đ&acirc;y ch&uacute;ng ta chưa từng nghĩ tới\", Thoemmes nhận x&eacute;t. Lấy v&iacute; dụ như qu&aacute; tr&igrave;nh thực d&acirc;n ho&aacute; Trung v&agrave; Nam Mỹ, d&ograve;ng người n&agrave;o chiếm vai tr&ograve; ch&iacute;nh. \"C&oacute; rất nhiều giả thuyết kh&aacute;c nhau về cộng đồng người n&agrave;o đ&atilde; thực d&acirc;n ho&aacute; Brazil v&agrave; lai tạo với d&acirc;n bản địa\".</p>\r\n<p>Lời kết<br>V&agrave; cũng c&ograve;n kh&aacute; nhiều điều kh&aacute;c để nghi&ecirc;n cứu về Demodex, v&iacute; dụ ch&uacute;ng đ&atilde; biến đổi thế n&agrave;o khi l&acirc;y qua người, hoặc con người đ&atilde; thay đổi ra sao kể từ khi c&oacute; ch&uacute;ng... Tất nhi&ecirc;n, kh&ocirc;ng hẳn thắc mắc hoặc giả thuyết n&agrave;o cũng c&oacute; thể đ&uacute;ng. Nhưng sau c&ugrave;ng, rận Demodex chỉ l&agrave; một trong số h&agrave;ng t&aacute; lo&agrave;i k&yacute; sinh kh&aacute;c c&oacute; tr&ecirc;n cơ thể con người, như ve, bọ ch&eacute;t, vi khuẩn, giun s&aacute;n... Điều n&agrave;y n&oacute;i l&ecirc;n một b&agrave;i học kh&aacute;c về cơ thể người. Ch&uacute;ng ta kh&ocirc;ng đơn giản chỉ l&agrave; ch&uacute;ng ta - ch&uacute;ng ta l&agrave; một cơ thể biết di chuyển, l&agrave; một phần của cộng đồng người v&agrave; cũng l&agrave; một quần x&atilde; với h&agrave;ng trăm lo&agrave;i c&ugrave;ng chia sẻ cơ thể ấy.</p>', 'news/images/articles/a4b0664f9283416592eac4c4555a44ac.JPG', 5);
INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`) VALUES
(7, 'Thần dược phòng the nào đáng sợ bậc nhất lịch sử Trung Quốc?', 'than-duoc-phong-the-nao-dang-so-bac-nhat-lich-su-trung-quoc', 'published', 4, 0, '2025-03-26 00:00:00.000000', '<p>Từ thời xa xưa, trong chốn hậu cung c&aacute;c triều đại Trung Hoa, xu&acirc;n dược đ&atilde; trở th&agrave;nh một trợ thủ đắc lực cho c&aacute;c bậc vua ch&uacute;a trong chuyện ph&ograve;ng the. Đặc biệt, Triều Minh được cho l&agrave; một trong những triều đại m&agrave; c&aacute;c phương thuốc xu&acirc;n dược ph&aacute;t triển cực thịnh.</p>\r\n<p>Xung quanh những vụ việc c&oacute; li&ecirc;n quan đến c&aacute;c loại thuốc xu&acirc;n dược trong lịch sử Trung Hoa, phải nhắc tới sự kiện ho&agrave;ng đế nh&agrave; Minh l&ecirc;n ng&ocirc;i chưa đầy 1 th&aacute;ng đ&atilde; băng h&agrave;.</p>\r\n<p>Hồng di&ecirc;n ho&agrave;n<br>Dưới thời vua Minh Thế T&ocirc;ng, Đ&agrave;o Trọng Văn vốn chỉ l&agrave; một t&ecirc;n quan coi kho chẳng mấy ai biết tới nhưng nhờ hiến phương thuốc b&agrave;o chế \"hồng di&ecirc;n ho&agrave;n\" đ&atilde; được vua Minh Thế T&ocirc;ng sủng &aacute;i.</p>\r\n<p>Khi d&acirc;ng loại thuốc b&iacute; truyền n&agrave;y l&ecirc;n nh&agrave; vua, Đ&agrave;o Trọng Văn m&ocirc; tả rằng: \"Uống loại \"xu&acirc;n dược\" n&agrave;y người sẽ trẻ ra, m&aacute;u huyết lưu th&ocirc;ng, sức khỏe cường tr&aacute;ng v&agrave; đặc biệt sẽ v&ocirc; c&ugrave;ng mạnh mẽ, dẻo dai trong chốn ph&ograve;ng the v&agrave; trường sinh bất l&atilde;o&rdquo;.</p>\r\n<p><br>Theo tương truyền, phương thuốc b&iacute; truyền của họ Đ&agrave;o cực kỳ qu&aacute;i dị. Theo đ&oacute;, nguy&ecirc;n liệu số một để chế \"Hồng di&ecirc;n ho&agrave;n\" l&agrave; kinh nguyệt lần đầu của phụ nữ (hồng di&ecirc;n) đựng trong những vật dụng bằng kim loại rồi cho th&ecirc;m sương đ&ecirc;m, &ocirc; mai v&agrave;o, sau đ&oacute; đem sắc bảy lần. Sau khi đ&atilde; sắc bảy lần những loại nguy&ecirc;n liệu đ&oacute; lại cho th&ecirc;m trầm hương, chu sa, nhựa th&ocirc;ng,&hellip; rồi luyện bằng lửa, cuối c&ugrave;ng mới c&ocirc; đặc lại chế th&agrave;nh thuốc vi&ecirc;n để d&ugrave;ng.</p>\r\n<p>Để chế loại \"xu&acirc;n dược\" qu&aacute;i đản n&agrave;y, Minh Thế T&ocirc;ng đ&atilde; tổ chức rất nhiều đợt tuyển mỹ nữ với độ tuổi chỉ từ 11-16 để lấy \"nguy&ecirc;n liệu\".</p>\r\n<p>Theo s&aacute;ch \"Minh thực lục\" c&oacute; ch&eacute;p: Từ năm 1547 cho tới năm 1564, Ho&agrave;ng đế triều Minh đ&atilde; chọn v&agrave;o cung hơn 1.000 thiếu nữ v&agrave;o cung. Cụ thể như: Năm Gia Tĩnh thứ 26, tức năm 1547, tuyển 300 thiếu nữ tuổi từ 11-14 v&agrave;o cung. Năm Gia Tĩnh thứ 31, tức năm 1552, lại tuyển 300 người. Th&aacute;ng 9 năm 34, tức năm 1555, tuyển 160 b&eacute; g&aacute;i tuổi dưới 10 tuổi, th&aacute;ng 11 năm c&ugrave;ng năm lại tuyển th&ecirc;m 20 thiếu nữ ở v&ugrave;ng Hồ Quảng (Hồ Nam v&agrave; Hồ Bắc của Trung Quốc ng&agrave;y nay). Th&aacute;ng gi&ecirc;ng năm Gia Tĩnh thứ 43, tức năm 1564, tuyển 300 cung nữ.</p>\r\n<p><br>Tranh vẽ vua Minh Thế T&ocirc;ng<br>Tranh vẽ vua Minh Thế T&ocirc;ng.</p>\r\n<p>V&igrave; kh&ocirc;ng &iacute;t c&ocirc; g&aacute;i bị bắt khi c&ograve;n qu&aacute; nhỏ tuổi ng&agrave;y đ&ecirc;m k&ecirc;u kh&oacute;c v&igrave; nhớ cha mẹ, nhiều gia đ&igrave;nh rơi v&agrave;o cảnh hoảng loạn v&igrave; con g&aacute;i bị bắt đi. Kh&ocirc;ng chịu được &aacute;p bực, nhiều người đ&atilde; quyết định l&agrave;m loạn. Dương Kim Anh l&agrave; cung nữ cầm đầu cuộc nổi loạn sau đ&oacute; mười mấy cung nữ c&ugrave;ng l&uacute;c x&ocirc;ng l&ecirc;n, d&ugrave;ng d&acirc;y thừng siết v&agrave;o cổ Ho&agrave;ng đế Thế T&ocirc;ng, định giết chết &ocirc;ng ta&hellip; Cuộc nổi loạn tuy kh&ocirc;ng th&agrave;nh c&ocirc;ng nhưng cũng khiến vị Ho&agrave;ng đế hoang d&acirc;m v&ocirc; độ của Minh triều được một phen khiếp v&iacute;a.</p>\r\n<p>Tho&aacute;t được đại nạn lần đ&oacute; nhưng kh&ocirc;ng c&oacute; nghĩa l&agrave; lưới trời bu&ocirc;ng tha. Chỉ sau 9 năm kể từ ng&agrave;y sử dụng loại \"xu&acirc;n dược\" n&agrave;y, Minh Thế T&ocirc;ng đ&atilde; chết v&igrave; ngộ độc, hưởng thọ 59 tuổi.</p>\r\n<p>H&ocirc;n qu&acirc;n Minh Thế T&ocirc;ng chết nhưng những c&ocirc; g&aacute;i ở độ tuổi dậy th&igrave; vẫn kh&ocirc;ng được y&ecirc;n th&acirc;n. Kẻ nối ng&ocirc;i Thế T&ocirc;ng l&agrave; Mục T&ocirc;ng cũng học theo người cha của m&igrave;nh sử dụng loại \"xu&acirc;n dược\" qu&aacute;i đản n&agrave;y v&agrave; hắn cũng chết bởi ngộ độc \"hồng di&ecirc;n ho&agrave;n\" n&agrave;y khi chưa đầy 36 tuổi.</p>\r\n<p><br>L&ecirc;n ng&ocirc;i chưa đầy 1 th&aacute;ng đ&atilde; băng h&agrave;<br>Đ&atilde; hai &aacute;n mạng xảy ra v&igrave; sử dụng thường xuy&ecirc;n \"hồng di&ecirc;n ho&agrave;n\" nhưng người kế vị tiếp theo l&agrave; Chu Thường Lạc lại tiếp tục học theo &ocirc;ng v&agrave; cha tin d&ugrave;ng n&oacute;. V&igrave; vậy th&aacute;i tử Chu Thường Lạc, con vua Thần T&ocirc;ng v&agrave; l&agrave; ch&aacute;u của Mục T&ocirc;ng, chưa kịp l&ecirc;n ng&ocirc;i th&igrave; đ&atilde; chết một c&aacute;ch bất đắc kỳ tử v&igrave; xu&acirc;n dược. Sử s&aacute;ch gọi đ&acirc;y l&agrave; \"vụ &aacute;n Hồng di&ecirc;n ho&agrave;n\" nổi tiếng trong lịch sử triều ch&iacute;nh Trung Quốc.</p>\r\n<p>Hồng di&ecirc;n ho&agrave;n kh&ocirc;ng hề tốt, thậm ch&iacute; c&oacute; hại c&oacute; sức khỏe<br>Hồng di&ecirc;n ho&agrave;n kh&ocirc;ng hề tốt, thậm ch&iacute; c&oacute; hại cho sức khoẻ. (Ảnh minh họa).</p>\r\n<p>Chu Thường Lạc l&uacute;c nhỏ kh&ocirc;ng được học h&agrave;nh tử tế, đến khi l&agrave;m Ho&agrave;ng đế bắt đầu ph&oacute;ng t&uacute;ng dục vọng. Trịnh qu&yacute; phi muốn Ho&agrave;ng đế phong chức Th&aacute;i hậu cho m&igrave;nh n&ecirc;n đ&atilde; chuẩn bị một &iacute;t ch&acirc;u b&aacute;u v&agrave; t&aacute;m mỹ nữ cho Ho&agrave;ng đế. Chu Thường Lạc ng&agrave;y đ&ecirc;m ch&igrave;m trong dục vọng, thế l&agrave; sức c&ugrave;ng lực kiệt, l&acirc;m bệnh triền mi&ecirc;n.</p>\r\n<p>Một đ&ecirc;m, một trong số 8 mỹ nữ do Trịnh Qu&yacute; phi d&acirc;ng tặng tới hầu hạ ho&agrave;ng đế, Chu Thường Lạc uống một vi&ecirc;n Hồng di&ecirc;n ho&agrave;n v&agrave;o, bỗng nhi&ecirc;n trở n&ecirc;n hưng phấn lạ thường, giống như ph&aacute;t cuồng. Thấy d&aacute;ng vẻ kh&ocirc;ng b&igrave;nh thường của Ho&agrave;ng đế, s&aacute;ng h&ocirc;m sau, Ng&ocirc; T&aacute;n đ&atilde; phải đi t&igrave;m ngự y. Th&ocirc;i Văn Thăng cho rằng, Ho&agrave;ng đế bị n&oacute;ng trong n&ecirc;n đ&atilde; k&ecirc; cho Ng&ocirc; T&aacute;n một loạt c&aacute;c thuốc giải nhiệt, nhuận tr&agrave;ng. Ho&agrave;ng đế uống xong, lập tức bị tả, một ng&agrave;y tới mấy chục lần.</p>\r\n<p><br>Trong l&uacute;c bệnh của Thường Lạc ng&agrave;y c&agrave;ng nặng th&igrave; L&yacute; Khả Chước ở Hồng Lư tự n&oacute;i m&igrave;nh c&oacute; thuốc ti&ecirc;n chữa được b&aacute;ch bệnh, muốn d&acirc;ng l&ecirc;n Ho&agrave;ng đế. Thuốc m&agrave; L&yacute; Khả Chước d&acirc;ng l&ecirc;n l&agrave; một loại thuốc vi&ecirc;n m&agrave;u đỏ được cho l&agrave; Hồng di&ecirc;n ho&agrave;n. Sau khi uống thuốc, nhịp thở của Ho&agrave;ng đế bắt đầu đều trở lại. Mọi người ai cũng thở ra một hơi nhẹ nh&otilde;m. Đến Ho&agrave;ng đế cũng li&ecirc;n miệng khen L&yacute; Khả Chước l&agrave; trung thần v&agrave; truyền lệnh ban thưởng thật hậu hĩnh.</p>\r\n<p>Đ&ecirc;m h&ocirc;m đ&oacute;, khi c&aacute;c quan đại thần đang t&uacute;c trực ở b&ecirc;n ngo&agrave;i tịch cung của Ho&agrave;ng đế th&igrave; bỗng nhi&ecirc;n một th&aacute;i gi&aacute;m vội v&agrave;ng chạy tới, truyền chỉ L&yacute; Khả Chước d&acirc;ng th&ecirc;m một vi&ecirc;n thuốc nữa. Sau khi uống vi&ecirc;n thuốc thứ hai, hơi thở của Ho&agrave;ng đế c&oacute; vẻ b&igrave;nh phục. Phương Dĩ Triết theo &yacute; chỉ của ho&agrave;ng đế truyền lệnh thưởng cho L&yacute; Khả Chước 50 lạng bạc. Chỉ dụ vừa truyền đi th&igrave; đột nhi&ecirc;n ho&agrave;ng đế h&eacute;t lớn, hai tay &ocirc;m ngực, hai mắt trợn ngược, gi&atilde;y đạp li&ecirc;n hồi, một l&aacute;t sau th&igrave; tắt thở.</p>\r\n<p>Chu Thường Lạc mới l&ecirc;n ng&ocirc;i được 30 ng&agrave;y th&igrave; đ&atilde; qua đời, trở th&agrave;nh một trong những &ocirc;ng vua c&oacute; thời gian ngồi tr&ecirc;n ngai v&agrave;ng ngắn nhất lịch sử Trung Quốc.</p>\r\n<p>Tranh vẽ Chu Thường Lạc<br>Tranh vẽ Chu Thường Lạc.</p>\r\n<p>Đối với loại nguy&ecirc;n liệu \"hồng di&ecirc;n\", L&yacute; Thời Tr&acirc;n - nh&agrave; dược học nổi tiếng cuối thời Minh đ&atilde; thẳng thắn b&aacute;c bỏ. Trong s&aacute;ch \"Bản thảo cương mục\", &ocirc;ng viết rằng: \"Kinh nguyệt l&agrave; thứ kh&ocirc;ng sạch sẽ, bọn phương sĩ d&ugrave;ng t&agrave; thuật để t&ocirc; vẽ, coi đ&oacute; l&agrave; loại thần dược b&iacute; truyền. Nhiều kẻ ngu muội đ&atilde; tin theo những điều v&ocirc; căn cứ đ&oacute; n&ecirc;n mới đưa thứ uế trọc n&agrave;y v&agrave;o người, l&agrave;m cho &acirc;m dương kh&iacute; huyết bị thương tổn, sinh ra đủ thứ bệnh tật&hellip; đ&acirc;u c&oacute; biết rằng, đ&oacute; l&agrave; thứ người qu&acirc;n tử cần phải tr&aacute;nh xa\".</p>\r\n<p>C&aacute;c nghi&ecirc;n cứu về sau cũng đ&atilde; khẳng định, trong \"hồng di&ecirc;n\" cũng như kinh nguyệt của phụ nữ kh&ocirc;ng chứa c&aacute;c chất c&oacute; t&aacute;c dụng hồi xu&acirc;n cũng như những chất đặc biệt c&oacute; t&aacute;c dụng để chữa bệnh. V&igrave; vậy, trong c&aacute;c s&aacute;ch thuốc của Đ&ocirc;ng y hiện đại kh&ocirc;ng c&ograve;n thấy đề cập đến \"hồng di&ecirc;n\" nữa.</p>', 'news/images/articles/5572c033fed34ac684272fa40a5174b1.jpg', 5),
(8, 'Xuất bản khoa học bằng tiếng Việt: Những thách thức', 'xuat-ban-khoa-hoc-bang-tieng-viet-nhung-thach-thuc', 'published', 1, 0, '2025-03-26 00:00:00.000000', '<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Việt Nam đang xuất bản khoa học bằng tiếng Anh qu&aacute; nhiều, ngay cả với những c&ocirc;ng tr&igrave;nh cần thiết phải xuất bản bằng tiếng Việt.</p>\r\n<p><br>&ldquo;Tiếng Việt kh&ocirc;ng chỉ l&agrave; c&ocirc;ng cụ giao tiếp hằng ng&agrave;y m&agrave; c&ograve;n đ&oacute;ng vai tr&ograve; rất quan trọng trong nghi&ecirc;n cứu khoa học, phổ biến tri thức khoa học cũng như tạo điều kiện cho sự ph&aacute;t triển của gi&aacute;o dục v&agrave; nghi&ecirc;n cứu, đồng thời gi&uacute;p kết nối c&aacute;c nh&agrave; khoa học trong v&agrave; ngo&agrave;i nước&rdquo;, TS. Phạm Thị H&agrave;, Ph&oacute; trưởng khoa Việt Nam học, trường ĐH Sư phạm H&agrave; Nội, khẳng định tại Chương tr&igrave;nh Trao đổi học thuật &ldquo;Lịch sử ng&ocirc;n ngữ người Việt v&agrave; gi&aacute; trị qua thời gian&rdquo; do Viện Nghi&ecirc;n cứu Nhận thức v&agrave; Gi&aacute;o dục Thăng Long (TICES), trường ĐH Thăng Long, tổ chức ng&agrave;y 15/3.</p>\r\n<p>Theo TS. Phạm Thị H&agrave;, tiếng Việt tạo điều kiện cho những trao đổi học thuật trong nước, cũng như gi&uacute;p c&aacute;c nh&agrave; nghi&ecirc;n cứu tập trung v&agrave;o nội dung khoa học m&agrave; kh&ocirc;ng gặp r&agrave;o cản về ng&ocirc;n ngữ, khi kh&ocirc;ng phải nh&agrave; nghi&ecirc;n cứu n&agrave;o cũng c&oacute; thể sử dụng th&agrave;nh thạo ngoại ngữ. Ngo&agrave;i ra, xuất bản bằng tiếng Việt ph&ugrave; hợp với những ch&iacute;nh s&aacute;ch gi&aacute;o dục trong nước. Đa số c&aacute;c trường đại học, viện nghi&ecirc;n cứu ở Việt Nam vẫn sử dụng tiếng Việt như ng&ocirc;n ngữ ch&iacute;nh trong giảng dạy v&agrave; nghi&ecirc;n cứu.</p>\r\n<p>Khuyến kh&iacute;ch nhưng chưa được ưu ti&ecirc;n</p>\r\n<p>Tuy nhi&ecirc;n, theo kết quả khảo s&aacute;t nhanh của TS. Phạm Thị H&agrave; đối với một số giảng vi&ecirc;n, nh&agrave; khoa học v&agrave; học vi&ecirc;n thuộc nhiều chuy&ecirc;n ng&agrave;nh kh&aacute;c nhau, c&oacute; tới 56,8% người được hỏi cho biết đơn vị của họ c&oacute; khuyến kh&iacute;ch xuất bản khoa học bằng tiếng Việt nhưng vẫn ưu ti&ecirc;n xuất bản quốc tế hơn.</p>\r\n<p>TS. Trần Thị Minh, Viện TICES, trường ĐH Thăng Long, cho biết, GS. Phan L&ecirc; H&agrave;, ĐH Brunei Darussalam [1], đ&atilde; từng đặt vấn đề chảy m&aacute;u chất x&aacute;m trong nghi&ecirc;n cứu khoa học &ldquo;bởi ch&uacute;ng ta sử dụng qu&aacute; nhiều tiếng Anh để xuất bản, ngay cả với những c&ocirc;ng tr&igrave;nh cần thiết phải xuất bản bằng tiếng Việt&rdquo;.</p>\r\n<p>Đ&acirc;y kh&ocirc;ng phải l&agrave; t&igrave;nh trạng ri&ecirc;ng c&oacute; ở Việt Nam. Mặc d&ugrave; hoạt động xuất bản diễn ra tr&ecirc;n to&agrave;n cầu, nhưng n&oacute; lu&ocirc;n nghi&ecirc;ng hẳn về tiếng Anh. Đ&atilde; c&oacute; nghi&ecirc;n cứu chỉ ra rằng, một nguy&ecirc;n nh&acirc;n dẫn đến t&igrave;nh trạng n&agrave;y l&agrave; do c&aacute;c thực h&agrave;nh chỉ mục của Scopus, trong đ&oacute; quy định c&aacute;c nội dung như ti&ecirc;u đề, t&oacute;m tắt v&agrave; từ kh&oacute;a của b&agrave;i b&aacute;o phải được cung cấp bằng tiếng Anh để phục vụ độc giả quốc tế. Ti&ecirc;u ch&iacute; lựa chọn n&agrave;y ngụ &yacute; tầm quan trọng của tiếng Anh đối với c&aacute;c b&agrave;i b&aacute;o được xuất bản, bất kể tạp ch&iacute; sử dụng ng&ocirc;n ngữ n&agrave;o [2].</p>\r\n<p>Li&ecirc;n quan đến t&igrave;nh trạng n&agrave;y ở Việt Nam, c&aacute;c diễn giả n&ecirc;u mấy l&yacute; do ch&iacute;nh.</p>\r\n<p>Thứ nhất, như khảo s&aacute;t nhanh của TS. Phạm Thị H&agrave; chỉ ra, việc thiếu nhiều thuật ngữ khoa học ch&iacute;nh x&aacute;c bằng tiếng Việt l&agrave; một r&agrave;o cản với c&aacute;c nh&agrave; khoa học khi xuất bản bằng tiếng Việt. Hệ thống thuật ngữ khoa học tiếng Việt đến nay vẫn chưa được chuẩn h&oacute;a đầy đủ, khiến c&aacute;c nh&agrave; nghi&ecirc;n cứu gặp kh&oacute; khăn trong diễn đạt &yacute; tưởng một c&aacute;ch ch&iacute;nh x&aacute;c. Nhiều thuật ngữ khoa học được vay mượn từ tiếng nước ngo&agrave;i bằng c&aacute;ch dịch, phi&ecirc;n chuyển, giữ nguy&ecirc;n dạng, chuyển tự&hellip;, dẫn đến một số thuật ngữ chuy&ecirc;n ng&agrave;nh hiện chưa c&oacute; những bản dịch thống nhất, mỗi văn bản, mỗi nh&oacute;m nghi&ecirc;n cứu sử dụng một c&aacute;ch dịch kh&aacute;c nhau. Ngo&agrave;i ra, một số thuật ngữ qu&aacute; đặc th&ugrave; hoặc trừu tượng, kh&ocirc;ng c&oacute; từ ch&iacute;nh x&aacute;c trong tiếng Việt hoặc kh&oacute; dịch ch&iacute;nh x&aacute;c sang tiếng Việt m&agrave; vẫn giữ nguy&ecirc;n &yacute; nghĩa ban đầu. Điều n&agrave;y phần n&agrave;o l&agrave;m giảm t&iacute;nh nhất qu&aacute;n trong nghi&ecirc;n cứu khoa học bằng tiếng Việt, TS. Phạm Thị H&agrave; nhận định.</p>\r\n<p>Thứ hai, c&aacute;c nh&agrave; khoa học cũng đang thiếu c&aacute;c hướng dẫn v&agrave; t&agrave;i liệu tham khảo chất lượng bằng tiếng Việt - phần lớn t&agrave;i liệu hướng dẫn phương ph&aacute;p nghi&ecirc;n cứu v&agrave; viết b&agrave;i khoa học hiện nay đều được viết bằng tiếng Anh - TS. Phạm Thị H&agrave; cho biết th&ecirc;m. Việc viết b&agrave;i nghi&ecirc;n cứu bằng tiếng Anh thường được quy định bởi cấu tr&uacute;c rất r&otilde; r&agrave;ng, trong khi tiếng Việt chưa c&oacute; những quy chuẩn chặt chẽ cho văn phong khoa học.</p>\r\n<p>Thứ ba l&agrave; ch&iacute;nh s&aacute;ch ưu ti&ecirc;n xuất bản quốc tế ở rất nhiều trường đại học, viện nghi&ecirc;n cứu hiện nay. Ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; học thuật hiện nay chủ yếu dựa v&agrave;o c&aacute;c c&ocirc;ng bố quốc tế tr&ecirc;n c&aacute;c tạp ch&iacute; được chỉ mục trong Scopus hay ISI, vốn được thống trị bởi c&aacute;c tạp ch&iacute; bằng tiếng Anh. C&ocirc;ng bố quốc tế cũng l&agrave; ti&ecirc;u ch&iacute; rất quan trọng để x&eacute;t duyệt học h&agrave;m gi&aacute;o sư, ph&oacute; gi&aacute;o sư v&agrave; c&aacute;c đề t&agrave;i nghi&ecirc;n cứu cấp Nh&agrave; nước, cấp Bộ hay cấp đơn vị.</p>\r\n<p>Kh&ocirc;ng chỉ mang lại &iacute;t lợi &iacute;ch về học thuật, xuất bản bằng tiếng Việt c&ograve;n kh&ocirc;ng mang lại nhiều động lực về kinh tế cho c&aacute;c nh&agrave; nghi&ecirc;n cứu khi &ldquo;một số trường c&oacute; thể c&oacute; những khoản tiền thưởng kh&aacute; lớn cho những xuất bản quốc tế, nhưng với xuất bản tiếng Việt th&igrave; chưa c&oacute;&rdquo;, TS. Phạm Thị H&agrave; cho hay.</p>\r\n<p>GS.TS. Trần Tr&iacute; D&otilde;i ph&aacute;t biểu tại Chương tr&igrave;nh. Ảnh: Đinh Hương<br>GS.TS. Trần Tr&iacute; D&otilde;i ph&aacute;t biểu tại Chương tr&igrave;nh. Ảnh: Đinh Hương</p>\r\n<p>GS.TS Trần Tr&iacute; D&otilde;i, nguy&ecirc;n giảng vi&ecirc;n Khoa Ng&ocirc;n ngữ học, trường ĐH KHXH&amp;NV, ĐH Quốc gia H&agrave; Nội, th&igrave; thẳng thắn thừa nhận &ldquo;một sự thật l&agrave; rất nhiều tạp ch&iacute; bằng tiếng Việt chất lượng k&eacute;m&rdquo;, nguy&ecirc;n nh&acirc;n c&oacute; phần do qu&aacute; tr&igrave;nh phản biện v&agrave; bi&ecirc;n tập c&ograve;n dễ d&atilde;i v&agrave; vẫn c&ograve;n t&igrave;nh trạng nể nang nhau, kh&ocirc;ng d&aacute;m từ chối những bản thảo chưa đạt y&ecirc;u cầu. Hệ quả, theo TS. Phạm Thị H&agrave;, l&agrave; &ldquo;&iacute;t người quan t&acirc;m đến việc viết b&agrave;i nghi&ecirc;n cứu bằng tiếng Việt n&oacute;i chung cũng như những b&agrave;i thực sự c&oacute; chất lượng. Những b&agrave;i nghi&ecirc;n cứu thực sự c&oacute; chất lượng th&igrave; mọi người ưu ti&ecirc;n xuất bản quốc tế&rdquo;.</p>\r\n<p>N&acirc;ng cao vị thế tiếng Việt trong xuất bản khoa học</p>\r\n<p>Để n&acirc;ng cao chất lượng c&aacute;c nghi&ecirc;n cứu bằng tiếng Việt cũng như vị thế của tiếng Việt trong xuất bản khoa học, trước hết cần thay đổi về tư duy: kh&ocirc;ng phải cứ nghi&ecirc;n cứu bằng tiếng Việt l&agrave; chất lượng thấp, v&agrave; cũng kh&ocirc;ng phải cứ nghi&ecirc;n cứu hay tạp ch&iacute; quốc tế l&agrave; chất lượng cao. Angel Calderon, Gi&aacute;m đốc nghi&ecirc;n cứu chiến lược tại ĐH RMIT, &Uacute;c, cũng từng chia sẻ tr&ecirc;n University World News rằng &ldquo;kh&ocirc;ng c&oacute; l&yacute; do g&igrave; để chấp nhận rằng c&aacute;c b&agrave;i b&aacute;o tr&ecirc;n tạp ch&iacute; đa ng&ocirc;n ngữ k&eacute;m cỏi hơn so với c&aacute;c ấn phẩm tiếng Anh&rdquo; [3].</p>\r\n<p>Nhưng thực tế, &ldquo;đ&uacute;ng l&agrave; c&oacute; chuyện đăng tạp ch&iacute; nước ngo&agrave;i d&ugrave; chất lượng kh&ocirc;ng tốt nhưng được nhiều điểm hơn khi b&igrave;nh bầu [học h&agrave;m gi&aacute;o sư, ph&oacute; gi&aacute;o sư]&rdquo;, GS.TS Trần Tr&iacute; D&otilde;i n&oacute;i. Trong khi đ&oacute;, rất nhiều tạp ch&iacute; quốc tế đ&atilde; được x&aacute;c định l&agrave; những tạp ch&iacute; &ldquo;săn mồ&rdquo; với qu&aacute; tr&igrave;nh bi&ecirc;n tập rất sơ s&agrave;i, chỉ tập trung v&agrave;o c&aacute;c hoạt động thu ph&iacute;. Hay một số nh&agrave; khoa học đ&atilde; vi phạm li&ecirc;m ch&iacute;nh khoa học khi c&ugrave;ng một nội dung nghi&ecirc;n cứu nhưng dịch ra nhiều thứ tiếng để đăng ở c&aacute;c tạp ch&iacute; tiếng nước ngo&agrave;i kh&aacute;c nhau, n&ecirc;n c&oacute; những trường hợp c&oacute; đến cả trăm c&ocirc;ng bố quốc tế chỉ trong một năm, &ocirc;ng n&ecirc;u thực trạng.</p>\r\n<p>Tạp ch&iacute; \"Global Vietnam\", một trong những tạp ch&iacute; quốc tế hiếm hoi chấp nhận đăng b&agrave;i bằng tiếng Việt. Ảnh: AUP<br>Tạp ch&iacute; \"Global Vietnam\", một trong những tạp ch&iacute; quốc tế hiếm hoi chấp nhận đăng b&agrave;i bằng tiếng Việt. Ảnh: AUP</p>\r\n<p>B&ecirc;n cạnh x&oacute;a bỏ tư duy đề cao qu&aacute; mức xuất bản quốc tế, c&aacute;c nh&agrave; khoa học cũng kh&ocirc;ng n&ecirc;n cảm thấy mặc cảm khi sử dụng tiếng Việt trong nghi&ecirc;n cứu khoa học. GS.TS Trần Tr&iacute; D&otilde;i nhớ lại năm 2015, khi tr&igrave;nh b&agrave;y vấn đề về lịch sử tiếng Việt ở ĐH Vienna, &Aacute;o, sau khi tr&igrave;nh b&agrave;y bằng tiếng Ph&aacute;p, &ocirc;ng đ&atilde; xin ph&eacute;p hội nghị chuyển sang tr&igrave;nh b&agrave;y bằng tiếng Việt để truyền tải trọn vẹn nội dung b&agrave;i n&oacute;i. &ldquo;Họ vỗ tay hoan ngh&ecirc;nh ngay&rdquo;, &ocirc;ng kể. &ldquo;Tức l&agrave; giới học thuật kh&ocirc;ng mặc cảm chuyện đấy l&agrave; tiếng Anh, tiếng Việt hay tiếng Ph&aacute;p. Kh&ocirc;ng phải hội nghị n&agrave;o cũng cứ phải n&oacute;i tiếng Anh&rdquo;.</p>\r\n<p>Sau bước thay đổi tư duy l&agrave; n&acirc;ng cao chất lượng của c&aacute;c nghi&ecirc;n cứu v&agrave; tạp ch&iacute; khoa học bằng tiếng Việt. TS. Phạm Thị H&agrave; đề xuất cần x&acirc;y dựng hệ thống thuật ngữ khoa học tiếng Việt chuẩn để tr&aacute;nh sự thiếu thống nhất, thiếu đồng bộ, thậm ch&iacute; c&oacute; thể dẫn đến nhầm lẫn trong nghi&ecirc;n cứu.</p>\r\n<p>TS. Trần Thị Minh chia sẻ nh&oacute;m nghi&ecirc;n cứu của chị đang đề xuất thực hiện một c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học nhằm x&acirc;y dựng kho ngữ liệu tiếng Việt học thuật v&agrave; t&agrave;i liệu hướng dẫn sử dụng tiếng Việt học thuật. &ldquo;C&oacute; thể những nh&agrave; khoa học ở tầm cao, c&aacute;ch sử dụng ng&ocirc;n ngữ đ&atilde; rất sắc sảo th&igrave; kh&ocirc;ng cần c&oacute; hướng dẫn, nhưng ai cũng phải đi những bước đầu ti&ecirc;n. Nếu những bước đầu ti&ecirc;n kh&ocirc;ng được hướng dẫn một c&aacute;ch b&agrave;i bản, những bước sau sẽ rất kh&oacute; để c&oacute; thể tự vươn l&ecirc;n&rdquo;, chị n&oacute;i về dự định t&acirc;m huyết của m&igrave;nh.</p>\r\n<p>C&aacute;c nh&agrave; khoa học tham dự chương tr&igrave;nh cũng cho rằng cần khuyến kh&iacute;ch, hỗ trợ c&aacute;c c&ocirc;ng bố v&agrave; tạp ch&iacute; song ngữ, đồng thời th&uacute;c đẩy dịch thuật t&agrave;i liệu khoa học từ tiếng Anh sang tiếng Việt v&agrave; ngược lại. Những người tham gia khảo s&aacute;t nhanh của TS. Phạm Thị H&agrave; cũng b&agrave;y tỏ mong muốn c&oacute; th&ecirc;m những hỗ trợ t&agrave;i ch&iacute;nh như c&aacute;c khoản t&agrave;i trợ, ưu đ&atilde;i ph&iacute; xuất bản để c&aacute;c nh&agrave; nghi&ecirc;n cứu c&oacute; th&ecirc;m động lực c&ocirc;ng bố c&aacute;c kết quả khoa học của m&igrave;nh bằng tiếng Việt v&agrave; song ngữ.</p>', 'news/images/articles/d01d9e92d7bb4036a3ddae28d6c0587b.JPG', 4),
(9, 'Sẽ giải quyết các vấn đề phát sinh khi tổ chức chính quyền địa phương 2 cấp', 'se-giai-quyet-cac-van-de-phat-sinh-khi-to-chuc-chinh-quyen-dia-phuong-2-cap', 'published', 2, 0, '2025-03-26 00:00:00.000000', '<p>(PLVN) - Bộ Nội vụ đang lấy &yacute; kiến về dự thảo Luật Tổ chức ch&iacute;nh quyền địa phương (sửa đổi). Dự thảo Luật dự kiến sẽ được tr&igrave;nh Quốc hội tại Kỳ họp thứ 9 v&agrave;o th&aacute;ng 5 tới đ&acirc;y. Trong Tờ tr&igrave;nh về dự &aacute;n Luật, cơ quan soạn thảo đ&atilde; đề xuất hướng giải quyết c&aacute;c vấn đề ph&aacute;t sinh li&ecirc;n quan khi thay đổi tổ chức ch&iacute;nh quyền địa phương từ 3 cấp sang 2 cấp.<br>Chấm dứt tổ chức m&ocirc; h&igrave;nh ch&iacute;nh quyền đ&ocirc; thị tại một số TP</p>\r\n<p>Theo đ&oacute;, để bảo đảm cho hoạt động của ch&iacute;nh quyền địa phương khi chuyển đổi m&ocirc; h&igrave;nh ch&iacute;nh quyền từ 3 cấp sang 2 cấp diễn ra li&ecirc;n tục, th&ocirc;ng suốt, kh&ocirc;ng bị gi&aacute;n đoạn c&ocirc;ng việc, kh&ocirc;ng để chồng ch&eacute;o, tr&ugrave;ng lặp hoặc bỏ s&oacute;t nhiệm vụ, lĩnh vực, địa b&agrave;n, kh&ocirc;ng l&agrave;m ảnh hưởng đến nhiệm vụ ph&aacute;t triển kinh tế - x&atilde; hội, hoạt động b&igrave;nh thường của x&atilde; hội, người d&acirc;n, doanh nghiệp, bảo đảm quốc ph&ograve;ng, an ninh, trật tự, an to&agrave;n x&atilde; hội tr&ecirc;n địa b&agrave;n, dự thảo Luật quy định những nội dung chuyển tiếp li&ecirc;n quan đến một số vấn đề quan trọng, cấp b&aacute;ch cần ưu ti&ecirc;n giải quyết.</p>\r\n<p>Cụ thể, quy định trong thời hạn 2 năm kể từ ng&agrave;y Luật c&oacute; hiệu lực thi h&agrave;nh (từ ng&agrave;y 1/7/2025), giao Ch&iacute;nh phủ ban h&agrave;nh văn bản quy phạm ph&aacute;p luật thuộc thẩm quyền ph&acirc;n định lại nhiệm vụ, quyền hạn của ch&iacute;nh quyền địa phương v&agrave; điều chỉnh c&aacute;c quy định kh&aacute;c c&oacute; li&ecirc;n quan đến việc thực hiện nhiệm vụ, quyền hạn của ch&iacute;nh quyền địa phương để thống nhất &aacute;p dụng trong thời gian chưa sửa đổi, bổ sung c&aacute;c luật, ph&aacute;p lệnh, nghị quyết của Quốc hội (QH), Ủy ban Thường vụ (UBTV) QH v&agrave; định kỳ b&aacute;o c&aacute;o UBTVQH; trường hợp li&ecirc;n quan đến luật, nghị quyết của QH th&igrave; b&aacute;o c&aacute;o QH tại kỳ họp gần nhất; quy định chấm dứt việc tổ chức m&ocirc; h&igrave;nh ch&iacute;nh quyền đ&ocirc; thị đang thực hiện tại TP H&agrave; Nội, TP Hồ Ch&iacute; Minh, TP Đ&agrave; Nẵng, TP Hải Ph&ograve;ng.</p>\r\n<p>Dự thảo Luật cũng quy định thời hạn để c&aacute;c cơ quan của ch&iacute;nh quyền địa phương cấp huyện (trước khi giải thể) phải b&agrave;n giao c&ocirc;ng việc, hồ sơ, t&agrave;i liệu, t&agrave;i ch&iacute;nh, ng&acirc;n s&aacute;ch, trụ sở, t&agrave;i sản, cơ sở vật chất kh&aacute;c c&oacute; li&ecirc;n quan cho c&aacute;c cơ quan, tổ chức, đơn vị c&oacute; thẩm quyền (15 ng&agrave;y); quy định về hiệu lực v&agrave; thẩm quyền xử l&yacute; c&aacute;c văn bản của ch&iacute;nh quyền địa phương cấp huyện (sau khi giải thể).</p>\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; quy định việc tiếp tục thực hiện c&aacute;c c&ocirc;ng tr&igrave;nh, dự &aacute;n đầu tư, c&aacute;c c&ocirc;ng việc, việc giải quyết hồ sơ thủ tục h&agrave;nh ch&iacute;nh của ch&iacute;nh quyền địa phương cấp huyện chưa ho&agrave;n th&agrave;nh hoặc đ&atilde; ho&agrave;n th&agrave;nh nhưng ph&aacute;t sinh vấn đề cần giải quyết; quy định việc giao cho UBND cấp tỉnh c&oacute; thẩm quyền thay đổi tr&igrave;nh tự, thủ tục, thẩm quyền để thực hiện c&aacute;c nhiệm vụ, quyền hạn của ch&iacute;nh quyền địa phương cấp tỉnh v&agrave; cấp cơ sở; c&aacute;c quy định kh&aacute;c c&oacute; li&ecirc;n quan nhằm bảo đảm hoạt động li&ecirc;n tục, b&igrave;nh thường của c&aacute;c cơ quan, tổ chức, đơn vị mới khi thực hiện m&ocirc; h&igrave;nh ch&iacute;nh quyền địa phương 2 cấp.</p>\r\n<p>Một vấn đề kh&aacute;c l&agrave; sửa đổi c&aacute;c quy định li&ecirc;n quan đến việc tổ chức đơn vị h&agrave;nh ch&iacute;nh (ĐVHC) v&agrave; m&ocirc; h&igrave;nh ch&iacute;nh quyền địa phương 2 cấp. Theo đ&oacute;, dự thảo Luật sửa đổi, bổ sung c&aacute;c quy định về tổ chức ĐVHC v&agrave; m&ocirc; h&igrave;nh ch&iacute;nh quyền địa phương 2 cấp (gồm cấp tỉnh v&agrave; cấp cơ sở, kh&ocirc;ng tổ chức cấp huyện) ph&ugrave; hợp với địa b&agrave;n đ&ocirc; thị, n&ocirc;ng th&ocirc;n, hải đảo, ĐVHC kinh tế đặc biệt.</p>\r\n<p>Dự thảo Luật đề xuất tổ chức ch&iacute;nh quyền địa phương ở c&aacute;c ĐVHC; quy định ch&iacute;nh quyền địa phương cấp tỉnh v&agrave; cấp cơ sở đều tổ chức HĐND v&agrave; UBND. HĐND hoạt động theo chế độ tập thể, quyết định theo đa số. UBND hoạt động theo chế độ tập thể UBND kết hợp với đề cao tr&aacute;ch nhiệm của chủ tịch UBND.</p>\r\n<p>Tiếp tục x&acirc;y dựng đề &aacute;n s&aacute;p nhập cấp tỉnh, bỏ cấp huyện theo phương ch&acirc;m &ldquo;vừa chạy, vừa xếp h&agrave;ng&rdquo;</p>\r\n<p>Li&ecirc;n quan đến thực hiện sắp xếp, tinh gọn bộ m&aacute;y, &ocirc;ng Phan Trung Tuấn - Vụ trưởng Vụ Ch&iacute;nh quyền địa phương (Bộ Nội vụ) cũng đ&atilde; trao đổi về một số th&ocirc;ng tin li&ecirc;n quan đến C&ocirc;ng văn số 618/BNV-CQĐP ng&agrave;y 23/3 của Bộ Nội vụ gửi c&aacute;c địa phương về việc tạm dừng thực hiện một số nhiệm vụ, c&ocirc;ng việc li&ecirc;n quan đến ĐVHC c&aacute;c cấp, trong đ&oacute; c&oacute; việc tạm dừng tr&igrave;nh Đề &aacute;n sắp xếp, th&agrave;nh lập ĐVHC cấp huyện, cấp x&atilde; theo quy định của Nghị quyết số 1211/2016/UBTVQH13 (sửa đổi, bổ sung tại Nghị quyết số 27/2022/UBTVQH15) v&agrave; Nghị quyết số 35/2023/UBTVQH15 của UBTVQH về tiếp tục sắp xếp ĐVHC cấp huyện, cấp x&atilde; giai đoạn 2023 - 2030.</p>\r\n<p>Theo đ&oacute;, việc tạm dừng tr&ecirc;n nhằm thực hiện đồng bộ, đ&uacute;ng chỉ đạo của Bộ Ch&iacute;nh trị, Ban B&iacute; thư tại Kết luận số 127-KL/TW, đ&oacute; l&agrave; nghi&ecirc;n cứu định hướng s&aacute;p nhập một số ĐVHC cấp tỉnh, kh&ocirc;ng tổ chức cấp huyện, s&aacute;p nhập một số ĐVHC cấp x&atilde;; thực hiện m&ocirc; h&igrave;nh địa phương 2 cấp (tổ chức đảng, ch&iacute;nh quyền, đo&agrave;n thể), bảo đảm tinh gọn, hiệu năng, hiệu lực, hiệu quả. Hiện Bộ Nội vụ đang khẩn trương phối hợp với c&aacute;c cơ quan Trung ương, địa phương để tham mưu tr&igrave;nh c&aacute;c cấp c&oacute; thẩm quyền Đề &aacute;n về sắp xếp, tổ chức lại ĐVHC c&aacute;c cấp v&agrave; x&acirc;y dựng m&ocirc; h&igrave;nh tổ chức ch&iacute;nh quyền địa phương 2 cấp; đồng thời tham mưu Ch&iacute;nh phủ tr&igrave;nh QH, UBTVQH dự &aacute;n Luật Tổ chức ch&iacute;nh quyền địa phương (sửa đổi), Nghị quyết mới của UBTVQH về sắp xếp ĐVHC v&agrave; c&aacute;c văn bản c&oacute; li&ecirc;n quan, l&agrave;m cơ sở ph&aacute;p l&yacute; để thực hiện s&aacute;p nhập một số tỉnh, TP; kh&ocirc;ng tổ chức cấp huyện, sắp xếp, tổ chức lại ĐVHC cấp cơ sở (cấp x&atilde;) v&agrave; tổ chức ch&iacute;nh quyền địa phương 2 cấp.</p>\r\n<p>&Ocirc;ng Tuấn nhấn mạnh: &ldquo;C&aacute;c c&ocirc;ng việc li&ecirc;n quan đến chủ trương n&agrave;y đang được Bộ Nội vụ v&agrave; c&aacute;c cơ quan Trung ương, địa phương thực hiện với tinh thần &ldquo;thần tốc&rdquo;, &ldquo;l&agrave;m việc kh&ocirc;ng kể ng&agrave;y đ&ecirc;m&rdquo; để bảo đảm ho&agrave;n th&agrave;nh nhiệm vụ n&agrave;y theo đ&uacute;ng lộ tr&igrave;nh đề ra tại C&ocirc;ng văn số 43-KH/BCĐ của Ban Chỉ đạo Trung ương về tổng kết Nghị quyết số 18-NQ/TW&rdquo;.</p>\r\n<p>C&ocirc;ng văn số 618 của Bộ Nội vụ đề nghị UBND tỉnh, TP trực thuộc Trung ương tạm dừng tr&igrave;nh Đề &aacute;n sắp xếp, th&agrave;nh lập ĐVHC cấp huyện, cấp x&atilde; theo quy định của Nghị quyết số 1211 (sửa đổi, bổ sung tại Nghị quyết số 27) v&agrave; Nghị quyết số 35. C&aacute;c địa phương tạm dừng ph&acirc;n loại ĐVHC c&aacute;c cấp; tạm dừng thẩm định, nghiệm thu hồ sơ, bản đồ địa giới ĐVHC c&aacute;c cấp (dự &aacute;n 513) v&agrave; lập mới, chỉnh l&yacute;, bổ sung hồ sơ, bản đồ địa giới ĐVHC c&aacute;c cấp theo Nghị quyết của UBTVQH về việc sắp xếp đối với từng ĐVHC cấp huyện, cấp x&atilde; giai đoạn 2023 - 2025. Đồng thời, c&aacute;c địa phương tạm dừng x&acirc;y dựng Hợp phần Quy hoạch tổng thể ĐVHC cấp huyện, cấp x&atilde; giai đoạn đến năm 2030 v&agrave; tầm nh&igrave;n đến năm 2045 theo y&ecirc;u cầu tại Văn bản số 8657/BNV-CQĐP ng&agrave;y 31/12/2024 của Bộ Nội vụ cho đến khi c&oacute; chủ trương mới của cấp c&oacute; thẩm quyền. Đ&acirc;y l&agrave; những c&ocirc;ng việc được địa phương triển khai theo Kết luận số 48 của Bộ Ch&iacute;nh trị, Nghị quyết số 35 của UBTVQH.</p>\r\n<p>Như vậy, theo C&ocirc;ng văn của Bộ Nội vụ, sẽ chỉ tạm dừng những nhiệm vụ đang thực hiện theo Nghị quyết của UBTVQH trước đ&oacute;. C&ograve;n việc x&acirc;y dựng c&aacute;c đề &aacute;n s&aacute;p nhập ĐVHC cấp tỉnh, bỏ cấp huyện, tiếp tục s&aacute;p nhập ĐVHC cấp x&atilde; theo Kết luận 127 của Bộ Ch&iacute;nh trị, Ban B&iacute; thư vẫn đang được thực hiện với phương ch&acirc;m &ldquo;vừa chạy, vừa xếp h&agrave;ng&rdquo;.</p>\r\n<p>&ldquo;Kh&ocirc;ng thể c&oacute; chuyện đ&ugrave;n đẩy tr&aacute;ch nhiệm&rdquo;</p>\r\n<p>Đại biểu Quốc hội Dương Khắc Mai.<br>Đại biểu Quốc hội Dương Khắc Mai.</p>\r\n<p>Theo m&ocirc; h&igrave;nh ch&iacute;nh quyền địa phương 2 cấp, dự kiến sau khi sắp xếp sẽ giảm khoảng 50% số đơn vị h&agrave;nh ch&iacute;nh cấp tỉnh v&agrave; giảm khoảng 60 - 70% trong số hơn 10.000 x&atilde; sẽ được s&aacute;p nhập so với hiện nay. Điều n&agrave;y đ&ograve;i hỏi khi sắp xếp c&aacute;n bộ 2 cấp phải bảo đảm bản lĩnh ch&iacute;nh trị vững v&agrave;ng, đạo đức trong s&aacute;ng, c&oacute; năng lực nổi bật, d&aacute;m nghĩ, d&aacute;m l&agrave;m, d&aacute;m chịu tr&aacute;ch nhiệm. Nhiều &yacute; kiến cho rằng, việc s&aacute;p nhập tỉnh, tinh giản bộ m&aacute;y l&uacute;c n&agrave;y l&agrave; cần thiết, nhằm n&acirc;ng cao hiệu quả quản l&yacute;, giảm bớt g&aacute;nh nặng ng&acirc;n s&aacute;ch, tạo điều kiện để đất nước ph&aacute;t triển bền vững.</p>\r\n<p>Khi triển khai m&ocirc; h&igrave;nh ch&iacute;nh quyền địa phương 2 cấp, Đại biểu Quốc hội Dương Khắc Mai (Đo&agrave;n Đắk N&ocirc;ng) nhấn mạnh, nhiệm vụ, c&ocirc;ng việc n&agrave;o của ch&iacute;nh quyền cấp cơ sở, tức l&agrave; cấp x&atilde; (tạm gọi do đang nghi&ecirc;n cứu sửa đổi Luật Tổ chức ch&iacute;nh quyền địa phương), th&igrave; ch&iacute;nh quyền cấp cơ sở giải quyết; nhiệm vụ, c&ocirc;ng việc n&agrave;o của cấp tỉnh th&igrave; cấp tỉnh phải xử l&yacute;, kh&ocirc;ng c&oacute; chuyện đ&ugrave;n đẩy qua lại v&agrave; c&oacute; chế t&agrave;i rất mạnh, quy định tr&aacute;ch nhiệm r&otilde; r&agrave;ng. Khi đ&atilde; ph&acirc;n cấp, ph&acirc;n quyền r&otilde; r&agrave;ng th&igrave; &ldquo;phần c&ocirc;ng việc của anh n&agrave;o anh ấy chịu&rdquo;, nếu c&ograve;n đ&ugrave;n đẩy l&agrave; phải c&oacute; chế t&agrave;i xử l&yacute;.</p>\r\n<p>&Ocirc;ng Mai nhấn mạnh, tất cả những việc của người d&acirc;n đều xảy ra ở một địa phương, một địa b&agrave;n cụ thể l&agrave; cơ sở. Khi việc được giải quyết ở x&atilde; th&igrave; n&oacute; sẽ giảm tải cho cấp tỉnh. Hiện lực lượng c&aacute;n bộ &ldquo;tinh, chất lượng&rdquo; xuống cơ sở rồi lại c&oacute; c&ocirc;ng an ch&iacute;nh quy xuống x&atilde; th&igrave; tr&igrave;nh độ ho&agrave;n to&agrave;n đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu. Tất nhi&ecirc;n, theo &ocirc;ng Mai, khi sắp xếp bộ m&aacute;y, c&aacute;n bộ, phải c&oacute; ti&ecirc;u ch&iacute; r&otilde; r&agrave;ng, c&oacute; ti&ecirc;u ch&iacute; r&otilde; r&agrave;ng th&igrave; kh&ocirc;ng c&oacute; vấn đề g&igrave; trở ngại.</p>\r\n<p>Về chế t&agrave;i, &ocirc;ng Mai quả quyết, nếu c&aacute;n bộ kh&ocirc;ng l&agrave;m được th&igrave; &ldquo;ra&rdquo; ngồi chỗ kh&aacute;c, để người kh&aacute;c l&agrave;m v&agrave; sẽ c&oacute; cơ quan xử l&yacute; việc n&agrave;y. &ldquo;Giao cho anh, anh kh&ocirc;ng l&agrave;m được th&igrave; để người kh&aacute;c l&agrave;m&rdquo;, &ocirc;ng Mai n&oacute;i.</p>\r\n<p>&ldquo;C&aacute;n bộ phải c&oacute; năng lực thực sự&rdquo;</p>\r\n<p>Ph&oacute; Chủ tịch Hội Người cao tuổi Việt Nam Trương Xu&acirc;n Cừ.<br>Ph&oacute; Chủ tịch Hội Người cao tuổi Việt Nam Trương Xu&acirc;n Cừ.</p>\r\n<p>Quan t&acirc;m đến tr&igrave;nh độ c&aacute;n bộ cấp x&atilde; khi s&aacute;p nhập, Ph&oacute; Chủ tịch Hội Người cao tuổi Việt Nam Trương Xu&acirc;n Cừ lại cho rằng, khi phạm vi quản l&yacute; của cấp x&atilde; mở rộng, c&aacute;n bộ phải c&oacute; tr&igrave;nh độ cao hơn để đ&aacute;p ứng y&ecirc;u cầu nhiệm vụ, việc quy định c&aacute;n bộ cấp x&atilde; phải c&oacute; bằng đại học l&agrave; ho&agrave;n to&agrave;n ph&ugrave; hợp.</p>\r\n<p>&ldquo;C&oacute; thể n&oacute;i, đ&acirc;y l&agrave; vấn đề mang t&iacute;nh thiết thực v&agrave; cấp thiết. Khi hạn chế bớt c&aacute;c kh&acirc;u trung gian, quy tr&igrave;nh xử l&yacute; c&ocirc;ng việc c&oacute; thể được r&uacute;t ngắn, gi&uacute;p ch&iacute;nh quyền cấp x&atilde;, phường giải quyết trực tiếp c&aacute;c vấn đề của người d&acirc;n. Đối với những nội dung vượt qu&aacute; thẩm quyền của cấp cơ sở, tỉnh c&oacute; thể tham gia giải quyết ngay, bảo đảm t&iacute;nh kịp thời v&agrave; hiệu quả. Đ&acirc;y ch&iacute;nh l&agrave; mục ti&ecirc;u về hiệu năng, hiệu lực, hiệu quả m&agrave; ch&uacute;ng ta hướng đến&rdquo;, &ocirc;ng Cừ nhấn mạnh.</p>\r\n<p>Ngo&agrave;i ra, &ocirc;ng Cừ cho rằng, với một số khu vực đặc th&ugrave; như v&ugrave;ng s&acirc;u, v&ugrave;ng xa, v&ugrave;ng đồng b&agrave;o d&acirc;n tộc thiểu số, cần c&oacute; ch&iacute;nh s&aacute;ch linh hoạt hơn. &ldquo;Quan trọng nhất, ngo&agrave;i bằng cấp, c&aacute;n bộ phải c&oacute; năng lực thực sự, c&oacute; khả năng điều h&agrave;nh, xử l&yacute; c&ocirc;ng việc hiệu quả. Nếu kh&ocirc;ng ch&uacute; trọng chất lượng đội ngũ, việc s&aacute;p nhập sẽ chỉ mang t&iacute;nh cơ học, kh&ocirc;ng đạt hiệu quả như mong đợi&rdquo;, &ocirc;ng Cừ n&oacute;i.</p>', 'news/images/articles/f7362c9feccb4a6b9e9103d837d24824.jpg', 4),
(10, 'Cách nhóm can phạm tổ chức \'bay lắc\' trong nhà tạm giam', 'cach-nhom-can-pham-to-chuc-bay-lac-trong-nha-tam-giam', 'published', 3, 0, '2025-03-26 00:00:00.000000', '<p>An GiangLợi dụng nh&agrave; s&aacute;t v&aacute;ch nơi tạm giam, L&ecirc; Phước T&agrave;i, khi bị bắt v&agrave;o đ&acirc;y đ&atilde; nhờ mẹ ruột tiếp tay, n&eacute;m ma t&uacute;y v&agrave;o để \"bay lắc\" với 3 người chung buồng giam.</p>\r\n<p>H&agrave;nh vi của T&agrave;i (33 tuổi); Đỗ Minh Đức (44 tuổi) v&agrave; 3 người kh&aacute;c được n&ecirc;u trong c&aacute;o trạng VKSND TP Ch&acirc;u Đốc vừa ho&agrave;n tất, truy tố về tội Tổ chức sử dụng tr&aacute;i ph&eacute;p chất ma t&uacute;y theo khoản 2 Điều 255 Bộ luật H&igrave;nh sự.</p>\r\n<p>Theo c&aacute;o trạng, th&aacute;ng 1/2024, L&ecirc; Phước T&agrave;i bị bắt về h&agrave;nh vi T&agrave;ng trữ tr&aacute;i ph&eacute;p chất ma t&uacute;y, bị tạm giam tại buồng 1D, C&ocirc;ng an TP Ch&acirc;u Đốc, c&ugrave;ng với Đức v&agrave; 3 người kh&aacute;c l&agrave;: Dương Tấn Sang, 20 tuổi v&agrave; Trần Tấn Ph&uacute;, 28 tuổi...</p>\r\n<p>Khi biết nh&agrave; T&agrave;i s&aacute;t v&aacute;ch nơi bị tạm giam, Đức b&agrave;n bạc d&ugrave;ng điện thoại li&ecirc;n hệ ra ngo&agrave;i mua ma t&uacute;y sử dụng. Sang, Ph&uacute; cũng đồng &yacute; tham gia \"phi vụ\".</p>\r\n<p>T&agrave;i gọi điện thoại cho mẹ l&agrave; L&ecirc; Thị Thảo, nhờ dẫn đường cho người cung cấp ma t&uacute;y đến h&agrave;ng r&agrave;o nh&agrave; tạm giam.</p>\r\n<p>B&ecirc;n trong, nh&oacute;m can phạm d&ugrave;ng t&uacute;i nylon bện th&agrave;nh d&acirc;y d&agrave;i 7 m, cuộn cơm nguội v&agrave;o một đầu d&acirc;y, d&ugrave;ng d&acirc;y thun bắn qua h&agrave;ng r&agrave;o. Đầu b&ecirc;n kia, Việt buộc ma t&uacute;y, thuốc l&aacute;, điện thoại, pin điện thoại v&agrave; c&aacute;c vật dụng để sử dụng ma t&uacute;y, để nh&oacute;m Đức k&eacute;o v&agrave;o trong.</p>\r\n<p>Bằng c&aacute;ch n&agrave;y, từ cuối th&aacute;ng 1/2024 đến đầu th&aacute;ng 3/2024, nh&oacute;m Đức ba lần đưa ma t&uacute;y v&agrave;o trong nh&agrave; tạm giam, giấu ở nhiều nơi, sử dụng trong 15-20 ng&agrave;y th&igrave; hết. Mỗi lần chơi ma t&uacute;y nh&oacute;m can phạm ph&acirc;n chia người cảnh giới c&aacute;n bộ nh&agrave; tạm giam. Tiền mua ma t&uacute;y ngo&agrave;i người nh&agrave; Đức cung cấp, can phạm n&agrave;y c&ograve;n d&ugrave;ng điện thoại để chuyển khoản.</p>\r\n<p>Ng&agrave;y 15/3/2024, khi cơ quan điều tra lấy lời khai Đức, ph&aacute;t hiện bị can n&agrave;y c&oacute; biểu hiện sử dụng ma t&uacute;y n&ecirc;n t&aacute;ch c&aacute;c can phạm c&ugrave;ng buồng giam ra ri&ecirc;ng. H&ocirc;m sau, nh&agrave; tạm giam kiểm tra đột xuất buồng giam của Đức, ph&aacute;t hiện điện thoại c&ugrave;ng những vật cấm.</p>\r\n<p>Ngay sau đ&oacute; Cục cảnh s&aacute;t điều tra tội phạm về ma t&uacute;y, Cục cảnh s&aacute;t quản l&yacute; thi h&agrave;nh tạm giữ, tạm giam (Bộ C&ocirc;ng an) phối hợp c&ugrave;ng C&ocirc;ng an tỉnh An Giang tổng kiểm tra 38 buồng giam, test nhanh to&agrave;n bộ can phạm, ph&aacute;t hiện Đức, T&agrave;i, Sang, Ph&uacute; dương t&iacute;nh với ma t&uacute;y.</p>\r\n<p>Do t&iacute;nh chất phức tạp, vụ &aacute;n được chuyển giao cho Cơ quan cảnh s&aacute;t điều tra Bộ C&ocirc;ng an thụ l&yacute;.</p>\r\n<p>V&igrave; sao can phạm c&oacute; điện thoại?</p>\r\n<p>C&aacute;o trạng x&aacute;c định, th&aacute;ng 10/2023 Đức v&agrave; hai người kh&aacute;c bị bắt về c&aacute;c h&agrave;nh vi Mua b&aacute;n tr&aacute;i ph&eacute;p chất ma t&uacute;y, C&ocirc;ng nhi&ecirc;n chiếm đoạt t&agrave;i sản, Cố &yacute; g&acirc;y thương t&iacute;ch. Cả ba ở c&aacute;c vụ &aacute;n kh&aacute;c nhau, bị tạm giam chung buồng 1D.</p>\r\n<p>Tại đ&acirc;y, Đức mượn điện thoại của một bị can ở buồng giam kh&aacute;c để gọi cho người th&acirc;n, chi ph&iacute; mỗi lần l&agrave; 300.000 đồng. Th&aacute;ng 11 c&ugrave;ng năm, người nh&agrave; Đức l&eacute;n nh&eacute;t điện thoại v&agrave;o hộp c&aacute; l&oacute;c ch&agrave; b&ocirc;ng, gửi v&agrave;o nh&agrave; tạm giam.</p>\r\n<p>Để qua mặt c&aacute;c đợt kiểm tra, Đức th&aacute;o sim, buộc điện thoại v&agrave;o t&uacute;i vải, treo ph&iacute;a sau buồng giam, v&ocirc; t&igrave;nh bị Nguyễn Th&agrave;nh T&agrave;i (một phạm nh&acirc;n kh&aacute;c) ph&aacute;t hiện, lấy mất. Đức đ&ograve;i lại th&igrave; bị T&agrave;i thu ph&iacute; sạc pin 600.000 đồng.</p>\r\n<p>Sợ bị ph&aacute;t hiện, T&agrave;i thuyết phục Đức đưa lại điện thoại rồi đem nộp cho c&aacute;n bộ nh&agrave; tạm giam. Kh&ocirc;ng l&acirc;u sau, Đức đ&ograve;i mượn điện thoại th&igrave; được T&agrave;i đ&aacute;p ứng, lấy từ kệ khu vực để đồ lưu k&yacute; của can phạm.</p>\r\n<p>Tr&aacute;ch nhiệm của nh&agrave; tạm giam</p>\r\n<p>Li&ecirc;n quan đến vụ &aacute;n, mẹ T&agrave;i, chị g&aacute;i Đức v&agrave; nh&oacute;m người gi&uacute;p chuyển ma t&uacute;y, điện thoại, tiền, đồ vật v&agrave;o nơi tạm giam... kh&ocirc;ng bị truy cứu tr&aacute;ch nhiệm h&igrave;nh sự về h&agrave;nh vi Vi phạm quy định tạm giữ v&igrave; \"kh&ocirc;ng biết c&aacute;c bị can mua ma t&uacute;y v&agrave; sử dụng đồ vật gửi v&agrave;o nhằm mục đ&iacute;ch sử dụng tr&aacute;i ph&eacute;p\". Trong nh&oacute;m n&agrave;y c&oacute; một c&aacute;n bộ nh&agrave; tạm giam v&agrave; một chiến sĩ nghĩa vụ c&ocirc;ng t&aacute;c tại đ&acirc;y.</p>\r\n<p>C&aacute;o trạng x&aacute;c định c&oacute; 3 chiến sĩ nghĩa vụ c&oacute; h&agrave;nh vi gi&uacute;p người nh&agrave; bị can chuyển tiền \"tiếp tế\" l&agrave; kh&ocirc;ng đ&uacute;ng quy định, song hưởng lợi kh&ocirc;ng lớn, chưa g&acirc;y ra thiệt hại; đồng thời kh&ocirc;ng gắn với hậu quả của c&aacute;c bị can trong vụ &aacute;n n&ecirc;n VKS cho rằng chưa đủ cơ sở xử l&yacute; về h&agrave;nh vi Lợi dụng chức vụ quyền hạn trong thi h&agrave;nh c&ocirc;ng vụ.</p>\r\n<p>Về tr&aacute;ch nhiệm của c&aacute;n bộ v&agrave; l&atilde;nh đạo nh&agrave; tạm giam, Cục cảnh s&aacute;t quản l&yacute; thi h&agrave;nh tạm giữ, tạm giam đề nghị C&ocirc;ng an tỉnh An Giang xử l&yacute; triệt để c&aacute;c sai phạm li&ecirc;n quan.</p>', 'news/images/articles/44793ce2f08d44d492dd9e9d0cd3d57f.JPG', 4),
(11, '3 Pháp luậtThứ ba, 25/3/2025, 19:15 (GMT+7) Bốn dự án có dấu hiệu lãng phí bị đưa vào diện \'theo dõi\'', '3-phap-luatthu-ba-2532025-1915-gmt7-bon-du-an-co-dau-hieu-lang-phi-bi-dua-vao-dien-theo-doi', 'published', 4, 1, '2025-03-26 00:00:00.000000', '<p>Dự &aacute;n trụ sở Bộ Ngoại giao v&agrave; 3 vụ &aacute;n, vụ việc c&oacute; dấu hiệu l&atilde;ng ph&iacute; kh&aacute;c được đưa v&agrave;o diện theo d&otilde;i của Ban chỉ đạo Trung ương về ph&ograve;ng chống tham nhũng, l&atilde;ng ph&iacute;, ti&ecirc;u cực.</p>\r\n<p>Dự &aacute;n trụ sở Bộ Ngoại giao tr&ecirc;n đường L&ecirc; Quang Đạo tại H&agrave; Nội được khởi c&ocirc;ng th&aacute;ng 8/2009 c&oacute; tổng mức đầu tư được ph&ecirc; duyệt ban đầu gần 3.500 tỷ đồng, sau điều chỉnh hơn 4.000 tỷ đồng, tổng diện t&iacute;ch 8 ha, gồm 3 khối nh&agrave;. Dự &aacute;n x&acirc;y xong nhiều năm nhưng hiện chỉ sử dụng một phần nhỏ, c&ograve;n lại để kh&ocirc;ng.</p>\r\n<p>Ng&agrave;y 25/3, cuộc họp Thường trực Ban Chỉ đạo Trung ương về ph&ograve;ng chống tham nhũng, l&atilde;ng ph&iacute; ti&ecirc;u cực đ&atilde; thống nhất đưa dự &aacute;n n&agrave;y c&ugrave;ng 3 vụ &aacute;n, vụ việc c&oacute; dấu hiệu l&atilde;ng ph&iacute; v&agrave;o diện theo d&otilde;i, gồm: vụ &aacute;n Vi phạm quy định về quản l&yacute;, sử dụng t&agrave;i sản Nh&agrave; nước g&acirc;y thất tho&aacute;t, l&atilde;ng ph&iacute; li&ecirc;n quan sai phạm tại dự &aacute;n T&ograve;a nh&agrave; Trung t&acirc;m điều h&agrave;nh v&agrave; giao dịch thương mại, Tổng C&ocirc;ng ty Xi măng Việt Nam (VCEM); dự &aacute;n Thủy điện Hồi Xu&acirc;n, tỉnh Thanh H&oacute;a; Tiểu dự &aacute;n 2 (Lim - Phả Lại), thuộc dự &aacute;n tuyến đường sắt Y&ecirc;n Vi&ecirc;n - Phả Lại - Hạ Long - C&aacute;i L&acirc;n.</p>\r\n<p>Dự &aacute;n trụ sở Bộ Ngoại giao c&oacute; vị tr&iacute; đắc địa với hai mặt gi&aacute;p đường lớn. Ảnh: Người Lao Động<br>Dự &aacute;n trụ sở Bộ Ngoại giao c&oacute; vị tr&iacute; đắc địa với hai mặt gi&aacute;p đường lớn. Ảnh: Người Lao Động</p>\r\n<p>Cơ quan điều tra Bộ C&ocirc;ng an v&agrave; c&ocirc;ng an c&aacute;c địa phương đ&atilde; khởi tố, điều tra một số vụ &aacute;n về l&atilde;ng ph&iacute; theo phương ch&acirc;m \"xử l&yacute; một vụ, cảnh tỉnh cả v&ugrave;ng, cả lĩnh vực\", như: vụ &aacute;n Nhận hối lộ; Vi phạm quy định về đấu thầu g&acirc;y hậu quả nghi&ecirc;m trọng xảy ra tại Bộ N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển n&ocirc;ng th&ocirc;n, C&ocirc;ng ty TNHH Ho&agrave;ng D&acirc;n v&agrave; c&aacute;c đơn vị li&ecirc;n quan; vụ &aacute;n Vi phạm quy định về quản l&yacute;, sử dụng t&agrave;i sản Nh&agrave; nước g&acirc;y thất tho&aacute;t, l&atilde;ng ph&iacute; xảy ra tại Tổng C&ocirc;ng ty Xi măng Việt Nam (VICEM) v&agrave; c&aacute;c đơn vị li&ecirc;n quan.</p>\r\n<p>Theo th&ocirc;ng c&aacute;o của Ban Nội ch&iacute;nh Trung ương, từ cuối th&aacute;ng 12/2024 đến nay, c&aacute;c cơ quan tiến h&agrave;nh tố tụng cả nước đ&atilde; khởi tố, điều tra hơn 1.130 vụ với gần 2.200 bị can về c&aacute;c tội tham nhũng, kinh tế, chức vụ.</p>\r\n<p>Với c&aacute;c vụ &aacute;n, vụ việc thuộc diện Ban Chỉ đạo theo d&otilde;i, chỉ đạo đ&atilde; khởi tố mới một vụ &aacute;n; khởi tố bổ sung 25 bị can trong 7 vụ &aacute;n; kết luận điều tra 3 vụ &aacute;n với 76 bị can...</p>\r\n<p>C&aacute;c cơ quan tố tụng đ&atilde; kết th&uacute;c điều tra vụ &aacute;n xảy ra tại tập đo&agrave;n Ph&uacute;c Sơn; ban h&agrave;nh c&aacute;o trạng truy tố c&aacute;c vụ &aacute;n xảy ra tại tập đo&agrave;n Điện lực Việt Nam, Tổng c&ocirc;ng ty Ch&egrave; Việt Nam, tập đo&agrave;n Th&aacute;i Dương...</p>\r\n<p>Cơ quan thi h&agrave;nh &aacute;n d&acirc;n sự đ&atilde; thu hồi được hơn 6.000 tỷ đồng trong c&aacute;c vụ &aacute;n tham nhũng, n&acirc;ng tổng số tiền thu hồi được từ khi th&agrave;nh lập Ban Chỉ đạo đến nay l&ecirc;n 102.040 tỷ đồng.</p>', 'news/images/articles/90d04533d47d4763a1fa671e8761e4b9.JPG', 4),
(12, 'Ôtô bị trộm 4 bánh', 'oto-bi-trom-4-banh', 'published', 5, 0, '2025-03-26 00:00:00.000000', '<p>Bạc Li&ecirc;uNgười đ&agrave;n &ocirc;ng 38 tuổi mang &ocirc;t&ocirc; 5 chỗ mới mua một th&aacute;ng từ nh&agrave; ra đậu qua đ&ecirc;m ở vỉa h&egrave;, đến s&aacute;ng h&ocirc;m sau ph&aacute;t hiện mất 4 b&aacute;nh xe.</p>\r\n<p>Chiều 25/3, đại diện UBND phường 7, TP Bạc Li&ecirc;u, cho biết nghi can trộm 4 b&aacute;nh &ocirc;t&ocirc; l&agrave; Chi&ecirc;u B&igrave;nh, 26 tuổi. Sau khi được vận động, nam thanh ni&ecirc;n đ&atilde; đến c&ocirc;ng an phường đầu th&uacute;, khai nhận h&agrave;nh vi.</p>\r\n<p>Chiếc &ocirc;t&ocirc; bị trộm mất 4 b&aacute;nh của người đ&agrave;n &ocirc;ng ở TP Bạc Li&ecirc;u. Ảnh: An Minh<br>Chiếc &ocirc;t&ocirc; bị lấy mất 4 b&aacute;nh của người đ&agrave;n &ocirc;ng ở TP Bạc Li&ecirc;u. Ảnh: An Minh</p>\r\n<p>Chủ xe cho biết vừa mua &ocirc;t&ocirc;, dự định sẽ chạy taxi. Tối 24/3, nh&agrave; c&oacute; việc, anh mang xe từ đường V&otilde; Thị S&aacute;u sang đường Trần Huỳnh - khu vực trước Nh&agrave; thiếu nhi Ph&ugrave;ng Ngọc Li&ecirc;m, phường 7, để đậu tạm. Khoảng 8h h&ocirc;m nay, anh ra lấy xe th&igrave; ph&aacute;t hiện sự việc n&ecirc;n b&aacute;o c&ocirc;ng an.</p>\r\n<p>Trước đ&oacute;, một số người d&acirc;n đi tập thể dục ph&aacute;t hiện chiếc xe bị mất c&aacute;c b&aacute;nh, b&ecirc;n dưới c&oacute; nhiều vi&ecirc;n gạch được xếp chồng k&ecirc; l&ecirc;n, nhưng kh&ocirc;ng r&otilde; nguy&ecirc;n nh&acirc;n v&agrave; kh&ocirc;ng biết chủ xe l&agrave; ai để th&ocirc;ng b&aacute;o.</p>', 'news/images/articles/912c9f1d16584fea924e04593ee1a052.jpg', 4);
INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`) VALUES
(13, 'Tuyển Việt Nam thắng đậm Lào: Đầu đã xuôi, chờ đuôi lọt', 'tuyen-viet-nam-thang-dam-lao-dau-da-xuoi-cho-duoi-lot', 'published', 2, 0, '2025-03-26 00:00:00.000000', '<p>Tuyển Việt Nam kh&ocirc;ng gặp qu&aacute; nhiều kh&oacute; khăn để gi&agrave;nh trọn 3 điểm trước L&agrave;o ở v&ograve;ng loại Asian Cup bằng một tỉ số đậm, đ&uacute;ng mong muốn của HLV Kim Sang Sik.<br>1. Trước khi b&oacute;ng lăn ở G&ograve; Đậu, kh&ocirc;ng ai nghi ngờ cửa chiến thắng gi&agrave;nh cho tuyển Việt Nam trước L&agrave;o, bởi năng lực, kinh nghiệm giữa đ&ocirc;i b&ecirc;n l&agrave; qu&aacute; ch&ecirc;nh lệch.</p>\r\n<p>Tuy nhi&ecirc;n, tuyển Việt Nam c&ograve;n kh&aacute; nhiều vấn đề trước khi bước v&agrave;o v&ograve;ng loại Asian Cup, cho n&ecirc;n mục ti&ecirc;u thắng đậm L&agrave;o bằng một lối chơi m&atilde;n nh&atilde;n m&agrave; HLV Kim Sang Sik tuy&ecirc;n bố trước trận đấu được coi &iacute;t khả thi.</p>\r\n<p>Nhưng rốt cuộc, tuyển Việt Nam cũng c&oacute; một chiến thắng với tỉ số đậm 5-0 như mong muốn trước L&agrave;o v&agrave; khởi đầu v&ograve;ng loại Asian Cup một c&aacute;ch su&ocirc;n sẻ nhất.</p>\r\n<p>tuyen viet nam lao 10.jpg<br>Tuyển Việt Nam c&oacute; trận ra qu&acirc;n v&ograve;ng loại Asian Cup thuận lợi. Ảnh: Hữu H&agrave;<br>2. Dựa v&agrave;o bảng tỉ số r&otilde; r&agrave;ng chiến thắng m&agrave; tuyển Việt Nam tạo ra trước L&agrave;o l&agrave; dễ d&agrave;ng, nhưng thực tế th&igrave; ngược lại. Đo&agrave;n qu&acirc;n của HLV Kim Sang Sik vẫn c&oacute; vấn đề trong 45 ph&uacute;t đầu trận.</p>\r\n<p>Trước một đội b&oacute;ng chơi với số đ&ocirc;ng b&ecirc;n phần s&acirc;n nh&agrave;, tuyển Việt Nam d&ugrave; nắm thế chủ động, kiểm so&aacute;t lối chơi v&agrave; thậm ch&iacute; sớm mở được tỉ số trước nhưng lại đ&aacute; tương đối bế tắc.</p>\r\n<p>Khoảng thời gian từ b&agrave;n mở tỉ số của Ch&acirc;u Ngọc Quang đến khi Văn Vĩ nh&acirc;n đ&ocirc;i c&aacute;ch biệt l&agrave; kh&aacute; xa, đủ để thấy tuyển Việt Nam gặp kh&oacute; khăn ra sao trong c&aacute;c pha b&oacute;ng quyết định. Nhiều lần HLV Kim Sang Sik lắc đầu với c&aacute;c học tr&ograve; cũng l&agrave; v&igrave; điều n&agrave;y.</p>\r\n<p>V&agrave; 2 b&agrave;n thắng đầu của tuyển Việt Nam cũng c&oacute; phần may mắn bởi h&agrave;ng ph&ograve;ng ngự tuyển L&agrave;o l&uacute;ng t&uacute;ng, thay v&igrave; đến nhờ c&aacute;c ch&acirc;n s&uacute;t học tr&ograve; &ocirc;ng Kim Sang Sik qu&aacute; xuất sắc.</p>\r\n<p>kim sang sik.jpg</p>\r\n<p>Nhưng mọi thứ mới chỉ bắt đầu với HLV Kim Sang Sik. Ảnh: Hữu H&agrave;<br>3. Đ&aacute;nh gi&aacute; một c&aacute;ch s&ograve;ng phẳng, tuyển Việt Nam chơi kh&ocirc;ng m&atilde;n nh&atilde;n như mong muốn của HLV Kim Sang Sik ở hiệp đấu đầu ti&ecirc;n. Đội chủ nh&agrave; chỉ lột x&aacute;c sau giờ nghỉ khi Văn Vĩ lập c&uacute; đ&uacute;p, đồng thời L&agrave;o đẩy cao đội h&igrave;nh.</p>\r\n<p>Tuyển Việt Nam phối hợp, tạo ra nhiều pha b&oacute;ng đ&aacute;ng xem hơn so với hiệp đấu đầu ti&ecirc;n. Ba b&agrave;n thắng rất đẹp l&agrave; minh chứng r&otilde; nhất cho sự thay đổi của đo&agrave;n qu&acirc;n HLV Kim Sang Sik.</p>\r\n<p>D&ugrave; thế, n&oacute;i tuyển Việt Nam đ&atilde; ổn, l&agrave;m h&agrave;i l&ograve;ng người h&acirc;m mộ hay giới chuy&ecirc;n m&ocirc;n nhất th&igrave; vẫn chưa. Song, với những thay đổi t&iacute;ch cực trong lối chơi ở hiệp đấu thứ 2 khi gặp L&agrave;o hoặc m&agrave;n thể hiện ch&oacute;i s&aacute;ng từ Văn Vĩ, Hai Long&hellip; hy vọng chặng đường tới đội b&oacute;ng của HLV Kim Sang Sik đ&aacute;ng xem hơn nữa.</p>', 'news/images/articles/1c45d2a598e34ec0bfc5d6dfda4e387a.jpg', 1),
(14, 'Tuyển Indonesia hạ Bahrain: 3 chìa khóa chiến thắng của Kluivert', 'tuyen-indonesia-ha-bahrain-3-chia-khoa-chien-thang-cua-kluivert', 'published', 3, 0, '2025-03-26 00:00:00.000000', '<p>Tuyển Indonesia xuất sắc đ&aacute;nh bại Bahrain ở v&ograve;ng loại World Cup 2026, v&agrave; thầy tr&ograve; Patrick Kluivert nhận được nhiều lời khen từ b&aacute;o ch&iacute;.<br>Hiệu quả v&agrave; ki&ecirc;n nhẫn</p>\r\n<p>Đội tuyển Indonesia vừa gi&agrave;nh 3 điểm quan trọng sau khi thắng Bahrain với tỷ số tối thiểu 1-0, trong khu&ocirc;n khổ bảng C, giai đoạn 3 v&ograve;ng loại World Cup 2026 khu vực ch&acirc;u &Aacute;.</p>\r\n<p>Tr&ecirc;n s&acirc;n Gelora Bung Karno cuồng nhiệt, Ole Romeny ghi b&agrave;n duy nhất để định đoạt trận đấu ngay trong hiệp 1.</p>\r\n<p>Kompas. Indonesia Bahrain.jpg<br>Indonesia thực dụng v&agrave; hiệu quả hơn. Ảnh: Kompas<br>Tr&ecirc;n tờ Kompas, chuy&ecirc;n gia b&oacute;ng đ&aacute; Gita Suwondo nhận định bước ngoặt gi&uacute;p Indonesia chiến thắng l&agrave; sự hiệu quả v&agrave; ki&ecirc;n nhẫn.</p>\r\n<p>Ngo&agrave;i ra, &ocirc;ng cho rằng chiến thuật của HLV Patrick Kluivert l&agrave; yếu tố quan trọng tạo kh&aacute;c biệt. Indonesia thận trọng hơn khi chỉ kiểm so&aacute;t b&oacute;ng 42,3%.</p>\r\n<p>&ldquo;Indonesia thi đấu hiệu quả v&agrave; ki&ecirc;n nhẫn, kh&ocirc;ng bị mất b&igrave;nh tĩnh d&ugrave; trước hay sau khi dẫn b&agrave;n.</p>\r\n<p>B&agrave;n thắng l&agrave; th&agrave;nh quả của việc Garuda &aacute;p s&aacute;t rất tốt trong suốt hiệp 1, khiến Bahrain kh&ocirc;ng thể tạo ra cơ hội&rdquo;.</p>\r\n<p>Suwondo nhấn mạnh: &ldquo;Cuối c&ugrave;ng, Kluivert đ&atilde; hạ thấp c&aacute;i t&ocirc;i của m&igrave;nh bằng c&aacute;ch đ&aacute; với 3 trung vệ thực thụ, kh&ocirc;ng cố tranh b&oacute;ng bằng mọi c&aacute;ch cũng như kh&ocirc;ng &agrave;o l&ecirc;n tấn c&ocirc;ng&rdquo;.</p>\r\n<p>Nh&acirc;n tố Pelupessy</p>\r\n<p>Indonesia mang bộ mặt kh&aacute;c so với trận thua Australia. Tuyến giữa được kiểm so&aacute;t tốt hơn v&agrave; kh&ocirc;ng c&ograve;n sai lầm trong c&aacute;c t&igrave;nh huống cố định.</p>\r\n<p>Kompas. Pelupessy Indonesia Bahrain.jpg</p>\r\n<p>Pelupessy tạo kh&aacute;c biệt ở giữa s&acirc;n. Ảnh: Kompas<br>Điều n&agrave;y nhờ rất nhiều v&agrave;o Joey Pelupessy, cầu thủ được Kluivert cho ra mắt đội tuyển Indonesia.</p>\r\n<p>&ldquo;Hiệp hai, sức giảm, nhưng ph&ograve;ng ngự vẫn hoạt động tốt v&agrave; chặt chẽ&rdquo;, Suwondo giải th&iacute;ch.</p>\r\n<p>Pelupessy, cựu th&agrave;nh vi&ecirc;n U20 H&agrave; Lan v&agrave; hiện chơi b&oacute;ng ở Bỉ, gi&uacute;p Indonesia kiểm so&aacute;t trận đấu khi đ&aacute; cặp với Thom Haye.</p>\r\n<p>Tiền vệ 31 tuổi c&oacute; 85% đường chuyền th&agrave;nh c&ocirc;ng, vượt xa mức trung b&igrave;nh của Indonesia (79,8%). Anh thắng tranh chấp tay đ&ocirc;i 4 lần, thắng 2 pha kh&ocirc;ng chiến v&agrave; kh&ocirc;ng c&oacute; thất bại ở c&aacute;c pha một đối một.</p>\r\n<p>Bahrain v&ugrave;ng l&ecirc;n trong hiệp 2, c&oacute; 3 t&igrave;nh huống phạt g&oacute;c. Với Pelupessy chỉ đạo, c&aacute;c khoảng trống được bịt k&iacute;n.</p>\r\n<p>&ldquo;D&ugrave; Bahrain c&oacute; 3 quả phạt g&oacute;c, nhưng kh&ocirc;ng t&igrave;nh huống n&agrave;o tạo nguy hiểm với thủ m&ocirc;n. Đ&acirc;y l&agrave; dấu hiệu cho thấy ph&ograve;ng ngự v&agrave; lối chơi hiệu quả l&agrave; sức mạnh của Indonesia&rdquo;, Suwondo khen ngợi.</p>\r\n<p>Sức mạnh Ole Romeny</p>\r\n<p>Điều khiến người h&acirc;m mộ v&agrave; b&aacute;o ch&iacute; Indonesia h&agrave;i l&ograve;ng nhất l&agrave; sự hiệu quả m&agrave; &ldquo;t&acirc;n binh&rdquo; Ole Romeny (hoặc Ole Romenij theo t&ecirc;n thật trong tiếng H&agrave; Lan) mang lại.</p>\r\n<p>Kompas. Ole Romeny Indonesia Bahrain.jpg<br>Ole Romeny ghi b&agrave;n quan trọng cho Indonesia. Ảnh: Kompas<br>&ldquo;Ng&ocirc;i sao mới của Indonesia, Ole Romeny, một lần nữa chứng minh được khả năng ghi b&agrave;n đ&aacute;ng tin cậy của m&igrave;nh. Cầu thủ của Oxford United chuyển h&oacute;a cơ hội th&agrave;nh b&agrave;n thắng&rdquo;, Bola khen ngợi.</p>\r\n<p>Thom Haye tung đường chuyền d&agrave;i từ giữa s&acirc;n ra ph&iacute;a sau h&agrave;ng thủ Bahrain, Marselino Ferdinan c&oacute; pha đẩy b&oacute;ng rất tinh tế để Romeny dứt điểm một chạm ở gần chấm phạt đền th&agrave;nh b&agrave;n.</p>\r\n<p>Bola viết: &ldquo;Đ&acirc;y l&agrave; lần thứ 2 Ole Romeny ghi t&ecirc;n m&igrave;nh l&ecirc;n bảng tỉ số. Ở trận đấu trước, cựu cầu thủ của FC Utrecht cũng đ&atilde; ghi một b&agrave;n thắng khi Garuda để thua 1-5 tr&ecirc;n s&acirc;n Australia&rdquo;.</p>\r\n<p>Romeny kh&ocirc;ng qu&aacute; nổi bật trong cả trận, nhưng rất hiệu quả. Anh c&oacute; 2 c&uacute; s&uacute;t, đều đi ch&iacute;nh x&aacute;c v&agrave; 1 trở th&agrave;nh b&agrave;n thắng.</p>\r\n<p>C&oacute; thể n&oacute;i, rất l&acirc;u rồi Indonesia mới t&igrave;m được tiền đạo hiệu quả như vậy để mơ về th&agrave;nh c&ocirc;ng.</p>', 'news/images/articles/a17482f7db9947eb9086b4b59dd96cc9.jpg', 1),
(15, 'U17 Việt Nam đánh bại Oman, quyết \'săn\' vé World Cup', 'u17-viet-nam-danh-bai-oman-quyet-san-ve-world-cup', 'published', 4, 0, '2025-03-26 00:00:00.000000', '<p>U17 Việt Nam thắng chủ nh&agrave; U17 Oman 1-0 trong trận giao hữu \"l&agrave;m n&oacute;ng\" cho chiến dịch VCK U17 ch&acirc;u &Aacute; 2025.<br>Tối 25/3, U17 Việt Nam bước v&agrave;o trận giao hữu \"lượt đi\" gặp U17 Oman. Đ&acirc;y l&agrave; trận đấu HLV Cristiano Roland c&oacute; nhiều thử nghiệm nhằm chuẩn bị cho VCK U17 ch&acirc;u &Aacute; 2025.&nbsp;</p>\r\n<p>Cả hai đội chơi cởi mở, tạo ra nhiều cơ hội. U17 Việt Nam sau đợt tập trung tại H&agrave; Nội đ&atilde; định h&igrave;nh r&otilde; n&eacute;t về bộ khung cũng như lối chơi. Thế trận c&acirc;n bằng được U17 Việt Nam v&agrave; U17 Oman tạo ra trong phần lớn thời gian thi đấu.</p>\r\n<p>u17 viet nam u17 yemen 6.jpg<br>U17 Việt Nam thắng U17 Oman 1-0.<br>Ph&uacute;t 82, B&ugrave;i Duy Đăng ghi b&agrave;n gi&uacute;p đo&agrave;n qu&acirc;n của HLV Cristiano Roland vươn l&ecirc;n dẫn trước. Kết quả n&agrave;y được giữ nguy&ecirc;n khi trọng t&agrave;i thổi c&ograve;i kết th&uacute;c trận đấu.</p>\r\n<p>Sau trận n&agrave;y, hai đội t&aacute;i đấu v&agrave;o l&uacute;c 18h30 ng&agrave;y 27/3. Đ&acirc;y được xem l&agrave; m&agrave;n \"tổng duyệt\" của U17 Việt Nam trước khi bước v&agrave;o VCK U17 ch&acirc;u &Aacute; 2025.</p>\r\n<p>Tại VCK, U17 Việt Nam lần lượt gặp Australia (22h00 ng&agrave;y 4/4), Nhật Bản (22h00 ng&agrave;y 7/4) v&agrave; UAE (22h00 ng&agrave;y 10/4). Nếu vượt qua v&ograve;ng bảng, thầy tr&ograve; HLV Cristiano Roland c&oacute; v&eacute; dự World Cup 2025.</p>', 'news/images/articles/486e132c365e4bd1b925198311b7651e.JPG', 1),
(16, 'Báo Trung Quốc: “Bàn thắng của cầu thủ Việt Nam thật đáng kinh ngạc”', 'bao-trung-quoc-ban-thang-cua-cau-thu-viet-nam-that-dang-kinh-ngac', 'published', 5, 1, '2025-03-26 00:00:00.000000', '<p>Trang b&aacute;o Trung Quốc ngỡ ng&agrave;ng với m&agrave;n tr&igrave;nh diễn của c&aacute;c cầu thủ U22 Việt Nam v&agrave; đội nh&agrave; đ&atilde; phải chịu &ldquo;c&uacute; sốc&rdquo; ở giải Tứ h&ugrave;ng.</p>\r\n<p>Ở lượt trận cuối tại giải CFA Team China 2025, U22 Việt Nam ghi b&agrave;n dẫn trước nhưng sau đ&oacute; lại để chủ nh&agrave; Trung Quốc gỡ ho&agrave; 1-1 nhờ được trọng t&agrave;i cho hưởng 11m. Tỷ số ho&agrave; gi&uacute;p Trung Quốc đoạt chức v&ocirc; địch c&ograve;n U22 Việt Nam xếp hạng 3 chung cuộc.</p>\r\n<p>Điều bất ngờ l&agrave; sau trận đấu, trang Sohu của Trung Quốc lại ca ngợi U22 Việt Nam, đồng thời b&agrave;y tỏ sự thất vọng về đội nh&agrave;. Sohu đặt ti&ecirc;u đề: &ldquo;Đội U22 Trung Quốc đ&atilde; chịu th&ecirc;m một c&uacute; sốc v&agrave; điều đ&aacute;ng suy ngẫm sau b&agrave;n thắng của U22 Việt Nam&rdquo;.</p>\r\n<p>D&ugrave; đội nh&agrave; tho&aacute;t thua v&agrave; v&ocirc; địch, nhưng b&agrave;i viết của Sohu đưa ra b&igrave;nh luận đầy bất ngờ: &ldquo;Chiều tối 25/3, bầu trời Di&ecirc;m Th&agrave;nh dường như buồn b&atilde; trước m&agrave;n thể hiện của đội U22 Trung Quốc. Đội U22 quốc gia giống như vừa trải qua một thất bại trước U22 Việt Nam. Trận đấu n&agrave;y kh&ocirc;ng chỉ l&agrave;m buồn l&ograve;ng người h&acirc;m mộ m&agrave; c&ograve;n khơi dậy những suy nghĩ s&acirc;u sắc về tương lai của b&oacute;ng đ&aacute; Trung Quốc.</p>\r\n<p>Trong hiệp 1, cầu thủ Nguyễn Quốc Việt của Việt Nam đ&atilde; mở tỷ số, ph&aacute; vỡ sự im lặng của CĐV Trung Quốc tr&ecirc;n s&acirc;n. Trong khi đ&oacute;, Kuai Jiwen đ&atilde; cố gắng tấn c&ocirc;ng v&agrave; s&uacute;t tr&uacute;ng x&agrave; ngang nhưng cuối c&ugrave;ng, anh lại chẳng thể chuyển ho&aacute; th&agrave;nh b&agrave;n thắng&rdquo;.</p>\r\n<p><br>U22 Việt Nam c&oacute; một trận đấu đ&aacute;ng khen trước Trung Quốc.</p>\r\n<p>Trang Sohu tiếp tục ca ngợi U22 Việt Nam, d&ugrave;ng từ kinh ngạc để n&oacute;i về b&agrave;n thắng mở tỷ số của Quốc Việt:</p>\r\n<p>&ldquo;Trong trận n&agrave;y, phẩm chất v&agrave; tinh thần đồng đội m&agrave; U22 Việt Nam thể hiện dường như khiến ch&uacute;ng ta phải suy ngẫm. Tại sao c&aacute;c cầu thủ trẻ của ch&uacute;ng ta kh&ocirc;ng thể chuyển ho&aacute; lợi thế s&acirc;n nh&agrave; để gi&agrave;nh chiến thắng trước một đối thủ c&oacute; sức mạnh tương đương?</p>\r\n<p>B&agrave;n thắng của Nguyễn Quốc Việt đến từ một pha d&agrave;n xếp tấn c&ocirc;ng đơn giản nhưng hiệu quả. Th&ocirc;ng qua việc chuyền b&oacute;ng hiệu quả v&agrave; sắc n&eacute;t, U22 Việt Nam đ&atilde; t&igrave;m được cơ hội tận dụng h&agrave;ng thủ của U22 Trung Quốc, điều n&agrave;y khiến người ta phải kinh ngạc trước sự trưởng th&agrave;nh v&agrave; ph&aacute;t triển tốt của b&oacute;ng đ&aacute; Việt Nam trong hệ thống đ&agrave;o tạo trẻ&rdquo;.</p>\r\n<p>Trang Sohu tiếp tục b&igrave;nh luận b&agrave;y tỏ mối lo cho đội nh&agrave;: &ldquo;Trước m&agrave;n tr&igrave;nh diễn của U22 Việt Nam, ch&uacute;ng ta kh&ocirc;ng khỏi suy ngẫm rằng trong 10 năm tới hoặc l&acirc;u hơn nữa, c&aacute;c đội sẽ thay đổi như thế n&agrave;o? Sự trỗi dậy của b&oacute;ng đ&aacute; Việt Nam trong những năm gần đ&acirc;y ở phạm vi ch&acirc;u &Aacute; vốn kh&ocirc;ng phải l&agrave; ngẫu nhi&ecirc;n. Từ việc th&agrave;nh lập hệ thống đ&agrave;o tạo trẻ đến t&iacute;ch luỹ kinh nghiệm thi đấu, r&otilde; r&agrave;ng Việt Nam đ&atilde; t&igrave;m ra con đường ph&ugrave; hợp để ph&aacute;t triển bản th&acirc;n trong qu&aacute; tr&igrave;nh kh&aacute;m ph&aacute; v&agrave; r&egrave;n luyện kh&ocirc;ng ngừng&hellip;</p>\r\n<p><br>Theo một nghĩa n&agrave;o đ&oacute;, trận đấu n&agrave;y kh&ocirc;ng chỉ l&agrave; cuộc so t&agrave;i giữa U22 Trung Quốc v&agrave; U22 Việt Nam, m&agrave; c&ograve;n l&agrave; v&ograve;ng phản &aacute;nh v&agrave; tự vấn mới của b&oacute;ng đ&aacute; Trung Quốc ở cấp độ vĩ m&ocirc; hơn. Liệu ch&uacute;ng ta c&oacute; thể t&igrave;m ra những đột ph&aacute; mới trong đ&agrave;o tạo t&agrave;i năng, thực hiện chiến thuật v&agrave; chất lượng t&acirc;m l&yacute; để đạt được sự hồi sinh của b&oacute;ng đ&aacute; Trung Quốc hay kh&ocirc;ng?...&rdquo;</p>\r\n<p><br>Truyền th&ocirc;ng Trung Quốc ca ngợi U22 Việt Nam.</p>\r\n<p>Sau trận đấu h&ocirc;m qua, HLV Đinh Hồng Vinh cho rằng U22 Việt Nam xứng đ&aacute;ng gi&agrave;nh chiến thắng trước U22 Trung Quốc. Trong khi đ&oacute;, kh&aacute; nhiều CĐV lại b&agrave;y tỏ nghi vấn rằng c&aacute;c trọng t&agrave;i đ&atilde; đưa ra một số ph&aacute;n quyết g&acirc;y bất lợi cho U22 Việt Nam.</p>\r\n<p>Dẫu sao, việc chạm tr&aacute;n 3 đội mạnh ở giải đấu tại Trung Quốc cũng mang tới những trải nghiệm rất bổ &iacute;ch, gi&uacute;p U22 Việt Nam t&iacute;ch luỹ kinh nghiệm, r&uacute;t ra nhiều b&agrave;i học để hướng tới v&ograve;ng loại U23 ch&acirc;u &Aacute; 2026 v&agrave;o th&aacute;ng 9 tới v&agrave; sau đ&oacute; l&agrave; SEA Games 33 v&agrave;o cuối năm.</p>', 'news/images/articles/9f6d4f1b3e2e4121a1028cf4bc12154b.jpg', 1),
(17, '\'Bí quyết bảo vệ cột sống và làm đẹp 360°\' của Tạp chí Khoa học phổ thông thu hút người dân', 'bi-quyet-bao-ve-cot-song-va-lam-dep-360-cua-tap-chi-khoa-hoc-pho-thong-thu-hut-nguoi-dan', 'published', 5, 1, '2025-03-26 08:25:54.000000', '<p>Ng&agrave;y 25/3, chương tr&igrave;nh \"Vui khỏe mỗi ng&agrave;y\" với chủ đề \"B&iacute; quyết bảo vệ cột sống v&agrave; l&agrave;m đẹp 360&deg;\" của Tạp ch&iacute; Khoa học phổ th&ocirc;ng với sự tham gia của PGS.TS.BS Phạm Hiếu Li&ecirc;m v&agrave; BS.CKII Ch&acirc;u Anh Dũng đ&atilde; thu h&uacute;t rất nhiều sự quan t&acirc;m của mọi người.</p>\r\n<p>C&aacute;c chuy&ecirc;n gia đ&atilde; tiếp th&ecirc;m kiến thức chăm s&oacute;c sức khỏe về cột sống v&agrave; l&agrave;m đẹp cho hội vi&ecirc;n Hội phụ nữ v&agrave; c&aacute;c Đo&agrave;n vi&ecirc;n của x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh, TP.HCM. Sau khi nghe c&aacute;c b&agrave;i thuyết tr&igrave;nh, nhiều c&aacute;nh tay giơ l&ecirc;n để xin được đặt c&acirc;u hỏi với c&aacute;c chuy&ecirc;n gia.</p>\r\n<p>ban-to-chuc-chup-hinh-luu-niem(1).jpg<br>Ban tổ chức chụp h&igrave;nh lưu niệm c&ugrave;ng PGS.TS.BS Phạm Hiếu Li&ecirc;m - Trưởng Bộ m&ocirc;n Tạo h&igrave;nh Thẩm mỹ, Đại học Y Dược TP.HCM, Trường Đại học Y khoa Phạm Ngọc Thạch v&agrave; BS.CKII Ch&acirc;u Anh Dũng - Ph&oacute; khoa phụ tr&aacute;ch Khoa Kh&aacute;m bệnh, Bệnh viện Quốc tế Chấn thương chỉnh h&igrave;nh S&agrave;i G&ograve;n thuộc Hệ thống Bệnh viện S&agrave;i g&ograve;n ITO, người d&acirc;n tham dự chương tr&igrave;nh<br>Mong chương tr&igrave;nh sẽ tiếp tục đến với người d&acirc;n</p>\r\n<p>Ph&aacute;t biểu tại chương tr&igrave;nh, Nh&agrave; b&aacute;o Ho&agrave;ng Đức B&igrave;nh - Phụ tr&aacute;ch Ph&ograve;ng Đối ngoại v&agrave; Hợp t&aacute;c quốc tế, Tạp ch&iacute; Khoa học phổ th&ocirc;ng - cho biết trong chuỗi sự kiện ch&agrave;o mừng 50 năm Kỷ niệm Ng&agrave;y Giải ph&oacute;ng miền Nam, thống nhất đất nước (30/4/1975 - 30/4/2025) cũng như ch&agrave;o mừng những ng&agrave;y lễ đặc biệt trong th&aacute;ng 3, Tạp ch&iacute; Khoa học phổ th&ocirc;ng tổ chức chương tr&igrave;nh \"Vui khỏe mỗi ng&agrave;y\" hướng đến c&aacute;c đối tượng l&agrave; đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n, hội vi&ecirc;n hội li&ecirc;n hiệp phụ nữ, d&acirc;n qu&acirc;n tự vệ tại x&atilde; B&igrave;nh Hưng, để tuy&ecirc;n truyền về c&aacute;ch ph&ograve;ng ngừa c&aacute;c bệnh l&yacute; thường gặp, cũng như bảo vệ sức khỏe, l&agrave;m đẹp cho bản th&acirc;n.</p>\r\n<p>nha-bao-hoang-duc-binh.jpg<br>Nh&agrave; b&aacute;o Ho&agrave;ng Đức B&igrave;nh - Phụ tr&aacute;ch Ph&ograve;ng Đối ngoại v&agrave; Hợp t&aacute;c quốc tế, Tạp ch&iacute; Khoa học phổ th&ocirc;ng<br>\"Tạp ch&iacute; Khoa học phổ th&ocirc;ng mong rằng sau chương tr&igrave;nh n&agrave;y, qu&yacute; đại biểu tham dự sẽ tiếp nhận được những kiến thức bổ &iacute;ch, kịp thời v&agrave; thiết thực. Ch&uacute;ng t&ocirc;i tin rằng những th&ocirc;ng tin chia sẻ từ c&aacute;c b&aacute;c sĩ kh&ocirc;ng chỉ gi&uacute;p n&acirc;ng cao nhận thức về sức khỏe, sắc đẹp, m&agrave; c&ograve;n l&agrave; những kiến thức hữu &iacute;ch trong việc cải thiện chất lượng cuộc sống của mỗi c&aacute; nh&acirc;n\", nh&agrave; b&aacute;o Ho&agrave;ng Đức B&igrave;nh chia sẻ.</p>\r\n<p>ba-le-thai-hoa-mi-bi-thu-dang-uy-xa-binh-hung.jpg<br>B&agrave; L&ecirc; Th&aacute;i Họa Mi - B&iacute; thư Đảng ủy x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh<br>Cũng tại chương tr&igrave;nh, b&agrave; L&ecirc; Th&aacute;i Họa Mi - B&iacute; thư Đảng ủy x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh (TP.HCM) - đ&aacute;nh gi&aacute; cao chương tr&igrave;nh \"Vui khỏe mỗi ng&agrave;y\" của Tạp ch&iacute; Khoa học phổ th&ocirc;ng. Đ&acirc;y l&agrave; lần thứ hai Tạp ch&iacute; phối hợp c&ugrave;ng x&atilde; B&igrave;nh Hưng tổ chức chương tr&igrave;nh chăm s&oacute;c sức khỏe v&agrave; sắc đẹp cho chị em phụ nữ.</p>\r\n<p>\"Ch&uacute;ng t&ocirc;i nhận thấy chương tr&igrave;nh rất cần thiết đối với chị em phụ nữ hiện nay, v&igrave; những th&oacute;i quen sinh hoạt h&agrave;ng ng&agrave;y c&oacute; thể ảnh hưởng trực tiếp đến sức khỏe v&agrave; sắc đẹp của chị em. Chương tr&igrave;nh kh&ocirc;ng chỉ gi&uacute;p ch&uacute;ng ta c&oacute; những kiến thức bổ &iacute;ch về ph&ograve;ng ngừa c&aacute;c bệnh li&ecirc;n quan đến xương khớp, cột sống m&agrave; c&ograve;n cung cấp c&aacute;c phương ph&aacute;p l&agrave;m đẹp khoa học.</p>\r\n<p>Hơn nữa, ch&uacute;ng ta c&oacute; thể truyền đạt những kiến thức n&agrave;y cho gia đ&igrave;nh, người th&acirc;n v&agrave; con c&aacute;i để c&ugrave;ng nhau bảo vệ sức khỏe, sắc đẹp. Ch&uacute;ng t&ocirc;i, mong muốn Tạp ch&iacute; Khoa học phổ th&ocirc;ng sẽ tiếp tục mang chương tr&igrave;nh Vui khỏe mỗi ng&agrave;y đến B&igrave;nh Hưng nhiều hơn nữa\", b&agrave; L&ecirc; Th&aacute;i Họa Mi chia sẻ.</p>\r\n<p>Giữ đ&uacute;ng tư thế để bảo vệ cột sống</p>\r\n<p>BS.CKII Ch&acirc;u Anh Dũng - Ph&oacute; khoa phụ tr&aacute;ch Khoa Kh&aacute;m bệnh, Bệnh viện Quốc tế Chấn thương chỉnh h&igrave;nh S&agrave;i G&ograve;n thuộc Hệ thống Bệnh viện S&agrave;i g&ograve;n ITO - cho biết c&aacute;c bệnh l&yacute; về cột sống ng&agrave;y c&agrave;ng phổ biến, trong đ&oacute; đau cột sống cổ, đau cột sống thắt lưng, t&ecirc; tay, t&ecirc; ch&acirc;n,... l&agrave; c&aacute;c vấn đề thường gặp. Trong qu&aacute; tr&igrave;nh thăm kh&aacute;m, c&oacute; đến 80-90% người bệnh mắc bệnh l&yacute; đau cột sống thắt lưng.</p>\r\n<p>bs-ck-2-chau-anh-dung.jpg<br>BS.CKII Ch&acirc;u Anh Dũng - Ph&oacute; khoa phụ tr&aacute;ch Khoa Kh&aacute;m bệnh, Bệnh viện Quốc tế Chấn thương chỉnh h&igrave;nh S&agrave;i G&ograve;n thuộc Hệ thống Bệnh viện S&agrave;i g&ograve;n ITO - chia sẻ tại chương tr&igrave;nh<br>Theo BS.CKII Ch&acirc;u Anh Dũng, trong sinh hoạt h&agrave;ng ng&agrave;y, ch&uacute;ng ta hoạt động nhiều nhất với 3 tư thế: đứng, ngồi v&agrave; nằm. Việc kh&ocirc;ng ch&uacute; trọng c&aacute;c tư thế đ&uacute;ng sẽ l&agrave;m xuất hiện c&aacute;c cơn đau mỏi. B&ecirc;n cạnh đ&oacute;, việc mang v&aacute;c nặng kh&ocirc;ng đ&uacute;ng c&aacute;ch, &iacute;t vận động l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh dẫn đến c&aacute;c bệnh l&yacute; n&agrave;y.</p>\r\n<p>Khi ngồi l&agrave;m việc, ch&uacute;ng ta n&ecirc;n ngồi tr&ecirc;n ghế hai m&ocirc;ng &aacute;p s&aacute;t bề mặt ghế, hai l&ograve;ng b&agrave;n ch&acirc;n &aacute;p s&aacute;t s&agrave;n nh&agrave;. Đầu thẳng, hai mắt nh&igrave;n thẳng về ph&iacute;a trước. Dựng thẳng cột sống Hai vai thả lỏng, hai c&aacute;nh tay kh&eacute;p nhẹ v&agrave;o 2 b&ecirc;n th&acirc;n m&igrave;nh. Đ&ugrave;i vu&ocirc;ng g&oacute;c với th&acirc;n m&igrave;nh v&agrave; cẳng ch&acirc;n vu&ocirc;ng g&oacute;c với đ&ugrave;i v&agrave; s&agrave;n nh&agrave;.</p>\r\n<p>Để duy tr&igrave; cột sống khỏe mạnh, BS.CKII Ch&acirc;u Anh Dũng khuyến nghị cần c&oacute; chế độ ăn uống ph&ugrave; hợp, trong đ&oacute; tr&aacute;nh tăng c&acirc;n, cử bia rượu, thuốc l&aacute;; hạn chế n&acirc;ng hay bưng b&ecirc; vật nặng; điều chỉnh thời gian v&agrave; tư thế khi l&agrave;m việc, tu&acirc;n thủ tư thế tốt nhất tại nơi l&agrave;m việc, c&oacute; thể gi&uacute;p &iacute;ch rất nhiều trong việc đảm bảo cột sống khỏe mạnh; hạn chế ngồi l&agrave;m việc nhiều giờ.</p>\r\n<p>Gi&uacute;p hiểu đ&uacute;ng về l&agrave;m đẹp chuẩn</p>\r\n<p>Tại chương tr&igrave;nh, PGS.TS.BS Phạm Hiếu Li&ecirc;m - Trưởng Bộ m&ocirc;n Tạo h&igrave;nh Thẩm mỹ, Đại học Y Dược TP.HCM v&agrave; Trường Đại học Y khoa Phạm Ngọc Thạch - đ&atilde; b&aacute;o c&aacute;o chuy&ecirc;n đề \"B&iacute; quyết l&agrave;m đẹp 360&deg;\".</p>\r\n<p>Đơn cử, h&uacute;t mỡ l&agrave; một phương ph&aacute;p thẩm mỹ sử dụng kỹ thuật h&uacute;t để loại bỏ c&aacute;c m&ocirc; mỡ thừa ra khỏi c&aacute;c khu vực cụ thể tr&ecirc;n cơ thể. Theo PGS.TS.BS Phạm Hiếu Li&ecirc;m, h&uacute;t mỡ c&oacute; thể hiểu đơn giản l&agrave; nơi n&agrave;o c&oacute; mỡ sẽ thực hiện h&uacute;t mỡ ra, trong đ&oacute; c&oacute; h&uacute;t mỡ ở c&aacute;nh tay, đ&ugrave;i, bụng... PGS.TS.BS Phạm Hiếu Li&ecirc;m lưu &yacute;, tại Việt Nam, việc h&uacute;t mỡ bụng phải thực hiện tại bệnh viện, kh&ocirc;ng đến c&aacute;c ph&ograve;ng kh&aacute;m.</p>\r\n<p>Ngo&agrave;i việc h&uacute;t mỡ để l&agrave;m đẹp, th&igrave; c&aacute;c phương ph&aacute;p cấy mỡ tự th&acirc;n được nhiều chị em phụ nữ quan t&acirc;m. Tại chương tr&igrave;nh, chị Nguyễn Th&uacute;y Hằng (39 tuổi, x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh) đ&atilde; đặt c&acirc;u hỏi về phương ph&aacute;p cấy mỡ m&aacute;, cụ thể l&agrave; phương ph&aacute;p như thế n&agrave;o v&agrave; c&oacute; thể duy tr&igrave; hiệu quả trong bao l&acirc;u?</p>\r\n<p>nha-bao-bui-huong-cung-2-bac-si-giai-dap-thac-mac.jpg<br>Nh&agrave; b&aacute;o B&ugrave;i Hương c&ugrave;ng PGS.TS.BS Phạm Hiếu Li&ecirc;m (b&igrave;a tr&aacute;i) v&agrave; BS.CKII Ch&acirc;u Anh Dũng (b&igrave;a phải) giải đ&aacute;p thắc mắc về c&aacute;c bệnh xương khớp v&agrave; l&agrave;m đẹp<br>Để giải đ&aacute;p c&acirc;u hỏi n&agrave;y, PGS.TS.BS Phạm Hiếu Li&ecirc;m chia sẻ rằng cấy mỡ tự th&acirc;n l&agrave; một phương ph&aacute;p hiệu quả, c&oacute; thể &aacute;p dụng cho bất kỳ vị tr&iacute; n&agrave;o tr&ecirc;n cơ thể, bao gồm tr&aacute;n, m&aacute;, th&aacute;i dương, mũi, cằm, ngực, bụng v&agrave; thậm ch&iacute; l&agrave; tầng sinh m&ocirc;n. Chẳng hạn, sau khi sinh, tầng sinh m&ocirc;n c&oacute; thể bị h&oacute;p v&agrave; th&acirc;m, nhưng khi thực hiện cấy mỡ tự th&acirc;n, khu vực n&agrave;y sẽ trở n&ecirc;n đầy đặn v&agrave; hồng h&agrave;o hơn.</p>\r\n<p>Cấy mỡ thực chất l&agrave; việc cấy tế b&agrave;o mỡ tự th&acirc;n, trong đ&oacute; c&oacute; những tế b&agrave;o mỡ sẽ sống v&agrave; những tế b&agrave;o sẽ chết. Khi lấy mỡ từ cơ thể, nguồn nu&ocirc;i dưỡng của tế b&agrave;o mỡ bị cắt, v&agrave; sau khi cấy v&agrave;o v&ugrave;ng cần l&agrave;m đầy, cần khoảng 96 giờ để tế b&agrave;o mỡ sống được. V&agrave; cũng trong khoảng thời gian n&agrave;y, một phần mỡ sẽ chết đi. Ch&iacute;nh v&igrave; l&yacute; do n&agrave;y m&agrave; b&aacute;c sĩ thường khuyến nghị cấy dặm lại sau khoảng 2-3 th&aacute;ng để c&oacute; kết quả tối ưu.</p>\r\n<p>Việc cấy nhiều lớp mỡ gi&uacute;p mạch m&aacute;u xen v&agrave;o giữa c&aacute;c lớp, cung cấp dưỡng chất v&agrave; nu&ocirc;i dưỡng tế b&agrave;o mỡ, gi&uacute;p ch&uacute;ng tồn tại l&acirc;u hơn. Nếu chỉ cấy một cục mỡ lớn m&agrave; kh&ocirc;ng c&oacute; mạch m&aacute;u cung cấp, tế b&agrave;o mỡ sẽ chết v&igrave; thiếu m&aacute;u nu&ocirc;i.</p>\r\n<p>PGS.TS.BS Phạm Hiếu Li&ecirc;m cũng cho biết rằng mỗi cơ sở thực hiện cấy mỡ sẽ c&oacute; kỹ thuật v&agrave; phương ph&aacute;p ri&ecirc;ng, điều n&agrave;y sẽ ảnh hưởng đến thời gian duy tr&igrave; hiệu quả của mỡ.</p>\r\n<p>Ba yếu tố cần lưu &yacute; để l&agrave;m đẹp an to&agrave;n</p>\r\n<p>Theo PGS.TS.BS Phạm Hiếu Li&ecirc;m, cuộc sống ng&agrave;y c&agrave;ng ph&aacute;t triển, nhu cầu l&agrave;m đẹp trở n&ecirc;n phổ biến hơn. V&igrave; vậy, hiện nay nhiều dịch vụ l&agrave;m đẹp đ&atilde; b&ugrave;ng nổ. Tuy nhi&ecirc;n, trong qu&aacute; tr&igrave;nh thăm kh&aacute;m thực tế, nhiều ca tai biến li&ecirc;n quan đến phẫu thuật thẩm mỹ như ti&ecirc;m botox, ti&ecirc;m filler vẫn diễn ra li&ecirc;n tục.</p>\r\n<p>ba-le-thai-hoa-mi-tang-hoa-cam-on.jpg<br>B&agrave; L&ecirc; Th&aacute;i Họa Mi - B&iacute; thư Đảng ủy x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh (b&igrave;a phải), &ocirc;ng Phạm Ngọc Hay - Đảng ủy vi&ecirc;n, Ph&oacute; Chủ tịch UBND x&atilde; B&igrave;nh Hưng (b&igrave;a tr&aacute;i) v&agrave; &ocirc;ng L&ecirc; Minh Hiệp - Ph&oacute; B&iacute; thư Thường trực Đảng ủy x&atilde; B&igrave;nh Hưng (thứ hai từ tr&aacute;i sang) - tặng hoa cảm ơn c&aacute;c b&aacute;c sĩ v&agrave; đơn vị đồng h&agrave;nh tham gia chương tr&igrave;nh<br>Theo PGS.TS.BS Phạm Hiếu Li&ecirc;m, l&agrave;m đẹp l&agrave; quyền lợi của tất cả mọi người, nhưng để đảm bảo an to&agrave;n, ch&uacute;ng ta cần c&acirc;n nhắc kỹ lưỡng ba yếu tố quan trọng.</p>\r\n<p>Thứ nhất, ch&uacute;ng ta cần phải biết lựa chọn th&ocirc;ng tin quảng c&aacute;o chuẩn mực nhất, lựa chọn những b&aacute;c sĩ uy t&iacute;n, c&oacute; kinh nghiệm.</p>\r\n<p>Thứ hai, trong ng&agrave;nh thẩm mỹ, b&aacute;c sĩ phải l&agrave; người tư vấn, phải cung cấp số điện thoại để người bệnh c&oacute; thể theo d&otilde;i v&agrave; nhận sự hỗ trợ l&acirc;u d&agrave;i nhằm đảm bảo an to&agrave;n sau qu&aacute; tr&igrave;nh phẫu thuật thẩm mỹ. Hiện nay, nhiều cơ sở thu&ecirc; b&aacute;c sĩ thực hiện phẫu thuật, trong t&igrave;nh trạng nguy cấp sẽ kh&oacute; li&ecirc;n hệ nhanh.</p>\r\n<p>Thứ ba, người bệnh cần tu&acirc;n thủ theo hướng dẫn của b&aacute;c sĩ để chăm s&oacute;c vết sẹo sau phẫu thuật. Vết sẹo c&oacute; thể k&eacute;o d&agrave;i khoảng 6 th&aacute;ng, việc chăm s&oacute;c vết thương để c&oacute; kết quả tốt l&agrave; điều quan trọng trong chuy&ecirc;n ng&agrave;nh tạo h&igrave;nh thẩm mỹ.</p>\r\n<p>tang-qua-cho-doan-vien-va-dan-quan.jpg<br>ThS.Nh&agrave; B&aacute;o B&ugrave;i Hương - Ph&oacute; Tổng bi&ecirc;n tập Phụ tr&aacute;ch Tạp ch&iacute; Khoa học phổ th&ocirc;ng v&agrave; b&agrave; L&ecirc; Th&aacute;i Họa Mi c&ugrave;ng b&agrave; Phạm Thị Hồng Chiến &ndash; Gi&aacute;m đốc điều h&agrave;nh C&ocirc;ng ty TNHH Dược phẩm Tự nhi&ecirc;n Australia tặng qu&agrave; cho đo&agrave;n vi&ecirc;n v&agrave; d&acirc;n qu&acirc;n x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh<br>tang-qua-cho-doan-vien.jpg<br>Đại diện ban tổ chức c&ugrave;ng PGS.TS.BS Phạm Hiếu Li&ecirc;m v&agrave; BS.CKII Ch&acirc;u Anh Dũng tặng qu&agrave; cho đo&agrave;n vi&ecirc;n x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh<br>Tại chương tr&igrave;nh, đại diện ban tổ chức đ&atilde; trao 10 phần qu&agrave;, gồm 10 phần gạo (10 kg/phần) v&agrave; 10 phần hiện kim (500 ngh&igrave;n đồng/phần) hỗ trợ cho đo&agrave;n vi&ecirc;n v&agrave; d&acirc;n qu&acirc;n x&atilde; B&igrave;nh Hưng, huyện B&igrave;nh Ch&aacute;nh. Đồng thời, Ban tổ chức đ&atilde; trao tặng 100 sản phẩm LANETLING Foam BN, trị gi&aacute; 12,5 triệu đồng cho đại diện Hội Li&ecirc;n hiệp Phụ nữ x&atilde; B&igrave;nh Hưng.</p>\r\n<p>Thay mặt Ban Tổ chức, ThS.Nh&agrave; b&aacute;o B&ugrave;i Hương - Ph&oacute; Tổng Bi&ecirc;n tập phụ tr&aacute;ch Tạp ch&iacute; Khoa học phổ th&ocirc;ng tr&acirc;n trọng cảm ơn Ban l&atilde;nh đạo Hệ thống Bệnh viện S&agrave;i G&ograve;n ITO, PGS.TS.BS Phạm Hiếu Li&ecirc;m - Trưởng Bộ m&ocirc;n Tạo h&igrave;nh Thẩm mỹ, Đại học Y Dược TP.HCM v&agrave; Trường Đại học Y khoa Phạm Ngọc Thạch, BS.CKII Ch&acirc;u Anh Dũng - Ph&oacute; khoa phụ tr&aacute;ch Khoa Kh&aacute;m bệnh, Bệnh viện Quốc tế Chấn thương chỉnh h&igrave;nh S&agrave;i G&ograve;n thuộc Hệ thống Bệnh viện S&agrave;i g&ograve;n ITO, C&ocirc;ng ty TNHH Dược Phẩm Tự Nhi&ecirc;n Australia, CLB Thiện nguyện Ban Mai Xanh, C&ocirc;ng ty TNHH BNPHARMA, B&aacute;nh m&igrave; L&atilde;o Ph&ugrave; đ&atilde; đồng h&agrave;nh c&ugrave;ng chương tr&igrave;nh \"Vui khỏe mỗi ng&agrave;y\" ng&agrave;y 25/3.</p>', 'news/images/articles/13adecfb1bb148e3a7fcbc6c1a642aa9.JPG', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_category`
--

CREATE TABLE `news_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_homepage` tinyint(1) NOT NULL,
  `layout` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `slug`, `is_homepage`, `layout`, `status`, `ordering`) VALUES
(1, 'Thể thao', 'the-thao', 1, 'list', 'published', 1),
(2, 'Chính trị', 'chinh-tri', 1, 'grid', 'published', 2),
(4, 'Pháp luật', 'phap-luat', 1, 'grid', 'published', 1),
(5, 'Khoa học', 'khoa-hoc', 1, 'grid', 'published', 0),
(6, 'Tài chính', 'tai-chinh', 1, 'grid', 'published', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_feed`
--

CREATE TABLE `news_feed` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_feed`
--

INSERT INTO `news_feed` (`id`, `name`, `slug`, `status`, `ordering`, `link`) VALUES
(1, 'Vnexpress', 'vnexpress', 'published', 1, 'https://vnexpress.net/rss/tin-moi-nhat.rss'),
(2, 'Báo Thanh Niên', 'bao-thanh-nien', 'published', 0, 'https://thanhnien.vn/rss/home.rss'),
(3, 'Dân trí', 'dan-tri', 'published', 2, 'https://dansinh.dantri.com.vn/rss/home.rss'),
(4, 'Báo Quân đội nhân dân', 'bao-quan-doi-nhan-dan', 'published', 0, 'https://www.qdnd.vn/rss/cate/tin-tuc-moi-nhat.rss'),
(5, 'Báo điện tử', 'bao-dien-tu', 'published', 0, 'https://vtcnews.vn/rss/thoi-su.rss');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category`
--

CREATE TABLE `shop_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_homepage` tinyint(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `slug`, `is_homepage`, `status`, `ordering`) VALUES
(1, 'Cây thủy sinh', 'cay-thuy-sinh', 1, 'published', 1),
(2, 'Cây văn phòng', 'cay-van-phong', 1, 'published', 2),
(3, 'Cây ăn quả', 'cay-an-qua', 0, 'published', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_contact`
--

CREATE TABLE `shop_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `contacted` tinyint(1) NOT NULL,
  `message_admin` longtext NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_plantingmethod`
--

CREATE TABLE `shop_plantingmethod` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_plantingmethod`
--

INSERT INTO `shop_plantingmethod` (`id`, `name`, `status`, `ordering`) VALUES
(1, 'Thủy sinh', 'published', 1),
(2, 'Đất nền', 'draft', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product`
--

CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_sale` decimal(10,0) DEFAULT NULL,
  `price_real` decimal(10,0) NOT NULL,
  `total_sold` int(11) NOT NULL,
  `summary` longtext NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `price`, `price_sale`, `price_real`, `total_sold`, `summary`, `content`, `image`, `category_id`) VALUES
(1, 'Cây sen đá', 'cay-sen-da', 'published', 0, 1, 10000, NULL, 10000, 0, 'Sen đá', '<p>Sen đ&aacute;</p>', 'shop/images/product/00daf840077c42868bf060cb31f68c87.jpg', 2),
(2, 'Sen', 'sen', 'published', 0, 1, 20000, 15000, 15000, 0, 'sen', '<p>sen&nbsp;</p>', 'shop/images/product/b83ab00acb3946cd83477f606fe11aac.jpg', 1),
(3, 'Dâu tây', 'dau-tay', 'published', 0, 1, 50000, NULL, 50000, 0, 'dâu tây', '<p>d&acirc;u t&acirc;y</p>', 'shop/images/product/a7e1a95ba0234e3fb95c6fe86054a9c6.JPG', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_planting_methods`
--

CREATE TABLE `shop_product_planting_methods` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `plantingmethod_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_planting_methods`
--

INSERT INTO `shop_product_planting_methods` (`id`, `product_id`, `plantingmethod_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `news_article_category_id_7ede7614_fk_news_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `news_feed`
--
ALTER TABLE `news_feed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `shop_contact`
--
ALTER TABLE `shop_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_plantingmethod`
--
ALTER TABLE `shop_plantingmethod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_product_planting_me_product_id_plantingmetho_0a2d755a_uniq` (`product_id`,`plantingmethod_id`),
  ADD KEY `shop_product_plantin_plantingmethod_id_53c62ee8_fk_shop_plan` (`plantingmethod_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news_feed`
--
ALTER TABLE `news_feed`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_contact`
--
ALTER TABLE `shop_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_plantingmethod`
--
ALTER TABLE `shop_plantingmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `news_article`
--
ALTER TABLE `news_article`
  ADD CONSTRAINT `news_article_category_id_7ede7614_fk_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`);

--
-- Các ràng buộc cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`);

--
-- Các ràng buộc cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  ADD CONSTRAINT `shop_product_plantin_plantingmethod_id_53c62ee8_fk_shop_plan` FOREIGN KEY (`plantingmethod_id`) REFERENCES `shop_plantingmethod` (`id`),
  ADD CONSTRAINT `shop_product_plantin_product_id_3f148b30_fk_shop_prod` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
