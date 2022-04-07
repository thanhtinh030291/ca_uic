-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2022 at 01:56 AM
-- Server version: 10.5.9-MariaDB-log
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ca_bsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_format` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_claim` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `code_claim_show` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_file` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url_file_sorted` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_number_page_send` int(11) NOT NULL DEFAULT 0,
  `member_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_type` char(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `manager_gop_accept_pay` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `prov_gop_pres_amt` bigint(20) NOT NULL DEFAULT 0,
  `mantis_id` bigint(20) DEFAULT NULL,
  `jetcase` int(11) NOT NULL DEFAULT 0,
  `db_ref_no` int(11) DEFAULT NULL,
  `category` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `include_admin_fee` int(11) NOT NULL DEFAULT 1,
  `project` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_invoice_no` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_invoice_type` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `original_invoice_no_not_ready` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_invoice_no` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_invoice_type` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `e_invoice_no_not_ready` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `converted_invoice_no` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `converted_invoice_type` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `converted_invoice_no_not_ready` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claim_word_sheet`
--

CREATE TABLE `claim_word_sheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `claim_id` int(11) NOT NULL,
  `mem_ref_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `visit` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `assessment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_resuft` int(11) DEFAULT NULL,
  `benefit` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_amt` bigint(20) NOT NULL DEFAULT 0,
  `payable_amt` bigint(20) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` int(11) NOT NULL DEFAULT 0,
  `dischage_summary` int(11) NOT NULL DEFAULT 0,
  `vat` int(11) NOT NULL DEFAULT 0,
  `copy_of` int(11) NOT NULL DEFAULT 0,
  `medical_report` int(11) NOT NULL DEFAULT 0,
  `breakdown` int(11) NOT NULL DEFAULT 0,
  `discharge_letter` int(11) NOT NULL DEFAULT 0,
  `treatment_plant` int(11) NOT NULL DEFAULT 0,
  `incident_report` int(11) NOT NULL DEFAULT 0,
  `prescription` int(11) NOT NULL DEFAULT 0,
  `lab_test` int(11) NOT NULL DEFAULT 0,
  `police_report` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `request_qa` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `old_number_page_send` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `30_day` int(11) NOT NULL DEFAULT 0,
  `1_year` int(11) NOT NULL DEFAULT 0,
  `contract_rule` int(11) NOT NULL DEFAULT 0,
  `type_of_visit` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_online_query` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduct_provider`
--

CREATE TABLE `deduct_provider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `amt` double NOT NULL,
  `claim_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '0 : add deduct ; 1: div deduct',
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `from` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcc` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `headers` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachments` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `export_letter`
--

CREATE TABLE `export_letter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `letter_template_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `approve` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wait` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_cps` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `apv_amt` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finish_and_pay`
--

CREATE TABLE `finish_and_pay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cl_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_id` int(11) NOT NULL,
  `mantis_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_amt` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finished` int(11) NOT NULL DEFAULT 0,
  `payed` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 1,
  `notify` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pay_time` int(11) NOT NULL DEFAULT 1,
  `date_tbbt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_mem_approved`
--

CREATE TABLE `group_mem_approved` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leader` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_leader` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `super` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_super` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `qc` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_qc` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `assistant` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_assistant` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `manager` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_manager` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `header` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_header` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead` int(11) DEFAULT NULL,
  `active_leader` int(11) NOT NULL DEFAULT 1,
  `supper` int(11) DEFAULT NULL,
  `active_supper` int(11) NOT NULL DEFAULT 1,
  `assistant_manager` int(11) DEFAULT NULL,
  `active_assistant_manager` int(11) NOT NULL DEFAULT 1,
  `manager` int(11) DEFAULT NULL,
  `active_manager` int(11) NOT NULL DEFAULT 1,
  `header` int(11) DEFAULT NULL,
  `active_header` int(11) NOT NULL DEFAULT 1,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`id`, `name`, `lead`, `active_leader`, `supper`, `active_supper`, `assistant_manager`, `active_assistant_manager`, `manager`, `active_manager`, `header`, `active_header`, `created_user`, `updated_user`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gruop - Thắm Tổng', 5, 0, 5, 0, 1, 0, 5, 0, 6, 0, 1, 1, 0, '2021-05-28 01:55:32', '2021-06-28 04:00:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hbs_benhead`
--

CREATE TABLE `hbs_benhead` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ben_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `desc_vn` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc_en` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_request`
--

CREATE TABLE `hospital_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` bigint(20) NOT NULL,
  `prov_gop_pres_amt` bigint(20) NOT NULL DEFAULT 0,
  `url_form_request` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_corner_profile` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_attach_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_gop` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `incur_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagnosis` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `incur_to` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `incur_from` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `incur_time_extb` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbox_email`
--

CREATE TABLE `inbox_email` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` int(11) NOT NULL,
  `from` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_of_claim`
--

CREATE TABLE `item_of_claim` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `claim_id` int(11) DEFAULT NULL,
  `reason_reject_id` int(11) DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `benefit` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letter_template`
--

