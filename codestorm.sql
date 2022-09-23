-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 10:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codestorm`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_base_id` int(11) NOT NULL,
  `order_id` varchar(60) NOT NULL,
  `import_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `resend` int(11) DEFAULT 0,
  `customer` varchar(100) DEFAULT NULL,
  `priority` int(3) DEFAULT 1,
  `priority_reason` int(11) DEFAULT NULL,
  `priority_date` date DEFAULT NULL,
  `priority_instructions` text DEFAULT NULL,
  `intergration_id` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `origin_order_id` varchar(50) DEFAULT NULL,
  `order_origin_advised` tinyint(4) DEFAULT 0,
  `client_order_ref` varchar(50) DEFAULT NULL,
  `client_po_number` varchar(256) DEFAULT NULL,
  `fulfilment_type` int(1) DEFAULT 0 COMMENT '0 full fulfilment by codestorm / 1 part fulfilment',
  `email` varchar(256) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `order_insert_prints` int(11) DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `sla_deadline` timestamp NULL DEFAULT NULL,
  `despatch_note_template` int(11) DEFAULT 4,
  `added_by` int(11) DEFAULT NULL,
  `cost_code` varchar(64) DEFAULT NULL,
  `processing_date` varchar(50) DEFAULT NULL,
  `upload_file` varchar(256) DEFAULT NULL,
  `order_postage_mapping` int(11) DEFAULT NULL,
  `order_weight` int(11) NOT NULL,
  `order_items_count` int(11) NOT NULL DEFAULT 0,
  `order_additional_despatch_info` text DEFAULT NULL,
  `site_specific_1` varchar(255) DEFAULT NULL,
  `site_specific_2` varchar(255) DEFAULT NULL,
  `site_specific_3` varchar(255) DEFAULT NULL,
  `site_specific_4` varchar(255) DEFAULT NULL,
  `site_specific_5` varchar(255) DEFAULT NULL,
  `site_specific_6` varchar(255) DEFAULT NULL,
  `site_specific_7` varchar(255) DEFAULT NULL,
  `site_specific_8` varchar(255) DEFAULT NULL,
  `site_specific_9` varchar(255) DEFAULT NULL,
  `site_specific_10` varchar(255) DEFAULT NULL,
  `invoice_cost_code` int(11) DEFAULT NULL,
  `exported` int(1) DEFAULT 0,
  `exported_date` timestamp NULL DEFAULT NULL,
  `claimed` tinyint(4) DEFAULT 0,
  `claimed_by` int(11) DEFAULT NULL,
  `claimed_date` datetime DEFAULT NULL,
  `planning_confirmed` int(1) DEFAULT 1,
  `planning_start_date` datetime DEFAULT NULL,
  `planning_complete_date` datetime DEFAULT NULL,
  `planning_time_to_complete` int(4) DEFAULT NULL,
  `mark_for_complete_script` int(1) DEFAULT 0,
  `mark_for_foc` int(1) DEFAULT 0,
  `order_rules_ran` int(1) DEFAULT 0,
  `order_rules_ran_timestamp` timestamp NULL DEFAULT NULL,
  `order_inner_packaging_ran` int(1) DEFAULT 0,
  `order_inner_packaging_ran_timestamp` timestamp NULL DEFAULT NULL,
  `order_outer_packaging_ran` int(11) DEFAULT 0,
  `order_outer_packaging_ran_timestamp` timestamp NULL DEFAULT NULL,
  `order_internal_priority` int(11) DEFAULT 0,
  `order_picking_group` int(11) DEFAULT NULL,
  `auto_validation_ran` int(1) DEFAULT 0,
  `order_status` int(11) NOT NULL,
  `master_client_id_link` int(11) DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY LIST COLUMNS(`archived`)
(
PARTITION p01 VALUES IN (0) ENGINE=InnoDB,
PARTITION p02 VALUES IN (1) ENGINE=InnoDB
);

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_base_id`, `order_id`, `import_id`, `type`, `resend`, `customer`, `priority`, `priority_reason`, `priority_date`, `priority_instructions`, `intergration_id`, `origin`, `origin_order_id`, `order_origin_advised`, `client_order_ref`, `client_po_number`, `fulfilment_type`, `email`, `mobile_number`, `order_insert_prints`, `date_added`, `sla_deadline`, `despatch_note_template`, `added_by`, `cost_code`, `processing_date`, `upload_file`, `order_postage_mapping`, `order_weight`, `order_items_count`, `order_additional_despatch_info`, `site_specific_1`, `site_specific_2`, `site_specific_3`, `site_specific_4`, `site_specific_5`, `site_specific_6`, `site_specific_7`, `site_specific_8`, `site_specific_9`, `site_specific_10`, `invoice_cost_code`, `exported`, `exported_date`, `claimed`, `claimed_by`, `claimed_date`, `planning_confirmed`, `planning_start_date`, `planning_complete_date`, `planning_time_to_complete`, `mark_for_complete_script`, `mark_for_foc`, `order_rules_ran`, `order_rules_ran_timestamp`, `order_inner_packaging_ran`, `order_inner_packaging_ran_timestamp`, `order_outer_packaging_ran`, `order_outer_packaging_ran_timestamp`, `order_internal_priority`, `order_picking_group`, `auto_validation_ran`, `order_status`, `master_client_id_link`, `archived`) VALUES
(4834687, 'VTL-62F4F1537602F', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN03-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN03-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:08:51', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834688, 'VTL-62F4F19798C95', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN04-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN04-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:09:59', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834710, 'VTL-62F4F1E20584B', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN05-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN05-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:11:14', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '2022-09-02 10:07:19', NULL, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834749, 'VTL-62F4F224E1E27', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN06-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN06-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:12:20', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834797, 'VTL-62F4F26B94C68', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN08-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN08-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:13:31', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834801, 'VTL-62F4F2AF5732A', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN09-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN09-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:14:39', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834805, 'VTL-62F4F3015BC48', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN10-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN10-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:16:01', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834807, 'VTL-62F4F3448CAD6', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN11-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN11-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:17:08', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834809, 'VTL-62F4F38645B6F', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN12-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN12-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:18:14', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834811, 'VTL-62F4F3CA3AC09', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN13-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN13-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:19:22', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834814, 'VTL-62F4F425E5388', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN14-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN14-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:20:53', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 300, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834815, 'VTL-62F4F4260B5F4', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN15-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN15-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:20:54', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834819, 'VTL-62F4F46BBA464', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN17-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN17-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:22:03', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834820, 'VTL-62F4F4ADE7F00', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN18-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN18-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:23:09', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834823, 'VTL-62F4F4F077173', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN19-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN19-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:24:16', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 18, 169, 0),
(4834826, 'VTL-62F4F5413818E', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN20-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN20-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:25:37', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 18, 169, 0),
(4834829, 'VTL-62F4F58514A11', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN21-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN21-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:26:45', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834830, 'VTL-62F4F5C7007AA', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN22-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN22-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:27:51', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834831, 'VTL-62F4F6090BA70', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN23-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN23-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:28:57', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834832, 'VTL-62F4F64A873AC', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN24-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN24-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:30:02', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834836, 'VTL-62F4F69EE0B67', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN25-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN25-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:31:26', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 14, 169, 0),
(4834837, 'VTL-62F4F6E17E7EB', 41798, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN26-REWORK', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN26-REWORK', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 17:32:33', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 0, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4834998, 'VTL-62F4FF348FB9D', 41801, 7, 0, 'Marc Latham', 1, 0, '0000-00-00', '\\N', 0, 'Standard CSV', '11/08/2022VTL-4PP-TRIAL-KIT-SN27-REWORKx', 0, '11/08/2022VTL-4PP-TRIAL-KIT-SN27-REWORKx', '\\N', 0, 'Marc@codestorm.co.uk', '\\N', 0, '2022-08-11 18:08:04', '0000-00-00 00:00:00', 4, 0, '\\N', '\\N', '\\N', 0, 0, 1500, '\\N', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 169, 0),
(4835038, 'order_id', 0, 0, 0, 'customer', 0, 0, '0000-00-00', 'priority_instructions', 0, 'origin', 'origin_order_id', 0, 'client_order_ref', 'client_po_number', 0, 'email', 'mobile_number', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'cost_code', 'processing_date', 'upload_file', 0, 0, 0, 'order_additional_despatch_info', 'site_specific_1', 'site_specific_2', 'site_specific_3', 'site_specific_4', 'site_specific_5', 'site_specific_6', 'site_specific_7', 'site_specific_8', 'site_specific_9', 'site_specific_10', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_base_id`,`archived`) USING BTREE,
  ADD KEY `order_id` (`order_id`),
  ADD KEY `master_client_id_link` (`master_client_id_link`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `order_postage_mapping` (`order_postage_mapping`),
  ADD KEY `client_order_ref` (`client_order_ref`),
  ADD KEY `intergration_id` (`intergration_id`),
  ADD KEY `archived` (`archived`),
  ADD KEY `type` (`type`),
  ADD KEY `planning_confirmed` (`planning_confirmed`),
  ADD KEY `status_count` (`archived`,`master_client_id_link`,`order_status`),
  ADD KEY `origin` (`origin`),
  ADD KEY `order_picking_group` (`order_picking_group`),
  ADD KEY `date_added` (`date_added`),
  ADD KEY `order_internal_priority` (`order_internal_priority`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_base_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4835039;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
