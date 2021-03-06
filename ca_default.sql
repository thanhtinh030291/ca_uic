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
(1, 'Gruop - Th???m T???ng', 5, 0, 5, 0, 1, 0, 5, 0, 6, 0, 1, 1, 0, '2021-05-28 01:55:32', '2021-06-28 04:00:06', NULL);

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
(1, 'Th?? th??ng b??o b???i th?????ng', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH&Ocirc;NG B&Aacute;O K???T QU??? B???I TH?????NG</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch th???t nhi???u s???c kh???e. Sau khi xem x&eacute;t h??? s?? y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i tr&acirc;n tr???ng th&ocirc;ng b&aacute;o k???t qu??? nh?? sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H???p ?????ng s???:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<span style=\"color: #0070c0;\"><br /></span>M&atilde; s??? th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hi???u l???c:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<span style=\"color: #0070c0;\"><br /></span>H??? s?? b???i th?????ng s???:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Ng?????i ???????c b???o hi???m:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$tableInfoPayment]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;L???ch s??? s??? ti???n ??&atilde; b???i th?????ng (VN??)</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$claimHistory]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;H&igrave;nh th???c thanh to&aacute;n</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>\r\n<div><br />[[$payMethod]]</div>\r\n</div>\r\n<p style=\"text-align: justify; line-height: 150%; text-autospace: none; margin: .25in 0in 0in 0in;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">N???u c&oacute; b???t k??? m???t th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng n&ecirc;u tr&ecirc;n ho???c c???n th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> ho???c qua th?? ??i???n t??? <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;????? ???????c gi???i ??&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n tr???ng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, NULL, '2021-11-27 15:13:40', 0, 8, NULL, 'M'),
(2, 'Th?? t??? ch???i b???i th?????ng', '<strong><strong>TH&Ocirc;NG B&Aacute;O T??? CH???I B???I TH?????NG</strong></strong>\n            <p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</u>: &nbsp;&nbsp;&nbsp; &nbsp;<strong>[[$applicantName]]<br /></strong></span></p>\n            <div>\n            <p><strong>C&ocirc;ng ty TNHH B???o hi???m Fubon (Vi???t Nam) v&agrave; C&ocirc;ng ty TNHH MTV Pacific Cross VN (PCV) </strong>tr&acirc;n tr???ng c???m ??n Qu&yacute; kh&aacute;ch ??&atilde; tin t?????ng v&agrave; l???a ch???n d???ch v??? c???a ch&uacute;ng t&ocirc;i.</p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">C??n c??? theo ??i???u ki???n, ??i???u kho???n c???a H???p ?????ng b???o hi???m Ch??m s&oacute;c S???c kh???e, ch&uacute;ng t&ocirc;i xin th&ocirc;ng b&aacute;o ?????n Qu&yacute; kh&aacute;ch k???t qu??? xem x&eacute;t H??? s?? y&ecirc;u c???u gi???i quy???t Quy???n l???i [[$benefitOfClaim]] c???a Ng?????i ???????c b???o hi???m <strong>[[$memberNameCap]]</strong>&nbsp;v???i th&ocirc;ng tin:</span></p>\n            <p style=\"text-align: left;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$IOPDiag]]&nbsp;</span></p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Th??a Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i r???t l???y l&agrave;m ti???c y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch kh&ocirc;ng ???????c thanh to&aacute;n v&igrave;:</span></p>\n            <p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$CSRRemark]]</span></p>\n            <p style=\"text-align: justify;\">[[$TermRemark]]</p>\n            <p>Tr?????ng h???p Qu&yacute; kh&aacute;ch c???n trao ?????i th&ecirc;m, vui l&ograve;ng li&ecirc;n h??? t???ng ??&agrave;i ph???c v??? kh&aacute;ch h&agrave;ng (028) 3925 2608 ho???c qua th?? ??i???n t??? <a href=\"mailto:customerservice@pacificcross.com.vn\">customerservice@pacificcross.com.vn</a>. Ch&uacute;ng t&ocirc;i lu&ocirc;n s???n s&agrave;ng ph???c v??? Qu&yacute; kh&aacute;ch.</p>\n            <p><br />M???t l???n n???a, ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c???m ??n v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch c&ugrave;ng gia ??&igrave;nh lu&ocirc;n m???nh kh???e.</p>\n            <p>Tr&acirc;n tr???ng k&iacute;nh ch&agrave;o</p>\n            <p><strong>Ph&ograve;ng b???i th?????ng b???o hi???m.</strong></p>\n            </div>', 1, 1, 1, '2021-05-27 08:27:53', NULL, '2021-05-27 08:27:53', 0, NULL, NULL, 'M'),
(3, 'Th?? B??? t??c h??? s??', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Y&ecirc;u C???u B??? T&uacute;c H??? S??</span></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span><br />S???: ...</span></strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh g???i Qu&yacute; kh&aacute;ch: <strong>[[$applicantName]]</strong>&nbsp;<br /><br />C&ocirc;ng ty B???o Hi???m B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i ??&atilde; nh???n ???????c y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch v???i th&ocirc;ng tin nh?? sau: <br /></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">????? h??? s?? ????? c?? s??? thanh to&aacute;n b???i th?????ng Qu&yacute; kh&aacute;ch vui l&ograve;ng b??? sung cho ch&uacute;ng t&ocirc;i c&aacute;c ch???ng t??? sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 94px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 40px;\">\r\n<td style=\"width: 50%; height: 40px;\" colspan=\"2\"><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ng?????i ???????c b???o hi???m:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Ocirc;ng/B&agrave; &nbsp;[[$memberNameCap]]&nbsp;</span></strong></td>\r\n</tr>\r\n<tr style=\"height: 10px;\">\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H???p ?????ng s???:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<br /></span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hi???u l???c:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<br /></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">M&atilde; s??? th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H??? s?? b???i th?????ng s???:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 44px;\">\r\n<td style=\"width: 50%; height: 44px;\" colspan=\"2\">\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Th???i gian ??i???u tr???:</span></p>\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch???n ??o&aacute;n:<br /></span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">N??i ??i???u tr???:</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">????? ho&agrave;n t???t vi???c gi???i quy???t y&ecirc;u c???u b???i th?????ng, ch&uacute;ng t&ocirc;i c???n th&ecirc;m (nh???ng) ch???ng t??? sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\" colspan=\"2\">\r\n<ul>\r\n<li>a</li>\r\n<li>b</li>\r\n<li>c</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Qu&yacute; kh&aacute;ch vui l&ograve;ng g???i l???i th?? n&agrave;y k&egrave;m (nh???ng) ch???ng t??? ???????c li???t k&ecirc; b&ecirc;n tr&ecirc;n v&agrave;o h???p th?? ??i???n t??? </span><strong><a href=\"mailto:bshclaims@pacificcross.com.vn\"><span style=\"font-family: \'Arial\',sans-serif;\">bshclaims@pacificcross.com.vn</span></a></strong><span style=\"font-family: \'Arial\',sans-serif;\"> ho???c g???i ?????n v??n ph&ograve;ng c&ocirc;ng ty ch&uacute;ng t&ocirc;i theo ?????a ch??? ???????c ghi ??? cu???i th?? trong v&ograve;ng 15 ng&agrave;y l&agrave;m vi???c k??? t??? ng&agrave;y h&ocirc;m nay <span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span></span></strong></span>.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">N???u ch&uacute;ng t&ocirc;i kh&ocirc;ng nh???n ???????c ch???ng t??? y&ecirc;u c???u b??? sung trong th???i h???n n&ecirc;u tr&ecirc;n th&igrave; ch&uacute;ng t&ocirc;i s??? xem x&eacute;t y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch d???a tr&ecirc;n h??? s?? hi???n c&oacute;.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; b???t k??? th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng ho???c c???n th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #0070c0;\">&nbsp;</span>ho???c qua th?? ??i???n t??? <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n tr???n</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, NULL, '2021-07-20 11:22:04', 7, NULL, 70, 'M'),
(4, 'Letter Payment (GOP)', '<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong><br /><br /><br /><br /><span style=\"font-family: arial, helvetica, sans-serif;\">Y&Ecirc;U C???U THANH TO&Aacute;N B???I TH?????NG B???O HI???M S???C KH???E</span></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong>(Chi h??? <span style=\"font-size: 11pt;\"><span style=\"font-family: \'Arial\',sans-serif;\">C&ocirc;ng Ty B???o Hi???m S&agrave;i G&ograve;n H&agrave; N???i</span></span>)</strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ng&agrave;y: &nbsp;[[$now]]&nbsp;</span></p>\r\n<table style=\"height: 108px; width: 680px; border-collapse: collapse; border-style: none; margin-left: auto; margin-right: auto;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">T&ecirc;n Ng?????i H?????ng Th???</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$payeeProv]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">S??? ti???n thanh to&aacute;n</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$paymentAmt]] ?????ng</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Ph????ng th???c thanh to&aacute;n</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Chuy???n kho???n qua ng&acirc;n h&agrave;ng</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Ng&acirc;n h&agrave;ng</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$bankNameProv]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">?????a ch??? ng&acirc;n h&agrave;ng</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$bankAddressProv]] </strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 170px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">S??? t&agrave;i kho???n</span></td>\r\n<td style=\"width: 16px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">:</span></td>\r\n<td style=\"width: 408px; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong> [[$acctNoProv]] </strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Thanh to&aacute;n cho y&ecirc;u c???u gi???i quy???t b???i th?????ng d?????i ??&acirc;y:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; height: 100px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 18.8363%; text-align: center; height: 64px;\" width=\"21%\">\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>T&ecirc;n ng?????i ???????c b???o hi???m</strong></span></p>\r\n</td>\r\n<td style=\"width: 13.7213%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>M&atilde; s???</strong></span></td>\r\n<td style=\"width: 13.8153%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>S??? H???p ?????ng</strong></span></td>\r\n<td style=\"width: 15.0383%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>S??? H??? s??</strong></span></td>\r\n<td style=\"width: 11.9338%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>S??? H&oacute;a ????n</strong></span></td>\r\n<td style=\"width: 14.4739%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>S??? ti???n y&ecirc;u c???u b???i th?????ng (?????ng)</strong></span></td>\r\n<td style=\"width: 18.8953%; text-align: center; height: 64px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>S??? ti???n b???i th?????ng (?????ng)</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$memberNameCap]]&nbsp;</span></td>\r\n<td style=\"width: 13.7213%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$memRefNo]]&nbsp;</span></td>\r\n<td style=\"width: 13.8153%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$PRefNo]]&nbsp;</span></td>\r\n<td style=\"width: 15.0383%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$claimNo]]&nbsp;</span></td>\r\n<td style=\"width: 11.9338%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$invoicePatient]]&nbsp;</span></td>\r\n<td style=\"width: 14.4739%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$pstAmt]]&nbsp;</span></td>\r\n<td style=\"width: 18.8953%; height: 18px;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$apvAmt]]&nbsp;</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>Ph&iacute; h&agrave;nh ch&iacute;nh (?????ng)</strong></span></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$adminfee]]</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>T???ng c???ng</strong></span></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>[[$time_pay]]</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Ng?????i th???c hi???n</span></td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Ng?????i duy???t</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">[[$per_creater_sign]]</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$per_approve_sign_replace]]</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">[[$note_pay]]</span></p>', 0, 1, 1, NULL, NULL, '2021-09-09 07:07:18', 0, NULL, NULL, 'P'),
(5, 'Th?? b???o l??nh ?????u v??o (FORM GOP)', '<table style=\"height: 72px; width: 100%; border-collapse: collapse; border: 1px solid #000000;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"width: 50%; height: 36px;\" colspan=\"2\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif;\"><span style=\"text-decoration: underline;\"><span style=\"font-size: 12pt;\"><strong><br /><span style=\"font-size: 12pt;\">III. K???T QU??? B???O L&Atilde;NH VI???N PH&Iacute; - D&Agrave;NH CHO PACIFIC CROSS VI???T NAM</span></strong></span></span><br /><br /><span style=\"font-size: 12pt;\">[[$typeGOP]]</span><br /></span><br /><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">NOTE (GHI CH&Uacute;):&nbsp; [[$noteGOP]]<br /><br /></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Processed by (???????c xem x&eacute;t b???i)</span></td>\r\n<td style=\"width: 50%; height: 18px;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Approved by (???????c ch???p thu???n b???i)</span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">[[$per_creater_sign]]</span></td>\r\n<td style=\"width: 50%; height: 18px;\"><span style=\"color: #696969; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">[[$per_approve_sign]]<br /><br /></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 1, 1, NULL, NULL, '2021-09-29 08:49:07', 0, NULL, 22, 'P'),
(6, 'Th?? b???o l??nh ?????u ra (GOP)', '<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[[$nowDay]]<br /><strong>[[$barcode]]</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">[[$ProvName]]</span><br /></strong>[[$ProAddress]]<br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"text-decoration: underline;\"><strong>V/v: B???o l&atilde;nh vi???n ph&iacute; xu???t vi???n th???c t??? cho N??BH [[$memberNameCap]], S??? H??: [[$PRefNo]], M&atilde; s???: &nbsp;[[$memRefNo]]&nbsp;<br /></strong></span><br />K&iacute;nh g???i: <strong>[[$ProvName]]<br /><br /></strong>Pacific Cross Vi???t Nam (PCV) x&aacute;c nh???n r???ng N??BH &nbsp;<strong>[[$memberNameCap]]</strong>, sinh ng&agrave;y [[$DOB]] ??ang ???????c b???o hi???m b???i <strong>C</strong><span style=\"font-size: 11pt;\"><strong><strong>&ocirc;ng</strong> ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i</strong></span>. Thay m???t <span style=\"font-size: 11pt;\"><strong>C&ocirc;ng ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i</strong></span>, PCV xin th&ocirc;ng b&aacute;o k???t qu??? b???o l&atilde;nh vi???n ph&iacute; li&ecirc;n quan ?????n ?????t ??i???u tr??? \"<strong>[[$Diagnosis]]</strong>\" c???a N??BH t??? ng&agrave;y [[$incurDateFrom]] ?????n ng&agrave;y [[$incurDateTo]] (<strong>[[$diffIncur]] </strong>) t???i b???nh vi???n chi ti???t nh?? sau:<br /></span></p>\r\n<table style=\"height: 184px; width: 786px; border-collapse: collapse; margin-left: auto; margin-right: auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 25px;\">\r\n<td style=\"width: 389px; height: 25px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>N???i Dung</strong></span></td>\r\n<td style=\"width: 390px; height: 25px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>&nbsp;S??? ti???n(?????ng)</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">S??? ti???n y&ecirc;u c???u b???i th?????ng</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$ProvPstAmt]]&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ti???n ph&ograve;ng v&agrave; ??n u???ng</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$RBGOP]]/</strong><strong>[[$diffIncur]]</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 389px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; khoa ch??m s&oacute;c ?????c bi???t(ICU)</span></td>\r\n<td style=\"width: 390px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$ICUGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 23px;\">\r\n<td style=\"width: 389px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; ph???u thu???t</span></td>\r\n<td style=\"width: 390px; height: 23px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$SURGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 389px; height: 18px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ti???n gi?????ng cho ng?????i th&acirc;n</span></td>\r\n<td style=\"width: 390px; height: 18px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$EXTBGOP]][[$diffIncur_extb]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; n???i tr&uacute; kh&aacute;c</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>[[$OTHERGOP]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&aacute;c kho???n kh&ocirc;ng b???o l&atilde;nh</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">&nbsp;[[$CSR_REMASK_ALL_LINE]]<strong><br /></strong>T???ng s??? ti???n t??? ch???i: <strong>[[$ProDeniedAmt]]</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 389px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">S??? ti???n PCV x&aacute;c nh???n b???o l???nh</span></td>\r\n<td style=\"width: 390px; height: 24px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;<strong>[[$ProApvAmt]]&nbsp;</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n tr???ng c???m ??n.</span><br /><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$per_approve_sign]]</span></td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong>Qu&yacute; b???nh vi???n vui l&ograve;ng:<br /></strong></span></p>\r\n<ol>\r\n<li style=\"list-style-type: none;\">\r\n<ol>\r\n<li style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">G???i to&agrave;n b??? h??? s?? g???c g???m Gi???y ra vi???n, Ch???ng nh???n ph???u thu???t (n???u c&oacute;) , c&aacute;c c???n l&acirc;m s&agrave;ng, l???ch s??? kh&aacute;m, gi???y x&aacute;c nh???n,... t???t c??? c&aacute;c ch???ng t??? trao ?????i qua email khi y&ecirc;u c???u b???o l&atilde;nh (c&oacute; ??&oacute;ng d???u c???a b???nh vi???n v&agrave; ch??? k&yacute;) v??? b??? ph???n Claims c???a PCV v&agrave; xu???t H&oacute;a ????n Gi&aacute; tr??? Gia t??ng theo th&ocirc;ng tin nh?? sau:<br /></span>\r\n<table style=\"height: 64px; width: 786px; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 197px; height: 18px; text-align: left; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">H??? t&ecirc;n ng?????i mua h&agrave;ng&nbsp;</span></td>\r\n<td style=\"width: 504px; height: 18px; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>T&Ecirc;N KH&Aacute;CH H&Agrave;NG</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 197px; height: 18px; text-align: left; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">?????a ch???</span></td>\r\n<td style=\"width: 504px; height: 18px; padding-left: 40px;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>?????a ch??? c???a kh&aacute;ch h&agrave;ng</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;PCV s??? kh&ocirc;ng thanh to&aacute;n cho c&aacute;c h??? s?? qu&aacute; h???n <strong>30 ng&agrave;y</strong> k??? t??? ng&agrave;y x&aacute;c nh???n b???o l&atilde;nh chi ph&iacute; th???c t???.</span></li>\r\n</ol>\r\n</li>\r\n</ol>', 0, 1, 1, NULL, NULL, '2021-11-19 02:02:07', 0, NULL, 23, 'P'),
(7, 'Th?? Th??ng B??o ???? Nh???n H??? S??', '<p style=\"margin-bottom: 12.0pt; text-align: center; line-height: 150%; text-autospace: none;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><strong><span style=\"line-height: 150%;\">TH&Ocirc;NG B&Aacute;O ??&Atilde; NH???N H??? S??</span></strong></span></p>\r\n<p style=\"margin-bottom: 0in; text-align: right; line-height: 150%;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]<br /><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">S???: ...</span></strong></span><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty B???o Hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch th???t nhi???u s???c kh???e. </span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch&uacute;ng t&ocirc;i ??&atilde; nh???n ???????c y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch v???i th&ocirc;ng tin nh?? sau: </span></p>\r\n<table style=\"width: 100%; border-style: none;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"height: 24px; border-color: #000000; border-style: none; width: 31.3208%;\" width=\"38%\">\r\n<p style=\"text-align: justify; line-height: 150%; margin: 2.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>Ng?????i ???????c b???o hi???m</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"text-align: justify; line-height: 150%; margin: 2.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>&Ocirc;ng/B&agrave; <span style=\"line-height: 107%;\">[[$memberNameCap]]</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"border-color: #000000; border-style: none; width: 31.3208%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>H???p ?????ng s???</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"margin-bottom: 0in; line-height: 150%; tab-stops: 2.5in 2.75in; text-autospace: none;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$PRefNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 36px;\">\r\n<td style=\"border-color: #000000; border-style: none; width: 31.3208%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>M&atilde; s??? th&agrave;nh vi&ecirc;n</strong></span></p>\r\n</td>\r\n<td style=\"border-color: #000000; border-style: none; width: 68.2973%;\">\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 150%;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$memRefNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Trong tr?????ng h???p c???n th&ecirc;m th&ocirc;ng tin/ ch???ng t???, ch&uacute;ng t&ocirc;i s??? th&ocirc;ng b&aacute;o trong v&ograve;ng 2<strong>&nbsp;ng&agrave;y l&agrave;m vi???c</strong> k??? t??? ng&agrave;y g???i th&ocirc;ng b&aacute;o n&agrave;y.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i s??? gi???i quy???t y&ecirc;u c???u b???i th?????ng v&agrave; th&ocirc;ng b&aacute;o k???t qu??? b???i th?????ng cho Qu&yacute; kh&aacute;ch trong v&ograve;ng 15 ng&agrave;y l&agrave;m vi???c k??? t??? ng&agrave;y nh???n ???????c h??? s?? ?????y ?????.</span></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: normal; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; b???t k??? th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng ho???c c???n th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span> ho???c qua th?? ??i???n t??? <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n tr???n</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 16.0pt; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, '2021-05-27 09:48:35', '2021-07-22 04:02:33', 7, NULL, 73, 'M'),
(8, 'Letter Payment', '<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Y&Ecirc;U C???U THANH TO&Aacute;N B???I TH?????NG B???O HI???M S???C KH???E</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><strong>(Chi h??? <span style=\"font-size: 11pt;\"><span style=\"font-family: \'Arial\',sans-serif;\">C&ocirc;ng Ty B???o Hi???m S&agrave;i G&ograve;n H&agrave; N???i</span></span>)</strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Ng&agrave;y: &nbsp;[[$now]]&nbsp;</span></p>\r\n<table style=\"border-collapse: collapse; border-style: none; margin-left: auto; margin-right: auto;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">T&ecirc;n Ch??? H???p ?????ng BH</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\">&nbsp;<strong>[[$PhName]]&nbsp;</strong></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">S??? H???p ?????ng</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\">&nbsp;<strong>[[$PRefNo]]</strong>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 33.2792%; height: 18px;\">S??? ti???n thanh to&aacute;n</td>\r\n<td style=\"width: 4.70779%; height: 18px;\">:</td>\r\n<td style=\"width: 61.8506%; height: 18px;\"><strong> &nbsp;[[$paymentAmt]] ?????ng<br /></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\">Ph????ng th???c Thanh to&aacute;n:[[$payMethod]]</p>\r\n<p style=\"text-align: left;\">Thanh to&aacute;n cho y&ecirc;u c???u gi???i quy???t b???i th?????ng d?????i ??&acirc;y:</p>\r\n<table style=\"width: 100%; border-collapse: collapse; height: 100px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 18.8363%; text-align: center; height: 64px;\" width=\"21%\">\r\n<p><strong>T&ecirc;n ng?????i ???????c b???o hi???m</strong></p>\r\n</td>\r\n<td style=\"width: 13.7213%; text-align: center; height: 64px;\"><strong>M&atilde; s???</strong></td>\r\n<td style=\"width: 13.8153%; text-align: center; height: 64px;\"><strong>S??? H???p ?????ng</strong></td>\r\n<td style=\"width: 15.0383%; text-align: center; height: 64px;\"><strong>S??? H??? s??</strong></td>\r\n<td style=\"width: 11.9338%; text-align: center; height: 64px;\"><strong>S??? H&oacute;a ????n</strong></td>\r\n<td style=\"width: 14.4739%; text-align: center; height: 64px;\"><strong>S??? ti???n y&ecirc;u c???u b???i th?????ng (?????ng)</strong></td>\r\n<td style=\"width: 18.8953%; text-align: center; height: 64px;\"><strong>S??? ti???n b???i th?????ng (?????ng)</strong></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;[[$memberNameCap]]&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;[[$memRefNo]]&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;[[$PRefNo]]&nbsp;</td>\r\n<td style=\"width: 15.0383%; height: 18px;\">&nbsp;[[$claimNo]]&nbsp;</td>\r\n<td style=\"width: 11.9338%; height: 18px;\">&nbsp;[[$invoicePatient]]&nbsp;</td>\r\n<td style=\"width: 14.4739%; height: 18px;\">&nbsp;[[$pstAmt]]&nbsp;</td>\r\n<td style=\"width: 18.8953%; height: 18px;\">&nbsp;[[$apvAmt]]&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 18.8363%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.7213%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 13.8153%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 26.9721%; height: 18px;\" colspan=\"2\"><strong>T???ng c???ng</strong></td>\r\n<td style=\"width: 33.3692%; height: 18px; text-align: center;\" colspan=\"2\"><strong>[[$time_pay]]</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"height: 36px; width: 100%; border-collapse: collapse; margin-top: 10px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">Ng?????i th???c hi???n</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">Ng?????i duy???t</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 18px; text-align: center;\">[[$per_creater_sign]]</td>\r\n<td style=\"width: 50%; height: 18px; padding-left: 80px; text-align: center;\">[[$per_approve_sign_replace]]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>[[$note_pay]]</p>', 0, 1, 1, NULL, '2021-07-23 01:00:18', '2021-09-09 07:06:50', 0, NULL, NULL, 'M'),
(9, 'Th?? Th??ng B??o T??? Ch???i B???i Th?????ng', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH&Ocirc;NG B&Aacute;O T??? CH???I B???I TH?????NG</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch th???t nhi???u s???c kh???e. Sau khi xem x&eacute;t h??? s?? y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i tr&acirc;n tr???ng th&ocirc;ng b&aacute;o k???t qu??? nh?? sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 66px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 66px;\">\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H???p ?????ng s???:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<span style=\"color: #0070c0;\"><br /></span>M&atilde; s??? th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 66px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hi???u l???c:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<span style=\"color: #0070c0;\"><br /></span>H??? s?? b???i th?????ng s???:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Ng?????i ???????c b???o hi???m:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$tableInfoPayment]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /><br /></span>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;L???ch s??? s??? ti???n ??&atilde; b???i th?????ng (VN??)</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$claimHistory]]<br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\">N???u c&oacute; b???t k??? m???t th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng n&ecirc;u tr&ecirc;n ho???c c???n th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: </span><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\"> ho???c qua th?? ??i???n t??? </span><strong style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt; text-align: justify;\">&nbsp;????? ???????c gi???i ??&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n tr???ng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, '2021-08-27 02:15:48', '2021-08-30 02:13:06', 0, NULL, 83, 'M');
INSERT INTO `letter_template` (`id`, `name`, `template`, `is_deleted`, `created_user`, `updated_user`, `deleted_at`, `created_at`, `updated_at`, `level`, `letter_payment`, `status_mantis`, `claim_type`) VALUES
(10, 'Th?? T???m ????ng', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">T???m ??&oacute;ng H??? S??</span></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span><br />S???: ...</span></strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh g???i Qu&yacute; kh&aacute;ch: <strong>[[$applicantName]]</strong>&nbsp;<br /><br />C&ocirc;ng ty B???o Hi???m B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i ??&atilde; nh???n ???????c y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch v???i th&ocirc;ng tin nh?? sau: <br /></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">????? h??? s?? ????? c?? s??? thanh to&aacute;n b???i th?????ng Qu&yacute; kh&aacute;ch vui l&ograve;ng b??? sung cho ch&uacute;ng t&ocirc;i c&aacute;c ch???ng t??? sau:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-color: #1e91e3; height: 94px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 40px;\">\r\n<td style=\"width: 50%; height: 40px;\" colspan=\"2\"><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ng?????i ???????c b???o hi???m:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Ocirc;ng/B&agrave; &nbsp;[[$memberNameCap]]&nbsp;</span></strong></td>\r\n</tr>\r\n<tr style=\"height: 10px;\">\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H???p ?????ng s???:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$PRefNo]]<br /></span></p>\r\n</td>\r\n<td style=\"width: 50%; height: 10px;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Ng&agrave;y hi???u l???c:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [[$memEffDate]]<br /></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; text-align: justify; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">M&atilde; s??? th&agrave;nh vi&ecirc;n:&nbsp; &nbsp; [[$memRefNo]]</span></p>\r\n</td>\r\n<td style=\"width: 50%;\">\r\n<p style=\"margin-top: 6pt; line-height: 150%; padding-left: 40px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H??? s?? b???i th?????ng s???:&nbsp; &nbsp; [[$clNo]]</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 44px;\">\r\n<td style=\"width: 50%; height: 44px;\" colspan=\"2\">\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Th???i gian ??i???u tr???:</span></p>\r\n<p style=\"line-height: 115%; margin: 2pt 0in; padding-left: 40px;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch???n ??o&aacute;n:<br /></span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">N??i ??i???u tr???:</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">????? ho&agrave;n t???t vi???c gi???i quy???t y&ecirc;u c???u b???i th?????ng, ch&uacute;ng t&ocirc;i c???n th&ecirc;m (nh???ng) ch???ng t??? sau:</span></p>\r\n<p>- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&oacute;a ????n chuy???n ?????i t??? h&oacute;a ????n ??i???n t???</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&oacute;a ????n gi&aacute; tr??? gia t??ng (VAT)</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phi???u y&ecirc;u c???u gi???i quy???t quy???n l???i b???o hi???m ch??m s&oacute;c s???c kh???e...</p>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Qu&yacute; kh&aacute;ch vui l&ograve;ng g???i l???i th?? n&agrave;y k&egrave;m (nh???ng) ch???ng t??? ???????c li???t k&ecirc; b&ecirc;n tr&ecirc;n v&agrave;o h???p th?? ??i???n t??? </span><strong><a href=\"mailto:bshclaims@pacificcross.com.vn\"><span style=\"font-family: \'Arial\',sans-serif;\">bshclaims@pacificcross.com.vn</span></a></strong><span style=\"font-family: \'Arial\',sans-serif;\"> ho???c g???i ?????n v??n ph&ograve;ng c&ocirc;ng ty ch&uacute;ng t&ocirc;i theo ?????a ch??? ???????c ghi ??? cu???i th?? trong v&ograve;ng 15 ng&agrave;y l&agrave;m vi???c k??? t??? ng&agrave;y h&ocirc;m nay <span style=\"font-size: 12pt;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$now]]</span></span></strong></span>.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">N???u ch&uacute;ng t&ocirc;i kh&ocirc;ng nh???n ???????c ch???ng t??? y&ecirc;u c???u b??? sung trong th???i h???n n&ecirc;u tr&ecirc;n th&igrave; ch&uacute;ng t&ocirc;i s??? xem x&eacute;t y&ecirc;u c???u b???i th?????ng c???a Qu&yacute; kh&aacute;ch d???a tr&ecirc;n h??? s?? hi???n c&oacute;.</span></p>\r\n<p style=\"margin-top: 6.0pt; text-align: justify; line-height: 115%; text-autospace: none;\"><span style=\"font-family: \'Arial\',sans-serif;\">Khi c&oacute; b???t k??? th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng ho???c c???n th&ecirc;m th&ocirc;ng tin, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #0070c0;\">&nbsp;</span>ho???c qua th?? ??i???n t??? <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; text-autospace: none; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Tr&acirc;n tr???n</span><span style=\"font-family: \'Arial\',sans-serif;\">g,</span></p>\r\n<p style=\"text-align: justify; line-height: 115%; margin: 6.0pt 0in 6.0pt 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, '2021-09-21 04:18:32', '2021-09-21 04:37:58', 7, NULL, 90, 'M'),
(11, 'Th?? Ph??c ????p (vi)', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH?? PH&Uacute;C ??&Aacute;P</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch th???t nhi???u s???c kh???e. <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i ??&atilde; nh???n ???????c th???c m???c c???a Qu&yacute; kh&aacute;ch li&ecirc;n quan ?????n </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">h??? s?? y&ecirc;u c???u b???i th?????ng s??? <strong>[[$barcode]]</strong>.</span></span></p>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Ng?????i ???????c b???o hi???m:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i xin ???????c ph&uacute;c ??&aacute;p nh?? sau:<br /></span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">N???i dung 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp;...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\"><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /><br /><strong>N???i dung 2:</strong> &nbsp;...<br /><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /><br /><strong>N???i dung 3:</strong> &nbsp;...<br /><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif; color: #0070c0;\"><br /></span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i hy v???ng n???i dung ph&uacute;c ??&aacute;p tr&ecirc;n ??&atilde; gi???i ??&aacute;p ???????c th???c m???c c???a Qu&yacute; kh&aacute;ch.<br /></span><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">N???u c&oacute; b???t k??? m???t th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng n&ecirc;u tr&ecirc;n ho???c c???n th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> ho???c qua th?? ??i???n t??? <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;????? ???????c gi???i ??&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n tr???ng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, '2021-11-23 15:43:09', '2021-11-23 15:43:09', 0, NULL, NULL, 'M'),
(12, 'Th?? Ph??c ????p (en)', '<p style=\"text-align: center; line-height: normal; text-autospace: none; margin: 6.0pt 0in 12.0pt 0in;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Arial\',sans-serif;\">RESPONSE LETTER</span></strong></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Dear Valued Customer</span></strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Saigon Hanoi Insurance </span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">would like to send you respectful greetings and wishes for good health. We received your question(s) related to the the claim </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;<strong>[[$barcode]]</strong>.</span></span></pre>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\"> <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: white;\">Insured Name</span>:&nbsp; <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; color: white;\">Mr./Ms. </span> [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">We would like to response your question(s) as below:</span></strong></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 125%; text-autospace: none;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> <br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp;<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 2:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp; ...<br /><br /></span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Content 3:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> <br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Response:&nbsp;</span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">We hope the above response has answered your questions.<br /></span><span style=\"font-family: \'Arial\',sans-serif;\">Should you have any other discussion, please contact us via phone number <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"> <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span></span><span style=\"color: #1f4e79;\">&nbsp;</span>or email <span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong></span></span><span style=\"font-family: \'Arial\',sans-serif;\">, we would be pleased to assist.</span></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">&nbsp;</span><span style=\"font-family: \'Arial\',sans-serif;\">Best Regards,</span></p>\r\n<p style=\"margin-bottom: 0in; text-align: justify; line-height: 125%;\"><span style=\"font-family: \'Arial\',sans-serif;\">Claims Department.</span></p>', 0, 1, 1, NULL, '2021-11-23 16:16:23', '2021-11-23 16:16:23', 0, NULL, NULL, 'M'),
(13, 'Gi???y Gi???i Thi???u (kh??ng gi???y ra vi???n)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>C???NG H&Ograve;A X&Atilde; H???I CH??? NGH??A VI???T NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">?????c l???p &ndash; T??? do &ndash; H???nh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tp. H??? ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>GI???Y GI???I THI???U<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh g???i</u></strong><strong>:</strong> <strong>GI&Aacute;M ?????C [[$ProvName]]<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG K??? HO???CH T???NG H???P<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG B???O HI???M<br /><br /></strong></span>C&ocirc;ng ty TNHH MTV Pacific Cross Vi???t Nam ??&atilde; nh???n ???????c h??? s?? y&ecirc;u c???u b???i th?????ng c???a kh&aacute;ch h&agrave;ng</span></p>\r\n<table style=\"height: 64px; width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 20.4605%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">H??? v&agrave; t&ecirc;n: <strong>[[$memberNameCap]]</strong></span><br /><span style=\"font-size: 10pt;\">CMND: <strong>...</strong></span></td>\r\n<td style=\"width: 10.6347%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Gi???i t&iacute;nh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$SEX]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Ng&agrave;y c???p: <strong>...</strong></span></td>\r\n<td style=\"width: 24.2422%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">N??m sinh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">N??i c???p: <strong>...</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"text-align: left; width: 55.3375%; height: 18px;\" colspan=\"3\"><span style=\"font-size: 10pt;\">?????a ch???: <strong>...</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Trong qu&aacute; tr&igrave;nh gi???i quy???t h??? s?? y&ecirc;u c???u b???i th?????ng, ch&uacute;ng t&ocirc;i ???????c bi???t kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]</strong> ??&atilde; t???ng th??m kh&aacute;m, ??i???u tr??? t???i Qu&yacute; B???nh vi???n v???i th&ocirc;ng tin chi ti???t sau :</span></p>\r\n<table style=\"height: 72px; width: 75%; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ng&agrave;y th??m kh&aacute;m/ ??i???u tr???</strong></span></td>\r\n<td style=\"width: 29.7519%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ch???n ??o&aacute;n</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">????? c&oacute; c??n c??? gi???i quy???t y&ecirc;u c???u b???i th?????ng cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i k&iacute;nh ????? ngh??? Qu&yacute; B???nh Vi???n h??? tr??? th&ocirc;ng tin chi ti???t v??? c&aacute;c l???n th??m kh&aacute;m, ??i???u tr??? n&ecirc;u tr&ecirc;n c???a kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]<br /></strong></span><br /><span style=\"font-size: 11pt;\">Ch&uacute;ng t&ocirc;i xin gi???i thi???u nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch??? <strong>Nguy???n Ph????ng Linh</strong>; S??? CMND: <strong>013 042 865</strong>; Ng&agrave;y c???p: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">N??i c???p: <strong>CA H&agrave; N???i</strong>; S??? ??T: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Anh <strong>Tr???n ?????i Ph?????c</strong>; S??? CMND: <strong>191 274 815</strong>; Ng&agrave;y c???p: <strong>29/05/2012</strong>;</span><br /><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA Qu???ng Tr???</strong>; S??? ??T: <strong>0948 474 706<br /></strong>????????c li&ecirc;n h??? c&ocirc;ng t&aacute;c v???i Qu&yacute; B???nh Vi???n ????? xin tr&iacute;ch sao th&ocirc;ng tin ??i???u tr??? c???a kh&aacute;ch h&agrave;ng.<strong><br /><br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; b???nh vi???n h??? tr??? cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhi???m v???.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ??n Qu&yacute; b???nh vi???n.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n tr???ng k&iacute;nh ch&agrave;o.</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????i Di???n C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr?????ng B??? Ph???n B???i Th?????ng<br /></span></span><br /><br /><br /><br />Nguy???n Th??? H???ng Ph&uacute;c</p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></span></p>\r\n</div>', 0, 1, 1, NULL, '2021-07-15 00:45:19', '2021-11-24 09:52:37', 7, NULL, NULL, 'M'),
(14, 'Gi???y Gi???i Thi???u', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>C???NG H&Ograve;A X&Atilde; H???I CH??? NGH??A VI???T NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????c l???p &ndash; T??? do &ndash; H???nh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Tp. H??? ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">GI???Y GI???I THI???U</span><br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh g???i</u></strong><strong>:</strong> <span style=\"font-size: 11pt;\"><strong>GI&Aacute;M ?????C [[$ProvName]]<br /></strong></span></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG K??? HO???CH T???NG H???P<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG B???O HI???M<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">C&ocirc;ng ty TNHH MTV Pacific Cross Vi???t Nam xin gi???i thi???u nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Ch??? <strong>Nguy???n Ph????ng Linh</strong>; S??? CMND: <strong>013 042 865</strong>; Ng&agrave;y c???p: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA H&agrave; N???i</strong>; S??? ??T: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Anh <strong>Tr???n ?????i Ph?????c</strong>; S??? CMND: <strong>191 274 815</strong>; Ng&agrave;y c???p: <strong>29/05/2012</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA Qu???ng Tr???</strong>; S??? ??T: <strong>0948 474 706</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">???????c li&ecirc;n h??? v???i Qu&yacute; B???nh vi???n ????? l???y h??? s?? y t??? c???a kh&aacute;ch h&agrave;ng:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 332px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">H??? v&agrave; t&ecirc;n: &nbsp;<strong>[[$memberNameCap]]<br /></strong>Ng&agrave;y sinh: <span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></td>\r\n<td style=\"width: 251px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Gi???i t&iacute;nh: <span style=\"text-align: center;\"><strong>[[$SEX]]<br /></strong>M&atilde; BN/ BA:<strong> ...</strong></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????a ch???: ...</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Bao g???m:</span></p>\r\n<ul style=\"text-align: left;\">\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; b???nh vi???n h??? tr??? cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhi???m v???.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ??n Qu&yacute; b???nh vi???n.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n tr???ng k&iacute;nh ch&agrave;o.</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????i Di???n C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr?????ng B??? Ph???n B???i Th?????ng<br /></span><br /><br /><br /><br /><br /><strong>Nguy???n Th??? H???ng Ph&uacute;c</strong></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</div>', 0, 1, 1, NULL, '2021-07-15 00:42:56', '2021-11-24 09:52:25', 7, NULL, NULL, 'M'),
(15, 'Gi???y Gi???i Thi???u (kh??ng gi???y ra vi???n)(C?? M???c K??)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>C???NG H&Ograve;A X&Atilde; H???I CH??? NGH??A VI???T NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">?????c l???p &ndash; T??? do &ndash; H???nh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tp. H??? ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong>GI???Y GI???I THI???U<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh g???i</u></strong><strong>:</strong> <strong>GI&Aacute;M ?????C [[$ProvName]]<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG K??? HO???CH T???NG H???P<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG B???O HI???M<br /><br /></strong></span>C&ocirc;ng ty TNHH MTV Pacific Cross Vi???t Nam ??&atilde; nh???n ???????c h??? s?? y&ecirc;u c???u b???i th?????ng c???a kh&aacute;ch h&agrave;ng</span></p>\r\n<table style=\"height: 64px; width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 20.4605%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">H??? v&agrave; t&ecirc;n: <strong>[[$memberNameCap]]</strong></span><br /><span style=\"font-size: 10pt;\">CMND: <strong>...</strong></span></td>\r\n<td style=\"width: 10.6347%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">Gi???i t&iacute;nh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$SEX]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">Ng&agrave;y c???p: <strong>...</strong></span></td>\r\n<td style=\"width: 24.2422%; height: 46px; text-align: left;\"><span style=\"font-size: 10pt;\">N??m sinh: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></span><br /><span style=\"font-size: 10pt;\">N??i c???p: <strong>...</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"text-align: left; width: 55.3375%; height: 18px;\" colspan=\"3\"><span style=\"font-size: 10pt;\">?????a ch???: <strong>...</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">Trong qu&aacute; tr&igrave;nh gi???i quy???t h??? s?? y&ecirc;u c???u b???i th?????ng, ch&uacute;ng t&ocirc;i ???????c bi???t kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]</strong> ??&atilde; t???ng th??m kh&aacute;m, ??i???u tr??? t???i Qu&yacute; B???nh vi???n v???i th&ocirc;ng tin chi ti???t sau :</span></p>\r\n<table style=\"height: 72px; width: 75%; border-collapse: collapse;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ng&agrave;y th??m kh&aacute;m/ ??i???u tr???</strong></span></td>\r\n<td style=\"width: 29.7519%; height: 18px;\"><span style=\"font-size: 11pt;\"><strong>Ch???n ??o&aacute;n</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 26.4636%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 29.7519%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 11pt;\">????? c&oacute; c??n c??? gi???i quy???t y&ecirc;u c???u b???i th?????ng cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i k&iacute;nh ????? ngh??? Qu&yacute; B???nh Vi???n h??? tr??? th&ocirc;ng tin chi ti???t v??? c&aacute;c l???n th??m kh&aacute;m, ??i???u tr??? n&ecirc;u tr&ecirc;n c???a kh&aacute;ch h&agrave;ng <strong>[[$memberNameCap]]<br /></strong></span><br /><span style=\"font-size: 11pt;\">Ch&uacute;ng t&ocirc;i xin gi???i thi???u nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch??? <strong>Nguy???n Ph????ng Linh</strong>; S??? CMND: <strong>013 042 865</strong>; Ng&agrave;y c???p: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">N??i c???p: <strong>CA H&agrave; N???i</strong>; S??? ??T: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Anh <strong>Tr???n ?????i Ph?????c</strong>; S??? CMND: <strong>191 274 815</strong>; Ng&agrave;y c???p: <strong>29/05/2012</strong>;</span><br /><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA Qu???ng Tr???</strong>; S??? ??T: <strong>0948 474 706<br /></strong>????????c li&ecirc;n h??? c&ocirc;ng t&aacute;c v???i Qu&yacute; B???nh Vi???n ????? xin tr&iacute;ch sao th&ocirc;ng tin ??i???u tr??? c???a kh&aacute;ch h&agrave;ng.<strong><br /><br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; b???nh vi???n h??? tr??? cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhi???m v???.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ??n Qu&yacute; b???nh vi???n.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n tr???ng k&iacute;nh ch&agrave;o.</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????i Di???n C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr?????ng B??? Ph???n B???i Th?????ng<br /></span></span>[[$HEADSIGN]]</p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></span></p>\r\n</div>', 0, 1, 1, NULL, '2021-03-02 21:32:07', '2021-11-24 09:51:58', 7, NULL, NULL, 'M'),
(16, 'Gi???y Gi???i Thi???u (C?? M???c K??)', '<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>C???NG H&Ograve;A X&Atilde; H???I CH??? NGH??A VI???T NAM</strong></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????c l???p &ndash; T??? do &ndash; H???nh ph&uacute;c</span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">--- o0o ---</span><br />\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Tp. H??? ch&iacute; Minh, [[$nowVn]]</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">GI???Y GI???I THI???U</span><br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong><u>K&iacute;nh g???i</u></strong><strong>:</strong> <span style=\"font-size: 11pt;\"><strong>GI&Aacute;M ?????C [[$ProvName]]<br /></strong></span></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG K??? HO???CH T???NG H???P<br /></strong></span><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PH&Ograve;NG B???O HI???M<br /></strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">C&ocirc;ng ty TNHH MTV Pacific Cross Vi???t Nam xin gi???i thi???u nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;:</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Ch??? <strong>Nguy???n Ph????ng Linh</strong>; S??? CMND: <strong>013 042 865</strong>; Ng&agrave;y c???p: <strong>29/02/2008</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA H&agrave; N???i</strong>; S??? ??T: <strong>0945 545 550/ 0988014570</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Anh <strong>Tr???n ?????i Ph?????c</strong>; S??? CMND: <strong>191 274 815</strong>; Ng&agrave;y c???p: <strong>29/05/2012</strong>;</span><br /><span style=\"font-family: arial, helvetica, sans-serif;\">N??i c???p: <strong>CA Qu???ng Tr???</strong>; S??? ??T: <strong>0948 474 706</strong></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">???????c li&ecirc;n h??? v???i Qu&yacute; B???nh vi???n ????? l???y h??? s?? y t??? c???a kh&aacute;ch h&agrave;ng:</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 332px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">H??? v&agrave; t&ecirc;n: &nbsp;<strong>[[$memberNameCap]]<br /></strong>Ng&agrave;y sinh: <span style=\"text-align: center;\"><strong>[[$DOB]]</strong></span></span></td>\r\n<td style=\"width: 251px; text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Gi???i t&iacute;nh: <span style=\"text-align: center;\"><strong>[[$SEX]]<br /></strong>M&atilde; BN/ BA:<strong> ...</strong></span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????a ch???: ...</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Bao g???m:</span></p>\r\n<ul style=\"text-align: left;\">\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif;\">K&iacute;nh mong Qu&yacute; b???nh vi???n h??? tr??? cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho&agrave;n th&agrave;nh nhi???m v???.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ??n Qu&yacute; b???nh vi???n.<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr&acirc;n tr???ng k&iacute;nh ch&agrave;o.</span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">?????i Di???n C&ocirc;ng Ty&nbsp; &nbsp; &nbsp; &nbsp;<br /></span><span style=\"font-family: arial, helvetica, sans-serif;\">Tr?????ng B??? Ph???n B???i Th?????ng<br /></span>[[$HEADSIGN]]</p>\r\n<p style=\"text-align: right;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</div>', 0, 1, 1, NULL, '2021-03-02 21:30:04', '2021-11-24 09:51:44', 7, NULL, NULL, 'M'),
(17, 'Th?? Ph??c ????p (vi)', '<p style=\"text-align: center;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"font-size: 14pt;\">TH?? PH&Uacute;C ??&Aacute;P</span><br /></strong></span></p>\r\n<p style=\"text-align: right;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[[$now]]</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><u><br /><strong>K&iacute;nh g???i Qu&yacute; kh&aacute;ch</strong></u><strong>:</strong> <strong>[[$applicantName]]</strong></span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 12.0pt 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">C&ocirc;ng ty B???o hi???m S&agrave;i G&ograve;n H&agrave; N???i xin g???i ?????n Qu&yacute; kh&aacute;ch l???i ch&agrave;o tr&acirc;n tr???ng v&agrave; k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch th???t nhi???u s???c kh???e. <span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i ??&atilde; nh???n ???????c th???c m???c c???a Qu&yacute; kh&aacute;ch li&ecirc;n quan ?????n </span><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">h??? s?? y&ecirc;u c???u b???i th?????ng s??? <strong>[[$barcode]]</strong>.</span></span></p>\r\n<table style=\"height: 18px; width: 100%; border-collapse: collapse; border-color: #1e91e3; background-color: #1e91e3;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 100%; height: 18px;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\"><strong><span style=\"line-height: 107%; color: white;\">&nbsp;Ng?????i ???????c b???o hi???m:&nbsp;&nbsp; &Ocirc;ng/B&agrave; [[$memberNameCap]]</span></strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><br />[[$IOPDiag]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 125%; margin: 6.0pt 0in 6.0pt 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i xin ???????c ph&uacute;c ??&aacute;p nh?? sau:<br /></span></strong></p>\r\n<p style=\"text-align: justify; line-height: 125%; text-autospace: none; margin: 6.0pt 0in 0in 0in;\"><strong><span style=\"font-family: \'Arial\',sans-serif;\">N???i dung 1:</span></strong><span style=\"font-family: \'Arial\',sans-serif;\"> &nbsp;...<br /></span><span style=\"font-family: \'Arial\',sans-serif;\"><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /><br /><strong>N???i dung 2:</strong> &nbsp;...<br /><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /><br /><strong>N???i dung 3:</strong> &nbsp;...<br /><strong>Ph&uacute;c ??&aacute;p:</strong> &nbsp; ...<br /></span><span style=\"font-family: \'Arial\',sans-serif; color: #0070c0;\"><br /></span></p>\r\n<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[[$infoReject]]<br /></span></span>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 6.0pt 0in 0in 0in;\"><span style=\"font-family: \'Arial\',sans-serif;\">Ch&uacute;ng t&ocirc;i hy v???ng n???i dung ph&uacute;c ??&aacute;p tr&ecirc;n ??&atilde; gi???i ??&aacute;p ???????c th???c m???c c???a Qu&yacute; kh&aacute;ch.<br /></span><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">N???u c&oacute; b???t k??? m???t th&ocirc;ng tin n&agrave;o kh&aacute;c, nh???ng th???c m???c li&ecirc;n quan ?????n vi???c gi???i quy???t b???i th?????ng n&ecirc;u tr&ecirc;n ho???c c???n th&ecirc;m th&ocirc;ng tin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i qua s??? ??i???n tho???i: <span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 11pt; font-family: \'Times New Roman\', serif;\">028-3925-2300</span></span> ho???c qua th?? ??i???n t??? <strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\"><a href=\"mailto:cskh.bsh@pacificcross.com.vn\">cskh.bsh@pacificcross.com.vn</a></span></strong>&nbsp;????? ???????c gi???i ??&aacute;p, ch&uacute;ng t&ocirc;i h&acirc;n h???nh h??? tr???.</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Tr&acirc;n tr???ng,</span></p>\r\n<p style=\"text-align: justify; line-height: 150%; margin: 12.0pt 0in 0in 0in;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">B??? ph???n Gi???i quy???t B???i th?????ng</span></p>', 0, 1, 1, NULL, '2022-01-21 08:59:33', '2022-01-21 08:59:33', 0, NULL, NULL, 'P');

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
(7, 'Kh??ng C???n Approved', 99999999999, 99999999999, 13, 13, 13, 1, 1, 0, '2021-07-14 04:57:41', '2021-07-14 04:57:41', NULL, 'M'),
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
(1, 'b???nh b???m sinh', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin]Ch???n ??o&aacute;n \"[##nameItem##]\"[End] l&agrave; t&igrave;nh tr???ng b???m sinh, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.2 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m b??? sung b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:41:28', '2020-04-14 18:00:19', 0, NULL),
(2, 'Ch???t dinh d?????ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] c???a ng&agrave;y&nbsp; [##Date##] l&agrave; ch???t dinh d?????ng, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:46:09', '2020-04-14 18:00:35', 0, NULL),
(3, 'Chi ph?? ti???n gi?????ng cho ng?????i th??n', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Qu&yacute; kh&aacute;ch ??&atilde; tr&ecirc;n 18 tu???i n&ecirc;n chi ph&iacute; gi?????ng cho ng?????i th&acirc;n [##amountItem##] ?????ng l&agrave; kho???n Qu&yacute; kh&aacute;ch t??? thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2019-10-30 13:50:38', '2020-04-14 18:00:55', 0, NULL),
(4, 'adddfsdfsdfsdfsdfsd', NULL, '<p>&nbsp;<strong class=\"text-danger\">[Begin]</strong>&nbsp;&nbsp;<strong class=\"text-danger\">[##nameItem##]</strong> , &nbsp;<strong class=\"text-danger\">[##amountItem##]&nbsp;<strong class=\"text-danger\">[End]</strong>&nbsp;</strong> thuoc di&ecirc;u le 3.5 nen bi ch&ocirc;ii&nbsp;</p>', 1, 1, '2020-01-19 06:35:20', '2020-01-19 10:11:28', 1, '2020-01-19 10:11:28'),
(5, 'Ch???ng t??? y t??? th??? hi???n ch???n ??o??n', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">H??? s?? Qu&yacute; kh&aacute;ch cung c???p kh&ocirc;ng c&oacute; ch???ng t??? y t??? th??? hi???n ch???n ??o&aacute;n b???nh (toa thu???c, s??? kh&aacute;m b???nh&hellip;) c???a chi ph&iacute; [##amountItem##] ?????ng v&agrave;o ng&agrave;y [##Date##]. Tr?????ng h???p Qu&yacute; kh&aacute;ch b??? sung ???????c ch???ng t??? y t??? th??? hi???n ch???n ??o&aacute;n b???nh (toa thu???c, s??? kh&aacute;m b???nh&hellip;) c&oacute; h??? t&ecirc;n, ch??? k&yacute; c???a B&aacute;c s?? ??i???u tr??? ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i chi ph&iacute; n&agrave;y. </span></li>\r\n</ul>', 1, 1, '2020-01-19 10:14:10', '2021-02-03 14:37:01', 0, NULL),
(6, 'c??i x????ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng ph???c v??? ??i???u tr??? cho ch???n ??o&aacute;n \" [##Text##]\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.2 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-01-20 16:46:38', '2020-04-14 18:02:24', 0, NULL),
(7, 'M??? ph???m', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng[End] l&agrave; m??? ph???m,&nbsp;<span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 14.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"> thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span><br /></span></li>\r\n</ul>', 1, 1, '2020-02-04 09:23:12', '2020-11-17 17:09:17', 0, NULL),
(8, 'd???ch truy???n dinh d?????ng', NULL, '<ul>\r\n<li>&nbsp;<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng[End] l&agrave; d???ch truy???n dinh d?????ng, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-02-10 05:07:19', '2020-04-14 18:03:33', 0, NULL),
(9, 'test', NULL, '<p><br />Chi ph&iacute; &nbsp;<strong class=\"text-danger\">[##nameItem##]</strong>&nbsp; t??? ng&agrave;y &nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp; ?????n &nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp; l&agrave; &nbsp;<strong class=\"text-danger\">[##amountItem##]</strong>&nbsp; , tuy nhi&ecirc;n c&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; ?????ng do v?????t m???c quy???n l???i t???i ??a( &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; ?????ng/ ng&agrave;y x &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; = &nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp; ?????ng).</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##nameItem##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##amountItem##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##Date##]</strong>&nbsp;</p>\r\n<p>&nbsp;<strong class=\"text-danger\">[##Text##]</strong>&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1, '2020-02-10 09:56:37', '2020-02-10 12:42:45', 1, '2020-02-10 12:42:45'),
(10, '??dasdas', NULL, '<p>sadasdasd</p>', 1, 1, '2020-02-10 12:38:49', '2020-02-10 12:38:56', 1, '2020-02-10 12:38:56'),
(11, '??o th??? l???c', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng[End] thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.14 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 09:55:34', '2020-03-10 14:29:47', 0, NULL),
(12, 'dung d???ch kho??ng ch???t', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng<span style=\"color: #626262; background-color: #ffffff;\">[End]</span> l&agrave; dung d???ch kho&aacute;ng ch???t, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 09:57:23', '2020-03-25 11:55:02', 0, NULL),
(13, 'Dung d???ch kho??ng ch???t (c?? ng??y)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng v&agrave;o ng&agrave;y [##Date##][End] l&agrave; dung d???ch kho&aacute;ng ch???t, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:00:47', '2020-03-25 11:55:18', 0, NULL),
(14, 'Nothing', NULL, '<p>TEst</p>', 1, 1, '2020-03-01 10:01:57', '2020-03-17 19:02:39', 0, NULL),
(15, 'D?????i h???n m???c thanh to??n', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; ??i???u tr??? th???c t??? c???a ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n C&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? do d?????i h???n m???c thanh to&aacute;n t???i thi???u <span style=\"color: #626262; background-color: #ffffff;\">[##Text##] </span>?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:04:34', '2020-03-19 17:47:22', 0, NULL),
(16, 'gout', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">\"[##Text##]\" l&agrave; b???nh vi&ecirc;m kh???p x????ng thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.4 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e n&ecirc;n chi ph&iacute;&nbsp; [##nameItem##],&nbsp; [##amountItem##] ?????ng li&ecirc;n quan ?????n ch???n ??o&aacute;n n&agrave;y kh&ocirc;ng ???????c thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:06:17', '2020-12-15 21:04:49', 0, NULL),
(17, 'Kh??ng li??n quan ?????n ch???n ??o??n (c?? ng??y)', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng v&agrave;o ng&agrave;y [##Date##][End] kh&ocirc;ng li&ecirc;n quan tr???c ti???p ?????n ch???n ??o&aacute;n b???nh, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.12 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:07:38', '2020-04-14 17:43:20', 0, NULL),
(18, 'kh??ng c?? h??a ????n b???n g???c', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng kh&ocirc;ng c&oacute; h&oacute;a ????n t&agrave;i ch&iacute;nh (b???n g???c),&nbsp;(Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c ch???ng t??? n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i y&ecirc;u c???u b???i th?????ng n&agrave;y).<br /></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:08:31', '2020-03-23 16:19:54', 0, NULL),
(19, 'Bi??n lai/ Phi???u thu kh??ng c?? h??a ????n VAT', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##Text##] <span style=\"background-color: #ffffff;\">?????ng</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">????n t&agrave;i ch&iacute;nh (b???n g???c),</span> ch&uacute;ng t&ocirc;i ch??? thanh to&aacute;n t<span style=\"background-color: #ffffff;\">???i ??a</span> 200.000 ?????ng, kh&ocirc;ng thanh to&aacute;n [##amountItem##] ?????ng. </span><span style=\"background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">(Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c ch???ng t??? n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m/ ra vi???n, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i y&ecirc;u c???u b???i th?????ng n&agrave;y).</span><br /></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:09:13', '2020-11-17 17:03:57', 0, NULL),
(20, 'kh??ng c?? s??? ????ng k?? thu???c', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##] ?????ng[End] kh&ocirc;ng ph???i l&agrave; thu???c, kh&ocirc;ng c&oacute; s??? ????ng k&iacute; thu???c<span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 14.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"> n&ecirc;n kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 2.1 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></span></li>\r\n</ul>', 1, 1, '2020-03-01 10:09:58', '2020-11-17 17:03:16', 0, NULL),
(21, 'Kh??ng c?? toa thu???c h???p l???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##] [##amountItem##] ?????ng[End] kh&ocirc;ng c&oacute; toa thu???c (c&oacute; ch???n ??o&aacute;n, ch??? k&yacute; v&agrave; h??? t&ecirc;n b&aacute;c s??, ng&agrave;y k&ecirc; toa). Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c toa thu???c h???p l??? c&ograve;n thi???u trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i chi ph&iacute; n&agrave;y.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:11:26', '2020-12-07 19:28:10', 0, NULL),
(22, 'kh??ng li??n quan ?????n ch???n ??o??n', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##] [##amountItem##] ?????ng[End] kh&ocirc;ng li&ecirc;n quan tr???c ti???p ?????n ch???n ??o&aacute;n b???nh, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.12 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:12:17', '2020-04-26 19:18:42', 0, NULL),
(23, 'kh??ng thu???c ph???m vi b???o hi???m', NULL, '<ul>\r\n<li>&nbsp;<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> ?????ng kh&ocirc;ng thu???c ph???m vi b???o hi???m, thu???c kho???n Qu&yacute; kh&aacute;ch t??? thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:13:45', '2021-03-18 18:30:36', 0, NULL),
(24, 'Kh??ng thu???c ph???m vi b???o hi???m', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##] ?????ng v&agrave;o ng&agrave;y&nbsp; [##Date##][End]&nbsp; kh&ocirc;ng thu???c ph???m vi b???o hi???m, theo ??i???u 2.2 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:14:44', '2020-03-10 14:34:30', 0, NULL),
(25, 'chi ph?? thu???c, bi??n lai thu???c, thu???c kh??ng c?? toa thu???c', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng kh&ocirc;ng c&oacute; toa thu???c (c&oacute; ch???n ??o&aacute;n, ch??? k&yacute; v&agrave; h??? t&ecirc;n b&aacute;c s??, ng&agrave;y k&ecirc; toa). Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c toa thu???c h???p l??? c&ograve;n thi???u trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i chi ph&iacute; n&agrave;y.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:15:22', '2020-12-07 19:28:46', 0, NULL),
(26, 'l???ch v??ch m??i', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; ph???u thu???t ch???nh h&igrave;nh v&aacute;ch ng??n&nbsp; [##amountItem##] ?????ng ??i???u tr??? cho ch???n ??o&aacute;n \" [##Text##]\", thu???c ??i???u kho???n lo???i tr??? b???o hi???m ??i???u 3.3 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:15:53', '2020-03-10 14:35:28', 0, NULL),
(27, 'lo??ng x????ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng ph???c v??? ??i???u tr??? b???nh \"Lo&atilde;ng x????ng\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.4 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.&nbsp;</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:16:25', '2020-03-10 14:35:54', 0, NULL),
(28, 'm??? ph???m (c?? ng??y)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng ng&agrave;y [##Date##] c&oacute; s??? ????ng k&yacute; [##Text##] l&agrave; m??? ph???m, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:17:00', '2020-03-26 19:04:35', 0, NULL),
(29, 'Ph??? thu chi ph?? ??i???n n?????c', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ph??? thu chi ph&iacute; ??i???n n?????c&nbsp; [##amountItem##] ?????ng thu???c kho???n Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:17:41', '2020-03-10 14:36:48', 0, NULL),
(30, 'v?????t quy???n l???i ngo???i tr?? 210', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n, C&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 1.000.000 ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:18:19', '2021-03-07 13:22:57', 0, NULL),
(31, 'v?????t quy???n l???i ngo???i tr?? 420', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y&nbsp; [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n, C&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 2.000.000 ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:18:55', '2020-09-28 18:03:05', 0, NULL),
(32, 'r??ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.15 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:19:26', '2020-03-10 14:38:10', 0, NULL),
(33, 'r???i lo???n d???ng c?? th???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng ph???c v??? ??i???u tr??? \" [##Text##]\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.17 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:20:12', '2020-03-10 14:38:40', 0, NULL),
(34, 'r???i lo???n gi???c ng???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng l&agrave; thu???c ??i???u tr??? b???nh \"R???i lo???n gi???c ng???\" l&agrave; b???nh thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.19 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:21:08', '2020-03-10 14:38:57', 0, NULL),
(35, 'r???i lo???n lo ??u (t??? ch???i x??t nghi???m, thu???c, ...)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng[End] ph???c v??? ??i???u tr??? cho ch???n ??o&aacute;n \"[##Text##]\", thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.17 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:21:45', '2020-03-18 20:29:31', 0, NULL),
(36, 't???m so??t ung th??', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng l&agrave; x&eacute;t nghi???m t???m so&aacute;t ung th??, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 11.11 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:22:17', '2021-06-02 10:01:08', 0, NULL),
(37, 'Thai', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##],&nbsp; [##amountItem##] ?????ng kh&ocirc;ng ???????c thanh to&aacute;n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.8 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:10', '2020-03-10 14:39:56', 0, NULL),
(38, 'Thai', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng li&ecirc;n quan ?????n ch???n ??o&aacute;n \"[##Text##]\", thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.8 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:34', '2021-02-07 16:42:11', 0, NULL),
(39, 'tho??i h??a ?????t s???ng c???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch???n ??o&aacute;n \"[##Text##]\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.4 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:23:59', '2021-02-07 16:42:54', 0, NULL),
(40, 'Thi???u h??a ????n chuy???n ?????i c???a H????T', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; [##amountItem##] kh&ocirc;ng c&oacute; h&oacute;a ????n chuy???n ?????i t??? h&oacute;a ????n ??i???n t??? v&agrave; ch??? k&iacute; c???a ng?????i chuy???n ?????i (b???n g???c) n&ecirc;n kh&ocirc;ng ???????c thanh to&aacute;n.&nbsp;</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:24:29', '2020-11-17 16:51:58', 0, NULL),
(41, 'th???c ph???m ch???c n??ng n???i tr??', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng c&oacute; s??? c&ocirc;ng b??? [##Text##][End] l&agrave; th???c ph???m ch???c n??ng, kh&ocirc;ng ph???i l&agrave; thu???c n&ecirc;n kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 2.1 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:25:10', '2021-02-07 16:34:56', 0, NULL),
(42, 'th???c ph???m ch???c n??ng ngo???i tr??', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng c&oacute; s??? c&ocirc;ng b??? [##Text##][End] l&agrave; th???c ph???m ch???c n??ng, kh&ocirc;ng ph???i l&agrave; thu???c n&ecirc;n kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 2.2 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:25:37', '2021-02-07 16:34:41', 0, NULL),
(43, 'thu???c ch???ng tr???m c???m', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> ?????ng v&agrave;o ng&agrave;y&nbsp; [##Date##] t???i B???nh vi???n&nbsp; [##Text##] c&oacute;&nbsp; &nbsp;s??? ????ng k&yacute;&nbsp; [##Text##] l&agrave; th???c ph???m ch???c n??ng, kh&ocirc;ng ph???i l&agrave; thu???c, kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 2.2 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m b??? sung b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:26:15', '2020-03-10 14:27:51', 0, NULL),
(44, 'thu???c h??? tr??? d??? ph??ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\"><strong class=\"text-danger\">[Begin]</strong>[##nameItem##],&nbsp; [##amountItem##]<strong class=\"text-danger\">[End]</strong> ?????ng l&agrave; thu???c h??? tr??? d??? ph&ograve;ng, t??ng c?????ng h??? mi???n d???ch thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.12 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:27:05', '2020-03-10 14:27:32', 0, NULL),
(45, 'thu???c h??? tr??? d??? ph??ng,h??? tr??? t??ng c?????ng h??? mi???n d???ch', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##amountItem##][End] l&agrave; thu???c h??? tr??? d??? ph&ograve;ng, h??? tr??? t??ng c?????ng h??? mi???n d???ch, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 1.24a v&agrave; ??i???u 3.12 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:28:19', '2020-11-17 16:50:56', 0, NULL),
(46, 'thu???c h?????ng t??m th???n', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] c???a ng&agrave;y&nbsp; [##Date##][End]&nbsp; l&agrave; thu???c h?????ng t&acirc;m th???n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.17 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:28:52', '2020-11-17 16:50:12', 0, NULL),
(47, 'thu???c h?????ng t??m th???n', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] c???a ng&agrave;y&nbsp; [##Date##][End] l&agrave; thu???c h?????ng t&acirc;m th???n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.12 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:29:17', '2020-03-10 14:23:46', 0, NULL),
(48, 'thu???c h?????ng t??m th???n 2', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin] [##nameItem##],&nbsp; [##amountItem##] c???a ng&agrave;y&nbsp; [##Date##][End] l&agrave; thu???c h?????ng t&acirc;m th???n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.17 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:29:52', '2020-03-10 14:20:11', 0, NULL),
(49, 'Ti???n gi?????ng v?????t m???c', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; ti???n gi?????ng t??? ng&agrave;y [##Date##] ?????n ng&agrave;y [##Date##] ([##Text##] ng&agrave;y) l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n C&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t m???c quy???n l???i ti???n gi?????ng ti&ecirc;u chu???n.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:30:15', '2021-06-02 10:00:27', 0, NULL),
(50, 'ti???n m??n kinh', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[Begin][##nameItem##] [##amountItem##] ?????ng[End]li&ecirc;n quan tr???c ti???p ?????n ch???n ??o&aacute;n \" [##Text##]\", thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.10 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:30:46', '2021-05-04 21:54:12', 0, NULL),
(51, 'Toa kh??ng h???p l???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; thu???c&nbsp; [##amountItem##] ?????ng v&agrave;o ng&agrave;y&nbsp; [##Date##] v&igrave; kh&ocirc;ng c&oacute; toa thu???c h???p l???. Tr?????ng h???p Qu&yacute; kh&aacute;ch b??? sung ???????c toa thu???c h???p l??? (c&oacute; ch???n ??o&aacute;n, ch??? k&iacute; v&agrave; h??? t&ecirc;n b&aacute;c s??, ng&agrave;y k&ecirc; toa) ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:31:14', '2020-03-10 14:19:31', 0, NULL),
(52, 'trang thi???t b??? y t??? n???i tr??', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng c&oacute; s??? c&ocirc;ng b??? [##Text##] l&agrave; trang thi???t b??? y t???, kh&ocirc;ng ph???i l&agrave; thu???c, kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 2.1 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:31:39', '2021-02-07 16:35:34', 0, NULL),
(53, 'v???c-xin', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng v&agrave;o ng&agrave;y&nbsp; [##Date##][End] kh&ocirc;ng ???????c thanh to&aacute;n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.20 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:32:04', '2020-11-17 14:48:10', 0, NULL),
(54, 'v???t d???ng, d???ch v??? kh??ng li??n quan - Group', 53, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng[End] thu???c kho???n Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 5, '2020-03-01 10:32:24', '2021-06-14 15:09:17', 0, NULL),
(55, 'vitamin', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin] [##nameItem##] [##amountItem##] ?????ng[End] l&agrave; vitamin, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:32:49', '2020-03-18 20:19:16', 0, NULL),
(56, 'Vitamin(c?? ng??y)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] c???a ng&agrave;y [##Date##][End] l&agrave; vitamin, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:33:19', '2020-03-18 20:17:48', 0, NULL),
(57, 'V?????t h???n m???c thanh to??n', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; ??i???u tr??? th???c t??? c???a ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n C&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a [##Text##] ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:33:44', '2020-03-19 17:47:51', 0, NULL),
(58, 'x??t nghi???m thai s???n', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##],&nbsp; [##amountItem##] ?????ng[End]&nbsp; l&agrave; x&eacute;t nghi???m thai s???n thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.8 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-01 10:34:05', '2020-03-10 14:17:48', 0, NULL),
(59, 'chi ph?? c?? nh??n', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng[End] l&agrave; chi ph&iacute; c&aacute; nh&acirc;n, thu???c kho???n Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span></li>\r\n</ul>', 1, 1, '2020-03-12 19:02:52', '2020-03-25 11:54:12', 0, NULL),
(60, 'Bi??n lai/ Phi???u thu kh??ng c?? h??a ????n VAT (c?? ng??y)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[##nameItem##] [##Text##] <span style=\"background-color: #ffffff;\">?????ng ng&agrave;y [##Text##]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">????n t&agrave;i ch&iacute;nh (b???n g???c),</span> ch&uacute;ng t&ocirc;i ch??? thanh to&aacute;n t<span style=\"background-color: #ffffff;\">???i ??a</span> 200.000 ?????ng, kh&ocirc;ng thanh to&aacute;n [##amountItem##] ?????ng. <span style=\"background-color: #ffffff;\">(Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c ch???ng t??? n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m/ ra vi???n, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i y&ecirc;u c???u b???i th?????ng n&agrave;y).</span></span></li>\r\n</ul>', 1, 1, '2020-03-17 19:16:11', '2020-11-17 14:46:16', 0, NULL),
(61, 'B???ng k?? kh??ng c?? h??a ????n VAT (c?? ng??y)', NULL, '<ul>\r\n<li><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##]&nbsp;[##amountItem##] <span style=\"background-color: #ffffff;\">?????ng[End] ng&agrave;y [##Text##]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">????n t&agrave;i ch&iacute;nh (b???n g???c)</span>. <span style=\"background-color: #ffffff;\">(Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c ch???ng t??? n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i y&ecirc;u c???u b???i th?????ng n&agrave;y).</span></span></li>\r\n</ul>', 1, 1, '2020-03-17 19:18:58', '2020-11-17 14:45:39', 0, NULL),
(62, 'B???ng k?? kh??ng c?? h??a ????n VAT', NULL, '<ul>\r\n<li><span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">[Begin][##nameItem##]&nbsp;[##amountItem##] <span style=\"background-color: #ffffff;\">?????ng[End]</span>&nbsp;kh<span style=\"background-color: #ffffff;\">&ocirc;ng</span> c<span style=\"background-color: #ffffff;\">&oacute;</span> h<span style=\"background-color: #ffffff;\">&oacute;a</span> <span style=\"background-color: #ffffff;\">????n t&agrave;i ch&iacute;nh (b???n g???c)</span>. <span style=\"background-color: #ffffff;\">(Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c ch???ng t??? n&ecirc;u tr&ecirc;n trong v&ograve;ng 01 n??m k??? t??? ng&agrave;y th??m kh&aacute;m, ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i y&ecirc;u c???u b???i th?????ng n&agrave;y).</span></span></li>\r\n</ul>', 1, 5, '2020-03-17 19:19:21', '2021-06-02 09:59:11', 0, NULL),
(63, 'kho??ng ch???t', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng [End]&nbsp;l&agrave; kho&aacute;ng ch???t, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-03-18 19:27:09', '2021-02-07 16:38:41', 0, NULL),
(64, 'kho??ng ch???t (c?? ng??y)', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng <span style=\"color: #626262; background-color: #ffffff;\">[End] c???a ng&agrave;y [##Date##]&nbsp;</span>l&agrave; kho&aacute;ng ch???t, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.6 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-18 19:27:54', '2021-06-14 15:08:01', 0, NULL),
(65, 'tho??i h??a (t??? ch???i x??t nghi???m, thu???c, ...)', NULL, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[Begin][##nameItem##] [##amountItem##] ?????ng[End] ph???c v??? ??i???u tr??? cho ch???n ??o&aacute;n \"[##Text##]\" l&agrave; h&igrave;nh th???c c???a b???nh tho&aacute;i h&oacute;a x????ng, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 3.4 c???a Quy t???c v&agrave; ??i???u kho???n b???o hi???m Ch??m s&oacute;c s???c kh???e. <br /></span></li>\r\n</ul>', 1, 5, '2020-03-18 19:47:21', '2021-06-14 15:05:43', 0, NULL),
(66, 'S??? d???ng ch???t k??ch th??ch (Group)', 27, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch???n ??o&aacute;n \"[##nameItem##]\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 9.1 c???a Quy t???c b???o hi???m ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-18 19:51:05', '2021-06-06 14:55:42', 0, NULL),
(67, 'Trang thi???t b??? y t???', 36, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng c&oacute; s??? c&ocirc;ng b??? [##Text##] l&agrave; trang thi???t b??? y t???, kh&ocirc;ng ph???i l&agrave; thu???c, kh&ocirc;ng thu???c ph???m vi b???o hi???m theo ??i???u 9.10 c???a Quy t???c b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-18 20:00:53', '2021-06-14 15:02:10', 0, NULL),
(68, 'r???i lo???n lo ??u (t??? ch???i ch???n ??o??n)- Group', 60, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; ??i???u tr??? v&agrave;o ng&agrave;y [##Date##] cho ch???n ??o&aacute;n \"[##nameItem##]\" [##amountItem##] ?????ng, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 11.12 c???a Quy t???c b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-18 20:28:59', '2021-06-14 15:04:31', 0, NULL),
(69, 'm??? ph???m (Group)', 36, '<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">[##nameItem##] [##amountItem##] ?????ng c&oacute; s??? c&ocirc;ng b??? [##Text##] l&agrave; m??? ph???m, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 9.10 c???a Quy t???c b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 5, '2020-03-23 12:43:53', '2021-06-14 14:59:03', 0, NULL),
(70, 'V?????t m???c Quy???n l???i ngo???i tr?? VIP', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n, C&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 5.000.000 ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span></li>\r\n</ul>', 1, 5, '2020-04-07 14:14:48', '2021-05-31 15:08:36', 0, NULL),
(71, 'V?????t m???c Quy???n l???i ngo???i tr?? Kim C????ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n, C&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 2.000.000 ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">.</span></li>\r\n</ul>', 1, 5, '2020-04-08 13:58:06', '2021-05-31 15:10:37', 0, NULL),
(72, 'V?????t quy???n l???i n???i tr??/ ngo???i tr??/ n??m', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; ph???u thu???t ( &nbsp;[##Text##]&nbsp; ?????ng) tuy nhi&ecirc;n c&ocirc;ng ty B???o hi???m Dai-ichi Life Vi???t Nam t??? ch???i chi tr??? ( [##amountItem##] ?????ng) do v?????t h???n m???c thanh to&aacute;n t???i ??a &nbsp;[##Text##]&nbsp;?????ng/ n??m ??i???u tr??? n???i tr&uacute;/ ngo???i tr&uacute; theo quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e.</span></li>\r\n</ul>', 1, 1, '2020-04-08 17:19:39', '2020-04-08 17:19:39', 0, NULL),
(73, 'Kh??ng c?? quy???n l???i n???i tr??/ ngo???i tr??/ ch??m s??c r??ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Chi ph&iacute; th??m kh&aacute;m&nbsp;[##amountItem##] ?????ng v&agrave;o ng&agrave;y [##Date##] ??i???u tr??? cho b???nh &nbsp;[##nameItem##] thu???c quy???n l???i ??i???u tr??? ngo???i tr&uacute;. Tuy nhi&ecirc;n, quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e c???a Qu&yacute; kh&aacute;ch / N??BH&nbsp;[##Text##] kh&ocirc;ng c&oacute; quy???n l???i ngo???i tr&uacute;.</span></li>\r\n</ul>', 1, 5, '2020-04-08 17:23:15', '2021-05-31 15:03:03', 0, NULL),
(74, 'V?????t m???c Quy???n l???i ngo???i tr?? B???ch Kim', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng. Tuy nhi&ecirc;n, C&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 1.500.000 ?????ng/ l???n kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:50:23', '2021-05-31 15:01:32', 0, NULL),
(75, 'V?????t m???c Quy???n l???i ngo???i tr?? V??ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##amountItem##] ?????ng. Tuy nhi&ecirc;n, c&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 1.200.000 ?????ng/ l???n th??m kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:54:44', '2021-05-31 15:02:40', 0, NULL),
(76, 'V?????t m???c Quy???n l???i ngo???i tr?? B???c', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y[##Date##] l&agrave; [##amountItem##] ?????ng. Tuy nhi&ecirc;n, c&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a&nbsp; 1.000.000 ?????ng/ l???n th??m kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:55:42', '2021-05-31 15:02:17', 0, NULL),
(77, 'V?????t m???c Quy???n l???i ngo???i tr?? ?????ng', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">T???ng chi ph&iacute; th???c t??? ??i???u tr??? ng&agrave;y [##Date##] l&agrave; [##amountItem##] ?????ng. Tuy nhi&ecirc;n, c&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng do v?????t h???n m???c thanh to&aacute;n t???i ??a 800.000 ?????ng/ l???n th??m kh&aacute;m v&agrave; ??i???u tr??? ngo???i tr&uacute; theo B???ng quy???n l???i b???o hi???m.</span></li>\r\n</ul>', 1, 5, '2020-04-09 12:56:42', '2021-05-31 15:01:53', 0, NULL),
(78, 'T??? vi???t nguy??n nh??n t??? ch???i', NULL, '<ul>\r\n<li>&nbsp;[##Text##]&nbsp;</li>\r\n</ul>', 1, 5, '2020-04-26 14:24:57', '2021-05-31 14:52:18', 0, NULL),
(79, 'Lo???i tr??? 1 n??m ?????u', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch???n ??o&aacute;n \"[##nameItem##]\" l&agrave; b???nh thu???c th???i h???n lo???i tr??? 365 ng&agrave;y k??? t??? ng&agrave;y quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e c???a Qu&yacute; kh&aacute;ch ???????c ch???p thu???n ([##Date##]</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">).</span></li>\r\n</ul>', 1, 5, '2020-06-11 21:00:52', '2021-05-31 14:51:57', 0, NULL),
(80, 'Nha khoa', NULL, '[<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">##nameItem##] [##amountItem##] ?????ng ??i???u tr??? cho ch???n ??o&aacute;n [ nameItem]&nbsp; thu???c quy???n l???i ch??m s&oacute;c r??ng, tuy nhi&ecirc;n, quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e c???a N??BH/ Qu&yacute; kh&aacute;ch kh&ocirc;ng c&oacute; quy???n l???i Ch??m s&oacute;c r??ng.</span>', 1, 5, '2020-11-09 20:55:10', '2021-05-31 14:51:03', 0, NULL),
(81, 't??? ch???i ti???n ??n', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">Su???t ??n [##amountItem##] ?????ng thu???c chi ph&iacute; c&aacute; nh&acirc;n, thu???c kho???n Qu&yacute; kh&aacute;ch thanh to&aacute;n.</span>', 1, 5, '2020-11-17 17:14:01', '2021-05-31 14:37:40', 0, NULL),
(82, 'TC ti???n gi?????ng v?????t ng??y ??i???u tr??? th???c t???', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">T???ng chi ph&iacute; ti???n gi?????ng t??? ng&agrave;y [##Date##] ?????n ng&agrave;y [##Date##] l&agrave; [##Text##] ?????ng/ [##Text##] ng&agrave;y (theo b???ng k&ecirc; chi ti???t). Tuy nhi&ecirc;n C&ocirc;ng ty B???o hi???m BSH t??? ch???i chi tr??? [##amountItem##] ?????ng/ [##Text##] ng&agrave;y do v?????t s??? l?????ng ng&agrave;y ??i???u tr??? th???c t??? l&agrave; &nbsp;[##Text##] ng&agrave;y.</span>', 1, 5, '2020-11-17 17:18:44', '2021-05-31 14:50:37', 0, NULL),
(83, 'h??a ????n thu???c v?????t qu?? 5 ng??y k?? toa', NULL, '<span style=\"font-size: 11pt; font-family: arial, helvetica, sans-serif;\">H&oacute;a ????n c???a chi ph&iacute; thu???c [##amountItem##] ?????ng ???????c xu???t v&agrave;o ng&agrave;y [##Date##], ??&atilde; v?????t qu&aacute; 5 ng&agrave;y k??? t??? ng&agrave;y k&ecirc; toa [##Date##]&nbsp;n&ecirc;n kh&ocirc;ng h???p l??? ????? thanh to&aacute;n, theo quy ?????nh c???a Th&ocirc;ng t?? 52/2017/TT-BYT do B??? Y T??? ban h&agrave;nh (??i???u 11_Th???i h???n ????n thu???c c&oacute; gi&aacute; tr??? mua, l??nh thu???c, kho???n 1: ????n thu???c c&oacute; gi&aacute; tr??? mua, l??nh thu???c trong th???i h???n t???i ??a 05 ng&agrave;y, k??? t??? ng&agrave;y k&ecirc; ????n thu???c).</span>', 1, 5, '2020-11-17 17:27:14', '2021-05-31 14:50:07', 0, NULL),
(84, 'L??u vi???n ch??a ????? 24 ti???ng', NULL, 'Th???i gian n???m vi???n c???a N??BH (Qu&yacute; kh&aacute;ch) l&agrave; t??? [...] gi??? [...] ph&uacute;t ng&agrave;y [...] ?????n [...] gi??? [...] ph&uacute;t ng&agrave;y [...]. T???ng c???ng th???i gian l??u vi???n l&agrave; [...] gi???, d?????i 24 gi??? n&ecirc;n kh&ocirc;ng th???a ?????nh ngh??a \"??i???u tr??? n???i tr&uacute;\". Do ??&oacute;, chi ph&iacute; ??i???u tr??? [...] ?????ng ???????c xem x&eacute;t v&agrave;o quy???n l???i ??i???u tr??? ngo???i tr&uacute;.', 1, 5, '2020-12-23 18:05:29', '2021-06-10 14:43:48', 0, NULL),
(85, 'Thi???u b???ng k?? chi ti???t', NULL, 'H&oacute;a ????n/ Phi???u thu/ Bi&ecirc;n lai[Begin][##amountItem##] ?????ng[End]kh&ocirc;ng c&oacute; b???ng k&ecirc; chi ti???t. Tr?????ng h???p Qu&yacute; kh&aacute;ch cung c???p ???????c b???ng k&ecirc; chi ti???t c&ograve;n thi???u ch&uacute;ng t&ocirc;i s??? xem x&eacute;t l???i chi ph&iacute; n&agrave;y.', 1, 5, '2020-12-23 19:53:22', '2021-05-31 14:48:20', 0, NULL),
(86, 'Copay RB (Group - ?????i v???i tr??? em d?????i 10 tu???i)', NULL, '<p>T???ng chi ph&iacute; ti???n gi?????ng l&agrave; [##Text##] ?????ng. Ch&uacute;ng t&ocirc;i thanh to&aacute;n [##Text##] ?????ng (70%), Qu&yacute; kh&aacute;ch ?????ng chi tr??? [##amountItem##] ?????ng (30%).<br /><br /></p>', 1, 5, '2021-02-17 12:27:00', '2021-06-10 14:50:25', 0, NULL),
(87, 'Copay C??c chi ph?? n???i tr?? kh??c (IMIS) - ?????i v???i tr??? em d?????i 10 tu???i)', NULL, 'T???ng chi ph&iacute; thu???c quy???n l???i \"C&aacute;c chi ph&iacute; n???i tr&uacute; kh&aacute;c\" l&agrave; [##Text##] ?????ng. Ch&uacute;ng t&ocirc;i thanh to&aacute;n [##Text##] ?????ng (70%), Qu&yacute; kh&aacute;ch ?????ng chi tr??? [##amountItem##] ?????ng (30%).', 1, 5, '2021-02-17 12:32:02', '2021-06-14 14:56:19', 0, NULL),
(88, 'Vitamin/kho??ng ch???t (Group)', 35, '<ul>\r\n<li>[##nameItem##] [##amountItem##] ?????ng l&agrave; vitamin/kho&aacute;ng ch???t, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo S???n ph???m b???o hi???m Ch??m s&oacute;c s???c kh???e.</li>\r\n</ul>', 1, 5, '2021-02-17 14:03:11', '2021-06-06 14:51:16', 0, NULL),
(89, 'Kh??ng li??n quan ?????n ch???n ??o??n', 16, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">&nbsp;[Begin][##nameItem##] [##amountItem##] ?????ng[End] l&agrave; c&aacute;c x&eacute;t nghi???m mang t&iacute;nh ki???m tra, t???m so&aacute;t, d??? ph&ograve;ng ph&aacute;t sinh trong c&ugrave;ng m???t l???n kh&aacute;m b???nh v&agrave; kh&ocirc;ng li&ecirc;n quan ?????n ch???n ??o&aacute;n b???nh, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 5.16 c???a Quy t???c b???o hi???m k???t h???p S???c kh???e to&agrave;n di???n.</span></li>\r\n</ul>', 1, 5, '2021-02-17 14:23:40', '2021-06-06 14:48:36', 0, NULL),
(90, '30 ng??y/90 ng??y ch???', NULL, '<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch???n ??o&aacute;n \"[##nameItem##]\" kh&ocirc;ng ???????c thanh to&aacute;n do l&agrave; b???nh thu???c th???i h???n lo???i tr??? trong 90 ng&agrave;y k??? t??? ng&agrave;y quy???n l???i b???o hi???m Ch??m s&oacute;c s???c kh???e c???a Qu&yacute; kh&aacute;ch ???????c ch???p thu???n ([##Date##]</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">).</span></li>\r\n</ul>', 1, 5, '2021-02-18 14:41:54', '2021-05-31 14:43:09', 0, NULL),
(91, 'Th???m m???', 20, 'Chi ph&iacute; [##amountItem##] ?????ng ??i???u tr??? cho ch???n ??o&aacute;n [##Text##], thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 5.20 c???a <span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Quy t???c b???o hi???m k???t h???p s???c kh???e to&agrave;n di???n.</span>', 1, 5, '2021-02-25 20:05:38', '2021-06-03 08:44:42', 0, NULL),
(92, '??i???u 5.4 (s??? d???ng ch???t c?? c???n, r?????u)', 4, '<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Ch???n ??o&aacute;n \"[##nameItem##]\" thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 5.4 c???a Quy t???c b???o hi???m k???t h???p s???c kh???e to&agrave;n di???n.</span>', 1, 5, '2021-03-01 13:51:24', '2021-06-03 08:43:27', 0, NULL),
(93, 'Ti??m ch???ng', 16, 'Chi ph&iacute; ti&ecirc;m ng???a [##amountItem##] ?????ng, thu???c ??i???u kho???n lo???i tr??? b???o hi???m theo ??i???u 5.16 c???a <span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">Quy t???c b???o hi???m k???t h???p s???c kh???e to&agrave;n di???n.</span>', 1, 5, '2021-03-07 19:17:15', '2021-06-03 08:42:23', 0, NULL),
(94, 'Ethanol', 4, '<span style=\"font-family: arial, helvetica, sans-serif; font-size: 11pt;\">K???t qu??? ?????nh l?????ng Ethanol (c???n) c???a Qu&yacute; kh&aacute;ch l&agrave; [##Text##] mg/dl ??&atilde; vi ph???m giao th&ocirc;ng (theo ??i???u 5 kho???n 6 c???a Lu???t Ph&ograve;ng, ch???ng t&aacute;c h???i r?????u bia). ?????ng th???i, th????ng t&iacute;ch c???a Qu&yacute; kh&aacute;ch l&agrave; do ??&atilde; b??? ???nh h?????ng c???a ch???t c&oacute; c???n, thu???c ??i???u kho???n lo???i tr??? b???o hi???m ??i???u 5.4 c???a Quy t???c b???o hi???m k???t h???p s???c kh???e to&agrave;n di???n.</span>', 1, 5, '2021-04-05 17:20:39', '2021-06-03 08:40:22', 0, NULL);

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
(1, '5.1(IND)', '??i???u tr??? ngo&agrave;i ph???m vi ?????a l&yacute; ???????c quy ?????nh (Tr??? khi tham gia ??i???u kho???n b??? sung BS 008)', 0, 5, 5, NULL, '2021-06-02 14:11:37', '2021-06-03 08:38:44'),
(2, '5.2 (IND)', 'H&agrave;nh ?????ng c??? &yacute; l&agrave; nguy&ecirc;n nh&acirc;n d???n ?????n s??? ki???n b???o hi???m, g&acirc;y thi???t h???i c???a Ng?????i ???????c b???o hi???m/ Ng?????i th??? h?????ng v&agrave; Ng?????i k??? th???a h???p ph&aacute;p c???a Ng?????i ???????c b???o hi???m. Trong tr?????ng h???p m???t ho???c m???t s??? ng?????i th??? h?????ng c??? &yacute; g&acirc;y ra c&aacute;i ch???t hay th????ng t???t v??nh vi???n cho Ng?????i ???????c b???o hi???m, doanh nghi???p b???o hi???m v???n ph???i tr??? ti???n b???o hi???m cho nh???ng ng?????i th??? h?????ng kh&aacute;c theo th???a thu???n trong h???p ?????ng b???o hi???m;', 0, 5, 5, NULL, '2021-06-02 14:16:30', '2021-06-03 08:38:27'),
(3, '5.3 (IND)', 'Ng?????i ???????c b???o hi???m t??? 14 tu???i tr??? l&ecirc;n vi ph???m ph&aacute;p lu???t ph???i th??? &aacute;n h&igrave;nh s???; vi ph???m ph&aacute;p lu???t v??? giao th&ocirc;ng;', 0, 5, 5, NULL, '2021-06-02 14:20:47', '2021-06-03 08:38:10'),
(4, '5.4 (IND)', 'Ng?????i ???????c b???o hi???m b??? ???nh h?????ng b???i r?????u, bia ho???c c&aacute;c ch???t k&iacute;ch th&iacute;ch, c&aacute;c ch???t g&acirc;y nghi???n kh&aacute;c l&agrave; nguy&ecirc;n nh&acirc;n d???n ?????n tai n???n ho???c ???m b???nh theo k???t lu???n c???a b&aacute;c s???/ c?? quan c&oacute; th???m quy???n;', 0, 5, 5, NULL, '2021-06-02 14:24:10', '2021-06-03 08:37:54'),
(5, '5.5 (IND)', 'C&aacute;c h&agrave;nh ?????ng ??&aacute;nh nhau c???a Ng?????i ???????c b???o hi???m, tr??? khi ch???ng minh ???????c h&agrave;nh ?????ng ??&aacute;nh nhau ??&oacute; ch??? v???i m???c ??&iacute;ch t??? v???;', 0, 5, 5, NULL, '2021-06-02 14:28:41', '2021-06-03 08:37:36'),
(6, '5.6 (IND)', 'H???u qu??? c???a tai n???n d???n ?????n ph&aacute;t sinh chi ph&iacute; y t??? x???y ra ngo&agrave;i th???i h???n b???o hi???m (Tr??? tr?????ng h???p tham gia b???o hi???m t&aacute;i t???c li&ecirc;n t???c)', 0, 5, 5, NULL, '2021-06-02 14:30:39', '2021-06-03 08:33:06'),
(7, '5.7 (IND)', '??i???u tr??? y t??? ho???c s??? d???ng thu???c kh&ocirc;ng c&oacute; ????n thu???c v&agrave; s??? ch??? d???n c???a b&aacute;c s??; c&aacute;c lo???i thu???c ??&ocirc;ng y kh&ocirc;ng r&otilde; ngu???n g???c, c&aacute;c ph&ograve;ng kh&aacute;m, ch???n tr??? ??&ocirc;ng y t?? nh&acirc;n. ??i???u tr??? t???i c?? s??? y t??? kh&ocirc;ng ??&uacute;ng theo ?????nh ngh??a v&agrave; bao g???m c??? vi???c ch??? ?????nh c???a b&aacute;c s??? c?? s??? y t??? n&agrave;y ?????i v???i mua thu???c hay x&eacute;t nghi???m, ??i???u tr??? t???i c?? s??? y t???, nh&agrave; thu???c h???p ph&aacute;p. Vi???c ??i???u tr??? th??? nghi???m, ??i???u tr??? kh&ocirc;ng ???????c khoa h???c c&ocirc;ng nh???n v&agrave; c&aacute;c ??i???u tr??? mi???n ph&iacute; t???i b???t k??? b???nh vi???n n&agrave;o.', 0, 5, 5, NULL, '2021-06-02 14:32:32', '2021-06-03 08:37:21'),
(8, '5.8 (IND)', 'Tham gia c&aacute;c ho???t ?????ng h&agrave;ng kh&ocirc;ng (tr??? khi v???i t?? c&aacute;ch l&agrave; h&agrave;nh kh&aacute;ch), tham gia c&aacute;c cu???c di???n t???p hu???n luy???n qu&acirc;n s???, tham gia chi???n ?????u c???a l???c l?????ng v?? trang;', 0, 5, 5, NULL, '2021-06-02 14:38:55', '2021-06-03 08:37:00'),
(9, '5.9 (IND)', 'S??? ki???n b???o hi???m ph&aacute;t sinh do nh???ng r???i ro mang t&iacute;nh ch???t th???m h???a nh?? ?????ng ?????t , n&uacute;i l???a, s&oacute;ng th???n, nhi???m ph&oacute;ng x???, d???ch b???nh theo c&ocirc;ng b??? c???a c?? quan c&oacute; th???m quy???n (bao g???m SARS, H5N1, Ebola).', 0, 5, 5, NULL, '2021-06-02 14:41:14', '2021-06-03 08:36:44'),
(10, '5.10 (IND)', 'S??? ki???n b???o hi???m ph&aacute;t sinh do chi???n tranh, n???i chi???n, ??&igrave;nh c&ocirc;ng, kh???ng b???, b???o ?????ng, d&acirc;n bi???n, phi???n lo???n, c&aacute;c ho???t ?????ng d&acirc;n s??? ho???c h&agrave;nh ?????ng c???a b???t k??? ng?????i c???m ?????u c???a t??? ch???c n&agrave;o nh???m l???t ?????, ??e d???a ch&iacute;nh quy???n, ki???m so&aacute;t b???ng v?? l???c.', 0, 5, 5, NULL, '2021-06-02 14:45:18', '2021-06-03 08:36:15'),
(11, '5.11 (IND)', 'S??? ki???n b???o hi???m ph&aacute;t sinh b???i N??BH tham gia t???p luy???n ho???c tham gia thi ?????u c&aacute;c m&ocirc;n th??? thao chuy&ecirc;n nghi???p, th??? thao nguy hi???m, ho???c b???t k??? ho???t ?????ng ??ua n&agrave;o.', 0, 5, 5, NULL, '2021-06-02 14:50:17', '2021-06-03 08:35:59'),
(12, '5.12 (IND)', 'B???nh lao c&aacute;c lo???i, b???nh s???t r&eacute;t, b???nh ngh??? nghi???p, b???nh phong. C&aacute;c b???nh suy t???y, b???ch c???u, ??i???u tr??? l???c m&aacute;u, ch???y th???n nh&acirc;n t???o v&agrave; h???u qu??? hay bi???n ch???ng c???a c&aacute;c b???nh n&agrave;y. Li???u ph&aacute;p thay th??? hooc-m&ocirc;n trong th???i k??? sinh tr?????ng ho???c ti???n m&atilde;n kinh hay m&atilde;n kinh ??? ph??? n???.', 0, 5, 5, NULL, '2021-06-02 14:52:01', '2021-06-03 08:35:40'),
(13, '5.13 (IND)', 'C&aacute;c chi ph&iacute; v&agrave; ??i???u tr??? cho ?????i t?????ng kh&ocirc;ng ????? ??i???u ki???n tham gia b???o hi???m. Nh???ng ng?????i ??ang ??i???u tr??? th????ng t???t ho???c b???nh t???t, ng?????i b??? th????ng t???t v??nh vi???n tr&ecirc;n 80% t???i th???i ??i???m tham gia ho???c th???i ??i???m h???p ?????ng b???o hi???m b???t ?????u c&oacute; hi???u l???c.', 0, 5, 5, NULL, '2021-06-02 14:56:02', '2021-06-03 08:35:23'),
(14, '5.14 (IND)', '??i???u tr??? c&aacute;c b???nh l&acirc;y lan qua ???????ng t&igrave;nh d???c nh?? b???nh giang mai, b???nh l???u, r???i lo???n ch???c n??ng sinh d???c hay ??i???u tr??? sinh l&yacute;, ???m ??au li&ecirc;n quan ?????n c&aacute;c b???nh thu???c h???i ch???ng suy gi???m mi???n d???ch (HIV) bao g???m c&aacute;c h???i ch???ng li&ecirc;n quan ?????n AIDS v&agrave;/ho???c b???t c??? bi???n ch???ng ho???c bi???n ?????i n&agrave;o, ho???c b???nh l&acirc;y truy???n qua ???????ng t&igrave;nh d???c hay b???t c??? h???i ch???ng li&ecirc;n quan ?????n AIDS ho???c c&aacute;c b???nh li&ecirc;n quan ?????n AIDS kh&aacute;c.', 0, 5, 5, NULL, '2021-06-03 02:26:43', '2021-06-03 08:35:02'),
(15, '5.15 (IND)', '??i???u tr??? v&agrave;/ho???c ph???u thu???t cho c&aacute;c d??? t???t/ khuy???t t???t b???m sinh, b???nh d??? d???ng v??? gen v&agrave; m???i bi???n ch???ng, h???u qu??? li&ecirc;n quan ?????n nh???ng b???nh n&agrave;y, nh???ng ch??? ?????nh ph???u thu???t, nh???ng ch??? ?????nh c&oacute; t??? tr?????c ng&agrave;y b???o hi???m; bao g???m nh???ng danh m???c li???t k&ecirc; d?????i ??&acirc;y v&agrave;/ho???c c&aacute;c danh m???c ???????c li???t k&ecirc; trong S???a ?????i b??? sung nh?? l&agrave; m???t b??? ph???n ??&iacute;nh k&egrave;m c???a Quy t???c/H???p ?????ng b???o hi???m nh?? b???nh tim b???m sinh, b???nh Down, h??? m&ocirc;i, h??? h&agrave;m ???ch, t&iacute;ch n?????c trong n&atilde;o, h???p h???u m&ocirc;n, h???p bao quy ?????u, v???o v&aacute;ch ng??n b???m sinh.', 0, 5, 5, NULL, '2021-06-03 02:36:35', '2021-06-03 08:34:46'),
(16, '5.16 (IND)', 'Ki???m tra s???c kh???e ?????nh k??? (n???i tr&uacute; hay ngo???i tr&uacute;); ki???m tra s???c kh???e t???ng qu&aacute;t, t???m so&aacute;t ung th?? k???t qu??? b&igrave;nh th?????ng, gi&aacute;m ?????nh y khoa ho???c t?? v???n y t??? kh&ocirc;ng li&ecirc;n quan ?????n ??i???u tr??? ???m ??au ho???c th????ng t???t, bao g???m ki???m tra ph??? khoa/nam khoa; T???t c??? c&aacute;c h&igrave;nh th???c ti&ecirc;m ch???ng , v???c-xin, thu???c ph&ograve;ng ng???a (tr??? tr?????ng h???p ti&ecirc;m v???c-xin sau khi b??? tai n???n hay s&uacute;c v???t, c&ocirc;n tr&ugrave;ng c???n)', 0, 5, 5, NULL, '2021-06-03 02:50:14', '2021-06-03 08:34:29'),
(17, '5.17 (IND)', 'Ki???m tra th??? l???c, kh&ocirc; m???t, m???i m???t ??i???u ti???t, ?????c th???y tinh th???, th&iacute;nh gi&aacute;c th&ocirc;ng th?????ng, l&atilde;o h&oacute;a, tho&aacute;i h&oacute;a , ??i???u tr??? suy bi???n t??? nhi&ecirc;n/kh&ocirc;ng ph???i v&igrave; l&yacute; do b???nh l&yacute; c???a vi???c suy gi???m th&iacute;nh th??? l???c, bao g???m nh???ng danh m???c li???t k&ecirc; d?????i ??&acirc;y v&agrave;/ho???c c&aacute;c danh m???c kh&aacute;c ???????c li???t k&ecirc; trong S???a ?????i nh?? l&agrave; m???t b??? ph???n ??&iacute;nh k&egrave;m c???a Quy t???c/H???p ?????ng b???o hi???m nh?? c&aacute;c t???t kh&uacute;c x??? nh?? c???n th???, vi???n th??? v&agrave; lo???n th??? v&agrave; b???t k??? ph???u thu???t ????? ph???c h???i hi???u ch???nh n&agrave;o ?????i v???i c&aacute;c khuy???t t???t tho&aacute;i h&oacute;a th&iacute;nh gi&aacute;c v&agrave; th??? gi&aacute;c;', 0, 5, 5, NULL, '2021-06-03 03:01:21', '2021-06-03 08:34:13'),
(18, '5.18 (IND)', '??i???u tr??? thai s???n (Tr??? khi Ng?????i ???????c b???o hi???m tham gia ??i???u kho???n b??? sung BS 003 v&agrave; Ng?????i ???????c b???o hi???m t??? 16 tu???i tr??? l&ecirc;n);', 0, 5, 5, NULL, '2021-06-03 03:35:16', '2021-06-03 08:33:56'),
(19, '5.19 (IND)', 'C&aacute;c chi ph&iacute; ??i???u tr??? ho???c ph???u thu???t theo y&ecirc;u c???u c???a Ng?????i ???????c b???o hi???m . Kh&aacute;m v&agrave; x&eacute;t nghi???m kh&ocirc;ng c&oacute; k???t lu???n ch???n ??o&aacute;n b???nh ho???c k???t lu???n kh&ocirc;ng c&oacute; b???nh c???n ??i???u tr??? c???a b&aacute;c s??;', 0, 5, 5, NULL, '2021-06-03 04:00:08', '2021-06-03 08:33:42'),
(20, '5.20 (IND)', 'C&aacute;c h&igrave;nh th???c th???m m???, ph???u thu???t th???m m???, ch???nh h&igrave;nh th???m m???. ??i???u tr??? ki???m so&aacute;t tr???ng l?????ng c?? th??? (t??ng ho???c gi???m c&acirc;n); suy dinh d?????ng, c&ograve;i x????ng, b&eacute;o ph&igrave;. C&aacute;c ch???t b??? sung ho???c thay th??? ph???c v??? cho vi???c ??n ki&ecirc;ng c&oacute; s???n trong t??? nhi&ecirc;n v&agrave; c&oacute; th??? ???????c mua m&agrave; kh&ocirc;ng c???n ch??? ?????nh, bao g???m nh???ng danh m???c li???t k&ecirc; t???i ??&acirc;y v&agrave;/ho???c c&aacute;c danh m???c kh&aacute;c t????ng t??? nh?? v???y nh?? c&aacute;c lo???i vitamin, thu???c b???, kho&aacute;ng ch???t v&agrave; c&aacute;c ch???t h???u c?? th???c ph???m ch???c n??ng (glucosamine, omega3, herblife, amkye), thu???c t??ng c?????ng mi???n d???ch c?? th???, c&aacute;c lo???i ch??? ph???m y t???;', 0, 5, 5, NULL, '2021-06-03 04:03:27', '2021-06-03 08:33:22'),
(21, '5.21 (IND)', 'Th???c hi???n c&aacute;c bi???n ph&aacute;p k??? ho???ch h&oacute;a gia ??&igrave;nh, h???u qu??? c???a ph&aacute; thai do nguy&ecirc;n nh&acirc;n t&acirc;m l&yacute; hay x&atilde; h???i, ??i???u tr??? v&ocirc; sinh nam/n???, th??? tinh nh&acirc;n t???o, ??i???u tr??? b???t l???c, li???t d????ng ho???c thay ?????i gi???i t&iacute;nh v&agrave; b???t k??? h???u qu??? hay bi???n ch???ng n&agrave;o t??? nh???ng ??i???u tr??? tr&ecirc;n;', 0, 5, 5, NULL, '2021-06-03 07:46:47', '2021-06-03 07:47:48'),
(22, '5.22 (IND)', '??i???u tr??? b???nh r???i lo???n t??m th???n v?? h??nh vi, b???nh t??m th???n/lo???n th???n kinh ho???c b???nh ch???m ph??t tri???n, b???nh r???i lo???n thi???u t???p trung, b???nh t??? k???. ??i???u tr??? r???i lo???n gi???c ng???, m???t ng???, ng??? ng??y kh??ng r?? nguy??n nh??n, suy nh?????c v?? h???i ch???ng c??ng th???ng (stress) ho??? c??c b???nh c?? li??n quan t??? h???i ch???ng ????;', 0, 5, 5, NULL, '2021-06-03 08:09:49', '2021-06-03 08:09:49'),
(23, '5.23 (IND)', 'Ng??? ?????c th???c ??n, ????? u???ng ho???c h??t ph???i h??i ?????c, kh?? ?????c, ch???t ?????c (Tr??? khi Ng?????i ???????c b???o hi???m tham gia ??i???u kho???n b??? sung BS 004);', 0, 5, 5, NULL, '2021-06-03 08:12:17', '2021-06-03 08:12:17'),
(24, '5.24 (IND)', 'B???nh c?? s???n/ Th????ng t???t c?? s???n , b???nh ?????c bi???t nh?? ?????nh ngh??a trong quy t???c n??y. ??i???m lo???i tr??? s??? kh??ng ??p d???ng n???u Ng?????i ???????c b???o hi???m tham gia li??n t???c t??? n??m th??? hai v?? c??c H???p ?????ng tham gia t??? 50 ng?????i tr??? l??n;', 0, 5, 5, NULL, '2021-06-03 08:17:55', '2021-06-03 08:17:55'),
(25, '5.25 (IND)', 'V???t t?? y t??? thay th??? ???????c quy ?????nh t???i Ph??? l???c 03- tr??? khi c?? th???a thu???n kh??c.', 0, 5, 5, NULL, '2021-06-03 08:19:05', '2021-06-03 08:19:05'),
(26, '5.26 (IND)', 'Nh???ng s???n ph???m theo quy ?????nh c???a B??? Y T??? ???????c ????ng k?? d?????i d???ng trang thi???t b??? y t???; v???t t?? thay th???, c???y gh??p nh??n t???o; c??c thi???t b??? ho???c b??? ph???n gi??? thay th??? ch???c n??ng sinh l?? c???a b??? ph???n c?? th???.', 0, 5, 5, NULL, '2021-06-03 08:21:53', '2021-06-03 08:21:53'),
(27, '9.1 (Group)', 'Ng?????i ???????c b???o hi???m b??? t&aacute;c ?????ng b???i ch???t k&iacute;ch th&iacute;ch, ch???t g&acirc;y nghi???n, thu???c cai nghi???n, thu???c kh&ocirc;ng ???????c b&aacute;c s?? chuy&ecirc;n m&ocirc;n k&ecirc; ????n thu???c, r?????u, bia ho???c c&aacute;c ch???t c&oacute; c???n v&agrave; vi???c ???nh h?????ng n&agrave;y l&agrave; nguy&ecirc;n nh&acirc;n tr???c ti???p g&acirc;y ra tai n???n v&agrave; c&aacute;c h???u qu??? li&ecirc;n quan kh&aacute;c.', 0, 5, 5, NULL, '2021-06-05 15:01:10', '2021-06-05 15:02:47'),
(28, '9.2 (Group)', 'Chi???n tranh ho???c c??c ho???t ?????ng th?? ?????ch k??? c??? c?? tuy??n chi???n hay kh??ng, kh???ng b???, t??c nh??n h???t nh??n ho???c do ch???t ph??ng x???.', 0, 5, 5, NULL, '2021-06-05 15:04:37', '2021-06-05 15:04:37'),
(29, '9.3 (Group)', '?????ng ?????t, n??i l???a, s??ng th???n, d???ch b???nh t???i c??c khu v???c ?????a l?? c??? th??? ???????c c??ng b??? b???i c?? quan c?? th???m quy???n n?????c s??? t???i, T??? ch???c y t??? th??? gi???i.', 0, 5, 5, NULL, '2021-06-05 15:06:30', '2021-06-05 15:06:30'),
(30, '9.4 (Group)', 'D???ch v??? ??i???u tr??? t???i nh?? (kh??ng bao g???m chi ph?? y t?? ch??m s??c t???i nh??) ho???c t???i C?? s??? kh??m ch???a b???nh ??i???u tr??? b???ng th???y l???c hay c??c ph????ng ph??p thi??n nhi??n, spa, ??i???u d?????ng, an d?????ng, ho???c t???i nh???ng n??i kh??ng ph???i l?? C?? s??? kh??m ch???a b???nh.', 0, 5, 5, NULL, '2021-06-05 15:09:09', '2021-06-05 15:09:09'),
(31, '9.5 (Group)', 'Nh???ng ch??? ?????nh ph???u thu???t c&oacute; t??? tr?????c ng&agrave;y b???o hi???m, ??i???u tr??? v&agrave; ph???u thu???t theo y&ecirc;u c???u c???a Ng?????i ???????c b???o hi???m kh&ocirc;ng li&ecirc;n quan ?????n ch??? ?????nh ph???u thu???t c???n thi???t theo quy ?????nh chuy&ecirc;n m&ocirc;n.', 0, 5, 5, NULL, '2021-06-05 15:11:17', '2021-06-05 15:11:32'),
(32, '9.6 (Group)', 'C??c ch???n th????ng do c??c t??c nh??n h???t nh??n g??y ra ho???c do b??? nhi???m ph??ng x???.', 0, 5, 5, NULL, '2021-06-05 15:40:56', '2021-06-05 15:40:56'),
(33, '9.7 (Group)', '??i???u tr??? y t??? kh??ng c?? ch??? ?????nh s??? d???ng thu???c c???a b??c s?? tr??n \"????n thu???c\" hay \"s??? kh??m b???nh - ch???a b???nh\", thu???c kh??ng ???????c B??? Y t??? Vi???t Nam cho ph??p l??u h??nh, ??i???u tr??? kh??ng ???????c khoa h???c c??ng nh???n, ??i???u tr??? th??? nghi???m, v???c-xin, thu???c c?? t??nh ch???t ng??c ng???a , d??? ph??ng bao g???m thu???c do b??c s?? k?? ????n, thu???c k?? ????n theo y??u c???u c???a ng?????i b???nh.', 0, 5, 5, NULL, '2021-06-05 15:45:02', '2021-06-05 15:45:02'),
(34, '9.8 (Group)', 'T??? vong do c??c s??? c??? sai s??t y khoa trong qu?? tr??nh ??i???u tr??? b???nh v?? can thi???p thai s???n v?? ??i???u tr??? kh???c ph???c h???u qu??? c???a ch??ng.', 0, 5, 5, NULL, '2021-06-05 15:46:38', '2021-06-05 15:46:38'),
(35, '9.9 (Group)', 'Thu???c h??? tr??? ??i???u tr??? (lo???i tr??? thu???c n&agrave;y l&agrave; thu???c ??i???u tr??? ch&iacute;nh c&oacute; ch??? ?????nh c???a B&aacute;c s?? ??i???u tr???), th???c ph???m ch???c n??ng, th???c ph???m b??? sung vi ch???t dinh d?????ng, th???c ph???m b??? sung, th???c ph???m b???o v??? s???c kh???e, s???n ph???m dinh d?????ng y h???c, c&aacute;c lo???i vitamin t??ng c?????ng s???c kh???e.', 0, 5, 5, NULL, '2021-06-05 15:49:45', '2021-06-05 15:50:05'),
(36, '9.10 (Group)', 'C??c s???n ph???m h??? tr??? ??i???u tr??? ????ng k?? d?????i d???ng m??? ph???m, thi???t b??? y t???.', 0, 5, 5, NULL, '2021-06-05 15:51:10', '2021-06-05 15:51:10'),
(37, '9.11 (Group)', 'C&aacute;c chi ph&iacute; cung c???p, b???o d?????ng hay l???p r&aacute;p s???a ch???a c&aacute;c thi???t b??? ho???c b??? ph???n gi???, d???ng c??? ch???nh h&igrave;nh, c&aacute;c thi???t b??? tr??? th&iacute;nh ho???c th??? l???c, n???ng hay xe l??n, c&aacute;c d???ng c??? ph???c v??? c&aacute; nh&acirc;n Ng?????i ???????c b???o hi???m ????? ch???n ??o&aacute;n ho???c h??? tr??? ??i???u tr??? y t??? (m&aacute;y kh&iacute; dung, m&aacute;y t???o nh???p tim, holter... v&agrave; c&aacute;c d???ng c??? kh&aacute;c), ngo???i tr??? c&aacute;c d???ng c???, thi???t b??? c???y gh&eacute;p v&agrave;o b&ecirc;n trong c?? th??? ????? duy tr&igrave; s??? s???ng nh?? quy ?????nh trong quy???n l???i chi ph&iacute; ph???u thu???t.', 0, 5, 5, NULL, '2021-06-05 15:54:25', '2021-06-05 15:57:19'),
(38, '9.12 (Group)', 'Kh??m v?? c??c x??t nghi???m kh??ng c?? k???t lu???n c???a B??c s?? ho???c c?? k???t lu???n c???a B??c s?? ??i???u tr??? nh??ng kh??ng c?? ch??? ?????nh ??i???u tr??? b???nh c??? th???.', 0, 5, 5, NULL, '2021-06-06 06:42:25', '2021-06-06 06:42:25'),
(39, '9.13 (Group)', 'C??c chi ph?? ??i???u tr??? b???t h???p l?? m?? kh??ng tu??n theo quy tr??nh ??i???u tr??? v?? c??c ch??? ?????nh c???a b??c s?? ho???c kh??ng c???n thi???t v??? m???t y t???.', 0, 5, 5, NULL, '2021-06-06 06:43:59', '2021-06-06 06:43:59'),
(40, '10.1 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'M???t t??ch.', 0, 5, 5, NULL, '2021-06-06 06:51:38', '2021-06-06 06:51:38'),
(41, '10.2 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'H??nh ?????ng c??? ?? g??y t???n th????ng th??n th??? c???a Ng?????i ???????c b???o hi???m ho???c Ng?????i th??? h?????ng c???a Ng?????i ???????c b???o hi???m. Trong tr?????ng h???p m???t ho???c m???t s??? ng?????i  th??? h?????ng c??? ?? g??y ra c??i ch???t hay th????ng t???t v??nh vi???n cho Ng?????i ???????c b???o hi???m. BSH v???n tr??? ti???n cho nh???ng ng?????i th??? h?????ng kh??c theo th???a thu???n trong h???p ?????ng b???o hi???m.', 0, 5, 5, NULL, '2021-06-06 06:55:05', '2021-06-06 06:55:05'),
(42, '10.3 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'Ng?????i ???????c b???o hi???m vi ph???m ph??p Lu???t ph???i th??? ??n h??nh s??? v?? c??? ?? vi ph???m Lu???t giao th??ng ???????ng b??? hi???n h??nh, vi ph???m n???i quy, quy ?????nh c???a ch??nh quy???n ?????a ph????ng ho???c c??c t??? ch???c x?? h???i v?? l?? nguy??n nh??n tr???c ti???p c???a tai n???n.', 0, 5, 5, NULL, '2021-06-06 07:04:16', '2021-06-06 07:04:16'),
(43, '10.4 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'Ng?????i ??????? b???o hi???m tham gia c??c Th??? thao chuy??n nghi???p ho???c c??c ho???t ?????ng Th??? thao nguy hi???m, b???t k??? m???t ho???t ?????ng ??ua n??o hay c??c ho???t ?????ng c???a l???c l?????ng v?? trang.', 0, 5, 5, NULL, '2021-06-06 07:06:09', '2021-06-06 07:06:09'),
(44, '10.5 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', '??i???u khi???n ho???c thi h??nh c??ng v??? tr??n m??y bay, tr??? khi l?? h??nh kh??ch mua v?? tr??n m??y bay c???a h??ng h??ng kh??ng ch??? kh??ch ho???c thu?? chuy???n ho???t ?????ng.', 0, 5, 5, NULL, '2021-06-06 07:07:50', '2021-06-06 07:07:50'),
(45, '10.6 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'Ng?????i ???????c b???o hi???m ??i???u khi???n ph????ng ti???n giao th??ng trong t??nh tr???ng c?? n???ng ????? c???n v?????t qu?? quy ?????nh c???a Lu???t giao th??ng l?? nguy??n nh??n tr???c ti???p d???n ?????n ng?????i ???????c b???o hi???m t??? vong ho???c th????ng t???t do tai n???n.', 0, 5, 5, NULL, '2021-06-06 07:10:02', '2021-06-06 07:10:02'),
(46, '10.7 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'B???t k??? h??nh ?????ng c??? ?? ph???m ph??p ho???c ???u ????? c???a Ng?????i ???????c b???o hi???m, tr??? khi l?? h??nh ?????ng c???u ng?????i, b???o v??? t??i s???n h???c t??? v??? ch??nh ????ng.', 0, 5, 5, NULL, '2021-06-06 07:12:24', '2021-06-06 07:12:24'),
(47, '10.8 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'Tai n???n l?? h???u qu??? ph??t sinh t??? vi???c ??n, u???ng, h??t ph???i h??i ?????c, kh?? ?????c, ch???t ?????c.', 0, 5, 5, NULL, '2021-06-06 07:13:33', '2021-06-06 07:13:33'),
(48, '10.9 (Group - ??i???m lo???i tr??? ?????i v???i b???o hi???m tai n???n)', 'Tai n???n l?? h???u qu??? c???a c??c T??nh tr???ng c?? s???n, b???nh t??m th???n, r???i lo???n t??m l??, suy nh?????c th???n kinh/Suy nh?????c c?? th??? kh??ng c?? nguy??n nh??n b???nh l??, m???t ng??? bao g???m r???i lo???n gi???c ng???, m???t m???i, m???i m???t ??i???u ti???t, c??ng th???ng th???n kinh, ch???ng qu??n hay suy gi???m tr?? nh??? theo k???t lu???n c???a B??c s??.', 0, 5, 5, NULL, '2021-06-06 07:18:07', '2021-06-06 07:18:07'),
(49, '11.1 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c d???ch v??? ??i??u tr??? ngo???i tr??. ??i???u tr??? n??y s??? kh??ng ??p d???ng n???u Ng?????i ???????c b???o hi???m tham gia quy???n l???i \"??i???u tr??? ngo???i tr??\".', 0, 5, 5, NULL, '2021-06-06 07:21:38', '2021-06-06 07:21:38'),
(50, '11.2 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'Ki???m tra s???c kh???e ?????nh k??? (tr??? khi c?? th???a thu???n kh??c) bao g???m ki???m tra s???c kh???e t???ng qu??t, kh??m ki???m tra ph??? khoa - nam khoa, kh??m thai ?????nh k???.', 0, 5, 5, NULL, '2021-06-06 08:24:18', '2021-06-06 08:24:18'),
(51, '11.3 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'Ki???m tra s???c kh???e tr?????c khi k???t h??n, ??i du l???ch ho???c ??i l??m.', 0, 5, 5, NULL, '2021-06-06 08:25:11', '2021-06-06 08:25:11'),
(52, '11.4 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'Kh??m v?? x??t nghi???m kh??ng c?? k???t lu???n c???a b??c s??, n???m vi???n ho???c t?? v???n y t??? ch??? v???i m???c ????ch ki???m tra, t???m so??t.', 0, 5, 5, NULL, '2021-06-06 08:26:32', '2021-06-06 08:26:32'),
(53, '11.5 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c x??t nghi???m theo y??u c???u ho???c ch??? ?????nh c???a b??c s?? mang t??nh ch???t ki???m tra, t???m so??t, d??? ph??ng ph??t sinh trong c??ng m???t l??n kh??m b???nh kh??ng li??n quan ?????n ch???n ??o??n v?? ??i???u tr??? b???nh ????.', 0, 5, 5, NULL, '2021-06-06 08:28:42', '2021-06-06 08:28:42'),
(54, '11.6 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'Ki???m tra m???t th??ng th?????ng, ki???m tra th??nh gi??c th??ng th?????ng, c??c khuy???t t???t tho??i h??a t??? nhi??n c???a m???t (bao g???m c??n, vi???n, lo???n th???), b???t k??? ph???u thu???t n??o ????? hi???u ch???nh c??c khuy???t t???t tho??i h??a th??nh gi??c v?? th??? gi??c.', 0, 5, 5, NULL, '2021-06-06 08:31:59', '2021-06-06 08:31:59'),
(55, '11.7 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c h??nh th???c ??i???u tr??? v??? r??ng v?? li??n quan ?????n r??ng (n?????u/l???i). ??i???m lo???i tr??? n??y kh??ng ??p d???ng n???u Ng?????i ???????c b???o hi???m tha gia quy???n l???i\" ??i???u tr??? ngo???i tr??\" ho???c \"??i???u tr??? Nha khoa\".', 0, 5, 5, NULL, '2021-06-06 08:34:06', '2021-06-06 08:34:06'),
(56, '11.8 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'K??? ho???ch h??a gia ????nh, thay ?????i gi???i t??nh, r???i lo???n ch???c n??ng sinh d???c, tho??i h??a t??? nhi??n (li???u ph??p hocmo thay th??? th???i k??? ti???n m??n kinh, ti???n m??n d???c, m??n d???c) hay b???t c??? h???u qu??? ho???c bi???n ch???ng n??o c???a ??i???u tr??? tr??n, ??i???u tr??? b???t l???c t??nh d???c.', 0, 5, 5, NULL, '2021-06-06 08:41:04', '2021-06-06 08:41:04'),
(57, '11.9 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c ph????ng ph??p ??i???u tr??? v?? sinh, h??? tr??? sinh s???n, gi???m thai sau h??? tr??? sinh s???n, ch??m s??c thai s???n th???i k??? ?????u cho ng?????i c?? thai b???ng h??? tr??? sinh s???n.', 0, 5, 5, NULL, '2021-06-06 08:42:55', '2021-06-06 08:42:55'),
(58, '11.10 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c b???nh l??y truy???n qua ???????ng t??nh d???c, b???nh phong, giang mai, l???u, AIDS v?? c??c h???i ch???ng li??n quan, b???nh hoa li???u kh??c.', 0, 5, 5, NULL, '2021-06-06 08:44:32', '2021-06-06 08:44:32'),
(59, '11.11 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c h??nh th???c t???o h??nh th???m m??? ch???nh h??nh, ??i???u tr??? ki???m so??t tr???ng l?????ng/chi???u cao c?? th??? v?? c??c h???u qu??? c?? li??n quan. C??c can thi???p li??n quan ?????n ch???ng kh?? th??? khi ng??? (ng??? ng??y v?? ng??ng th??? khi ng???).', 0, 5, 5, NULL, '2021-06-06 08:47:33', '2021-06-06 08:47:33'),
(60, '11.12 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c b???nh l?? v??? t??m th???n, r???i lo???n t??m l?? , suy nh?????c th???n kinh kh??ng c?? nguy??n nh??n b???nh l??, m???t ng??? bao g???m r???i lo???n gi???c ng???, m???t m???i, m???t m???i ??i???u ti???t, c??ng th???ng th???n kinh, ch???ng qu??n hay suy gi???m tr?? nh??? theo k???t lu???n c???a B??c s??.', 0, 5, 5, NULL, '2021-06-06 08:50:19', '2021-06-06 08:50:19'),
(61, '11.13 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'Khuy???t t???t, b???nh/d??? t???t b???m sinh , c??c b???nh ho???c d??? d???ng thu???c v??? gen, t??nh tr???ng s???c kh???e di truy???n v???i c??c d???u hi???u b???c l??? t??? l??c sinh hay ti???m ???n ho???c ph??t hi???n mu???n ??? c??c giai ??o???n ph??t tri???n c?? th???.', 0, 5, 5, NULL, '2021-06-06 08:52:45', '2021-06-06 08:52:45'),
(62, '11.14 (Group - ??i???m lo???i tr??? ?????i v???i ???m ??au b???nh t???t v?? thai s???n)', 'C??c cho ph?? nh?? cho, nh???n, mua, v???n chuy???n, b???o qu???n n???i t???ng/b??? ph???n c?? th??? ph???c v??? C???y gh??p b??? ph???n c?? th???.', 0, 5, 5, NULL, '2021-06-06 08:54:26', '2021-06-06 08:54:26');

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
(6, 'Nguy???n Th??? H???ng Ph??c ', 'phucnguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$oKNNu.XVWV92zjBerOMNne.BmSRVuN29HXX3PvBU8Oll0TwDqpyPG', 'OLxn1vUgL9JnBMYhWGdDhZaHkfe1XWkSqCxiHG3uoH4kG3Koj8cfUriyLT9c', '2021-06-28 02:51:40', '2021-06-28 02:51:40', 'admin.png', 'dc164ca42d743b3b940749c6665418f2.PNG', NULL),
(7, 'L??u Nguy???n ????ng Khoa', 'khoaluu@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$7bG1DPvYgYm8bm8TxElN0uPnRb65W0d43uxv7Pk2lMVSJCBHVBTD2', 'DUchbs5NMOsAftxOYmVQm8uTNxuJOlgFavBgpUgypUpmBbWWpcZ7QfgiW7KF', '2021-06-28 02:52:35', '2021-07-26 01:27:29', 'admin.png', '219560d40eda4271e8384da4420d0899.jpg', NULL),
(8, 'Dao Thi Thu Tra', 'tradao@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$o1GXaBCFpaXmGnGjkcHqLebuhOs3C2R0da0ATjk0f7NFqJdkseTiS', '2bWrcBfVs4X8x1Fl3mmtsRfU9bIhCgoxP5mpS2h3yUY3ZsQ2qMVl7gg9DRgR', '2021-06-28 02:54:52', '2021-06-28 03:02:21', 'admin.png', '390625bd933714dd9e5e1ee5643a60d5.PNG', NULL),
(9, 'Cao Th??? Ki???u Di???m', 'diemcao@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.ZW0h7d5j1UPxQAGedKIwe3ym5Wcr12FkZrK7IV4aCWcvRoOtQIAi', 'cqd86hDrW15YActGNBGqCHrgVs2uc8wQkPLUNZEEw7imZ6mYMJ55wwevNPfj', '2021-06-28 02:57:00', '2021-06-28 02:57:00', 'admin.png', 'nopic.png', NULL),
(10, 'Tr???n Nh???t Tuy???n', 'tuyentran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$5Wcr/kVH/h8.YQZl3aaVI.VpOGi2wXYU4GvzEe40o1b5fUhEZbMra', NULL, '2021-06-28 02:59:11', '2021-07-07 13:20:31', '538527066da713ee5886979110da2b8e.jpg', 'e6eb9f862c41cd7d226ec3533c7bb6fb.png', NULL),
(11, 'Nguy???n Ph????ng Th???o', 'thaonguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$nr6S8cT2q5l9s1CurxV01OdkjugWVQ5vLUmdqacRVd8JhvG7pYHm2', 'OOZ9L3Yvn4upaaivlW3bgkd5bDFNUJRb2qd9gepSYuhcqZAJmoLCEkzVVOSV', '2021-06-28 03:57:24', '2021-11-01 04:32:40', '1518ebe760131d916fb184a491105111.jpg', 'd64dfee3e0dc0e6cd773502e971c7c15.png', 1),
(12, 'vy pham', 'vypham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$AngYVR7UVH2hWieujfyHo.Al7NLOWTRVJZtMwbyoQJfjm3Er8FGHu', 'hnbxGQAO1fHb5qwo0KlUdz8LNH7FVRoMRbaWOTPM2oN0xkB7q7E6BGD587TZ', '2021-06-28 03:59:31', '2021-11-01 04:32:40', 'admin.png', 'nopic.png', 1),
(13, 'thuongpham', 'thuongpham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$tNUyN2z1ascJ1yM80oNm3u.GzZKuGtt005rXJ.CcZ8B3S2qGX.kWa', 'L6C8APYEWQUBSjeNSjkQs3wXsBSHVEOZ5mzcvaDLVuisunusnpetyDyWPfD1', '2021-07-19 04:52:55', '2021-11-01 04:32:40', 'admin.png', '562112f89007f8dfb2320d409f331929.png', 1),
(14, 'H???ng L???', 'le.nguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$F6dR/D1Sg9sNM0aoBTEMiuqyEwWbYqXAipc7Z56u5h/Y3z2HQOaFa', 'hsV7J5tR4AIBwXx8a2TwmNbJLvy4foiU17m9kfl69YIsXcbFjGhwDKPNTKUP', '2021-07-26 07:03:42', '2021-07-26 07:03:42', 'admin.png', 'nopic.png', NULL),
(15, 'Xu??n Tr???n', 'xuankimtran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.a7wT2hqfuLicGFG4jVZneUkLppaVKMnBOEy40DGJHBInuy8C2Fra', 'B824zLuzlmUnZOMcjkUkdPyhFX5b6ZhKlB1LNa4S38Ex4K4ySrPQjsCZfMxU', '2021-07-26 07:05:03', '2021-07-26 07:05:03', 'admin.png', 'nopic.png', NULL),
(16, 'L?? Th??? Thanh Ng???c', 'ngocle@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$.G7i0L.Q/jXqJLHmuZ6Y.eRPQ.BuyHYO1B463CY7NL0ZHzG19.Yk.', 'BsGhMSBsfyC8lyJBviw0hLwr5mkFl72bIVRfhPIPiVlttbNrfIMOJ9sJfyNg', '2021-10-15 03:55:07', '2021-10-18 06:42:01', '0dc55556c81c017e70157f36682a66fe.jpg', 'gRl9I9o0z41634539321.png', NULL),
(17, 'NGUY???N KIM NG??N', 'ngannguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$k/h/IdUI07wpz8z4y7VIoOpAk/oH8q7JOc6zgcAdJxVOjES6xin3u', NULL, '2021-10-15 04:00:12', '2021-10-15 04:00:12', 'admin.png', 'nopic.png', NULL),
(18, 'Hoa Nguy???n', 'hoanguyen@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$Rc2QUo7DQ5P/pRk8IdpxO.9Y3R66qOInYMQA1zTJMDfny2pGBd02S', 'huwoLOPSrpd2C0UFbVEGC0xURgkhpbJ1P13SBDOzPt55IWOV0gFNvGXNFYme', '2021-11-01 04:32:22', '2021-11-01 04:32:40', 'admin.png', 'nopic.png', 1),
(19, 'Ph???m Th??? Qu???nh Anh', 'anhquynhpham@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$ypbyx.qSgV8KIaRSy4U38OtueBlPF5cDbcig5N3MDPmFVKl.Uttcy', 'UJbQb2gVPbHKrWEo95dJoqSuWjcN655mrOK1f7gsttzdSIS0QuFFOgzZzcJs', '2021-11-01 04:34:37', '2021-11-13 05:14:55', 'admin.png', 'd98219a73f8b45482b6bc373264e80fe.png', NULL),
(20, 'Tr???n Ng???c Giang Thanh', 'thanhngoctran@pacificcross.com.vn', NULL, NULL, 'N', '$2y$10$F61j8B6dgA/vbglZMwA7JOgU8JP9EVabe.DNB5PskGJZW7YeGxkLG', 'm7URFsCH2u20AbvCj30zRlCkrqbOkyHjWb2G2oaOlPbzI3W8Lbu1AiTLwkuO', '2021-11-01 04:35:46', '2021-12-10 03:29:06', 'admin.png', 'f7039731c5ebe28951945978479dcdcf.PNG', NULL),
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