CREATE TABLE `letter_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `letter_payment` int(11) DEFAULT NULL,
  `status_mantis` int(11) DEFAULT NULL,
  `claim_type` char(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `letter_template`
--

INSERT INTO `letter_template` (`id`, `name`, `template`, `is_deleted`, `created_user`, `updated_user`, `deleted_at`, `created_at`, `updated_at`, `level`, `letter_payment`, `status_mantis`, `claim_type`) VALUES
(1, 'Thư thông báo bồi thường', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH&Ocirc;NG B&Aacute;O KẾT QUẢ BỒI THƯỜNG</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch thật nhiều sức khỏe. Sau khi xem x&eacute;t hồ sơ y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i tr&acirc;n trọng th&ocirc;ng b&aacute;o kết quả như sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hợp đồng số:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<span style=\"color: #0070c0;\"><br /></span>M&atilde; số th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hiệu lực:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<span style=\"color: #0070c0;\"><br /></span>Hồ sơ bồi thường số:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Người được bảo hiểm:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$tableInfoPayment]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Lịch sử số tiền đ&atilde; bồi thường (VNĐ)</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$claimHistory]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;H&igrave;nh thức thanh to&aacute;n</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>\r\n<div><br />[[$payMethod]]</div>\r\n</div>\r\n<p style=\"text-align: justify; line-height: 150%; text-autospace: none; margin: .25in 0in 0in 0in;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Nếu c&oacute; bất kỳ một th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường n&ecirc;u tr&ecirc;n hoặc cần th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> hoặc qua thư điện tử <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;để được giải đ&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n trọng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, NULL, '2021-11-27 15:13:40', 0, 8, NULL, 'M'),
(2, 'Thư từ chối bồi thường', '<strong><strong>TH&Ocirc;NG B&Aacute;O TỪ CHỐI BỒI THƯỜNG</strong></strong>\n            <p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</u>: &nbsp;&nbsp;&nbsp; &nbsp;<strong>[[$applicantName]]<br /></strong></span></p>\n            <div>\n            <p><strong>C&ocirc;ng ty TNHH Bảo hiểm Fubon (Việt Nam) v&agrave; C&ocirc;ng ty TNHH MTV Pacific Cross VN (PCV) </strong>tr&acirc;n trọng cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; tin tưởng v&agrave; lựa chọn dịch vụ của ch&uacute;ng t&ocirc;i.</p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Căn cứ theo điều kiện, điều khoản của Hợp đồng bảo hiểm Chăm s&oacute;c Sức khỏe, ch&uacute;ng t&ocirc;i xin th&ocirc;ng b&aacute;o đến Qu&yacute; kh&aacute;ch kết quả xem x&eacute;t Hồ sơ y&ecirc;u cầu giải quyết Quyền lợi [[$benefitOfClaim]] của Người được bảo hiểm <strong>[[$memberNameCap]]</strong>&nbsp;với th&ocirc;ng tin:</span></p>\n            <p style=\"text-align: left;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$IOPDiag]]&nbsp;</span></p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Thưa Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i rất lấy l&agrave;m tiếc y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch kh&ocirc;ng được thanh to&aacute;n v&igrave;:</span></p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$CSRRemark]]</span></p>\n            <p style=\"text-align: justify;\">[[$TermRemark]]</p>\n            <p>Trường hợp Qu&yacute; kh&aacute;ch cần trao đổi th&ecirc;m, vui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i phục vụ kh&aacute;ch h&agrave;ng (028) 3925 2608 hoặc qua thư điện tử <a href=\"mailto:customerservice@pacificcross.com.vn\">customerservice@pacificcross.com.vn</a>. Ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ Qu&yacute; kh&aacute;ch.</p>\n            <p><br />Một lần nữa, ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh cảm ơn v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch c&ugrave;ng gia đ&igrave;nh lu&ocirc;n mạnh khỏe.</p>\n            <p>Tr&acirc;n trọng k&iacute;nh ch&agrave;o</p>\n            <p><strong>Ph&ograve;ng bồi thường bảo hiểm.</strong></p>\n            </div>', 1, 1, 1, '2021-05-27 08:27:53', NULL, '2021-05-27 08:27:53', 0, NULL, NULL, 'M'),
(3, 'Thư Bổ túc hồ sơ', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Y&ecirc;u Cầu Bổ T&uacute;c Hồ Sơ</span></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span><br />Số: ...</span></strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh gửi Qu&yacute; kh&aacute;ch: <strong>[[$applicantName]]</strong>&nbsp;<br /><br />C&ocirc;ng ty Bảo Hiểm Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i đ&atilde; nhận được y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch với th&ocirc;ng tin như sau: <br /></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Để hồ sơ đủ cơ sở thanh to&aacute;n bồi thường Qu&yacute; kh&aacute;ch vui l&ograve;ng bổ sung cho ch&uacute;ng t&ocirc;i c&aacute;c chứng từ sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 94px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 40px;\">\r\n<td style=\"width: 50%; height: 40px;\" colspan=\"2\"><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Người được bảo hiểm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Ocirc;ng/B&agrave; &nbsp;[[$memberNameCap]]&nbsp;</span></strong></td>\r\n</tr>\r\n<tr style=\"height: 10px;\">\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hợp đồng số:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<br /></span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hiệu lực:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<br /></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">M&atilde; số th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hồ sơ bồi thường số:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 44px;\">\r\n<td style=\"width: 50%; height: 44px;\" colspan=\"2\">\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Thời gian điều trị:</span></p>\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Chẩn đo&aacute;n:<br /></span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Nơi điều trị:</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Để ho&agrave;n tất việc giải quyết y&ecirc;u cầu bồi thường, ch&uacute;ng t&ocirc;i cần th&ecirc;m (những) chứng từ sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\" colspan=\"2\">\r\n<ul>\r\n<li>a</li>\r\n<li>b</li>\r\n<li>c</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Qu&yacute; kh&aacute;ch vui l&ograve;ng gửi lại thư n&agrave;y k&egrave;m (những) chứng từ được liệt k&ecirc; b&ecirc;n tr&ecirc;n v&agrave;o hộp thư điện tử </span><strong><a href=\"mailto:bshclaims@pacificcross.com.vn\"><span style=\"font-family: \'Arial\',sans-serif;\">bshclaims@pacificcross.com.vn</span></a></strong><span style=\"font-family: \'Arial\',sans-serif;\"> hoặc gửi đến văn ph&ograve;ng c&ocirc;ng ty ch&uacute;ng t&ocirc;i theo địa chỉ được ghi ở cuối thư trong v&ograve;ng 15 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y h&ocirc;m nay <span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span></span></strong></span>.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Nếu ch&uacute;ng t&ocirc;i kh&ocirc;ng nhận được chứng từ y&ecirc;u cầu bổ sung trong thời hạn n&ecirc;u tr&ecirc;n th&igrave; ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch dựa tr&ecirc;n hồ sơ hiện c&oacute;.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường hoặc cần th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #0070c0;\">&nbsp;</span>hoặc qua thư điện tử <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n trọn</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, NULL, '2021-07-20 11:22:04', 7, NULL, 70, 'M'),
(4, 'Letter Payment (GOP)', '<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong><br /><br /><br /><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Y&Ecirc;U CẦU THANH TO&Aacute;N BỒI THƯỜNG BẢO HIỂM SỨC KHỎE</span></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong>(Chi hộ <span style=\"font-size: 11pt;\"><span style=\"font-family: \'Arial\',sans-serif;\">C&ocirc;ng Ty Bảo Hiểm S&agrave;i G&ograve;n H&agrave; Nội</span></span>)</strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ng&agrave;y: &nbsp;[[$now]]&nbsp;</span></p>\r\n<table style=\"height: 108px; width: 680px; border-collapse: collapse; border-style: none; margin-left: auto; margin-right: auto;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">T&ecirc;n Người Hưởng Thụ</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$payeeProv]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Số tiền thanh to&aacute;n</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$paymentAmt]] đồng</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Phương thức thanh to&aacute;n</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Chuyển khoản qua ng&acirc;n h&agrave;ng</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Ng&acirc;n h&agrave;ng</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$bankNameProv]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Địa chỉ ng&acirc;n h&agrave;ng</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$bankAddressProv]] </strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Số t&agrave;i khoản</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong> [[$acctNoProv]] </strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Thanh to&aacute;n cho y&ecirc;u cầu giải quyết bồi thường dưới đ&acirc;y:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; height: 100px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 18.8363%; text-align: center; height: 64px;\" width=\"21%\">\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>T&ecirc;n người được bảo hiểm</strong></span></p>\r\n</td>\r\n<td style=\"width: 13.7213%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>M&atilde; số</strong></span></td>\r\n<td style=\"width: 13.8153%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Số Hợp đồng</strong></span></td>\r\n<td style=\"width: 15.0383%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Số Hồ sơ</strong></span></td>\r\n<td style=\"width: 11.9338%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Số H&oacute;a đơn</strong></span></td>\r\n<td style=\"width: 14.4739%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Số tiền y&ecirc;u cầu bồi thường (đồng)</strong></span></td>\r\n<td style=\"width: 18.8953%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Số tiền bồi thường (đồng)</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$memberNameCap]]&nbsp;</span></td>\r\n<td style=\"width: 13.7213%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$memRefNo]]&nbsp;</span></td>\r\n<td style=\"width: 13.8153%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$PRefNo]]&nbsp;</span></td>\r\n<td style=\"width: 15.0383%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$claimNo]]&nbsp;</span></td>\r\n<td style=\"width: 11.9338%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$invoicePatient]]&nbsp;</span></td>\r\n<td style=\"width: 14.4739%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$pstAmt]]&nbsp;</span></td>\r\n<td style=\"width: 18.8953%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$apvAmt]]&nbsp;</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Ph&iacute; h&agrave;nh ch&iacute;nh (đồng)</strong></span></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$adminfee]]</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Tổng cộng</strong></span></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$time_pay]]</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Người thực hiện</span></td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Người duyệt</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">[[$per_creater_sign]]</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$per_approve_sign_replace]]</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$note_pay]]</span></p>', 0, 1, 1, NULL, NULL, '2021-09-09 07:07:18', 0, NULL, NULL, 'P'),
(5, 'Thư bảo lãnh đầu vào (FORM GOP)', '<table style=\"height: 72px; width: 100%; border-collapse: collapse; border: 1px solid #000000;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"width: 50%; height: 36px;\" colspan=\"2\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif;\"><span style=\"text-decoration: underline;\"><span style=\"font-size: 12pt;\"><strong><br /><span style=\"font-size: 12pt;\">III. KẾT QUẢ BẢO L&Atilde;NH VIỆN PH&Iacute; - D&Agrave;NH CHO PACIFIC CROSS VIỆT NAM</span></strong></span></span><br /><br /><span style=\"font-size: 12pt;\">[[$typeGOP]]</span><br /></span><br /><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">NOTE (GHI CH&Uacute;):&nbsp; [[$noteGOP]]<br /><br /></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Processed by (Được xem x&eacute;t bởi)</span></td>\r\n<td style=\"width: 50%; height: 18px;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Approved by (Được chấp thuận bởi)</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">[[$per_creater_sign]]</span></td>\r\n<td style=\"width: 50%; height: 18px;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">[[$per_approve_sign]]<br /><br /></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 1, 1, NULL, NULL, '2021-09-29 08:49:07', 0, NULL, 22, 'P'),
(6, 'Thư bảo lãnh đầu ra (GOP)', '<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[[$nowDay]]<br /><strong>[[$barcode]]</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">[[$ProvName]]</span><br /></strong>[[$ProAddress]]<br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"text-decoration: underline;\"><strong>V/v: Bảo l&atilde;nh viện ph&iacute; xuất viện thực tế cho NĐBH [[$memberNameCap]], Số HĐ: [[$PRefNo]], M&atilde; số: &nbsp;[[$memRefNo]]&nbsp;<br /></strong></span><br />K&iacute;nh gửi: <strong>[[$ProvName]]<br /><br /></strong>Pacific Cross Việt Nam (PCV) x&aacute;c nhận rằng NĐBH &nbsp;<strong>[[$memberNameCap]]</strong>, sinh ng&agrave;y [[$DOB]] đang được bảo hiểm bởi <strong>C</strong><span style=\"font-size: 11pt;\"><strong><strong>&ocirc;ng</strong> ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội</strong></span>. Thay mặt <span style=\"font-size: 11pt;\"><strong>C&ocirc;ng ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội</strong></span>, PCV xin th&ocirc;ng b&aacute;o kết quả bảo l&atilde;nh viện ph&iacute; li&ecirc;n quan đến đợt điều trị \"<strong>[[$Diagnosis]]</strong>\" của NĐBH từ ng&agrave;y [[$incurDateFrom]] đến ng&agrave;y [[$incurDateTo]] (<strong>[[$diffIncur]] </strong>) tại bệnh viện chi tiết như sau:<br /></span></p>\r\n<table style=\"height: 184px; width: 786px; border-collapse: collapse; margin-left: auto; margin-right: auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 25px;\">\r\n<td style=\"width: 389px; height: 25px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>Nội Dung</strong></span></td>\r\n<td style=\"width: 390px; height: 25px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>&nbsp;Số tiền(đồng)</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Số tiền y&ecirc;u cầu bồi thường</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$ProvPstAmt]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tiền ph&ograve;ng v&agrave; ăn uống</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$RBGOP]]/</strong><strong>[[$diffIncur]]</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 389px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; khoa chăm s&oacute;c đặc biệt(ICU)</span></td>\r\n<td style=\"width: 390px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$ICUGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; phẫu thuật</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$SURGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 389px; height: 18px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tiền giường cho người th&acirc;n</span></td>\r\n<td style=\"width: 390px; height: 18px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$EXTBGOP]][[$diffIncur_extb]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; nội tr&uacute; kh&aacute;c</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$OTHERGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&aacute;c khoản kh&ocirc;ng bảo l&atilde;nh</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$CSR_REMASK_ALL_LINE]]<strong><br /></strong>Tổng số tiền từ chối: <strong>[[$ProDeniedAmt]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Số tiền PCV x&aacute;c nhận bảo lảnh</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;<strong>[[$ProApvAmt]]&nbsp;</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n trọng cảm ơn.</span><br /><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$per_approve_sign]]</span></td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>Qu&yacute; bệnh viện vui l&ograve;ng:<br /></strong></span></p>\r\n<ol>\r\n<li style=\"list-style-type: none;\">\r\n<ol>\r\n<li style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Gửi to&agrave;n bộ hồ sơ gốc gồm Giấy ra viện, Chứng nhận phẫu thuật (nếu c&oacute;) , c&aacute;c cận l&acirc;m s&agrave;ng, lịch sử kh&aacute;m, giấy x&aacute;c nhận,... tất cả c&aacute;c chứng từ trao đổi qua email khi y&ecirc;u cầu bảo l&atilde;nh (c&oacute; đ&oacute;ng dấu của bệnh viện v&agrave; chữ k&yacute;) về bộ phận Claims của PCV v&agrave; xuất H&oacute;a đơn Gi&aacute; trị Gia tăng theo th&ocirc;ng tin như sau:<br /></span>\r\n<table style=\"height: 64px; width: 786px; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 197px; height: 18px; text-align: left; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Họ t&ecirc;n người mua h&agrave;ng&nbsp;</span></td>\r\n<td style=\"width: 504px; height: 18px; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>T&Ecirc;N KH&Aacute;CH H&Agrave;NG</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 197px; height: 18px; text-align: left; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Địa chỉ</span></td>\r\n<td style=\"width: 504px; height: 18px; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Địa chỉ của kh&aacute;ch h&agrave;ng</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;PCV sẽ kh&ocirc;ng thanh to&aacute;n cho c&aacute;c hồ sơ qu&aacute; hạn <strong>30 ng&agrave;y</strong> kể từ ng&agrave;y x&aacute;c nhận bảo l&atilde;nh chi ph&iacute; thực tế.</span></li>\r\n</ol>\r\n</li>\r\n</ol>', 0, 1, 1, NULL, NULL, '2021-11-19 02:02:07', 0, NULL, 23, 'P'),
(7, 'Thư Thông Báo Đã Nhận Hồ Sơ', '<p style=\"margin-bottom: 12.0pt; text-align: center; line-height: 150%; text-autospace: none;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><strong><span style=\"line-height: 150%;\">TH&Ocirc;NG B&Aacute;O Đ&Atilde; NHẬN HỒ SƠ</span></strong></span></p>\r\n<p style=\"margin-bottom: 0in; text-align: right; line-height: 150%;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]<br /><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Số: ...</span></strong></span><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty Bảo Hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch thật nhiều sức khỏe. </span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch&uacute;ng t&ocirc;i đ&atilde; nhận được y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch với th&ocirc;ng tin như sau: </span></p>\r\n<table style=\"width: 100%; border-style: none;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"height: 24px; border-color: #000000; border-style: none; width: 31.3208%;\" width=\"38%\">\r\n<p style=\"text-align: justify; line-height: 150%; margin: 2.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>Người được bảo hiểm</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"text-align: justify; line-height: 150%; margin: 2.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>&Ocirc;ng/B&agrave; <span style=\"line-height: 107%;\">[[$memberNameCap]]</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"border-color: #000000; border-style: none; width: 31.3208%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>Hợp đồng số</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"margin-bottom: 0in; line-height: 150%; tab-stops: 2.5in 2.75in; text-autospace: none;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$PRefNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"border-color: #000000; border-style: none; width: 31.3208%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>M&atilde; số th&agrave;nh vi&ecirc;n</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$memRefNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Trong trường hợp cần th&ecirc;m th&ocirc;ng tin/ chứng từ, ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o trong v&ograve;ng 2<strong>&nbsp;ng&agrave;y l&agrave;m việc</strong> kể từ ng&agrave;y gửi th&ocirc;ng b&aacute;o n&agrave;y.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i sẽ giải quyết y&ecirc;u cầu bồi thường v&agrave; th&ocirc;ng b&aacute;o kết quả bồi thường cho Qu&yacute; kh&aacute;ch trong v&ograve;ng 15 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y nhận được hồ sơ đầy đủ.</span></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: normal; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường hoặc cần th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span> hoặc qua thư điện tử <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n trọn</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, '2021-05-27 09:48:35', '2021-07-22 04:02:33', 7, NULL, 73, 'M'),
(8, 'Letter Payment', '<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Y&Ecirc;U CẦU THANH TO&Aacute;N BỒI THƯỜNG BẢO HIỂM SỨC KHỎE</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong>(Chi hộ <span style=\"font-size: 11pt;\"><span style=\"font-family: \'Arial\',sans-serif;\">C&ocirc;ng Ty Bảo Hiểm S&agrave;i G&ograve;n H&agrave; Nội</span></span>)</strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Ng&agrave;y: &nbsp;[[$now]]&nbsp;</span></p>\r\n<table style=\"border-collapse: collapse; border-style: none; margin-left: auto; margin-right: auto;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">T&ecirc;n Chủ Hợp đồng BH</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\">&nbsp;<strong>[[$PhName]]&nbsp;</strong></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">Số Hợp Đồng</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\">&nbsp;<strong>[[$PRefNo]]</strong>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">Số tiền thanh to&aacute;n</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\"><strong> &nbsp;[[$paymentAmt]] đồng<br /></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\">Phương thức Thanh to&aacute;n:[[$payMethod]]</p>\r\n<p style=\"text-align: left;\">Thanh to&aacute;n cho y&ecirc;u cầu giải quyết bồi thường dưới đ&acirc;y:</p>\r\n<table style=\"width: 100%; border-collapse: collapse; height: 100px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 18.8363%; text-align: center; height: 64px;\" width=\"21%\">\r\n<p><strong>T&ecirc;n người được bảo hiểm</strong></p>\r\n</td>\r\n<td style=\"width: 13.7213%; text-align: center; height: 64px;\"><strong>M&atilde; số</strong></td>\r\n<td style=\"width: 13.8153%; text-align: center; height: 64px;\"><strong>Số Hợp đồng</strong></td>\r\n<td style=\"width: 15.0383%; text-align: center; height: 64px;\"><strong>Số Hồ sơ</strong></td>\r\n<td style=\"width: 11.9338%; text-align: center; height: 64px;\"><strong>Số H&oacute;a đơn</strong></td>\r\n<td style=\"width: 14.4739%; text-align: center; height: 64px;\"><strong>Số tiền y&ecirc;u cầu bồi thường (đồng)</strong></td>\r\n<td style=\"width: 18.8953%; text-align: center; height: 64px;\"><strong>Số tiền bồi thường (đồng)</strong></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;[[$memberNameCap]]&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;[[$memRefNo]]&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;[[$PRefNo]]&nbsp;</td>\r\n<td style=\"width: 15.0383%; height: 18px;\">&nbsp;[[$claimNo]]&nbsp;</td>\r\n<td style=\"width: 11.9338%; height: 18px;\">&nbsp;[[$invoicePatient]]&nbsp;</td>\r\n<td style=\"width: 14.4739%; height: 18px;\">&nbsp;[[$pstAmt]]&nbsp;</td>\r\n<td style=\"width: 18.8953%; height: 18px;\">&nbsp;[[$apvAmt]]&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><strong>Tổng cộng</strong></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><strong>[[$time_pay]]</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">Người thực hiện</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">Người duyệt</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">[[$per_creater_sign]]</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">[[$per_approve_sign_replace]]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>[[$note_pay]]</p>', 0, 1, 1, NULL, '2021-07-23 01:00:18', '2021-09-09 07:06:50', 0, NULL, NULL, 'M'),
(9, 'Thư Thông Báo Từ Chối Bồi Thường', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH&Ocirc;NG B&Aacute;O TỪ CHỐI BỒI THƯỜNG</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch thật nhiều sức khỏe. Sau khi xem x&eacute;t hồ sơ y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i tr&acirc;n trọng th&ocirc;ng b&aacute;o kết quả như sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hợp đồng số:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<span style=\"color: #0070c0;\"><br /></span>M&atilde; số th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hiệu lực:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<span style=\"color: #0070c0;\"><br /></span>Hồ sơ bồi thường số:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Người được bảo hiểm:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$tableInfoPayment]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Lịch sử số tiền đ&atilde; bồi thường (VNĐ)</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$claimHistory]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\">Nếu c&oacute; bất kỳ một th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường n&ecirc;u tr&ecirc;n hoặc cần th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: </span><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\"> hoặc qua thư điện tử </span><strong style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\">&nbsp;để được giải đ&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n trọng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, '2021-08-27 02:15:48', '2021-08-30 02:13:06', 0, NULL, 83, 'M');
INSERT INTO `letter_template` (`id`, `name`, `template`, `is_deleted`, `created_user`, `updated_user`, `deleted_at`, `created_at`, `updated_at`, `level`, `letter_payment`, `status_mantis`, `claim_type`) VALUES
(10, 'Thư Tạm Đóng', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Tạm Đ&oacute;ng Hồ Sơ</span></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span><br />Số: ...</span></strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh gửi Qu&yacute; kh&aacute;ch: <strong>[[$applicantName]]</strong>&nbsp;<br /><br />C&ocirc;ng ty Bảo Hiểm Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i đ&atilde; nhận được y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch với th&ocirc;ng tin như sau: <br /></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Để hồ sơ đủ cơ sở thanh to&aacute;n bồi thường Qu&yacute; kh&aacute;ch vui l&ograve;ng bổ sung cho ch&uacute;ng t&ocirc;i c&aacute;c chứng từ sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 94px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 40px;\">\r\n<td style=\"width: 50%; height: 40px;\" colspan=\"2\"><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Người được bảo hiểm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Ocirc;ng/B&agrave; &nbsp;[[$memberNameCap]]&nbsp;</span></strong></td>\r\n</tr>\r\n<tr style=\"height: 10px;\">\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hợp đồng số:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<br /></span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hiệu lực:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<br /></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">M&atilde; số th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Hồ sơ bồi thường số:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 44px;\">\r\n<td style=\"width: 50%; height: 44px;\" colspan=\"2\">\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Thời gian điều trị:</span></p>\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Chẩn đo&aacute;n:<br /></span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Nơi điều trị:</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Để ho&agrave;n tất việc giải quyết y&ecirc;u cầu bồi thường, ch&uacute;ng t&ocirc;i cần th&ecirc;m (những) chứng từ sau:</span></p>\r\n<p>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&oacute;a đơn chuyển đổi từ h&oacute;a đơn điện tử</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&oacute;a đơn gi&aacute; trị gia tăng (VAT)</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phiếu y&ecirc;u cầu giải quyết quyền lợi bảo hiểm chăm s&oacute;c sức khỏe...</p>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Qu&yacute; kh&aacute;ch vui l&ograve;ng gửi lại thư n&agrave;y k&egrave;m (những) chứng từ được liệt k&ecirc; b&ecirc;n tr&ecirc;n v&agrave;o hộp thư điện tử </span><strong><a href=\"mailto:bshclaims@pacificcross.com.vn\"><span style=\"font-family: \'Arial\',sans-serif;\">bshclaims@pacificcross.com.vn</span></a></strong><span style=\"font-family: \'Arial\',sans-serif;\"> hoặc gửi đến văn ph&ograve;ng c&ocirc;ng ty ch&uacute;ng t&ocirc;i theo địa chỉ được ghi ở cuối thư trong v&ograve;ng 15 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y h&ocirc;m nay <span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span></span></strong></span>.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Nếu ch&uacute;ng t&ocirc;i kh&ocirc;ng nhận được chứng từ y&ecirc;u cầu bổ sung trong thời hạn n&ecirc;u tr&ecirc;n th&igrave; ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t y&ecirc;u cầu bồi thường của Qu&yacute; kh&aacute;ch dựa tr&ecirc;n hồ sơ hiện c&oacute;.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường hoặc cần th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #0070c0;\">&nbsp;</span>hoặc qua thư điện tử <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n trọn</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, '2021-09-21 04:18:32', '2021-09-21 04:37:58', 7, NULL, 90, 'M'),
(11, 'Thư Phúc Đáp (vi)', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">THƯ PH&Uacute;C Đ&Aacute;P</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch thật nhiều sức khỏe. <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i đ&atilde; nhận được thắc mắc của Qu&yacute; kh&aacute;ch li&ecirc;n quan đến </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">hồ sơ y&ecirc;u cầu bồi thường số <strong>[[$barcode]]</strong>.</span></span></p>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Người được bảo hiểm:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i xin được ph&uacute;c đ&aacute;p như sau:<br /></span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Nội dung 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp;...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\"><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /><br /><strong>Nội dung 2:</strong> &nbsp;...<br /><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /><br /><strong>Nội dung 3:</strong> &nbsp;...<br /><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif; color: #0070c0;\"><br /></span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i hy vọng nội dung ph&uacute;c đ&aacute;p tr&ecirc;n đ&atilde; giải đ&aacute;p được thắc mắc của Qu&yacute; kh&aacute;ch.<br /></span><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Nếu c&oacute; bất kỳ một th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường n&ecirc;u tr&ecirc;n hoặc cần th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> hoặc qua thư điện tử <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;để được giải đ&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n trọng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, '2021-11-23 15:43:09', '2021-11-23 15:43:09', 0, NULL, NULL, 'M'),
(12, 'Thư Phúc Đáp (en)', '<p style=\"text-align: center; line-height: normal; text-autospace: none; margin: 6.0pt 0in 12.0pt 0in;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Arial\',sans-serif;\">RESPONSE LETTER</span></strong></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Dear Valued Customer</span></strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Saigon Hanoi Insurance </span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">would like to send you respectful greetings and wishes for good health. We received your question(s) related to the the claim </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;<strong>[[$barcode]]</strong>.</span></span></pre>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\"> <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: white;\">Insured Name</span>:&nbsp; <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: white;\">Mr./Ms. </span> [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">We would like to response your question(s) as below:</span></strong></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 125%; text-autospace: none;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> <br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp;<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 2:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp; ...<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 3:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> <br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp;</span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">We hope the above response has answered your questions.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Should you have any other discussion, please contact us via phone number <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"> <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #1f4e79;\">&nbsp;</span>or email <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, we would be pleased to assist.</span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span><span style=\"font-family: \'Arial\',sans-serif;\">Best Regards,</span></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 125%;\"><span style=\"font-family: \'Arial\',sans-serif;\">Claims Department.</span></p>', 0, 1, 1, NULL, '2021-11-23 16:16:23', '2021-11-23 16:16:23', 0, NULL, NULL, 'M'),
(13, 'Giấy Giới Thiệu (không giấy ra viện)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tp. Hồ ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>GIẤY GIỚI THIỆU<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh gửi</u></strong><strong>:</strong> <strong>GI&Aacute;M ĐỐC [[$ProvName]]<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG KẾ HOẠCH TỔNG HỢP<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG BẢO HIỂM<br /><br /></strong></span>C&ocirc;ng ty TNHH MTV Pacific Cross Việt Nam đ&atilde; nhận được hồ sơ y&ecirc;u cầu bồi thường của kh&aacute;ch h&agrave;ng</span></p>\r\n<table style=\"height: 64px; width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 20.4605%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Họ v&agrave; t&ecirc;n: <strong>[[$memberNameCap]]</strong></span><br /><span style=\"font-size: 10pt;\">CMND: <strong>...</strong></span></td>\r\n<td style=\"width: 10.6347%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Giới t&iacute;nh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$SEX]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Ng&agrave;y cấp: <strong>...</strong></span></td>\r\n<td style=\"width: 24.2422%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Năm sinh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Nơi cấp: <strong>...</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"text-align: left; width: 55.3375%; height: 18px;\" colspan=\"3\"><span style=\"font-size: 10pt;\">Địa chỉ: <strong>...</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Trong qu&aacute; tr&igrave;nh giải quyết hồ sơ y&ecirc;u cầu bồi thường, ch&uacute;ng t&ocirc;i được biết kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]</strong> đ&atilde; từng thăm kh&aacute;m, điều trị tại Qu&yacute; Bệnh viện với th&ocirc;ng tin chi tiết sau :</span></p>\r\n<table style=\"height: 72px; width: 75%; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ng&agrave;y thăm kh&aacute;m/ Điều trị</strong></span></td>\r\n<td style=\"width: 29.7519%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Chẩn đo&aacute;n</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Để c&oacute; căn cứ giải quyết y&ecirc;u cầu bồi thường cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i k&iacute;nh đề nghị Qu&yacute; Bệnh Viện hỗ trợ th&ocirc;ng tin chi tiết về c&aacute;c lần thăm kh&aacute;m, điều trị n&ecirc;u tr&ecirc;n của kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]<br /></strong></span><br /><span style=\"font-size: 11pt;\">Ch&uacute;ng t&ocirc;i xin giới thiệu nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chị <strong>Nguyễn Phương Linh</strong>; Số CMND: <strong>013 042 865</strong>; Ng&agrave;y cấp: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Nơi cấp: <strong>CA H&agrave; Nội</strong>; Số ĐT: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Anh <strong>Trần Đại Phước</strong>; Số CMND: <strong>191 274 815</strong>; Ng&agrave;y cấp: <strong>29/05/2012</strong>;</span><br /><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA Quảng Trị</strong>; Số ĐT: <strong>0948 474 706<br /></strong>Được li&ecirc;n hệ c&ocirc;ng t&aacute;c với Qu&yacute; Bệnh Viện để xin tr&iacute;ch sao th&ocirc;ng tin điều trị của kh&aacute;ch h&agrave;ng.<strong><br /><br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; bệnh viện hỗ trợ cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhiệm vụ.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ơn Qu&yacute; bệnh viện.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n trọng k&iacute;nh ch&agrave;o.</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Đại Diện C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Trưởng Bộ Phận Bồi Thường<br /></span></span><br /><br /><br /><br />Nguyễn Thị Hồng Ph&uacute;c</p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></span></p>\r\n</div>', 0, 1, 1, NULL, '2021-07-15 00:45:19', '2021-11-24 09:52:37', 7, NULL, NULL, 'M'),
(14, 'Giấy Giới Thiệu', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Tp. Hồ ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">GIẤY GIỚI THIỆU</span><br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh gửi</u></strong><strong>:</strong> <span style=\"font-size: 11pt;\"><strong>GI&Aacute;M ĐỐC [[$ProvName]]<br /></strong></span></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG KẾ HOẠCH TỔNG HỢP<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG BẢO HIỂM<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">C&ocirc;ng ty TNHH MTV Pacific Cross Việt Nam xin giới thiệu nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Chị <strong>Nguyễn Phương Linh</strong>; Số CMND: <strong>013 042 865</strong>; Ng&agrave;y cấp: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA H&agrave; Nội</strong>; Số ĐT: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Anh <strong>Trần Đại Phước</strong>; Số CMND: <strong>191 274 815</strong>; Ng&agrave;y cấp: <strong>29/05/2012</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA Quảng Trị</strong>; Số ĐT: <strong>0948 474 706</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Được li&ecirc;n hệ với Qu&yacute; Bệnh viện để lấy hồ sơ y tế của kh&aacute;ch h&agrave;ng:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 332px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Họ v&agrave; t&ecirc;n: &nbsp;<strong>[[$memberNameCap]]<br /></strong>Ng&agrave;y sinh: <span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></td>\r\n<td style=\"width: 251px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Giới t&iacute;nh: <span style=\"text-align: center;\"><strong>[[$SEX]]<br /></strong>M&atilde; BN/ BA:<strong> ...</strong></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Địa chỉ: ...</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Bao gồm:</span></p>\r\n<ul style=\"text-align: left;\">\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; bệnh viện hỗ trợ cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhiệm vụ.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ơn Qu&yacute; bệnh viện.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n trọng k&iacute;nh ch&agrave;o.</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Đại Diện C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Trưởng Bộ Phận Bồi Thường<br /></span><br /><br /><br /><br /><br /><strong>Nguyễn Thị Hồng Ph&uacute;c</strong></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</div>', 0, 1, 1, NULL, '2021-07-15 00:42:56', '2021-11-24 09:52:25', 7, NULL, NULL, 'M'),
(15, 'Giấy Giới Thiệu (không giấy ra viện)(Có Mộc Ký)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tp. Hồ ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>GIẤY GIỚI THIỆU<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh gửi</u></strong><strong>:</strong> <strong>GI&Aacute;M ĐỐC [[$ProvName]]<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG KẾ HOẠCH TỔNG HỢP<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG BẢO HIỂM<br /><br /></strong></span>C&ocirc;ng ty TNHH MTV Pacific Cross Việt Nam đ&atilde; nhận được hồ sơ y&ecirc;u cầu bồi thường của kh&aacute;ch h&agrave;ng</span></p>\r\n<table style=\"height: 64px; width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 20.4605%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Họ v&agrave; t&ecirc;n: <strong>[[$memberNameCap]]</strong></span><br /><span style=\"font-size: 10pt;\">CMND: <strong>...</strong></span></td>\r\n<td style=\"width: 10.6347%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Giới t&iacute;nh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$SEX]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Ng&agrave;y cấp: <strong>...</strong></span></td>\r\n<td style=\"width: 24.2422%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Năm sinh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Nơi cấp: <strong>...</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"text-align: left; width: 55.3375%; height: 18px;\" colspan=\"3\"><span style=\"font-size: 10pt;\">Địa chỉ: <strong>...</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Trong qu&aacute; tr&igrave;nh giải quyết hồ sơ y&ecirc;u cầu bồi thường, ch&uacute;ng t&ocirc;i được biết kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]</strong> đ&atilde; từng thăm kh&aacute;m, điều trị tại Qu&yacute; Bệnh viện với th&ocirc;ng tin chi tiết sau :</span></p>\r\n<table style=\"height: 72px; width: 75%; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ng&agrave;y thăm kh&aacute;m/ Điều trị</strong></span></td>\r\n<td style=\"width: 29.7519%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Chẩn đo&aacute;n</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Để c&oacute; căn cứ giải quyết y&ecirc;u cầu bồi thường cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i k&iacute;nh đề nghị Qu&yacute; Bệnh Viện hỗ trợ th&ocirc;ng tin chi tiết về c&aacute;c lần thăm kh&aacute;m, điều trị n&ecirc;u tr&ecirc;n của kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]<br /></strong></span><br /><span style=\"font-size: 11pt;\">Ch&uacute;ng t&ocirc;i xin giới thiệu nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chị <strong>Nguyễn Phương Linh</strong>; Số CMND: <strong>013 042 865</strong>; Ng&agrave;y cấp: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Nơi cấp: <strong>CA H&agrave; Nội</strong>; Số ĐT: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Anh <strong>Trần Đại Phước</strong>; Số CMND: <strong>191 274 815</strong>; Ng&agrave;y cấp: <strong>29/05/2012</strong>;</span><br /><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA Quảng Trị</strong>; Số ĐT: <strong>0948 474 706<br /></strong>Được li&ecirc;n hệ c&ocirc;ng t&aacute;c với Qu&yacute; Bệnh Viện để xin tr&iacute;ch sao th&ocirc;ng tin điều trị của kh&aacute;ch h&agrave;ng.<strong><br /><br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; bệnh viện hỗ trợ cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhiệm vụ.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ơn Qu&yacute; bệnh viện.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n trọng k&iacute;nh ch&agrave;o.</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Đại Diện C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Trưởng Bộ Phận Bồi Thường<br /></span></span>[[$HEADSIGN]]</p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></span></p>\r\n</div>', 0, 1, 1, NULL, '2021-03-02 21:32:07', '2021-11-24 09:51:58', 7, NULL, NULL, 'M'),
(16, 'Giấy Giới Thiệu (Có Mộc Ký)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Tp. Hồ ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">GIẤY GIỚI THIỆU</span><br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh gửi</u></strong><strong>:</strong> <span style=\"font-size: 11pt;\"><strong>GI&Aacute;M ĐỐC [[$ProvName]]<br /></strong></span></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG KẾ HOẠCH TỔNG HỢP<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG BẢO HIỂM<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">C&ocirc;ng ty TNHH MTV Pacific Cross Việt Nam xin giới thiệu nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Chị <strong>Nguyễn Phương Linh</strong>; Số CMND: <strong>013 042 865</strong>; Ng&agrave;y cấp: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA H&agrave; Nội</strong>; Số ĐT: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Anh <strong>Trần Đại Phước</strong>; Số CMND: <strong>191 274 815</strong>; Ng&agrave;y cấp: <strong>29/05/2012</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Nơi cấp: <strong>CA Quảng Trị</strong>; Số ĐT: <strong>0948 474 706</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Được li&ecirc;n hệ với Qu&yacute; Bệnh viện để lấy hồ sơ y tế của kh&aacute;ch h&agrave;ng:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 332px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Họ v&agrave; t&ecirc;n: &nbsp;<strong>[[$memberNameCap]]<br /></strong>Ng&agrave;y sinh: <span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></td>\r\n<td style=\"width: 251px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Giới t&iacute;nh: <span style=\"text-align: center;\"><strong>[[$SEX]]<br /></strong>M&atilde; BN/ BA:<strong> ...</strong></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Địa chỉ: ...</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Bao gồm:</span></p>\r\n<ul style=\"text-align: left;\">\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; bệnh viện hỗ trợ cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhiệm vụ.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ơn Qu&yacute; bệnh viện.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n trọng k&iacute;nh ch&agrave;o.</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Đại Diện C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Trưởng Bộ Phận Bồi Thường<br /></span>[[$HEADSIGN]]</p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</div>', 0, 1, 1, NULL, '2021-03-02 21:30:04', '2021-11-24 09:51:44', 7, NULL, NULL, 'M'),
(17, 'Thư Phúc Đáp (vi)', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">THƯ PH&Uacute;C Đ&Aacute;P</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh gửi Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty Bảo hiểm S&agrave;i G&ograve;n H&agrave; Nội xin gửi đến Qu&yacute; kh&aacute;ch lời ch&agrave;o tr&acirc;n trọng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch thật nhiều sức khỏe. <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i đ&atilde; nhận được thắc mắc của Qu&yacute; kh&aacute;ch li&ecirc;n quan đến </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">hồ sơ y&ecirc;u cầu bồi thường số <strong>[[$barcode]]</strong>.</span></span></p>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Người được bảo hiểm:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i xin được ph&uacute;c đ&aacute;p như sau:<br /></span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Nội dung 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp;...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\"><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /><br /><strong>Nội dung 2:</strong> &nbsp;...<br /><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /><br /><strong>Nội dung 3:</strong> &nbsp;...<br /><strong>Ph&uacute;c đ&aacute;p:</strong> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif; color: #0070c0;\"><br /></span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i hy vọng nội dung ph&uacute;c đ&aacute;p tr&ecirc;n đ&atilde; giải đ&aacute;p được thắc mắc của Qu&yacute; kh&aacute;ch.<br /></span><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Nếu c&oacute; bất kỳ một th&ocirc;ng tin n&agrave;o kh&aacute;c, những thắc mắc li&ecirc;n quan đến việc giải quyết bồi thường n&ecirc;u tr&ecirc;n hoặc cần th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> hoặc qua thư điện tử <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;để được giải đ&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n hạnh hỗ trợ.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n trọng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Bộ phận Giải quyết Bồi thường</span></p>', 0, 1, 1, NULL, '2022-01-21 08:59:33', '2022-01-21 08:59:33', 0, NULL, NULL, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `level_role_status`
--

CREATE TABLE `level_role_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `min_amount` bigint(20) NOT NULL,
  `max_amount` bigint(20) NOT NULL,
  `begin_status` int(11) NOT NULL,
  `end_status` int(11) NOT NULL,
  `signature_accepted_by` int(11) DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claim_type` char(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level_role_status`
