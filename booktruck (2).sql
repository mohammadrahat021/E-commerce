-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2019 at 06:46 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booktruck`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_21_010009_create_tbl_admin_table', 1),
(2, '2018_07_27_050347_create_tbl_category_table', 2),
(3, '2018_07_28_222047_create_manufacture_table', 3),
(4, '2018_08_02_073217_create_tbl_products_table', 4),
(5, '2018_08_04_141446_create_tbl_customer_table', 5),
(6, '2018_08_04_171553_create_tbl_shipping_table', 6),
(7, '2018_08_07_141843_create_tbl_payment_table', 7),
(8, '2018_08_07_141941_create_tbl_order_table', 8),
(9, '2018_08_07_142022_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'jahansakib@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Shakib Jahan', '01521444186', NULL, NULL),
(6, 'rahatcse15@gmail.com', '12345', 'Rahat', '01316339263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(33, 'CREST', 1, NULL, NULL),
(34, 'TROPHY', 1, NULL, NULL),
(35, 'MEDAL', 1, NULL, NULL),
(36, 'T-SHIRT', 1, NULL, NULL),
(37, 'OTHER', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(3, 'Shakib Jahan', 'jahansakib@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '01521444186', NULL, NULL),
(13, 'Shakib Jahan Tonmoy', 'shakibjahan74@gmail.com', '15e9058e5c7dbde655f83f342b14267bfca07d8f', '01910209288', NULL, NULL),
(17, 'rahat', 'tonmoy@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01709054840', NULL, NULL),
(18, 'rahat', 'rahatcse15@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01709054840', NULL, NULL),
(19, 'shobuj', 'shobuj@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01774056105', NULL, NULL),
(20, 'sobur', 'sobur@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01709054840', NULL, NULL),
(21, 'rahat', 'mohammadrahat999@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '01709054840', NULL, NULL),
(22, 'shobuj', 'shobuj@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01774056105', NULL, NULL),
(23, 'rahat', 'rahat@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01709054840', NULL, NULL),
(24, 'rahat', 'rahatcse15@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '01709054840', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(26, 'Wooden Crest', 1, NULL, NULL),
(27, 'Acrylic Crest', 1, NULL, NULL),
(28, 'Cristal', 1, NULL, NULL),
(29, 'Metal crest', 1, NULL, NULL),
(30, 'Laser or CNC Engraving', 1, NULL, NULL),
(31, 'Trophy', 1, NULL, NULL),
(32, 'Medal', 1, NULL, NULL),
(33, 'Crew Neck Style', 1, NULL, NULL),
(34, 'V Neck style', 1, NULL, NULL),
(35, 'Henley - Y neck style', 1, NULL, NULL),
(36, 'Polo t-shirt', 1, NULL, NULL),
(37, 'Customized Mug Print', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(11, 21, 28, 49, '9,400.00', 'pending', '2019-06-14 10:46:21', NULL),
(12, 22, 29, 50, '2,000.00', 'pending', '2019-06-14 13:41:37', NULL),
(13, 23, 30, 51, '19,800.00', 'pending', '2019-06-15 19:43:04', NULL),
(14, 23, 32, 52, '18,900.00', 'pending', '2019-07-02 18:48:27', NULL),
(15, 23, 34, 53, '870.00', 'pending', '2019-07-04 15:48:42', NULL),
(16, 23, 34, 54, '2,600.00', 'pending', '2019-07-04 17:08:23', NULL),
(17, 23, 34, 55, '200.00', 'pending', '2019-07-04 18:29:44', NULL),
(18, 23, 34, 56, '0.00', 'pending', '2019-07-04 18:32:58', NULL),
(19, 23, 34, 57, '0.00', 'pending', '2019-07-04 18:33:20', NULL),
(20, 23, 34, 58, '0.00', 'pending', '2019-07-04 18:34:08', NULL),
(21, 23, 34, 59, '0.00', 'pending', '2019-07-04 18:34:22', NULL),
(22, 23, 34, 60, '0.00', 'pending', '2019-07-04 18:34:38', NULL),
(23, 23, 34, 61, '0.00', 'pending', '2019-07-04 18:34:55', NULL),
(24, 23, 34, 62, '0.00', 'pending', '2019-07-04 18:36:00', NULL),
(25, 23, 34, 63, '0.00', 'pending', '2019-07-04 18:36:43', NULL),
(26, 23, 34, 64, '0.00', 'pending', '2019-07-04 18:37:14', NULL),
(27, 23, 34, 65, '0.00', 'pending', '2019-07-04 18:37:31', NULL),
(28, 23, 34, 66, '0.00', 'pending', '2019-07-04 18:37:45', NULL),
(29, 23, 34, 67, '0.00', 'pending', '2019-07-04 18:38:07', NULL),
(30, 23, 34, 68, '0.00', 'pending', '2019-07-04 18:38:37', NULL),
(31, 23, 35, 69, '200.00', 'pending', '2019-07-05 20:05:49', NULL),
(32, 23, 35, 70, '0.00', 'pending', '2019-07-05 20:15:44', NULL),
(33, 23, 35, 71, '0.00', 'pending', '2019-07-05 21:01:46', NULL),
(34, 23, 36, 72, '550.00', 'pending', '2019-07-06 15:03:55', NULL),
(35, 23, 36, 73, '0.00', 'pending', '2019-07-06 15:04:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(36, 32, 28, 'Advanced Database Systems', '60', '5', NULL, NULL),
(37, 33, 13, 'Web Engineering', '100', '10', NULL, NULL),
(38, 33, 23, 'Software Engineering', '100', '5', NULL, NULL),
(39, 34, 20, 'Introduction To Algorithms', '80', '1', NULL, NULL),
(40, 1, 20, 'Introduction To Algorithms', '80', '5', NULL, NULL),
(41, 1, 77, 'MUG PRINT PER PIC', '50', '5', NULL, NULL),
(42, 1, 72, 'crest', '200', '1', NULL, NULL),
(43, 1, 75, 'T-SHIRT PRINT', '80', '1', NULL, NULL),
(44, 1, 76, 'METAL CREST', '370', '5', NULL, NULL),
(45, 2, 77, 'MUG PRINT PER PIC', '50', '5', NULL, NULL),
(46, 2, 72, 'crest', '200', '1', NULL, NULL),
(47, 2, 75, 'T-SHIRT PRINT', '80', '1', NULL, NULL),
(48, 2, 76, 'METAL CREST', '370', '5', NULL, NULL),
(49, 2, 73, 'TROTHY', '1500', '1', NULL, NULL),
(50, 3, 72, 'crest', '200', '5', NULL, NULL),
(51, 4, 72, 'crest', '200', '11', NULL, NULL),
(52, 5, 72, 'crest', '200', '4', NULL, NULL),
(53, 5, 74, 'MEDAL', '300', '1', NULL, NULL),
(54, 6, 74, 'MEDAL', '300', '2', NULL, NULL),
(55, 6, 76, 'METAL CREST', '370', '1', NULL, NULL),
(56, 6, 72, 'crest', '200', '1', NULL, NULL),
(57, 6, 75, 'T-SHIRT PRINT', '80', '1', NULL, NULL),
(58, 7, 72, 'crest', '200', '1', NULL, NULL),
(59, 8, 72, 'crest', '200', '1', NULL, NULL),
(60, 9, 72, 'crest', '200', '1', NULL, NULL),
(61, 9, 76, 'METAL CREST', '370', '1', NULL, NULL),
(62, 11, 72, 'crest', '200', '10', NULL, NULL),
(63, 11, 76, 'METAL CREST', '370', '20', NULL, NULL),
(64, 12, 72, 'crest', '200', '10', NULL, NULL),
(65, 13, 72, 'crest', '200', '20', NULL, NULL),
(66, 13, 73, 'TROTHY', '1500', '10', NULL, NULL),
(67, 13, 75, 'T-SHIRT PRINT', '80', '10', NULL, NULL),
(68, 14, 72, 'crest', '200', '12', NULL, NULL),
(69, 14, 79, 'TROPHY', '1500', '11', NULL, NULL),
(70, 15, 76, 'METAL CREST', '370', '1', NULL, NULL),
(71, 15, 74, 'MEDAL', '300', '1', NULL, NULL),
(72, 15, 80, 'COLOUR PRINT', '100', '1', NULL, NULL),
(73, 15, 81, 'sjasdmdalkalklasdkaldlakdl', '100', '1', NULL, NULL),
(74, 16, 81, 'sjasdmdalkalklasdkaldlakdl', '100', '8', NULL, NULL),
(75, 16, 72, 'crest', '200', '9', NULL, NULL),
(76, 17, 72, 'crest', '200', '1', NULL, NULL),
(77, 31, 72, 'crest', '200', '1', NULL, NULL),
(78, 34, 77, 'MUG PRINT PER PIC', '50', '11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(34, 'handcash', 'pending', '2018-08-11 20:12:57', NULL),
(35, 'handcash', 'pending', '2018-08-11 20:15:29', NULL),
(36, 'handcash', 'pending', '2018-08-11 20:16:47', NULL),
(37, 'handcash', 'pending', '2018-08-12 09:29:34', NULL),
(38, 'handcash', 'pending', '2018-08-12 09:33:09', NULL),
(39, 'bkash', 'pending', '2019-05-16 03:09:42', NULL),
(40, 'bkash', 'pending', '2019-05-16 04:23:42', NULL),
(41, 'bkash', 'pending', '2019-05-16 13:37:24', NULL),
(42, 'bkash', 'pending', '2019-05-16 14:58:22', NULL),
(43, 'bkash', 'pending', '2019-06-14 09:52:53', NULL),
(44, 'handcash', 'pending', '2019-06-14 10:30:13', NULL),
(45, 'bkash', 'pending', '2019-06-14 10:30:41', NULL),
(46, 'handcash', 'pending', '2019-06-14 10:31:08', NULL),
(47, 'handcash', 'pending', '2019-06-14 10:38:02', NULL),
(48, 'handcash', 'pending', '2019-06-14 10:38:42', NULL),
(49, 'handcash', 'pending', '2019-06-14 10:46:21', NULL),
(50, 'handcash', 'pending', '2019-06-14 13:41:37', NULL),
(51, 'handcash', 'pending', '2019-06-15 19:43:04', NULL),
(52, 'handcash', 'pending', '2019-07-02 18:48:27', NULL),
(53, 'handcash', 'pending', '2019-07-04 15:48:42', NULL),
(54, 'handcash', 'pending', '2019-07-04 17:08:23', NULL),
(55, 'handcash', 'pending', '2019-07-04 18:29:44', NULL),
(56, 'handcash', 'pending', '2019-07-04 18:32:58', NULL),
(57, 'handcash', 'pending', '2019-07-04 18:33:20', NULL),
(58, 'handcash', 'pending', '2019-07-04 18:34:08', NULL),
(59, 'handcash', 'pending', '2019-07-04 18:34:22', NULL),
(60, 'handcash', 'pending', '2019-07-04 18:34:38', NULL),
(61, 'handcash', 'pending', '2019-07-04 18:34:55', NULL),
(62, 'handcash', 'pending', '2019-07-04 18:36:00', NULL),
(63, 'handcash', 'pending', '2019-07-04 18:36:43', NULL),
(64, 'handcash', 'pending', '2019-07-04 18:37:14', NULL),
(65, 'handcash', 'pending', '2019-07-04 18:37:31', NULL),
(66, 'handcash', 'pending', '2019-07-04 18:37:45', NULL),
(67, 'handcash', 'pending', '2019-07-04 18:38:07', NULL),
(68, 'handcash', 'pending', '2019-07-04 18:38:37', NULL),
(69, 'handcash', 'pending', '2019-07-05 20:05:49', NULL),
(70, 'handcash', 'pending', '2019-07-05 20:15:44', NULL),
(71, 'handcash', 'pending', '2019-07-05 21:01:46', NULL),
(72, 'handcash', 'pending', '2019-07-06 15:03:55', NULL),
(73, 'handcash', 'pending', '2019-07-06 15:04:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_price`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(9, 'Electronic Device', 24, 10, 50.00, 'image/xMwdXYJD364KxFrlsVbZ.jpg', 1, NULL, NULL),
(10, 'Electrical Circuit', 24, 10, 50.00, 'image/ItRDqLelziYFlozHwWzn.jpg', 1, NULL, NULL),
(12, 'Calculas', 28, 9, 60.00, 'image/7rA4zML4fo0yfxAR8AO2.jpg', 1, NULL, NULL),
(13, 'Web Engineering', 21, 4, 100.00, 'image/4WZApNPONWPS5onE25PN.jpg', 0, NULL, NULL),
(20, 'Introduction To Algorithms', 21, 14, 80.00, 'image/8nvnDstETkcz63r2w9aT.jpg', 1, NULL, NULL),
(21, 'Advanced Data Structures', 21, 13, 40.00, 'image/ddcD3zIdW1gnStiQYnym.jpg', 1, NULL, NULL),
(22, 'Data Structures', 21, 13, 50.00, 'image/YBOJSuRcSQTYkwLWxh9T.jpg', 1, NULL, NULL),
(23, 'Software Engineering', 21, 4, 100.00, 'image/7Y3m4AQBerhuTZHkUjbC.jpg', 1, NULL, NULL),
(27, 'An Introduction to Object Oriented Programming', 21, 3, 50.00, 'image/zeM49SNwMT8cikyRTSZ7.jpg', 0, NULL, NULL),
(29, 'An Introduction to Ethics', 21, 12, 50.00, 'image/cuEOAbqTysMGHID5J13B.jpg', 1, NULL, NULL),
(30, 'Practical Ethics', 21, 12, 50.00, 'image/7U7qduCcJOECnATkNSTy.jpg', 1, NULL, NULL),
(31, 'Computer Architecture And Organization', 21, 11, 80.00, 'image/uaDL1DPqefpmadI2jcqi.jpg', 1, NULL, NULL),
(32, 'Intel Microprocessors', 21, 11, 100.00, 'image/7KgwaLb4vHE7Z05CSt3m.jpg', 1, NULL, NULL),
(34, 'Bioinorganic Chemistry', 31, 15, 60.00, 'image/9uw0oVxBsWAODLE6EbB0.jpg', 1, NULL, NULL),
(35, 'Organic Chemistry of Natural Products', 31, 15, 50.00, 'image/rgDbWnWPgkrioTj1rXY8.jpg', 1, NULL, NULL),
(36, 'Cost And Management Accounting', 22, 16, 50.00, 'image/LjfQw86AwqURy0TcBdkj.jpg', 1, NULL, NULL),
(37, 'Principles of Accounting', 22, 16, 60.00, 'image/xJZe7r7zZtRt8nz9kG2t.jpg', 1, NULL, NULL),
(38, 'Microeconomics Theory', 22, 17, 60.00, 'image/GkcwAQVZgS28h4Qspeck.jpg', 1, NULL, NULL),
(39, 'Banking & Finanace', 22, 16, 70.00, 'image/Sr01ay0M45iOpdTP7LdM.jpg', 1, NULL, NULL),
(40, 'Intermediate Microeconomics', 22, 17, 60.00, 'image/TJEfQqcbkyUltWho1zUS.jpg', 1, NULL, NULL),
(41, 'Electrical Properties of Materials', 24, 18, 50.00, 'image/kNTmRSyer6ZXIATquNKM.jpg', 1, NULL, NULL),
(42, 'Control System Design', 24, 18, 50.00, 'image/jG8UhV96utICMaPtbj3n.jpg', 1, NULL, NULL),
(43, 'Electrical Power Systems', 24, 18, 60.00, 'image/WnfKPt9zG5TjIuvKjeKk.jpg', 1, NULL, NULL),
(44, 'Heat And Thermodynamics', 27, 22, 50.00, 'image/KTutUtIw3Uhv5FCM4JJr.jpg', 1, NULL, NULL),
(45, 'Thermodynamics And Statistical Mechanics', 27, 22, 80.00, 'image/KQgQyXcg5jj846ScAZ0I.jpg', 1, NULL, NULL),
(46, 'Nuclear Physics', 27, 21, 60.00, 'image/7udRSUv2Jtxei6D04ULV.jpg', 1, NULL, NULL),
(47, 'Quantum Mechanics 2', 27, 21, 50.00, 'image/xCrN8dNDrtqZFybBnX12.jpg', 1, NULL, NULL),
(48, 'Elementary Quantum Mechanics', 27, 21, 60.00, 'image/GQR7vkIgIXZ93mGtInJi.jpg', 1, NULL, NULL),
(49, 'Basic Algebra', 28, 19, 50.00, 'image/q2v68DKnd2DhUxxeyZVd.jpg', 1, NULL, NULL),
(50, 'Linear Algebra', 28, 19, 80.00, 'image/mFMq9TgigxPQg85m7aGo.jpg', 1, NULL, NULL),
(51, 'Abstract Algebra', 28, 19, 60.00, 'image/wvQUKIKkXVi9SB8HBd9q.jpg', 1, NULL, NULL),
(52, 'Differential Geometry', 28, 20, 50.00, 'image/7GDsznSDfxDpYwoRYjUe.jpg', 1, NULL, NULL),
(53, 'Differential Equations', 28, 20, 80.00, 'image/TK8VlmHr5Ndj7OTKlQ7L.jpg', 1, NULL, NULL),
(54, 'Calculus 2', 28, 20, 60.00, 'image/EQgf1mIQcTSxzYbvCgLk.jpg', 1, NULL, NULL),
(55, 'An Introduction to The Theory of Numbers', 28, 23, 50.00, 'image/j8xSibErVD3gSi3HwhUS.jpg', 1, NULL, NULL),
(56, 'Numerical Analysis', 28, 23, 80.00, 'image/6a2jMxuwxEyFGL2RWqVk.jpg', 1, NULL, NULL),
(57, 'Mathematical Methods', 28, 23, 60.00, 'image/T8I8zfTSIIUz32JJTrfN.jpg', 1, NULL, NULL),
(61, 'Calculas', 28, 20, 70.00, 'image/9PdtuMP1hC3re1QKNdet.jpg', 1, NULL, NULL),
(62, 'Basic Algebra', 32, 19, 80.00, 'image/csUuFGNZQzGebkrXJJnR.jpg', 1, NULL, NULL),
(63, 'Linear Algebra', 32, 19, 60.00, 'image/zbrAzgXn8PlGUy2PpxFi.jpg', 1, NULL, NULL),
(65, 'Abstract Algebra', 32, 19, 50.00, 'image/D7BHZOmO63Pb0nKUgixN.jpg', 1, NULL, NULL),
(72, 'crest', 33, 26, 200.00, 'image/vi0YggUJ6D16PEtUHOhu.jpg', 1, NULL, NULL),
(73, 'TROTHY', 34, 31, 1500.00, 'image/FJNH1kEfUMlKUgF7Z9kb.png', 1, NULL, NULL),
(74, 'MEDAL', 35, 32, 300.00, 'image/ALMDngV7bMjbQPNafmOv.jpg', 1, NULL, NULL),
(75, 'T-SHIRT PRINT', 36, 36, 80.00, 'image/vL2ktkelWmcGd0M7zMfs.jpg', 1, NULL, NULL),
(76, 'METAL CREST', 33, 29, 370.00, 'image/s8MquKMtmPQlRjrPIpXh.jpg', 1, NULL, NULL),
(77, 'MUG PRINT PER PIC', 37, 37, 50.00, 'image/jn94UfIdjKICYJZM1hRF.jpg', 1, NULL, NULL),
(78, 'MUG PRINT', 37, 37, 100.00, 'image/yf1S99fJwCd4nLkaFPOF.png', 1, NULL, NULL),
(79, 'TROPHY', 34, 31, 1500.00, 'image/Sp1ZClcc29zraYX8bejw.jpg', 1, NULL, NULL),
(80, 'COLOUR PRINT', 36, 36, 100.00, 'image/oNZh0kztgqAqSoYc8oT1.jpg', 1, NULL, NULL),
(81, 'sjasdmdalkalklasdkaldlakdl', 33, 28, 100.00, 'image/uXztZOFe3LI28ONOHylh.jpg', 1, NULL, NULL),
(83, 'sjasdmdalkalklasdkaldlakdl', 34, 28, 500.00, 'image/wjju5hBQVJcRVMiecG6F.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `created_at`, `updated_at`) VALUES
(20, 'Rumman@gmail.com', 'Rumman', 'Hasnayeen', 'Akhalia,Surma', '01687268869', NULL, NULL),
(21, 'shakibjahan74@gmail.com', 'Shakib Jahan', 'Tonmoy', 'Thesis Lab, 301', '01910209288', NULL, NULL),
(22, 'Zihanbayeed@gmail.com', 'Zihan', 'Bayeed', 'Akhalia,Surma', '01521444186', NULL, NULL),
(23, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(24, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(25, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(26, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '01709054840', NULL, NULL),
(27, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(28, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(29, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(30, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL),
(31, 'rahat@gmail.com', 'rahat', 'mia', 'bhaluka', '1345678900', NULL, NULL),
(32, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL),
(33, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL),
(34, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL),
(35, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL),
(36, 'mohammadrahat999@gmail.com', 'mohammad', 'rahat', 'dhaka bangladesh, bhaluka 2240', '01726101571', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