--

INSERT INTO `level_role_status` (`id`, `name`, `min_amount`, `max_amount`, `begin_status`, `end_status`, `signature_accepted_by`, `created_user`, `updated_user`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`, `claim_type`) VALUES
(1, 'Level 1 (QC approved) - M', 0, 5000000, 13, 10, 10, 1, 1, 0, NULL, '2021-07-05 06:46:18', '2021-07-05 06:46:18', 'M'),
(2, 'Level 2 (Manager approved) - M', 0, 50000000, 13, 7, 7, 1, 1, 0, NULL, '2021-11-05 00:53:35', NULL, 'M'),
(3, 'Level 3 (Header approved) - M', 50000000, 99999999999, 13, 14, 14, 1, 1, 0, NULL, '2021-10-18 01:33:16', NULL, 'M'),
(4, 'Level 1 (None) - (GOP)', 0, 5000000, 13, 20, 20, 1, 1, 0, NULL, '2021-07-05 06:46:49', '2021-07-05 06:46:49', 'P'),
(5, 'Level 2 (Manager approved) - (GOP)', 0, 50000000, 13, 23, 23, 1, 1, 0, NULL, '2021-11-10 23:58:28', NULL, 'P'),
(6, 'Level 3 (Header approved) - (GOP)', 50000000, 99999999999, 13, 14, 14, 1, 1, 0, NULL, '2021-11-10 23:58:02', NULL, 'P'),
(7, 'Không Cần Approved', 99999999999, 99999999999, 13, 13, 13, 1, 1, 0, '2021-07-14 04:57:41', '2021-07-14 04:57:41', NULL, 'M'),
(8, 'lever 1 (QC approved)', 0, 10000000, 13, 10, 10, 1, 1, 0, '2021-10-18 01:32:37', '2021-11-05 00:53:24', '2021-11-05 00:53:24', 'M'),
(9, 'Level 1 (claim Gop Approved) - (GOP)', 0, 10000000, 13, 20, 20, 1, 1, 0, '2021-10-18 01:35:35', '2021-11-10 23:58:15', '2021-11-10 23:58:15', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `log_hbs_approved`
--

CREATE TABLE `log_hbs_approved` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cl_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `export_letter_id` int(11) DEFAULT NULL,
  `approve` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hbs` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANTIS_ID` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMB_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POCY_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMB_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_mfile`
--

CREATE TABLE `log_mfile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `cl_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_errorCode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_errorMsg` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_policy_holder_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_policy_holder_latest_version` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_member_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_member_latest_version` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_claim_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_claim_latest_version` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_claim_file_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_claim_file_latest_version` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_ca` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `have_mfile` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_from` int(10) UNSIGNED NOT NULL,
  `user_to` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `important` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(131, '2014_10_12_000000_create_users_table', 1),
(132, '2014_10_12_100000_create_password_resets_table', 1),
(133, '2019_08_19_000000_create_failed_jobs_table', 1),
(134, '2019_09_19_045100_create_claim_table', 1),
(135, '2019_10_02_032603_create_reason_reject_table', 1),
(136, '2019_10_02_033856_create_item_of_claim_table', 1),
(137, '2019_10_07_172416_create_product_table', 1),
(138, '2019_10_08_093755_index_product', 1),
(139, '2019_10_20_081322_create_permission_tables', 1),
(140, '2019_10_23_043719_create_terms_table', 1),
(141, '2019_10_29_045737_create_letter_template_table', 1),
(142, '2019_11_01_183616_create_messages_table', 1),
(143, '2019_11_03_081107_create_chats_table', 1),
(144, '2019_11_05_144627_create_room_and_boards_table', 1),
(145, '2019_11_22_034118_create_export_letter_table', 1),
(146, '2020_02_21_163929_add_note_to_export_letter', 1),
(147, '2020_02_24_115547_create_role_change_status_table', 1),
(148, '2020_02_24_173448_create_level_role_status_table', 1),
(149, '2020_02_24_205207_create_transaction_role_status_table', 1),
(150, '2020_02_27_174734_add_level_to_letter_template', 1),
(151, '2020_02_29_205838_add_avantar_and_signature_to_users', 1),
(152, '2020_03_01_104538_create_push_subscriptions_table', 1),
(153, '2020_03_02_022916_create_notifications_table', 1),
(154, '2020_03_02_152701_create_activity_log_table', 1),
(155, '2020_03_03_014545_add_letter_payment_to_letter_template_table', 1),
(156, '2020_03_04_205311_add_data_cps_to_export_letter_table', 1),
(157, '2020_03_08_185815_add_atr_to_messages_table', 1),
(158, '2020_03_11_144231_create_claim_word_sheet_table', 1),
(159, '2020_03_19_203742_add_status_mantis_to_letter_template_table', 1),
(160, '2020_03_23_144008_create_settings_table', 1),
(161, '2020_04_02_094555_add_fiel_to_claim_word_sheet_table', 1),
(162, '2020_04_03_150321_add_url_file_sorted_to_claim_table', 1),
(163, '2020_04_09_070612_add_apv_amt_to_export_letter_table', 1),
(164, '2020_04_14_164709_add_old_number_page_send_to_claim_table', 1),
(165, '2020_04_15_094331_add_status_online_query_to_claim_word_sheet_table', 1),
(166, '2020_04_15_102934_add_member_name_to_claim_table', 1),
(167, '2020_04_25_173701_add_benifit_to_item_of_claim', 1),
(168, '2020_05_27_102138_create_unc_sign_table', 1),
(169, '2020_05_28_111526_add_finance_email_to_settings_table', 1),
(170, '2020_06_05_212204_create_payment_history_table', 1),
(171, '2020_06_13_002939_add_claim_type_to_claim_table', 1),
(172, '2020_06_17_220926_add_manager_gop_claim_to_settings_table', 1),
(173, '2020_06_18_140550_add_manager_gop_accept_pay_to_claim_table', 1),
(174, '2020_06_20_174555_add_prov_gop_pres_amt_to_claim_table', 1),
(175, '2020_06_26_112030_create_provider_table', 1),
(176, '2020_06_26_162551_create_deduct_provider_table', 1),
(177, '2020_06_29_175018_create_hospital_request_table', 1),
(178, '2020_07_30_132530_create_log_hbs_approved_table', 1),
(179, '2020_08_03_085406_create_group_mem_approved_table', 1),
(180, '2020_08_07_132505_add_mantis_id_to_claim_table', 1),
(181, '2020_09_09_102138_add_group_to_users_table', 1),
(182, '2020_09_09_111101_create_group_users_table', 1),
(183, '2020_09_17_131814_add_jetcase_to_claim_table', 1),
(184, '2020_09_23_114823_create_inbox_email_table', 1),
(185, '2020_09_25_102115_create_finish_and_pay_table', 1),
(186, '2020_10_05_141803_add_incur_time_to_hospital_request_table', 1),
(187, '2020_10_06_090311_add_diagnosis_to_hospital_request_table', 1),
(188, '2020_10_08_090459_add_incur_time_extb_to_hospital_request_table', 1),
(189, '2020_10_23_092608_create_report_admin_table', 1),
(190, '2020_12_22_090403_create_hbs_benhead_table', 1),
(191, '2021_01_12_145050_add_pay_time_to_finish_and_pay_table', 1),
(192, '2021_01_26_104116_add_db_ref_no_to_claim_table', 1),
(193, '2021_03_13_181743_add_include_admin_fee_to_claim_table', 1),
(194, '2021_03_14_181952_add_token_mfile_to_settings_table', 1),
(195, '2021_03_17_120435_create_log_mfile_table', 1),
(196, '2021_06_01_172149_add_project_to_claim_table', 2),
(197, '2021_06_06_093802_add_invoice_to_claim_table', 2),
(198, '2015_07_31_1_email_log', 3),
(199, '2016_09_21_001638_add_bcc_column_email_log', 3),
(200, '2017_11_10_001638_add_more_mail_columns_email_log', 3),
(201, '2018_05_11_115355_use_longtext_for_attachments', 3),
(202, '2021_06_07_104500_create_pocy_management_table', 4),
(203, '2021_10_14_134247_add_date_tbbt_to_finish_and_pay_table', 5),
(204, '2022_02_28_133707_add_email_to_pocy_management_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(5, 'App\\User', 6),
(7, 'App\\User', 16),
(7, 'App\\User', 17),
(8, 'App\\User', 11),
(8, 'App\\User', 12),
(8, 'App\\User', 13),
(8, 'App\\User', 18),
(8, 'App\\User', 22),
(9, 'App\\User', 8),
(9, 'App\\User', 9),
(9, 'App\\User', 10),
(9, 'App\\User', 19),
(9, 'App\\User', 20),
(9, 'App\\User', 22),
(10, 'App\\User', 5),
(10, 'App\\User', 7),
(13, 'App\\User', 14),
(13, 'App\\User', 15),
(13, 'App\\User', 21);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CL_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMB_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POCY_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMB_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRES_AMT` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_AMT` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TF_AMT` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEDUCT_AMT` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENT_METHOD` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANTIS_ID` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCT_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCT_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_CITY` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_BRANCH` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BENEFICIARY_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PP_DATE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PP_PLACE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PP_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CL_TYPE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BEN_TYPE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENT_TIME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TF_STATUS` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TF_DATE` date DEFAULT NULL,
  `VCB_SEQ` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VCB_CODE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYM_ID` int(11) NOT NULL,
  `claim_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HBS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_letter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_payment` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_unc` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_file` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `update_hbs` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `notify_renew` int(11) NOT NULL DEFAULT 0,
  `reason_renew` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`) VALUES
(1, 'view_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(2, 'add_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(3, 'edit_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(4, 'delete_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(5, 'publish_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(6, 'unpublish_claim', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(7, 'view_product', 'web', '2021-05-25 08:54:00', '2021-05-25 08:54:00', 0, NULL),
(8, 'add_product', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(9, 'edit_product', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(10, 'delete_product', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(11, 'publish_product', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(12, 'unpublish_product', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(13, 'view_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(14, 'add_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(15, 'edit_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(16, 'delete_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(17, 'publish_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(18, 'unpublish_term', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(19, 'view_provider', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(20, 'add_provider', 'web', '2021-05-25 08:54:01', '2021-05-25 08:54:01', 0, NULL),
(21, 'edit_provider', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(22, 'delete_provider', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(23, 'publish_provider', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(24, 'unpublish_provider', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(25, 'view_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(26, 'add_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(27, 'edit_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(28, 'delete_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(29, 'publish_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(30, 'unpublish_reason_reject', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(31, 'view_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(32, 'add_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(33, 'edit_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(34, 'delete_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(35, 'publish_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(36, 'unpublish_letter_template', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pocy_management`
--

CREATE TABLE `pocy_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `pocy_ref_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `providers` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `PROV_CODE` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `EFF_DATE` date DEFAULT NULL,
  `TERM_DATE` date DEFAULT NULL,
  `PROV_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDR` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCMA_OID_COUNTRY` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYEE` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CL_PAY_ACCT_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_ADDR` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_type`, `subscribable_id`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 17, 'https://fcm.googleapis.com/fcm/send/f7MOg84dLLY:APA91bGSmcy-Q-Us97emsqp6K4H_gQ9pF2GGppTRZquwXZ11XdOMi6oVhyBLPwGHw_mJ7Bg1yg07FSmXZd86Bj-XH_8T25GSlEqM0HB1TT5i20D1bXgEp9pAh-ZVVn9I8N9YAKWoUtVX', 'BKKVT1EqFI_rTM-4y7vcovW8CAy5Cd4OruP30ypvTRH3y5Obm7p_Fmco08K2Fe-kKXfMDxOApCrvEhG-d0JdWpM', '3pTB9eDdLOY-BZf4PtZt_A', 'aes128gcm', '2022-01-06 06:22:01', '2022-01-06 06:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `reason_reject`
--

CREATE TABLE `reason_reject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reason_reject`
--

INSERT INTO `reason_reject` (`id`, `name`, `term_id`, `template`, `created_user`, `updated_user`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`) VALUES
(1, 'bệnh bẩm sinh', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin]Chẩn đo&aacute;n \"[##nameItem##]\"[End] l&agrave; t&igrave;nh trạng bẩm sinh, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.2 của Quy tắc v&agrave; Điều khoản bảo hiểm bổ sung bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:41:28', '2020-04-14 18:00:19', 0, NULL),
(2, 'Chất dinh dưỡng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] của ng&agrave;y&nbsp; [##Date##] l&agrave; chất dinh dưỡng, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:46:09', '2020-04-14 18:00:35', 0, NULL),
(3, 'Chi phí tiền giường cho người thân', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Qu&yacute; kh&aacute;ch đ&atilde; tr&ecirc;n 18 tuổi n&ecirc;n chi ph&iacute; giường cho người th&acirc;n [##amountItem##] đồng l&agrave; khoản Qu&yacute; kh&aacute;ch tự thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:50:38', '2020-04-14 18:00:55', 0, NULL),
(4, 'adddfsdfsdfsdfsdfsd', NULL, '<p>&nbsp;<strong class=\"text-danger\">[Begin]</strong>&nbsp;&nbsp;<strong class=\"text-danger\">[##nameItem##]</strong> , &nbsp;<strong class=\"text-danger\">[##amountItem##]&nbsp;<strong class=\"text-danger\">[End]</strong>&nbsp;</strong> thuoc di&ecirc;u le 3.5 nen bi ch&ocirc;ii&nbsp;</p>', 1, 1, '2020-01-19 06:35:20', '2020-01-19 10:11:28', 1, '2020-01-19 10:11:28'),
(5, 'Chứng từ y tế thể hiện chẩn đoán', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Hồ sơ Qu&yacute; kh&aacute;ch cung cấp kh&ocirc;ng c&oacute; chứng từ y tế thể hiện chẩn đo&aacute;n bệnh (toa thuốc, sổ kh&aacute;m bệnh&hellip;) của chi ph&iacute; [##amountItem##] đồng v&agrave;o ng&agrave;y [##Date##]. Trường hợp Qu&yacute; kh&aacute;ch bổ sung được chứng từ y tế thể hiện chẩn đo&aacute;n bệnh (toa thuốc, sổ kh&aacute;m bệnh&hellip;) c&oacute; họ t&ecirc;n, chữ k&yacute; của B&aacute;c sĩ điều trị ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại chi ph&iacute; n&agrave;y. </span></li>\r\n</ul>', 1, 1, '2020-01-19 10:14:10', '2021-02-03 14:37:01', 0, NULL),
(6, 'còi xương', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng phục vụ điều trị cho chẩn đo&aacute;n \" [##Text##]\" thuộc điều khoản loại trừ bảo hiểm theo Điều 3.2 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-01-20 16:46:38', '2020-04-14 18:02:24', 0, NULL),
(7, 'Mỹ phẩm', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng[End] l&agrave; mỹ phẩm,&nbsp;<span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 14.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"> thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span><br /></span></li>\r\n</ul>', 1, 1, '2020-02-04 09:23:12', '2020-11-17 17:09:17', 0, NULL),
(8, 'dịch truyền dinh dưỡng', NULL, '<ul>\r\n<li>&nbsp;<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng[End] l&agrave; dịch truyền dinh dưỡng, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-02-10 05:07:19', '2020-04-14 18:03:33', 0, NULL),
(9, 'test', NULL, '<p><br />Chi ph&iacute; &nbsp;<strong class=\"text-danger\">[##nameItem##]</strong>&nbsp; từ ng&agrave;y &nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp; đến &nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp; l&agrave; &nbsp;<strong class=\"text-danger\">[##amountItem##]</strong>&nbsp; , tuy nhi&ecirc;n c&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; đồng do vượt mức quyền lợi tối đa( &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; đồng/ ng&agrave;y x &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; = &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; đồng).</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##nameItem##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##amountItem##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1, '2020-02-10 09:56:37', '2020-02-10 12:42:45', 1, '2020-02-10 12:42:45'),
(10, 'ádasdas', NULL, '<p>sadasdasd</p>', 1, 1, '2020-02-10 12:38:49', '2020-02-10 12:38:56', 1, '2020-02-10 12:38:56'),
(11, 'đo thị lực', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng[End] thuộc điều khoản loại trừ bảo hiểm theo Điều 3.14 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 09:55:34', '2020-03-10 14:29:47', 0, NULL),
(12, 'dung dịch khoáng chất', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng<span style=\"color: #626262; background-color: #ffffff;\">[End]</span> l&agrave; dung dịch kho&aacute;ng chất, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 09:57:23', '2020-03-25 11:55:02', 0, NULL),
(13, 'Dung dịch khoáng chất (có ngày)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng v&agrave;o ng&agrave;y [##Date##][End] l&agrave; dung dịch kho&aacute;ng chất, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:00:47', '2020-03-25 11:55:18', 0, NULL),
(14, 'Nothing', NULL, '<p>TEst</p>', 1, 1, '2020-03-01 10:01:57', '2020-03-17 19:02:39', 0, NULL),
(15, 'Dưới hạn mức thanh toán', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; điều trị thực tế của ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n C&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả do dưới hạn mức thanh to&aacute;n tối thiểu <span style=\"color: #626262; background-color: #ffffff;\">[##Text##] </span>đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:04:34', '2020-03-19 17:47:22', 0, NULL),
(16, 'gout', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">\"[##Text##]\" l&agrave; bệnh vi&ecirc;m khớp xương thuộc điều khoản loại trừ bảo hiểm theo Điều 3.4 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe n&ecirc;n chi ph&iacute;&nbsp; [##nameItem##],&nbsp; [##amountItem##] đồng li&ecirc;n quan đến chẩn đo&aacute;n n&agrave;y kh&ocirc;ng được thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:06:17', '2020-12-15 21:04:49', 0, NULL),
(17, 'Không liên quan đến chẩn đoán (có ngày)', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng v&agrave;o ng&agrave;y [##Date##][End] kh&ocirc;ng li&ecirc;n quan trực tiếp đến chẩn đo&aacute;n bệnh, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.12 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:07:38', '2020-04-14 17:43:20', 0, NULL),
(18, 'không có hóa đơn bản gốc', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng kh&ocirc;ng c&oacute; h&oacute;a đơn t&agrave;i ch&iacute;nh (bản gốc),&nbsp;(Trường hợp Qu&yacute; kh&aacute;ch cung cấp được chứng từ n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại y&ecirc;u cầu bồi thường n&agrave;y).<br /></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:08:31', '2020-03-23 16:19:54', 0, NULL),
(19, 'Biên lai/ Phiếu thu không có hóa đơn VAT', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##Text##] <span style=\"background-color: #ffffff;\">đồng</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">đơn t&agrave;i ch&iacute;nh (bản gốc),</span> ch&uacute;ng t&ocirc;i chỉ thanh to&aacute;n t<span style=\"background-color: #ffffff;\">ối đa</span> 200.000 đồng, kh&ocirc;ng thanh to&aacute;n [##amountItem##] đồng. </span><span style=\"background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">(Trường hợp Qu&yacute; kh&aacute;ch cung cấp được chứng từ n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m/ ra viện, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại y&ecirc;u cầu bồi thường n&agrave;y).</span><br /></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:09:13', '2020-11-17 17:03:57', 0, NULL),
(20, 'không có số đăng kí thuốc', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##] đồng[End] kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; số đăng k&iacute; thuốc<span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 14.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"> n&ecirc;n kh&ocirc;ng thuộc phạm vi bảo hiểm theo Điều 2.1 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:09:58', '2020-11-17 17:03:16', 0, NULL),
(21, 'Không có toa thuốc hợp lệ', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##] [##amountItem##] đồng[End] kh&ocirc;ng c&oacute; toa thuốc (c&oacute; chẩn đo&aacute;n, chữ k&yacute; v&agrave; họ t&ecirc;n b&aacute;c sĩ, ng&agrave;y k&ecirc; toa). Trường hợp Qu&yacute; kh&aacute;ch cung cấp được toa thuốc hợp lệ c&ograve;n thiếu trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại chi ph&iacute; n&agrave;y.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:11:26', '2020-12-07 19:28:10', 0, NULL),
(22, 'không liên quan đến chẩn đoán', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##] [##amountItem##] đồng[End] kh&ocirc;ng li&ecirc;n quan trực tiếp đến chẩn đo&aacute;n bệnh, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.12 của Quy tắc v&agrave; điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:12:17', '2020-04-26 19:18:42', 0, NULL),
(23, 'không thuộc phạm vi bảo hiểm', NULL, '<ul>\r\n<li>&nbsp;<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> đồng kh&ocirc;ng thuộc phạm vi bảo hiểm, thuộc khoản Qu&yacute; kh&aacute;ch tự thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:13:45', '2021-03-18 18:30:36', 0, NULL),
(24, 'Không thuộc phạm vi bảo hiểm', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##] đồng v&agrave;o ng&agrave;y&nbsp; [##Date##][End]&nbsp; kh&ocirc;ng thuộc phạm vi bảo hiểm, theo Điều 2.2 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:14:44', '2020-03-10 14:34:30', 0, NULL),
(25, 'chi phí thuốc, biên lai thuốc, thuốc không có toa thuốc', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng kh&ocirc;ng c&oacute; toa thuốc (c&oacute; chẩn đo&aacute;n, chữ k&yacute; v&agrave; họ t&ecirc;n b&aacute;c sĩ, ng&agrave;y k&ecirc; toa). Trường hợp Qu&yacute; kh&aacute;ch cung cấp được toa thuốc hợp lệ c&ograve;n thiếu trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại chi ph&iacute; n&agrave;y.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:15:22', '2020-12-07 19:28:46', 0, NULL),
(26, 'lệch vách mũi', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; phẫu thuật chỉnh h&igrave;nh v&aacute;ch ngăn&nbsp; [##amountItem##] đồng điều trị cho chẩn đo&aacute;n \" [##Text##]\", thuộc điều khoản loại trừ bảo hiểm Điều 3.3 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:15:53', '2020-03-10 14:35:28', 0, NULL),
(27, 'loãng xương', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng phục vụ điều trị bệnh \"Lo&atilde;ng xương\" thuộc điều khoản loại trừ bảo hiểm theo Điều 3.4 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.&nbsp;</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:16:25', '2020-03-10 14:35:54', 0, NULL),
(28, 'mỹ phẩm (có ngày)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng ng&agrave;y [##Date##] c&oacute; số đăng k&yacute; [##Text##] l&agrave; mỹ phẩm, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:17:00', '2020-03-26 19:04:35', 0, NULL),
(29, 'Phụ thu chi phí điện nước', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Phụ thu chi ph&iacute; điện nước&nbsp; [##amountItem##] đồng thuộc khoản Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:17:41', '2020-03-10 14:36:48', 0, NULL),
(30, 'vượt quyền lợi ngoại trú 210', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n, C&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 1.000.000 đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:18:19', '2021-03-07 13:22:57', 0, NULL),
(31, 'vượt quyền lợi ngoại trú 420', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y&nbsp; [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n, C&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 2.000.000 đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:18:55', '2020-09-28 18:03:05', 0, NULL),
(32, 'răng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng thuộc điều khoản loại trừ bảo hiểm theo Điều 3.15 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:19:26', '2020-03-10 14:38:10', 0, NULL),
(33, 'rối loạn dạng cơ thể', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng phục vụ điều trị \" [##Text##]\" thuộc điều khoản loại trừ bảo hiểm theo Điều 3.17 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:20:12', '2020-03-10 14:38:40', 0, NULL),
(34, 'rối loạn giấc ngủ', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng l&agrave; thuốc điều trị bệnh \"Rối loạn giấc ngủ\" l&agrave; bệnh thuộc điều khoản loại trừ bảo hiểm theo Điều 3.19 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:21:08', '2020-03-10 14:38:57', 0, NULL),
(35, 'rối loạn lo âu (từ chối xét nghiệm, thuốc, ...)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng[End] phục vụ điều trị cho chẩn đo&aacute;n \"[##Text##]\", thuộc điều khoản loại trừ bảo hiểm theo điều 3.17 của Quy tắc v&agrave; điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:21:45', '2020-03-18 20:29:31', 0, NULL),
(36, 'tầm soát ung thư', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng l&agrave; x&eacute;t nghiệm tầm so&aacute;t ung thư, thuộc điều khoản loại trừ bảo hiểm theo Điều 11.11 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:22:17', '2021-06-02 10:01:08', 0, NULL),
(37, 'Thai', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] đồng kh&ocirc;ng được thanh to&aacute;n, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.8 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:10', '2020-03-10 14:39:56', 0, NULL),
(38, 'Thai', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng li&ecirc;n quan đến chẩn đo&aacute;n \"[##Text##]\", thuộc điều khoản loại trừ bảo hiểm theo Điều 3.8 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:34', '2021-02-07 16:42:11', 0, NULL),
(39, 'thoái hóa đốt sống cổ', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chẩn đo&aacute;n \"[##Text##]\" thuộc điều khoản loại trừ bảo hiểm theo Điều 3.4 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:59', '2021-02-07 16:42:54', 0, NULL),
(40, 'Thiếu hóa đơn chuyển đổi của HĐĐT', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; [##amountItem##] kh&ocirc;ng c&oacute; h&oacute;a đơn chuyển đổi từ h&oacute;a đơn điện tử v&agrave; chữ k&iacute; của người chuyển đổi (bản gốc) n&ecirc;n kh&ocirc;ng được thanh to&aacute;n.&nbsp;</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:24:29', '2020-11-17 16:51:58', 0, NULL),
(41, 'thực phẩm chức năng nội trú', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng c&oacute; số c&ocirc;ng bố [##Text##][End] l&agrave; thực phẩm chức năng, kh&ocirc;ng phải l&agrave; thuốc n&ecirc;n kh&ocirc;ng thuộc phạm vi bảo hiểm theo Điều 2.1 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:25:10', '2021-02-07 16:34:56', 0, NULL),
(42, 'thực phẩm chức năng ngoại trú', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng c&oacute; số c&ocirc;ng bố [##Text##][End] l&agrave; thực phẩm chức năng, kh&ocirc;ng phải l&agrave; thuốc n&ecirc;n kh&ocirc;ng thuộc phạm vi bảo hiểm theo Điều 2.2 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:25:37', '2021-02-07 16:34:41', 0, NULL),
(43, 'thuốc chống trầm cảm', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> đồng v&agrave;o ng&agrave;y&nbsp; [##Date##] tại Bệnh viện&nbsp; [##Text##] c&oacute;&nbsp; &nbsp;số đăng k&yacute;&nbsp; [##Text##] l&agrave; thực phẩm chức năng, kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng thuộc phạm vi bảo hiểm theo điều 2.2 của Quy tắc v&agrave; điều khoản bảo hiểm bổ sung bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:26:15', '2020-03-10 14:27:51', 0, NULL),
(44, 'thuốc hỗ trợ dự phòng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> đồng l&agrave; thuốc hỗ trợ dự ph&ograve;ng, tăng cường hệ miễn dịch thuộc điều khoản loại trừ bảo hiểm theo Điều 3.12 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:27:05', '2020-03-10 14:27:32', 0, NULL),
(45, 'thuốc hỗ trợ dự phòng,hỗ trợ tăng cường hệ miễn dịch', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##amountItem##][End] l&agrave; thuốc hỗ trợ dự ph&ograve;ng, hỗ trợ tăng cường hệ miễn dịch, thuộc điều khoản loại trừ bảo hiểm theo Điều 1.24a v&agrave; Điều 3.12 của Quy tắc v&agrave; Điều khoản bảo hiểm chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:28:19', '2020-11-17 16:50:56', 0, NULL),
(46, 'thuốc hướng tâm thần', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] của ng&agrave;y&nbsp; [##Date##][End]&nbsp; l&agrave; thuốc hướng t&acirc;m thần, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.17 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:28:52', '2020-11-17 16:50:12', 0, NULL),
(47, 'thuốc hướng tâm thần', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] của ng&agrave;y&nbsp; [##Date##][End] l&agrave; thuốc hướng t&acirc;m thần, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.12 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:29:17', '2020-03-10 14:23:46', 0, NULL),
(48, 'thuốc hướng tâm thần 2', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin] [##nameItem##],&nbsp; [##amountItem##] của ng&agrave;y&nbsp; [##Date##][End] l&agrave; thuốc hướng t&acirc;m thần, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.17 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:29:52', '2020-03-10 14:20:11', 0, NULL),
(49, 'Tiền giường vượt mức', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; tiền giường từ ng&agrave;y [##Date##] đến ng&agrave;y [##Date##] ([##Text##] ng&agrave;y) l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n C&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt mức quyền lợi tiền giường ti&ecirc;u chuẩn.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:30:15', '2021-06-02 10:00:27', 0, NULL),
(50, 'tiền mãn kinh', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[Begin][##nameItem##] [##amountItem##] đồng[End]li&ecirc;n quan trực tiếp đến chẩn đo&aacute;n \" [##Text##]\", thuộc điều khoản loại trừ bảo hiểm theo Điều 3.10 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:30:46', '2021-05-04 21:54:12', 0, NULL),
(51, 'Toa không hợp lệ', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; thuốc&nbsp; [##amountItem##] đồng v&agrave;o ng&agrave;y&nbsp; [##Date##] v&igrave; kh&ocirc;ng c&oacute; toa thuốc hợp lệ. Trường hợp Qu&yacute; kh&aacute;ch bổ sung được toa thuốc hợp lệ (c&oacute; chẩn đo&aacute;n, chữ k&iacute; v&agrave; họ t&ecirc;n b&aacute;c sĩ, ng&agrave;y k&ecirc; toa) ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:31:14', '2020-03-10 14:19:31', 0, NULL),
(52, 'trang thiết bị y tế nội trú', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng c&oacute; số c&ocirc;ng bố [##Text##] l&agrave; trang thiết bị y tế, kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng thuộc phạm vi bảo hiểm theo Điều 2.1 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:31:39', '2021-02-07 16:35:34', 0, NULL),
(53, 'vắc-xin', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng v&agrave;o ng&agrave;y&nbsp; [##Date##][End] kh&ocirc;ng được thanh to&aacute;n, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.20 của Quy tắc v&agrave; điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:32:04', '2020-11-17 14:48:10', 0, NULL),
(54, 'vật dụng, dịch vụ không liên quan - Group', 53, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng[End] thuộc khoản Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:32:24', '2021-06-14 15:09:17', 0, NULL),
(55, 'vitamin', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin] [##nameItem##] [##amountItem##] đồng[End] l&agrave; vitamin, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:32:49', '2020-03-18 20:19:16', 0, NULL),
(56, 'Vitamin(có ngày)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] của ng&agrave;y [##Date##][End] l&agrave; vitamin, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:33:19', '2020-03-18 20:17:48', 0, NULL),
(57, 'Vượt hạn mức thanh toán', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; điều trị thực tế của ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n C&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa [##Text##] đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:33:44', '2020-03-19 17:47:51', 0, NULL),
(58, 'xét nghiệm thai sản', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] đồng[End]&nbsp; l&agrave; x&eacute;t nghiệm thai sản thuộc điều khoản loại trừ bảo hiểm theo Điều 3.8 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:34:05', '2020-03-10 14:17:48', 0, NULL),
(59, 'chi phí cá nhân', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng[End] l&agrave; chi ph&iacute; c&aacute; nh&acirc;n, thuộc khoản Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-12 19:02:52', '2020-03-25 11:54:12', 0, NULL),
(60, 'Biên lai/ Phiếu thu không có hóa đơn VAT (có ngày)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[##nameItem##] [##Text##] <span style=\"background-color: #ffffff;\">đồng ng&agrave;y [##Text##]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">đơn t&agrave;i ch&iacute;nh (bản gốc),</span> ch&uacute;ng t&ocirc;i chỉ thanh to&aacute;n t<span style=\"background-color: #ffffff;\">ối đa</span> 200.000 đồng, kh&ocirc;ng thanh to&aacute;n [##amountItem##] đồng. <span style=\"background-color: #ffffff;\">(Trường hợp Qu&yacute; kh&aacute;ch cung cấp được chứng từ n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m/ ra viện, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại y&ecirc;u cầu bồi thường n&agrave;y).</span></span></li>\r\n</ul>', 1, 1, '2020-03-17 19:16:11', '2020-11-17 14:46:16', 0, NULL),
(61, 'Bảng kê không có hóa đơn VAT (có ngày)', NULL, '<ul>\r\n<li><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##]&nbsp;[##amountItem##] <span style=\"background-color: #ffffff;\">đồng[End] ng&agrave;y [##Text##]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">đơn t&agrave;i ch&iacute;nh (bản gốc)</span>. <span style=\"background-color: #ffffff;\">(Trường hợp Qu&yacute; kh&aacute;ch cung cấp được chứng từ n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại y&ecirc;u cầu bồi thường n&agrave;y).</span></span></li>\r\n</ul>', 1, 1, '2020-03-17 19:18:58', '2020-11-17 14:45:39', 0, NULL),
(62, 'Bảng kê không có hóa đơn VAT', NULL, '<ul>\r\n<li><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##]&nbsp;[##amountItem##] <span style=\"background-color: #ffffff;\">đồng[End]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">đơn t&agrave;i ch&iacute;nh (bản gốc)</span>. <span style=\"background-color: #ffffff;\">(Trường hợp Qu&yacute; kh&aacute;ch cung cấp được chứng từ n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 năm kể từ ng&agrave;y thăm kh&aacute;m, ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại y&ecirc;u cầu bồi thường n&agrave;y).</span></span></li>\r\n</ul>', 1, 5, '2020-03-17 19:19:21', '2021-06-02 09:59:11', 0, NULL),
(63, 'khoáng chất', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng [End]&nbsp;l&agrave; kho&aacute;ng chất, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-03-18 19:27:09', '2021-02-07 16:38:41', 0, NULL),
(64, 'khoáng chất (có ngày)', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng <span style=\"color: #626262; background-color: #ffffff;\">[End] của ng&agrave;y [##Date##]&nbsp;</span>l&agrave; kho&aacute;ng chất, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.6 của Quy tắc v&agrave; Điều khoản bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-18 19:27:54', '2021-06-14 15:08:01', 0, NULL),
(65, 'thoái hóa (từ chối xét nghiệm, thuốc, ...)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] đồng[End] phục vụ điều trị cho chẩn đo&aacute;n \"[##Text##]\" l&agrave; h&igrave;nh thức của bệnh tho&aacute;i h&oacute;a xương, thuộc điều khoản loại trừ bảo hiểm theo Điều 3.4 của Quy tắc v&agrave; điều khoản bảo hiểm Chăm s&oacute;c sức khỏe. <br /></span></li>\r\n</ul>', 1, 5, '2020-03-18 19:47:21', '2021-06-14 15:05:43', 0, NULL),
(66, 'Sử dụng chất kích thích (Group)', 27, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chẩn đo&aacute;n \"[##nameItem##]\" thuộc điều khoản loại trừ bảo hiểm theo Điều 9.1 của Quy tắc bảo hiểm chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-18 19:51:05', '2021-06-06 14:55:42', 0, NULL),
(67, 'Trang thiết bị y tế', 36, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng c&oacute; số c&ocirc;ng bố [##Text##] l&agrave; trang thiết bị y tế, kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng thuộc phạm vi bảo hiểm theo Điều 9.10 của Quy tắc bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-18 20:00:53', '2021-06-14 15:02:10', 0, NULL),
(68, 'rối loạn lo âu (từ chối chẩn đoán)- Group', 60, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; điều trị v&agrave;o ng&agrave;y [##Date##] cho chẩn đo&aacute;n \"[##nameItem##]\" [##amountItem##] đồng, thuộc điều khoản loại trừ bảo hiểm theo điều 11.12 của Quy tắc bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-18 20:28:59', '2021-06-14 15:04:31', 0, NULL),
(69, 'mỹ phẩm (Group)', 36, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] đồng c&oacute; số c&ocirc;ng bố [##Text##] l&agrave; mỹ phẩm, thuộc điều khoản loại trừ bảo hiểm theo Điều 9.10 của Quy tắc bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 5, '2020-03-23 12:43:53', '2021-06-14 14:59:03', 0, NULL),
(70, 'Vượt mức Quyền lợi ngoại trú VIP', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n, C&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 5.000.000 đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span></li>\r\n</ul>', 1, 5, '2020-04-07 14:14:48', '2021-05-31 15:08:36', 0, NULL),
(71, 'Vượt mức Quyền lợi ngoại trú Kim Cương', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n, C&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 2.000.000 đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">.</span></li>\r\n</ul>', 1, 5, '2020-04-08 13:58:06', '2021-05-31 15:10:37', 0, NULL),
(72, 'Vượt quyền lợi nội trú/ ngoại trú/ năm', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; phẫu thuật ( &nbsp;[##Text##]&nbsp; đồng) tuy nhi&ecirc;n c&ocirc;ng ty Bảo hiểm Dai-ichi Life Việt Nam từ chối chi trả ( [##amountItem##] đồng) do vượt hạn mức thanh to&aacute;n tối đa &nbsp;[##Text##]&nbsp;đồng/ năm điều trị nội tr&uacute;/ ngoại tr&uacute; theo quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe.</span></li>\r\n</ul>', 1, 1, '2020-04-08 17:19:39', '2020-04-08 17:19:39', 0, NULL),
(73, 'Không có quyền lợi nội trú/ ngoại trú/ chăm sóc răng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; thăm kh&aacute;m&nbsp;[##amountItem##] đồng v&agrave;o ng&agrave;y [##Date##] điều trị cho bệnh &nbsp;[##nameItem##] thuộc quyền lợi điều trị ngoại tr&uacute;. Tuy nhi&ecirc;n, quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe của Qu&yacute; kh&aacute;ch / NĐBH&nbsp;[##Text##] kh&ocirc;ng c&oacute; quyền lợi ngoại tr&uacute;.</span></li>\r\n</ul>', 1, 5, '2020-04-08 17:23:15', '2021-05-31 15:03:03', 0, NULL),
(74, 'Vượt mức Quyền lợi ngoại trú Bạch Kim', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##Text##] đồng. Tuy nhi&ecirc;n, C&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 1.500.000 đồng/ lần kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:50:23', '2021-05-31 15:01:32', 0, NULL),
(75, 'Vượt mức Quyền lợi ngoại trú Vàng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##amountItem##] đồng. Tuy nhi&ecirc;n, c&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 1.200.000 đồng/ lần thăm kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:54:44', '2021-05-31 15:02:40', 0, NULL),
(76, 'Vượt mức Quyền lợi ngoại trú Bạc', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y[##Date##] l&agrave; [##amountItem##] đồng. Tuy nhi&ecirc;n, c&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa&nbsp; 1.000.000 đồng/ lần thăm kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:55:42', '2021-05-31 15:02:17', 0, NULL),
(77, 'Vượt mức Quyền lợi ngoại trú Đồng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tổng chi ph&iacute; thực tế điều trị ng&agrave;y [##Date##] l&agrave; [##amountItem##] đồng. Tuy nhi&ecirc;n, c&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng do vượt hạn mức thanh to&aacute;n tối đa 800.000 đồng/ lần thăm kh&aacute;m v&agrave; điều trị ngoại tr&uacute; theo Bảng quyền lợi bảo hiểm.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:56:42', '2021-05-31 15:01:53', 0, NULL),
(78, 'Tự viết nguyên nhân từ chối', NULL, '<ul>\r\n<li>&nbsp;[##Text##]&nbsp;</li>\r\n</ul>', 1, 5, '2020-04-26 14:24:57', '2021-05-31 14:52:18', 0, NULL),
(79, 'Loại trừ 1 năm đầu', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chẩn đo&aacute;n \"[##nameItem##]\" l&agrave; bệnh thuộc thời hạn loại trừ 365 ng&agrave;y kể từ ng&agrave;y quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe của Qu&yacute; kh&aacute;ch được chấp thuận ([##Date##]</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">).</span></li>\r\n</ul>', 1, 5, '2020-06-11 21:00:52', '2021-05-31 14:51:57', 0, NULL),
(80, 'Nha khoa', NULL, '[<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">##nameItem##] [##amountItem##] đồng điều trị cho chẩn đo&aacute;n [ nameItem]&nbsp; thuộc quyền lợi chăm s&oacute;c răng, tuy nhi&ecirc;n, quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe của NĐBH/ Qu&yacute; kh&aacute;ch kh&ocirc;ng c&oacute; quyền lợi Chăm s&oacute;c răng.</span>', 1, 5, '2020-11-09 20:55:10', '2021-05-31 14:51:03', 0, NULL),
(81, 'từ chối tiền ăn', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Suất ăn [##amountItem##] đồng thuộc chi ph&iacute; c&aacute; nh&acirc;n, thuộc khoản Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span>', 1, 5, '2020-11-17 17:14:01', '2021-05-31 14:37:40', 0, NULL),
(82, 'TC tiền giường vượt ngày điều trị thực tế', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Tổng chi ph&iacute; tiền giường từ ng&agrave;y [##Date##] đến ng&agrave;y [##Date##] l&agrave; [##Text##] đồng/ [##Text##] ng&agrave;y (theo bảng k&ecirc; chi tiết). Tuy nhi&ecirc;n C&ocirc;ng ty Bảo hiểm BSH từ chối chi trả [##amountItem##] đồng/ [##Text##] ng&agrave;y do vượt số lượng ng&agrave;y điều trị thực tế l&agrave; &nbsp;[##Text##] ng&agrave;y.</span>', 1, 5, '2020-11-17 17:18:44', '2021-05-31 14:50:37', 0, NULL),
(83, 'hóa đơn thuốc vượt quá 5 ngày kê toa', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H&oacute;a đơn của chi ph&iacute; thuốc [##amountItem##] đồng được xuất v&agrave;o ng&agrave;y [##Date##], đ&atilde; vượt qu&aacute; 5 ng&agrave;y kể từ ng&agrave;y k&ecirc; toa [##Date##]&nbsp;n&ecirc;n kh&ocirc;ng hợp lệ để thanh to&aacute;n, theo quy định của Th&ocirc;ng tư 52/2017/TT-BYT do Bộ Y Tế ban h&agrave;nh (Điều 11_Thời hạn đơn thuốc c&oacute; gi&aacute; trị mua, lĩnh thuốc, khoản 1: Đơn thuốc c&oacute; gi&aacute; trị mua, lĩnh thuốc trong thời hạn tối đa 05 ng&agrave;y, kể từ ng&agrave;y k&ecirc; đơn thuốc).</span>', 1, 5, '2020-11-17 17:27:14', '2021-05-31 14:50:07', 0, NULL),
(84, 'Lưu viện chưa đủ 24 tiếng', NULL, 'Thời gian nằm viện của NĐBH (Qu&yacute; kh&aacute;ch) l&agrave; từ [...] giờ [...] ph&uacute;t ng&agrave;y [...] đến [...] giờ [...] ph&uacute;t ng&agrave;y [...]. Tổng cộng thời gian lưu viện l&agrave; [...] giờ, dưới 24 giờ n&ecirc;n kh&ocirc;ng thỏa định nghĩa \"Điều trị nội tr&uacute;\". Do đ&oacute;, chi ph&iacute; điều trị [...] đồng được xem x&eacute;t v&agrave;o quyền lợi điều trị ngoại tr&uacute;.', 1, 5, '2020-12-23 18:05:29', '2021-06-10 14:43:48', 0, NULL),
(85, 'Thiếu bảng kê chi tiết', NULL, 'H&oacute;a đơn/ Phiếu thu/ Bi&ecirc;n lai[Begin][##amountItem##] đồng[End]kh&ocirc;ng c&oacute; bảng k&ecirc; chi tiết. Trường hợp Qu&yacute; kh&aacute;ch cung cấp được bảng k&ecirc; chi tiết c&ograve;n thiếu ch&uacute;ng t&ocirc;i sẽ xem x&eacute;t lại chi ph&iacute; n&agrave;y.', 1, 5, '2020-12-23 19:53:22', '2021-05-31 14:48:20', 0, NULL),
(86, 'Copay RB (Group - Đối với trẻ em dưới 10 tuổi)', NULL, '<p>Tổng chi ph&iacute; tiền giường l&agrave; [##Text##] đồng. Ch&uacute;ng t&ocirc;i thanh to&aacute;n [##Text##] đồng (70%), Qu&yacute; kh&aacute;ch đồng chi trả [##amountItem##] đồng (30%).<br /><br /></p>', 1, 5, '2021-02-17 12:27:00', '2021-06-10 14:50:25', 0, NULL),
(87, 'Copay Các chi phí nội trú khác (IMIS) - đối với trẻ em dưới 10 tuổi)', NULL, 'Tổng chi ph&iacute; thuộc quyền lợi \"C&aacute;c chi ph&iacute; nội tr&uacute; kh&aacute;c\" l&agrave; [##Text##] đồng. Ch&uacute;ng t&ocirc;i thanh to&aacute;n [##Text##] đồng (70%), Qu&yacute; kh&aacute;ch đồng chi trả [##amountItem##] đồng (30%).', 1, 5, '2021-02-17 12:32:02', '2021-06-14 14:56:19', 0, NULL),
(88, 'Vitamin/khoáng chất (Group)', 35, '<ul>\r\n<li>[##nameItem##] [##amountItem##] đồng l&agrave; vitamin/kho&aacute;ng chất, thuộc điều khoản loại trừ bảo hiểm theo Sản phẩm bảo hiểm Chăm s&oacute;c sức khỏe.</li>\r\n</ul>', 1, 5, '2021-02-17 14:03:11', '2021-06-06 14:51:16', 0, NULL),
(89, 'Không liên quan đến chẩn đoán', 16, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[Begin][##nameItem##] [##amountItem##] đồng[End] l&agrave; c&aacute;c x&eacute;t nghiệm mang t&iacute;nh kiểm tra, tầm so&aacute;t, dự ph&ograve;ng ph&aacute;t sinh trong c&ugrave;ng một lần kh&aacute;m bệnh v&agrave; kh&ocirc;ng li&ecirc;n quan đến chẩn đo&aacute;n bệnh, thuộc điều khoản loại trừ bảo hiểm theo Điều 5.16 của Quy tắc bảo hiểm kết hợp Sức khỏe to&agrave;n diện.</span></li>\r\n</ul>', 1, 5, '2021-02-17 14:23:40', '2021-06-06 14:48:36', 0, NULL),
(90, '30 ngày/90 ngày chờ', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chẩn đo&aacute;n \"[##nameItem##]\" kh&ocirc;ng được thanh to&aacute;n do l&agrave; bệnh thuộc thời hạn loại trừ trong 90 ng&agrave;y kể từ ng&agrave;y quyền lợi bảo hiểm Chăm s&oacute;c sức khỏe của Qu&yacute; kh&aacute;ch được chấp thuận ([##Date##]</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">).</span></li>\r\n</ul>', 1, 5, '2021-02-18 14:41:54', '2021-05-31 14:43:09', 0, NULL),
(91, 'Thẩm mỹ', 20, 'Chi ph&iacute; [##amountItem##] đồng điều trị cho chẩn đo&aacute;n [##Text##], thuộc điều khoản loại trừ bảo hiểm theo Điều 5.20 của <span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Quy tắc bảo hiểm kết hợp sức khỏe to&agrave;n diện.</span>', 1, 5, '2021-02-25 20:05:38', '2021-06-03 08:44:42', 0, NULL),
(92, 'Điều 5.4 (sử dụng chất có cồn, rượu)', 4, '<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chẩn đo&aacute;n \"[##nameItem##]\" thuộc điều khoản loại trừ bảo hiểm theo Điều 5.4 của Quy tắc bảo hiểm kết hợp sức khỏe to&agrave;n diện.</span>', 1, 5, '2021-03-01 13:51:24', '2021-06-03 08:43:27', 0, NULL),
(93, 'Tiêm chủng', 16, 'Chi ph&iacute; ti&ecirc;m ngừa [##amountItem##] đồng, thuộc điều khoản loại trừ bảo hiểm theo Điều 5.16 của <span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Quy tắc bảo hiểm kết hợp sức khỏe to&agrave;n diện.</span>', 1, 5, '2021-03-07 19:17:15', '2021-06-03 08:42:23', 0, NULL),
(94, 'Ethanol', 4, '<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Kết quả định lượng Ethanol (cồn) của Qu&yacute; kh&aacute;ch l&agrave; [##Text##] mg/dl đ&atilde; vi phạm giao th&ocirc;ng (theo Điều 5 khoản 6 của Luật Ph&ograve;ng, chống t&aacute;c hại rượu bia). Đồng thời, thương t&iacute;ch của Qu&yacute; kh&aacute;ch l&agrave; do đ&atilde; bị ảnh hưởng của chất c&oacute; cồn, thuộc điều khoản loại trừ bảo hiểm Điều 5.4 của Quy tắc bảo hiểm kết hợp sức khỏe to&agrave;n diện.</span>', 1, 5, '2021-04-05 17:20:39', '2021-06-03 08:40:22', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_admin`
--

CREATE TABLE `report_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `MEMB_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POCY_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMB_REF_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRES_AMT` int(11) NOT NULL DEFAULT 0,
  `INV_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROV_NAME` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVE_DATE` date NOT NULL,
  `REQUEST_SEND` int(11) NOT NULL DEFAULT 0,
  `SEND_DLVN_DATE` date DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `CL_NO` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `is_deleted`, `deleted_at`) VALUES
(1, 'Admin', 'web', '2021-05-25 08:54:02', '2021-05-25 08:54:02', 0, NULL),
(2, 'Claim', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(3, 'Lead', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(4, 'Manager', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(5, 'Header', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(6, 'Medical', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(7, 'QC', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(8, 'Claim Independent', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(9, 'ClaimGOP', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(10, 'ManagerGOP', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(11, 'Supper', 'web', '2021-05-25 08:54:03', '2021-05-25 08:54:03', 0, NULL),
(12, 'view', 'web', '2021-05-25 08:54:04', '2021-05-25 08:54:04', 0, NULL),
(13, 'AdminClaim', 'web', '2021-05-25 08:54:04', '2021-07-26 07:16:55', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_change_status`
--

CREATE TABLE `role_change_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claim_type` char(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_change_status`
--

INSERT INTO `role_change_status` (`id`, `name`, `created_user`, `updated_user`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`, `claim_type`) VALUES
(1, 'Claim Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(2, 'Claim Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(3, 'Claim Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(4, 'Lead Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(5, 'Lead Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(6, 'Lead Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(7, 'Manager Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(8, 'Manager Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(9, 'Manager Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(10, 'QC Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(11, 'QC Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(12, 'QC Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(13, 'New', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(14, 'Header Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(15, 'Header Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(16, 'Header Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(17, 'Claim Independent Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(18, 'Claim Independent Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(19, 'Claim Independent Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(20, 'Claim GOP Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(21, 'Claim GOP Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(22, 'Claim GOP Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(23, 'Manager GOP Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(24, 'Manager GOP Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(25, 'Manager GOP Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(26, 'Supper Approved', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(27, 'Supper Rejected', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M'),
(28, 'Supper Repealed', 1, 1, 0, '2021-05-25 09:33:20', '2021-05-25 09:33:20', NULL, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 13),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 13),
(4, 1),
(4, 10),
(4, 11),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(8, 1),
(8, 3),
(8, 4),
(8, 5),
(9, 1),
(9, 3),
(9, 4),
(9, 5),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(12, 1),
(13, 1),
(13, 3),
(13, 4),
(13, 5),
(13, 7),
(14, 1),
(14, 3),
(14, 4),
(14, 5),
(14, 7),
(15, 1),
(15, 3),
(15, 4),
(15, 5),
(15, 7),
(16, 1),
(16, 3),
(16, 4),
(16, 5),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 3),
(25, 4),
(25, 5),
(25, 7),
(26, 1),
(26, 3),
(26, 4),
(26, 5),
(26, 7),
(27, 1),
(27, 3),
(27, 4),
(27, 5),
(27, 7),
(28, 1),
(28, 3),
(28, 4),
(28, 5),
(28, 7),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 8),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_and_boards`
--

CREATE TABLE `room_and_boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `code_claim` text COLLATE utf8_unicode_ci NOT NULL,
  `line_rb` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token_cps` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version_js_css` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_claim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_claim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `finance_email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_gop_claim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_token_mfile_at` timestamp NULL DEFAULT NULL,
  `updated_token_cps_at` timestamp NULL DEFAULT NULL,
  `token_mfile` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `token_cps`, `version_js_css`, `manager_claim`, `header_claim`, `created_at`, `updated_at`, `finance_email`, `manager_gop_claim`, `updated_token_mfile_at`, `updated_token_cps_at`, `token_mfile`) VALUES
(1, '96ce944e2178f99c283e07d4d71e6a9eb18de1bb', '23', '[\"5\"]', '[\"6\"]', '2021-05-25 09:14:54', '2022-04-06 01:49:25', NULL, '[\"5\"]', '2022-04-05 16:00:05', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjAuMjM1XC9tZmlsZVwvcHVibGljXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjQ5MTc0NDA1LCJleHAiOjE2NTQzNTg0MDUsIm5iZiI6MTY0OTE3NDQwNSwianRpIjoiVFVSd2NDamhJQll4YWI2ZCIsInN1YiI6MSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.VGRHgD2z9eYvge1idk9vFUaJd7yp_l8HYrOZuAi_7fQ');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `description`, `is_deleted`, `created_user`, `updated_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '5.1(IND)', 'Điều trị ngo&agrave;i phạm vi địa l&yacute; được quy định (Trừ khi tham gia điều khoản bổ sung BS 008)', 0, 5, 5, NULL, '2021-06-02 14:11:37', '2021-06-03 08:38:44'),
(2, '5.2 (IND)', 'H&agrave;nh động cố &yacute; l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến sự kiện bảo hiểm, g&acirc;y thiệt hại của Người được bảo hiểm/ Người thụ hưởng v&agrave; Người kế thừa hợp ph&aacute;p của Người được bảo hiểm. Trong trường hợp một hoặc một số người thụ hưởng cố &yacute; g&acirc;y ra c&aacute;i chết hay thương tật vĩnh viễn cho Người được bảo hiểm, doanh nghiệp bảo hiểm vẫn phải trả tiền bảo hiểm cho những người thụ hưởng kh&aacute;c theo thỏa thuận trong hợp đồng bảo hiểm;', 0, 5, 5, NULL, '2021-06-02 14:16:30', '2021-06-03 08:38:27'),
(3, '5.3 (IND)', 'Người được bảo hiểm từ 14 tuổi trở l&ecirc;n vi phạm ph&aacute;p luật phải thụ &aacute;n h&igrave;nh sự; vi phạm ph&aacute;p luật về giao th&ocirc;ng;', 0, 5, 5, NULL, '2021-06-02 14:20:47', '2021-06-03 08:38:10'),
(4, '5.4 (IND)', 'Người được bảo hiểm bị ảnh hưởng bởi rượu, bia hoặc c&aacute;c chất k&iacute;ch th&iacute;ch, c&aacute;c chất g&acirc;y nghiện kh&aacute;c l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến tai nạn hoặc ốm bệnh theo kết luận của b&aacute;c sỹ/ cơ quan c&oacute; thẩm quyền;', 0, 5, 5, NULL, '2021-06-02 14:24:10', '2021-06-03 08:37:54'),
(5, '5.5 (IND)', 'C&aacute;c h&agrave;nh động đ&aacute;nh nhau của Người được bảo hiểm, trừ khi chứng minh được h&agrave;nh động đ&aacute;nh nhau đ&oacute; chỉ với mục đ&iacute;ch tự vệ;', 0, 5, 5, NULL, '2021-06-02 14:28:41', '2021-06-03 08:37:36'),
(6, '5.6 (IND)', 'Hậu quả của tai nạn dẫn đến ph&aacute;t sinh chi ph&iacute; y tế xảy ra ngo&agrave;i thời hạn bảo hiểm (Trừ trường hợp tham gia bảo hiểm t&aacute;i tục li&ecirc;n tục)', 0, 5, 5, NULL, '2021-06-02 14:30:39', '2021-06-03 08:33:06'),
(7, '5.7 (IND)', 'Điều trị y tế hoặc sử dụng thuốc kh&ocirc;ng c&oacute; đơn thuốc v&agrave; sự chỉ dẫn của b&aacute;c sĩ; c&aacute;c loại thuốc đ&ocirc;ng y kh&ocirc;ng r&otilde; nguồn gốc, c&aacute;c ph&ograve;ng kh&aacute;m, chẩn trị đ&ocirc;ng y tư nh&acirc;n. Điều trị tại cơ sở y tế kh&ocirc;ng đ&uacute;ng theo định nghĩa v&agrave; bao gồm cả việc chỉ định của b&aacute;c sỹ cơ sở y tế n&agrave;y đối với mua thuốc hay x&eacute;t nghiệm, điều trị tại cơ sở y tế, nh&agrave; thuốc hợp ph&aacute;p. Việc điều trị thử nghiệm, điều trị kh&ocirc;ng được khoa học c&ocirc;ng nhận v&agrave; c&aacute;c điều trị miễn ph&iacute; tại bất kỳ bệnh viện n&agrave;o.', 0, 5, 5, NULL, '2021-06-02 14:32:32', '2021-06-03 08:37:21'),
(8, '5.8 (IND)', 'Tham gia c&aacute;c hoạt động h&agrave;ng kh&ocirc;ng (trừ khi với tư c&aacute;ch l&agrave; h&agrave;nh kh&aacute;ch), tham gia c&aacute;c cuộc diễn tập huấn luyện qu&acirc;n sự, tham gia chiến đấu của lực lượng vũ trang;', 0, 5, 5, NULL, '2021-06-02 14:38:55', '2021-06-03 08:37:00'),
(9, '5.9 (IND)', 'Sự kiện bảo hiểm ph&aacute;t sinh do những rủi ro mang t&iacute;nh chất thảm họa như động đất , n&uacute;i lửa, s&oacute;ng thần, nhiễm ph&oacute;ng xạ, dịch bệnh theo c&ocirc;ng bố của cơ quan c&oacute; thẩm quyền (bao gồm SARS, H5N1, Ebola).', 0, 5, 5, NULL, '2021-06-02 14:41:14', '2021-06-03 08:36:44'),
(10, '5.10 (IND)', 'Sự kiện bảo hiểm ph&aacute;t sinh do chiến tranh, nội chiến, đ&igrave;nh c&ocirc;ng, khủng bố, bạo động, d&acirc;n biến, phiến loạn, c&aacute;c hoạt động d&acirc;n sự hoặc h&agrave;nh động của bất kỳ người cầm đầu của tổ chức n&agrave;o nhằm lật đổ, đe dọa ch&iacute;nh quyền, kiểm so&aacute;t bằng vũ lực.', 0, 5, 5, NULL, '2021-06-02 14:45:18', '2021-06-03 08:36:15'),
(11, '5.11 (IND)', 'Sự kiện bảo hiểm ph&aacute;t sinh bởi NĐBH tham gia tập luyện hoặc tham gia thi đấu c&aacute;c m&ocirc;n thể thao chuy&ecirc;n nghiệp, thể thao nguy hiểm, hoặc bất kỳ hoạt động đua n&agrave;o.', 0, 5, 5, NULL, '2021-06-02 14:50:17', '2021-06-03 08:35:59'),
(12, '5.12 (IND)', 'Bệnh lao c&aacute;c loại, bệnh sốt r&eacute;t, bệnh nghề nghiệp, bệnh phong. C&aacute;c bệnh suy tủy, bạch cầu, điều trị lọc m&aacute;u, chạy thận nh&acirc;n tạo v&agrave; hậu quả hay biến chứng của c&aacute;c bệnh n&agrave;y. Liệu ph&aacute;p thay thế hooc-m&ocirc;n trong thời kỳ sinh trưởng hoặc tiền m&atilde;n kinh hay m&atilde;n kinh ở phụ nữ.', 0, 5, 5, NULL, '2021-06-02 14:52:01', '2021-06-03 08:35:40'),
(13, '5.13 (IND)', 'C&aacute;c chi ph&iacute; v&agrave; điều trị cho đối tượng kh&ocirc;ng đủ điều kiện tham gia bảo hiểm. Những người đang điều trị thương tật hoặc bệnh tật, người bị thương tật vĩnh viễn tr&ecirc;n 80% tại thời điểm tham gia hoặc thời điểm hợp đồng bảo hiểm bắt đầu c&oacute; hiệu lực.', 0, 5, 5, NULL, '2021-06-02 14:56:02', '2021-06-03 08:35:23'),
(14, '5.14 (IND)', 'Điều trị c&aacute;c bệnh l&acirc;y lan qua đường t&igrave;nh dục như bệnh giang mai, bệnh lậu, rối loạn chức năng sinh dục hay điều trị sinh l&yacute;, ốm đau li&ecirc;n quan đến c&aacute;c bệnh thuộc hội chứng suy giảm miễn dịch (HIV) bao gồm c&aacute;c hội chứng li&ecirc;n quan đến AIDS v&agrave;/hoặc bất cứ biến chứng hoặc biến đổi n&agrave;o, hoặc bệnh l&acirc;y truyền qua đường t&igrave;nh dục hay bất cứ hội chứng li&ecirc;n quan đến AIDS hoặc c&aacute;c bệnh li&ecirc;n quan đến AIDS kh&aacute;c.', 0, 5, 5, NULL, '2021-06-03 02:26:43', '2021-06-03 08:35:02'),
(15, '5.15 (IND)', 'Điều trị v&agrave;/hoặc phẫu thuật cho c&aacute;c dị tật/ khuyết tật bẩm sinh, bệnh dị dạng về gen v&agrave; mọi biến chứng, hậu quả li&ecirc;n quan đến những bệnh n&agrave;y, những chỉ định phẫu thuật, những chỉ định c&oacute; từ trước ng&agrave;y bảo hiểm; bao gồm những danh mục liệt k&ecirc; dưới đ&acirc;y v&agrave;/hoặc c&aacute;c danh mục được liệt k&ecirc; trong Sửa đổi bổ sung như l&agrave; một bộ phận đ&iacute;nh k&egrave;m của Quy tắc/Hợp đồng bảo hiểm như bệnh tim bẩm sinh, bệnh Down, hở m&ocirc;i, hở h&agrave;m ếch, t&iacute;ch nước trong n&atilde;o, hẹp hậu m&ocirc;n, hẹp bao quy đầu, vẹo v&aacute;ch ngăn bẩm sinh.', 0, 5, 5, NULL, '2021-06-03 02:36:35', '2021-06-03 08:34:46'),
(16, '5.16 (IND)', 'Kiểm tra sức khỏe định kỳ (nội tr&uacute; hay ngoại tr&uacute;); kiểm tra sức khỏe tổng qu&aacute;t, tầm so&aacute;t ung thư kết quả b&igrave;nh thường, gi&aacute;m định y khoa hoặc tư vấn y tế kh&ocirc;ng li&ecirc;n quan đến điều trị ốm đau hoặc thương tật, bao gồm kiểm tra phụ khoa/nam khoa; Tất cả c&aacute;c h&igrave;nh thức ti&ecirc;m chủng , vắc-xin, thuốc ph&ograve;ng ngừa (trừ trường hợp ti&ecirc;m vắc-xin sau khi bị tai nạn hay s&uacute;c vật, c&ocirc;n tr&ugrave;ng cắn)', 0, 5, 5, NULL, '2021-06-03 02:50:14', '2021-06-03 08:34:29'),
(17, '5.17 (IND)', 'Kiểm tra thị lực, kh&ocirc; mắt, mỏi mắt điều tiết, đục thủy tinh thể, th&iacute;nh gi&aacute;c th&ocirc;ng thường, l&atilde;o h&oacute;a, tho&aacute;i h&oacute;a , điều trị suy biến tự nhi&ecirc;n/kh&ocirc;ng phải v&igrave; l&yacute; do bệnh l&yacute; của việc suy giảm th&iacute;nh thị lực, bao gồm những danh mục liệt k&ecirc; dưới đ&acirc;y v&agrave;/hoặc c&aacute;c danh mục kh&aacute;c được liệt k&ecirc; trong Sửa đổi như l&agrave; một bộ phận đ&iacute;nh k&egrave;m của Quy tắc/Hợp đồng bảo hiểm như c&aacute;c tật kh&uacute;c xạ như cận thị, viễn thị v&agrave; loạn thị v&agrave; bất kỳ phẫu thuật để phục hồi hiệu chỉnh n&agrave;o đối với c&aacute;c khuyết tật tho&aacute;i h&oacute;a th&iacute;nh gi&aacute;c v&agrave; thị gi&aacute;c;', 0, 5, 5, NULL, '2021-06-03 03:01:21', '2021-06-03 08:34:13'),
(18, '5.18 (IND)', 'Điều trị thai sản (Trừ khi Người được bảo hiểm tham gia điều khoản bổ sung BS 003 v&agrave; Người được bảo hiểm từ 16 tuổi trở l&ecirc;n);', 0, 5, 5, NULL, '2021-06-03 03:35:16', '2021-06-03 08:33:56'),
(19, '5.19 (IND)', 'C&aacute;c chi ph&iacute; điều trị hoặc phẫu thuật theo y&ecirc;u cầu của Người được bảo hiểm . Kh&aacute;m v&agrave; x&eacute;t nghiệm kh&ocirc;ng c&oacute; kết luận chẩn đo&aacute;n bệnh hoặc kết luận kh&ocirc;ng c&oacute; bệnh cần điều trị của b&aacute;c sĩ;', 0, 5, 5, NULL, '2021-06-03 04:00:08', '2021-06-03 08:33:42'),
(20, '5.20 (IND)', 'C&aacute;c h&igrave;nh thức thẩm mỹ, phẫu thuật thẩm mỹ, chỉnh h&igrave;nh thẩm mỹ. Điều trị kiểm so&aacute;t trọng lượng cơ thể (tăng hoặc giảm c&acirc;n); suy dinh dưỡng, c&ograve;i xương, b&eacute;o ph&igrave;. C&aacute;c chất bổ sung hoặc thay thế phục vụ cho việc ăn ki&ecirc;ng c&oacute; sẵn trong tự nhi&ecirc;n v&agrave; c&oacute; thể được mua m&agrave; kh&ocirc;ng cần chỉ định, bao gồm những danh mục liệt k&ecirc; tại đ&acirc;y v&agrave;/hoặc c&aacute;c danh mục kh&aacute;c tương tự như vậy như c&aacute;c loại vitamin, thuốc bổ, kho&aacute;ng chất v&agrave; c&aacute;c chất hữu cơ thực phẩm chức năng (glucosamine, omega3, herblife, amkye), thuốc tăng cường miễn dịch cơ thể, c&aacute;c loại chế phẩm y tế;', 0, 5, 5, NULL, '2021-06-03 04:03:27', '2021-06-03 08:33:22'),
(21, '5.21 (IND)', 'Thực hiện c&aacute;c biện ph&aacute;p kế hoạch h&oacute;a gia đ&igrave;nh, hậu quả của ph&aacute; thai do nguy&ecirc;n nh&acirc;n t&acirc;m l&yacute; hay x&atilde; hội, điều trị v&ocirc; sinh nam/nữ, thụ tinh nh&acirc;n tạo, điều trị bất lực, liệt dương hoặc thay đổi giới t&iacute;nh v&agrave; bất kỳ hậu quả hay biến chứng n&agrave;o từ những điều trị tr&ecirc;n;', 0, 5, 5, NULL, '2021-06-03 07:46:47', '2021-06-03 07:47:48'),
(22, '5.22 (IND)', 'Điều trị bệnh rối loạn tâm thần và hành vi, bệnh tâm thần/loạn thần kinh hoặc bệnh chậm phát triển, bệnh rối loạn thiếu tập trung, bệnh tự kỉ. Điều trị rối loạn giấc ngủ, mất ngủ, ngủ ngáy không rõ nguyên nhân, suy nhược và hội chứng căng thẳng (stress) hoặ các bệnh có liên quan từ hội chứng đó;', 0, 5, 5, NULL, '2021-06-03 08:09:49', '2021-06-03 08:09:49'),
(23, '5.23 (IND)', 'Ngộ độc thức ăn, đồ uống hoặc hít phải hơi độc, khí độc, chất độc (Trừ khi Người được bảo hiểm tham gia điều khoản bổ sung BS 004);', 0, 5, 5, NULL, '2021-06-03 08:12:17', '2021-06-03 08:12:17'),
(24, '5.24 (IND)', 'Bệnh có sẵn/ Thương tật có sẵn , bệnh đặc biệt như định nghĩa trong quy tắc này. Điểm loại trừ sẽ không áp dụng nếu Người được bảo hiểm tham gia liên tục từ năm thứ hai và các Hợp đồng tham gia từ 50 người trở lên;', 0, 5, 5, NULL, '2021-06-03 08:17:55', '2021-06-03 08:17:55'),
(25, '5.25 (IND)', 'Vật tư y tế thay thế được quy định tại Phụ lục 03- trừ khi có thỏa thuận khác.', 0, 5, 5, NULL, '2021-06-03 08:19:05', '2021-06-03 08:19:05'),
(26, '5.26 (IND)', 'Những sản phẩm theo quy định của Bộ Y Tế được đăng ký dưới dạng trang thiết bị y tế; vật tư thay thế, cấy ghép nhân tạo; các thiết bị hoặc bộ phận giả thay thế chức năng sinh lý của bộ phận cơ thể.', 0, 5, 5, NULL, '2021-06-03 08:21:53', '2021-06-03 08:21:53'),
(27, '9.1 (Group)', 'Người được bảo hiểm bị t&aacute;c động bởi chất k&iacute;ch th&iacute;ch, chất g&acirc;y nghiện, thuốc cai nghiện, thuốc kh&ocirc;ng được b&aacute;c sĩ chuy&ecirc;n m&ocirc;n k&ecirc; đơn thuốc, rượu, bia hoặc c&aacute;c chất c&oacute; cồn v&agrave; việc ảnh hưởng n&agrave;y l&agrave; nguy&ecirc;n nh&acirc;n trực tiếp g&acirc;y ra tai nạn v&agrave; c&aacute;c hậu quả li&ecirc;n quan kh&aacute;c.', 0, 5, 5, NULL, '2021-06-05 15:01:10', '2021-06-05 15:02:47'),
(28, '9.2 (Group)', 'Chiến tranh hoặc các hoạt động thù địch kể cả có tuyên chiến hay không, khủng bố, tác nhân hạt nhân hoặc do chất phòng xạ.', 0, 5, 5, NULL, '2021-06-05 15:04:37', '2021-06-05 15:04:37'),
(29, '9.3 (Group)', 'Động đất, núi lửa, sóng thần, dịch bệnh tại các khu vực địa lý cụ thể được công bố bởi cơ quan có thẩm quyền nước sở tại, Tổ chức y tế thế giới.', 0, 5, 5, NULL, '2021-06-05 15:06:30', '2021-06-05 15:06:30'),
(30, '9.4 (Group)', 'Dịch vụ điều trị tại nhà (không bao gồm chi phí y tá chăm sóc tại nhà) hoặc tại Cơ sở khám chữa bệnh điều trị bằng thủy lực hay các phương pháp thiên nhiên, spa, điều dưỡng, an dưỡng, hoặc tại những nơi không phải là Cơ sở khám chữa bệnh.', 0, 5, 5, NULL, '2021-06-05 15:09:09', '2021-06-05 15:09:09'),
(31, '9.5 (Group)', 'Những chỉ định phẫu thuật c&oacute; từ trước ng&agrave;y bảo hiểm, điều trị v&agrave; phẫu thuật theo y&ecirc;u cầu của Người được bảo hiểm kh&ocirc;ng li&ecirc;n quan đến chỉ định phẫu thuật cần thiết theo quy định chuy&ecirc;n m&ocirc;n.', 0, 5, 5, NULL, '2021-06-05 15:11:17', '2021-06-05 15:11:32'),
(32, '9.6 (Group)', 'Các chấn thương do các tác nhân hạt nhân gây ra hoặc do bị nhiễm phóng xạ.', 0, 5, 5, NULL, '2021-06-05 15:40:56', '2021-06-05 15:40:56'),
(33, '9.7 (Group)', 'Điều trị y tế không có chỉ định sử dụng thuốc của bác sĩ trên \"đơn thuốc\" hay \"sổ khám bệnh - chữa bệnh\", thuốc không được Bộ Y tế Việt Nam cho phép lưu hành, điều trị không được khoa học công nhận, điều trị thử nghiệm, vắc-xin, thuốc có tính chất ngăc ngừa , dự phòng bao gồm thuốc do bác sĩ kê đơn, thuốc kê đơn theo yêu cầu của người bệnh.', 0, 5, 5, NULL, '2021-06-05 15:45:02', '2021-06-05 15:45:02'),
(34, '9.8 (Group)', 'Tử vong do các sự cố sai sót y khoa trong quá trình điều trị bệnh và can thiệp thai sản và điều trị khắc phục hậu quả của chúng.', 0, 5, 5, NULL, '2021-06-05 15:46:38', '2021-06-05 15:46:38'),
(35, '9.9 (Group)', 'Thuốc hỗ trợ điều trị (loại trừ thuốc n&agrave;y l&agrave; thuốc điều trị ch&iacute;nh c&oacute; chỉ định của B&aacute;c sĩ điều trị), thực phẩm chức năng, thực phẩm bổ sung vi chất dinh dưỡng, thực phẩm bổ sung, thực phẩm bảo vệ sức khỏe, sản phẩm dinh dưỡng y học, c&aacute;c loại vitamin tăng cường sức khỏe.', 0, 5, 5, NULL, '2021-06-05 15:49:45', '2021-06-05 15:50:05'),
(36, '9.10 (Group)', 'Các sản phẩm hỗ trợ điều trị đăng ký dưới dạng mỹ phẩm, thiết bị y tế.', 0, 5, 5, NULL, '2021-06-05 15:51:10', '2021-06-05 15:51:10'),
(37, '9.11 (Group)', 'C&aacute;c chi ph&iacute; cung cấp, bảo dưỡng hay lắp r&aacute;p sửa chữa c&aacute;c thiết bị hoặc bộ phận giả, dụng cụ chỉnh h&igrave;nh, c&aacute;c thiết bị trợ th&iacute;nh hoặc thị lực, nạng hay xe lăn, c&aacute;c dụng cụ phục vụ c&aacute; nh&acirc;n Người được bảo hiểm để chẩn đo&aacute;n hoặc hỗ trợ điều trị y tế (m&aacute;y kh&iacute; dung, m&aacute;y tạo nhịp tim, holter... v&agrave; c&aacute;c dụng cụ kh&aacute;c), ngoại trừ c&aacute;c dụng cụ, thiết bị cấy gh&eacute;p v&agrave;o b&ecirc;n trong cơ thể để duy tr&igrave; sự sống như quy định trong quyền lợi chi ph&iacute; phẫu thuật.', 0, 5, 5, NULL, '2021-06-05 15:54:25', '2021-06-05 15:57:19'),
(38, '9.12 (Group)', 'Khám và các xét nghiệm không có kết luận của Bác sĩ hoặc có kết luận của Bác sĩ điều trị nhưng không có chỉ định điều trị bệnh cụ thể.', 0, 5, 5, NULL, '2021-06-06 06:42:25', '2021-06-06 06:42:25'),
(39, '9.13 (Group)', 'Các chi phí điều trị bất hợp lý mà không tuân theo quy trình điều trị và các chỉ định của bác sĩ hoặc không cần thiết về mặt y tế.', 0, 5, 5, NULL, '2021-06-06 06:43:59', '2021-06-06 06:43:59'),
(40, '10.1 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Mất tích.', 0, 5, 5, NULL, '2021-06-06 06:51:38', '2021-06-06 06:51:38'),
(41, '10.2 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Hành động cố ý gây tổn thương thân thể của Người được bảo hiểm hoặc Người thụ hưởng của Người được bảo hiểm. Trong trường hợp một hoặc một số người  thụ hưởng cố ý gây ra cái chết hay thương tật vĩnh viễn cho Người được bảo hiểm. BSH vẫn trả tiền cho những người thụ hưởng khác theo thỏa thuận trong hợp đồng bảo hiểm.', 0, 5, 5, NULL, '2021-06-06 06:55:05', '2021-06-06 06:55:05'),
(42, '10.3 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Người được bảo hiểm vi phạm pháp Luật phải thụ án hình sự và cố ý vi phạm Luật giao thông đường bộ hiện hành, vi phạm nội quy, quy định của chính quyền địa phương hoặc các tổ chức xã hội và là nguyên nhân trực tiếp của tai nạn.', 0, 5, 5, NULL, '2021-06-06 07:04:16', '2021-06-06 07:04:16'),
(43, '10.4 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Người đượ bảo hiểm tham gia các Thể thao chuyên nghiệp hoặc các hoạt động Thể thao nguy hiểm, bất kỳ một hoạt động đua nào hay các hoạt động của lực lượng vũ trang.', 0, 5, 5, NULL, '2021-06-06 07:06:09', '2021-06-06 07:06:09'),
(44, '10.5 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Điều khiển hoặc thi hành công vụ trên máy bay, trừ khi là hành khách mua vé trên máy bay của hãng hàng không chở khách hoặc thuê chuyến hoạt động.', 0, 5, 5, NULL, '2021-06-06 07:07:50', '2021-06-06 07:07:50'),
(45, '10.6 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Người được bảo hiểm điều khiển phương tiện giao thông trong tình trạng có nồng độ cồn vượt quá quy định của Luật giao thông là nguyên nhân trực tiếp dẫn đến người được bảo hiểm tử vong hoặc thương tật do tai nạn.', 0, 5, 5, NULL, '2021-06-06 07:10:02', '2021-06-06 07:10:02'),
(46, '10.7 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Bất kỳ hành động cố ý phạm pháp hoặc ẩu đả của Người được bảo hiểm, trừ khi là hành động cứu người, bảo vệ tài sản hặc tự vệ chính đáng.', 0, 5, 5, NULL, '2021-06-06 07:12:24', '2021-06-06 07:12:24'),
(47, '10.8 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Tai nạn là hậu quả phát sinh từ việc ăn, uống, hít phải hơi độc, khí độc, chất độc.', 0, 5, 5, NULL, '2021-06-06 07:13:33', '2021-06-06 07:13:33'),
(48, '10.9 (Group - Điểm loại trừ đối với bảo hiểm tai nạn)', 'Tai nạn là hậu quả của các Tình trạng có sẵn, bệnh tâm thần, rối loạn tâm lý, suy nhược thần kinh/Suy nhược cơ thể không có nguyên nhân bệnh lý, mất ngủ bao gồm rối loạn giấc ngủ, mệt mỏi, mỏi mắt điều tiết, căng thẳng thần kinh, chứng quên hay suy giảm trí nhớ theo kết luận của Bác sĩ.', 0, 5, 5, NULL, '2021-06-06 07:18:07', '2021-06-06 07:18:07'),
(49, '11.1 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các dịch vụ điêu trị ngoại trú. Điều trị này sẽ không áp dụng nếu Người được bảo hiểm tham gia quyền lợi \"Điều trị ngoại trú\".', 0, 5, 5, NULL, '2021-06-06 07:21:38', '2021-06-06 07:21:38'),
(50, '11.2 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Kiểm tra sức khỏe định kỳ (trừ khi có thỏa thuận khác) bao gồm kiểm tra sức khỏe tổng quát, khám kiểm tra phụ khoa - nam khoa, khám thai định kỳ.', 0, 5, 5, NULL, '2021-06-06 08:24:18', '2021-06-06 08:24:18'),
(51, '11.3 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Kiểm tra sức khỏe trước khi kết hôn, đi du lịch hoặc đi làm.', 0, 5, 5, NULL, '2021-06-06 08:25:11', '2021-06-06 08:25:11'),
(52, '11.4 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Khám và xét nghiệm không có kết luận của bác sĩ, nằm viện hoặc tư vấn y tế chỉ với mục đích kiểm tra, tầm soát.', 0, 5, 5, NULL, '2021-06-06 08:26:32', '2021-06-06 08:26:32'),
(53, '11.5 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các xét nghiệm theo yêu cầu hoặc chỉ định của bác sĩ mang tính chất kiểm tra, tầm soát, dự phòng phát sinh trong cùng một lân khám bệnh không liên quan đến chẩn đoán và điều trị bệnh đó.', 0, 5, 5, NULL, '2021-06-06 08:28:42', '2021-06-06 08:28:42'),
(54, '11.6 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Kiểm tra mắt thông thường, kiểm tra thính giác thông thường, các khuyết tật thoái hóa tự nhiên của mắt (bao gồm cân, viễn, loạn thị), bất kỳ phẫu thuật nào để hiệu chỉnh các khuyết tật thoái hóa thính giác và thị giác.', 0, 5, 5, NULL, '2021-06-06 08:31:59', '2021-06-06 08:31:59'),
(55, '11.7 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các hình thức điều trị về răng và liên quan đến răng (nướu/lợi). Điểm loại trừ này không áp dụng nếu Người được bảo hiểm tha gia quyền lợi\" Điều trị ngoại trú\" hoặc \"Điều trị Nha khoa\".', 0, 5, 5, NULL, '2021-06-06 08:34:06', '2021-06-06 08:34:06'),
(56, '11.8 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Kế hoạch hóa gia đình, thay đổi giới tính, rối loạn chức năng sinh dục, thoái hóa tự nhiên (liệu pháp hocmo thay thế thời kỳ tiền mãn kinh, tiền mãn dục, mãn dục) hay bất cứ hậu quả hoặc biến chứng nào của điều trị trên, điều trị bất lực tình dục.', 0, 5, 5, NULL, '2021-06-06 08:41:04', '2021-06-06 08:41:04'),
(57, '11.9 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các phương pháp điều trị vô sinh, hỗ trợ sinh sản, giảm thai sau hỗ trợ sinh sản, chăm sóc thai sản thời kỳ đầu cho người có thai bằng hỗ trợ sinh sản.', 0, 5, 5, NULL, '2021-06-06 08:42:55', '2021-06-06 08:42:55'),
(58, '11.10 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các bệnh lây truyền qua đường tình dục, bệnh phong, giang mai, lậu, AIDS và các hội chứng liên quan, bệnh hoa liễu khác.', 0, 5, 5, NULL, '2021-06-06 08:44:32', '2021-06-06 08:44:32'),
(59, '11.11 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các hình thức tạo hình thẩm mỹ chỉnh hình, điều trị kiểm soát trọng lượng/chiều cao cơ thể và các hậu quả có liên quan. Các can thiệp liên quan đến chứng khó thở khi ngủ (ngủ ngáy và ngưng thở khi ngủ).', 0, 5, 5, NULL, '2021-06-06 08:47:33', '2021-06-06 08:47:33'),
(60, '11.12 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các bệnh lý về tâm thần, rối loạn tâm lý , suy nhược thần kinh không có nguyên nhân bệnh lý, mất ngủ bao gồm rối loạn giấc ngủ, mệt mỏi, mắt mỏi điều tiết, căng thẳng thần kinh, chứng quên hay suy giảm trí nhớ theo kết luận của Bác sĩ.', 0, 5, 5, NULL, '2021-06-06 08:50:19', '2021-06-06 08:50:19'),
(61, '11.13 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Khuyết tật, bệnh/dị tật bẩm sinh , các bệnh hoặc dị dạng thuộc về gen, tình trạng sức khỏe di truyền với các dấu hiệu bộc lộ từ lúc sinh hay tiềm ẩn hoặc phát hiện muộn ở các giai đoạn phát triển cơ thể.', 0, 5, 5, NULL, '2021-06-06 08:52:45', '2021-06-06 08:52:45'),
(62, '11.14 (Group - Điểm loại trừ đối với ốm đau bệnh tật và thai sản)', 'Các cho phí như cho, nhận, mua, vận chuyển, bảo quản nội tạng/bộ phận cơ thể phục vụ Cấy ghép bộ phận cơ thể.', 0, 5, 5, NULL, '2021-06-06 08:54:26', '2021-06-06 08:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_role_status`
--

CREATE TABLE `transaction_role_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_role_status_id` int(11) NOT NULL,
  `current_status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `to_status` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction_role_status`
--

INSERT INTO `transaction_role_status` (`id`, `level_role_status_id`, `current_status`, `role`, `to_status`, `is_deleted`, `created_user`, `updated_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 13, 8, 17, 0, 1, 1, NULL, NULL, NULL),
(2, 1, 13, 8, 18, 0, 1, 1, NULL, NULL, NULL),
(3, 1, 17, 8, 19, 0, 1, 1, NULL, NULL, NULL),
(4, 1, 18, 8, 19, 0, 1, 1, NULL, NULL, NULL),
(5, 1, 19, 8, 17, 0, 1, 1, NULL, NULL, NULL),
(6, 1, 19, 8, 18, 0, 1, 1, NULL, NULL, NULL),
(7, 1, 17, 7, 10, 0, 1, 1, NULL, NULL, NULL),
(8, 1, 17, 7, 11, 0, 1, 1, NULL, NULL, NULL),
(9, 1, 10, 7, 12, 0, 1, 1, NULL, NULL, NULL),
(10, 1, 11, 7, 12, 0, 1, 1, NULL, NULL, NULL),
(11, 1, 12, 7, 10, 0, 1, 1, NULL, NULL, NULL),
(12, 1, 12, 7, 11, 0, 1, 1, NULL, NULL, NULL),
(13, 2, 13, 8, 17, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(14, 2, 13, 8, 18, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(15, 2, 17, 8, 19, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(16, 2, 18, 8, 19, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(17, 2, 19, 8, 17, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(18, 2, 19, 8, 18, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(19, 2, 17, 7, 10, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(20, 2, 17, 7, 11, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(21, 2, 10, 7, 12, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(22, 2, 11, 7, 12, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(23, 2, 12, 7, 10, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(24, 2, 12, 7, 11, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(25, 2, 10, 4, 7, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(26, 2, 10, 4, 8, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(27, 2, 7, 4, 9, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(28, 2, 8, 4, 9, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(29, 2, 9, 4, 7, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(30, 2, 9, 4, 8, 0, 1, 1, NULL, '2021-10-18 08:35:59', '2021-10-18 08:35:59'),
(31, 3, 13, 8, 17, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(32, 3, 13, 8, 18, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(33, 3, 17, 8, 19, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(34, 3, 18, 8, 19, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(35, 3, 19, 8, 17, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(36, 3, 19, 8, 18, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(37, 3, 17, 7, 10, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(38, 3, 17, 7, 11, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(39, 3, 10, 7, 12, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(40, 3, 11, 7, 12, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(41, 3, 12, 7, 10, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(42, 3, 12, 7, 11, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(43, 3, 10, 4, 7, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(44, 3, 10, 4, 8, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(45, 3, 7, 4, 9, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(46, 3, 8, 4, 9, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(47, 3, 9, 4, 7, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(48, 3, 9, 4, 8, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(49, 3, 7, 5, 14, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(50, 3, 7, 5, 15, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(51, 3, 14, 5, 16, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(52, 3, 15, 5, 16, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(53, 3, 16, 5, 14, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(54, 3, 16, 5, 15, 0, 1, 1, NULL, '2021-07-05 03:14:54', '2021-07-05 03:14:54'),
(55, 4, 13, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(56, 4, 13, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(57, 4, 20, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(58, 4, 22, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(59, 4, 21, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(60, 4, 21, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(61, 5, 13, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(62, 5, 13, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(63, 5, 20, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(64, 5, 22, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(65, 5, 21, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(66, 5, 21, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(67, 5, 20, 10, 23, 0, 1, 1, NULL, NULL, NULL),
(68, 5, 20, 10, 24, 0, 1, 1, NULL, NULL, NULL),
(69, 5, 23, 10, 25, 0, 1, 1, NULL, NULL, NULL),
(70, 5, 24, 10, 25, 0, 1, 1, NULL, NULL, NULL),
(71, 5, 25, 10, 23, 0, 1, 1, NULL, NULL, NULL),
(72, 5, 25, 10, 24, 0, 1, 1, NULL, NULL, NULL),
(73, 6, 13, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(74, 6, 13, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(75, 6, 20, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(76, 6, 22, 9, 21, 0, 1, 1, NULL, NULL, NULL),
(77, 6, 21, 9, 20, 0, 1, 1, NULL, NULL, NULL),
(78, 6, 21, 9, 22, 0, 1, 1, NULL, NULL, NULL),
(79, 6, 20, 10, 23, 0, 1, 1, NULL, NULL, NULL),
(80, 6, 20, 10, 24, 0, 1, 1, NULL, NULL, NULL),
(81, 6, 23, 10, 25, 0, 1, 1, NULL, NULL, NULL),
(82, 6, 24, 10, 25, 0, 1, 1, NULL, NULL, NULL),
(83, 6, 25, 10, 23, 0, 1, 1, NULL, NULL, NULL),
(84, 6, 25, 10, 24, 0, 1, 1, NULL, NULL, NULL),
(85, 6, 23, 5, 14, 0, 1, 1, NULL, NULL, NULL),
(86, 6, 23, 5, 15, 0, 1, 1, NULL, NULL, NULL),
(87, 6, 14, 5, 16, 0, 1, 1, NULL, NULL, NULL),
(88, 6, 15, 5, 16, 0, 1, 1, NULL, NULL, NULL),
(89, 6, 16, 5, 14, 0, 1, 1, NULL, NULL, NULL),
(90, 6, 16, 5, 15, 0, 1, 1, NULL, NULL, NULL),
(91, 3, 7, 4, 9, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(92, 3, 8, 4, 9, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(93, 3, 9, 4, 8, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(94, 3, 9, 4, 7, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(95, 3, 10, 4, 8, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(96, 3, 10, 4, 7, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(97, 3, 7, 5, 14, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(98, 3, 7, 5, 15, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(99, 3, 14, 5, 16, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(100, 3, 15, 5, 16, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(101, 3, 16, 5, 15, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(102, 3, 16, 5, 14, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(103, 3, 10, 7, 12, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(104, 3, 11, 7, 12, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(105, 3, 12, 7, 11, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(106, 3, 12, 7, 10, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(107, 3, 17, 7, 10, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(108, 3, 17, 7, 11, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(109, 3, 13, 8, 17, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(110, 3, 13, 8, 18, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(111, 3, 17, 8, 19, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(112, 3, 18, 8, 19, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(113, 3, 19, 8, 18, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(114, 3, 19, 8, 17, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(115, 3, 13, 4, 7, 0, 1, 1, '2021-07-05 03:14:54', '2021-10-18 08:36:15', '2021-10-18 08:36:15'),
(116, 8, 13, 8, 17, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(117, 8, 17, 8, 19, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(118, 8, 19, 8, 17, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(119, 8, 19, 8, 18, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(120, 8, 17, 7, 10, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(121, 8, 17, 7, 11, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(122, 8, 10, 7, 12, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(123, 8, 11, 7, 12, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(124, 8, 12, 7, 10, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(125, 8, 12, 7, 11, 0, 1, 1, '2021-10-18 01:38:46', '2021-10-18 08:36:39', '2021-10-18 08:36:39'),
(126, 9, 13, 9, 20, 0, 1, 1, '2021-10-18 01:40:45', '2021-10-18 01:40:45', NULL),
(127, 9, 20, 9, 21, 0, 1, 1, '2021-10-18 01:40:45', '2021-10-18 01:40:45', NULL),
(128, 9, 25, 9, 20, 0, 1, 1, '2021-10-18 01:40:45', '2021-10-18 01:40:45', NULL),
(129, 9, 21, 9, 22, 0, 1, 1, '2021-10-18 01:40:45', '2021-10-18 01:40:45', NULL),
(130, 2, 7, 4, 9, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(131, 2, 8, 4, 9, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(132, 2, 9, 4, 8, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(133, 2, 9, 4, 7, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(134, 2, 10, 4, 7, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(135, 2, 10, 4, 8, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(136, 2, 10, 7, 12, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(137, 2, 11, 7, 12, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(138, 2, 12, 7, 10, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(139, 2, 12, 7, 11, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(140, 2, 17, 7, 10, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(141, 2, 17, 7, 11, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(142, 2, 13, 8, 17, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(143, 2, 13, 8, 18, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(144, 2, 17, 8, 19, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(145, 2, 18, 8, 19, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(146, 2, 19, 8, 18, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(147, 2, 19, 8, 17, 0, 1, 1, '2021-10-18 08:35:59', '2021-10-18 08:35:59', NULL),
(148, 2, 11, 8, 13, 0, 1, 1, '2021-10-18 08:36:00', '2021-10-18 08:36:00', NULL),
(149, 3, 7, 4, 9, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(150, 3, 8, 4, 9, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(151, 3, 9, 4, 8, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(152, 3, 9, 4, 7, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(153, 3, 10, 4, 8, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(154, 3, 10, 4, 7, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(155, 3, 13, 4, 7, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(156, 3, 7, 5, 14, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(157, 3, 7, 5, 15, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(158, 3, 14, 5, 16, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(159, 3, 15, 5, 16, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(160, 3, 16, 5, 15, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(161, 3, 16, 5, 14, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(162, 3, 10, 7, 12, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(163, 3, 11, 7, 12, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(164, 3, 12, 7, 10, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(165, 3, 12, 7, 11, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(166, 3, 17, 7, 11, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(167, 3, 17, 7, 10, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(168, 3, 13, 8, 18, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(169, 3, 13, 8, 17, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(170, 3, 17, 8, 19, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(171, 3, 18, 8, 19, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(172, 3, 19, 8, 17, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(173, 3, 19, 8, 18, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(174, 3, 11, 8, 13, 0, 1, 1, '2021-10-18 08:36:15', '2021-10-18 08:36:15', NULL),
(175, 8, 10, 7, 12, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(176, 8, 11, 7, 12, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(177, 8, 12, 7, 11, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(178, 8, 12, 7, 10, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(179, 8, 17, 7, 11, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(180, 8, 17, 7, 10, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(181, 8, 13, 8, 17, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(182, 8, 17, 8, 19, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(183, 8, 19, 8, 18, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(184, 8, 19, 8, 17, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL),
(185, 8, 11, 8, 13, 0, 1, 1, '2021-10-18 08:36:39', '2021-10-18 08:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unc_sign`
--

CREATE TABLE `unc_sign` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `url_non_sign` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_signed` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_unc_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sign_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `socket_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avantar` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin.png',
  `signarure` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'nopic.png',
  `group` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `socket_id`, `online`, `password`, `remember_token`, `created_at`, `updated_at`, `avantar`, `signarure`, `group`) VALUES
(1, 'Administrator', 'admin@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$ZoycEayDXKY5lLNTIsz6BuFX/JXq3f1fFAmSDGjjfQuK448iFPq52', 'AKEhgGEbhwrvmPJMmdD9lWgdjqF6yp4eG6juGACfsFUk2lbddO02xwJDefEa', NULL, '2021-06-28 04:00:06', 'admin.png', 'Z4sGE2Lf4U1622167267.png', NULL),
(4, 'thanhtinh', 'tinhnguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$XyeiSPHN.YkcY3mwch4AEe1jry8DqAvvnplc5DmiefKsKXWQ1PN4C', 'vn4pjlcjGLdP8Ju242Gmyrxl1FbR2C3NSkQURRhf936zhmXDXNnk0gU1flsf', '2021-05-26 04:12:53', '2021-06-28 04:00:06', 'admin.png', 'nopic.png', NULL),
(5, 'thamtong', 'thamtong@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$AhhyP2O6JRzJqFA0xcFVJOIkn9NMuJta6M7qwGME//sYKwrYfOrGi', '54tnk1ZRVKcgkTtYC2o0Nwjxs4f6FLqOyIFZGcSDQXGRcwOhzTNIH34qT9HD', '2021-05-27 11:24:49', '2021-11-01 04:32:40', 'admin.png', 'nopic.png', 1),
(6, 'Nguyễn Thị Hồng Phúc ', 'phucnguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$oKNNu.XVWV92zjBerOMNne.BmSRVuN29HXX3PvBU8Oll0TwDqpyPG', 'OLxn1vUgL9JnBMYhWGdDhZaHkfe1XWkSqCxiHG3uoH4kG3Koj8cfUriyLT9c', '2021-06-28 02:51:40', '2021-06-28 02:51:40', 'admin.png', 'dc164ca42d743b3b940749c6665418f2.PNG', NULL),
(7, 'Lưu Nguyễn Đăng Khoa', 'khoaluu@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$7bG1DPvYgYm8bm8TxElN0uPnRb65W0d43uxv7Pk2lMVSJCBHVBTD2', 'DUchbs5NMOsAftxOYmVQm8uTNxuJOlgFavBgpUgypUpmBbWWpcZ7QfgiW7KF', '2021-06-28 02:52:35', '2021-07-26 01:27:29', 'admin.png', '219560d40eda4271e8384da4420d0899.jpg', NULL),
(8, 'Dao Thi Thu Tra', 'tradao@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$o1GXaBCFpaXmGnGjkcHqLebuhOs3C2R0da0ATjk0f7NFqJdkseTiS', '2bWrcBfVs4X8x1Fl3mmtsRfU9bIhCgoxP5mpS2h3yUY3ZsQ2qMVl7gg9DRgR', '2021-06-28 02:54:52', '2021-06-28 03:02:21', 'admin.png', '390625bd933714dd9e5e1ee5643a60d5.PNG', NULL),
(9, 'Cao Thị Kiều Diễm', 'diemcao@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.ZW0h7d5j1UPxQAGedKIwe3ym5Wcr12FkZrK7IV4aCWcvRoOtQIAi', 'cqd86hDrW15YActGNBGqCHrgVs2uc8wQkPLUNZEEw7imZ6mYMJ55wwevNPfj', '2021-06-28 02:57:00', '2021-06-28 02:57:00', 'admin.png', 'nopic.png', NULL),
(10, 'Trần Nhật Tuyền', 'tuyentran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$5Wcr/kVH/h8.YQZl3aaVI.VpOGi2wXYU4GvzEe40o1b5fUhEZbMra', NULL, '2021-06-28 02:59:11', '2021-07-07 13:20:31', '538527066da713ee5886979110da2b8e.jpg', 'e6eb9f862c41cd7d226ec3533c7bb6fb.png', NULL),
(11, 'Nguyễn Phương Thảo', 'thaonguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$nr6S8cT2q5l9s1CurxV01OdkjugWVQ5vLUmdqacRVd8JhvG7pYHm2', 'OOZ9L3Yvn4upaaivlW3bgkd5bDFNUJRb2qd9gepSYuhcqZAJmoLCEkzVVOSV', '2021-06-28 03:57:24', '2021-11-01 04:32:40', '1518ebe760131d916fb184a491105111.jpg', 'd64dfee3e0dc0e6cd773502e971c7c15.png', 1),
(12, 'vy pham', 'vypham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$AngYVR7UVH2hWieujfyHo.Al7NLOWTRVJZtMwbyoQJfjm3Er8FGHu', 'hnbxGQAO1fHb5qwo0KlUdz8LNH7FVRoMRbaWOTPM2oN0xkB7q7E6BGD587TZ', '2021-06-28 03:59:31', '2021-11-01 04:32:40', 'admin.png', 'nopic.png', 1),
(13, 'thuongpham', 'thuongpham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$tNUyN2z1ascJ1yM80oNm3u.GzZKuGtt005rXJ.CcZ8B3S2qGX.kWa', 'L6C8APYEWQUBSjeNSjkQs3wXsBSHVEOZ5mzcvaDLVuisunusnpetyDyWPfD1', '2021-07-19 04:52:55', '2021-11-01 04:32:40', 'admin.png', '562112f89007f8dfb2320d409f331929.png', 1),
(14, 'Hồng Lệ', 'le.nguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$F6dR/D1Sg9sNM0aoBTEMiuqyEwWbYqXAipc7Z56u5h/Y3z2HQOaFa', 'hsV7J5tR4AIBwXx8a2TwmNbJLvy4foiU17m9kfl69YIsXcbFjGhwDKPNTKUP', '2021-07-26 07:03:42', '2021-07-26 07:03:42', 'admin.png', 'nopic.png', NULL),
(15, 'Xuân Trần', 'xuankimtran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.a7wT2hqfuLicGFG4jVZneUkLppaVKMnBOEy40DGJHBInuy8C2Fra', 'B824zLuzlmUnZOMcjkUkdPyhFX5b6ZhKlB1LNa4S38Ex4K4ySrPQjsCZfMxU', '2021-07-26 07:05:03', '2021-07-26 07:05:03', 'admin.png', 'nopic.png', NULL),
(16, 'Lê Thị Thanh Ngọc', 'ngocle@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.G7i0L.Q/jXqJLHmuZ6Y.eRPQ.BuyHYO1B463CY7NL0ZHzG19.Yk.', 'BsGhMSBsfyC8lyJBviw0hLwr5mkFl72bIVRfhPIPiVlttbNrfIMOJ9sJfyNg', '2021-10-15 03:55:07', '2021-10-18 06:42:01', '0dc55556c81c017e70157f36682a66fe.jpg', 'gRl9I9o0z41634539321.png', NULL),
(17, 'NGUYỄN KIM NGÂN', 'ngannguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$k/h/IdUI07wpz8z4y7VIoOpAk/oH8q7JOc6zgcAdJxVOjES6xin3u', NULL, '2021-10-15 04:00:12', '2021-10-15 04:00:12', 'admin.png', 'nopic.png', NULL),
(18, 'Hoa Nguyễn', 'hoanguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$Rc2QUo7DQ5P/pRk8IdpxO.9Y3R66qOInYMQA1zTJMDfny2pGBd02S', 'huwoLOPSrpd2C0UFbVEGC0xURgkhpbJ1P13SBDOzPt55IWOV0gFNvGXNFYme', '2021-11-01 04:32:22', '2021-11-01 04:32:40', 'admin.png', 'nopic.png', 1),
(19, 'Phạm Thị Quỳnh Anh', 'anhquynhpham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$ypbyx.qSgV8KIaRSy4U38OtueBlPF5cDbcig5N3MDPmFVKl.Uttcy', 'UJbQb2gVPbHKrWEo95dJoqSuWjcN655mrOK1f7gsttzdSIS0QuFFOgzZzcJs', '2021-11-01 04:34:37', '2021-11-13 05:14:55', 'admin.png', 'd98219a73f8b45482b6bc373264e80fe.png', NULL),
(20, 'Trần Ngọc Giang Thanh', 'thanhngoctran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$F61j8B6dgA/vbglZMwA7JOgU8JP9EVabe.DNB5PskGJZW7YeGxkLG', 'm7URFsCH2u20AbvCj30zRlCkrqbOkyHjWb2G2oaOlPbzI3W8Lbu1AiTLwkuO', '2021-11-01 04:35:46', '2021-12-10 03:29:06', 'admin.png', 'f7039731c5ebe28951945978479dcdcf.PNG', NULL),
(21, 'Thuy Nguyen', 'thuynguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$UtO2VvyXx4VFPJVg6D39n.CdaO2LlXfItPcmPqOvm.96lKvUnZmi6', 'WxCQVqmyRqC3ODcWjKQr9bjzDM6OX1QrXMYJAMUz6Arggw2l6F7153Y1OGLL', '2022-03-30 02:21:15', '2022-03-30 02:21:15', 'admin.png', 'nopic.png', NULL),
(22, 'Linh Vo', 'linhvo@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$X.m4n/wY5JfwEPigjOd2CeG0ATQdZGphNRojSfRVqEij6o1x6y.I.', '5ICrcuuleFQjHXvVorcARq9OrzjKnYsSbDbXZJPifaNlbsFtIiE8EuoWBQLI', '2022-04-05 02:23:23', '2022-04-05 02:23:23', 'admin.png', 'nopic.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim_word_sheet`
--
ALTER TABLE `claim_word_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduct_provider`
--
ALTER TABLE `deduct_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `export_letter`
--
ALTER TABLE `export_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finish_and_pay`
--
ALTER TABLE `finish_and_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_mem_approved`
--
ALTER TABLE `group_mem_approved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbs_benhead`
--
ALTER TABLE `hbs_benhead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_request`
--
ALTER TABLE `hospital_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox_email`
--
ALTER TABLE `inbox_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_of_claim`
--
ALTER TABLE `item_of_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letter_template`
--
ALTER TABLE `letter_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_role_status`
--
ALTER TABLE `level_role_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_hbs_approved`
--
ALTER TABLE `log_hbs_approved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_mfile`
--
ALTER TABLE `log_mfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_history_paym_id_unique` (`PAYM_ID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pocy_management`
--
ALTER TABLE `pocy_management`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pocy_management_pocy_ref_no_index` (`pocy_ref_no`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provider_prov_code_unique` (`PROV_CODE`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `reason_reject`
--
ALTER TABLE `reason_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_admin`
--
ALTER TABLE `report_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_change_status`
--
ALTER TABLE `role_change_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `room_and_boards`
--
ALTER TABLE `room_and_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_role_status`
--
ALTER TABLE `transaction_role_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unc_sign`
--
ALTER TABLE `unc_sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claim`
--
ALTER TABLE `claim`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claim_word_sheet`
--
ALTER TABLE `claim_word_sheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduct_provider`
--
ALTER TABLE `deduct_provider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `export_letter`
--
ALTER TABLE `export_letter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finish_and_pay`
--
ALTER TABLE `finish_and_pay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_mem_approved`
--
ALTER TABLE `group_mem_approved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hbs_benhead`
--
ALTER TABLE `hbs_benhead`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_request`
--
ALTER TABLE `hospital_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbox_email`
--
ALTER TABLE `inbox_email`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_of_claim`
--
ALTER TABLE `item_of_claim`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letter_template`
--
ALTER TABLE `letter_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `level_role_status`
--
ALTER TABLE `level_role_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `log_hbs_approved`
--
ALTER TABLE `log_hbs_approved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_mfile`
--
ALTER TABLE `log_mfile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pocy_management`
--
ALTER TABLE `pocy_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reason_reject`
--
ALTER TABLE `reason_reject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `report_admin`
--
ALTER TABLE `report_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_change_status`
--
ALTER TABLE `role_change_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `room_and_boards`
--
ALTER TABLE `room_and_boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `transaction_role_status`
--
ALTER TABLE `transaction_role_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `unc_sign`
--
ALTER TABLE `unc_sign`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
