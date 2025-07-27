-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 07:05 PM
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
-- Database: `maya_computer_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `al_id` int(11) NOT NULL,
  `al_name` varchar(255) DEFAULT NULL,
  `al_email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`al_id`, `al_name`, `al_email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2a$12$nWdEyWHRluYNpEVARdq.n.4FDTLAdY5MavVRPOBSq4IxOh0yT9RFG', '2024-03-22 16:43:41', '2024-03-22 16:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mark`
--

CREATE TABLE `attendance_mark` (
  `am_id` int(11) NOT NULL,
  `am_FK_of_batch_id` int(11) DEFAULT NULL,
  `am_FK_of_student_id` int(11) DEFAULT NULL,
  `am_FK_of_center_id` int(11) DEFAULT NULL,
  `am_status` enum('PRESENT','ABSENT') DEFAULT NULL,
  `am_date` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_mark`
--

INSERT INTO `attendance_mark` (`am_id`, `am_FK_of_batch_id`, `am_FK_of_student_id`, `am_FK_of_center_id`, `am_status`, `am_date`, `created_at`, `updated_at`) VALUES
(44, 1, 1, 1, 'PRESENT', '2024-04-26', '2024-04-27 05:41:15', '2024-04-27 05:41:15'),
(45, 1, 2, 1, 'PRESENT', '2024-04-26', '2024-04-27 05:41:15', '2024-04-27 05:41:15'),
(46, 1, 3, 1, 'PRESENT', '2024-04-26', '2024-04-27 05:41:15', '2024-04-27 05:41:15'),
(47, 1, 1, 1, 'PRESENT', '2024-04-27', '2024-04-27 05:42:54', '2024-04-27 05:42:54'),
(48, 1, 2, 1, 'PRESENT', '2024-04-27', '2024-04-27 05:42:54', '2024-04-27 05:42:54'),
(49, 1, 3, 1, 'PRESENT', '2024-04-27', '2024-04-27 05:42:54', '2024-04-27 05:42:54'),
(50, 1, 1, 1, 'PRESENT', '2024-04-29', '2024-04-28 23:51:56', '2024-04-28 23:51:56'),
(51, 1, 2, 1, 'PRESENT', '2024-04-29', '2024-04-28 23:51:56', '2024-04-28 23:51:56'),
(52, 1, 3, 1, 'PRESENT', '2024-04-29', '2024-04-28 23:51:56', '2024-04-28 23:51:56'),
(53, 1, 2, 1, 'PRESENT', '2024-05-24', '2024-05-24 08:30:06', '2024-05-24 08:30:06'),
(54, 1, 3, 1, 'PRESENT', '2024-05-24', '2024-05-24 08:30:06', '2024-05-24 08:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_batch`
--

CREATE TABLE `attendence_batch` (
  `ab_id` int(11) NOT NULL,
  `ab_FK_of_center_id` int(11) DEFAULT NULL,
  `ab_name` text DEFAULT NULL,
  `ab_start_time` varchar(100) DEFAULT NULL,
  `ab_end_time` varchar(100) DEFAULT NULL,
  `ab_status` enum('ACTIVE','PENDING','BLOCK') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence_batch`
--

INSERT INTO `attendence_batch` (`ab_id`, `ab_FK_of_center_id`, `ab_name`, `ab_start_time`, `ab_end_time`, `ab_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Morning', '10:00', '12:13', 'ACTIVE', '2024-04-11 11:13:28', '2024-04-11 11:13:28'),
(3, 1, 'Evening', '15:00', '17:00', 'ACTIVE', '2024-04-12 08:16:25', '2024-04-12 08:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_set`
--

CREATE TABLE `attendence_set` (
  `as_id` int(11) NOT NULL,
  `as_FK_of_student_id` int(11) DEFAULT NULL,
  `as_FK_of_attendance_batch_id` int(11) DEFAULT NULL,
  `as_FK_of_center_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence_set`
--

INSERT INTO `attendence_set` (`as_id`, `as_FK_of_student_id`, `as_FK_of_attendance_batch_id`, `as_FK_of_center_id`, `created_at`, `updated_at`) VALUES
(15, 1, 1, 1, '2024-04-20 01:10:29', '2024-04-20 01:10:29'),
(16, 2, 1, 1, '2024-04-20 01:10:29', '2024-04-20 01:10:29'),
(17, 3, 1, 1, '2024-04-20 01:10:29', '2024-04-20 01:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `center_login`
--

CREATE TABLE `center_login` (
  `cl_id` int(11) NOT NULL,
  `cl_code` varchar(255) DEFAULT NULL,
  `cl_center_name` text DEFAULT NULL,
  `cl_director_name` text DEFAULT NULL,
  `cl_center_address` text DEFAULT NULL,
  `cl_cin_no` text DEFAULT NULL,
  `cl_name` text DEFAULT NULL,
  `cl_photo` text DEFAULT NULL,
  `cl_logo` text DEFAULT NULL,
  `cl_authorized_signature` text DEFAULT NULL,
  `cl_email` text DEFAULT NULL,
  `cl_mobile` varchar(20) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `cl_wallet_balance` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `center_login`
--

INSERT INTO `center_login` (`cl_id`, `cl_code`, `cl_center_name`, `cl_director_name`, `cl_center_address`, `cl_cin_no`, `cl_name`, `cl_photo`, `cl_logo`, `cl_authorized_signature`, `cl_email`, `cl_mobile`, `password`, `cl_wallet_balance`, `created_at`, `updated_at`) VALUES
(1, '91107601', 'Techno India Computer Center', 'Rocky Jha', 'Kolkata, Salt Lake', NULL, 'Techno India Computer Center', '1712821840_IMG-20240306-WA0010.jpg', NULL, NULL, 'ticc.center@gmail.com', '6291874590', '$2a$12$uNTHwx0jr4CCIKH2mUb9HOAzOKS8ElXno9q14EXXcJueBfwnzkb.q', 10210, '2024-03-22 16:44:17', '2024-05-25 08:05:51'),
(2, '91107602', 'Webel Academy', 'Daipayan Kayal', 'Uluberia', NULL, 'Webel Academy', '1712820965_IMG-20240306-WA0011.jpg', NULL, NULL, 'webel.academy@gmail.com', '9834093490', NULL, 0, '2024-04-11 02:06:05', '2024-04-11 02:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `center_recharge`
--

CREATE TABLE `center_recharge` (
  `cr_id` int(11) NOT NULL,
  `cr_payment_id` text DEFAULT NULL,
  `cr_razorpay_id` text DEFAULT NULL,
  `cr_FK_of_center_id` int(11) DEFAULT NULL,
  `cr_amount` float DEFAULT NULL,
  `cr_status` int(11) NOT NULL DEFAULT 0,
  `cr_type` varchar(255) NOT NULL DEFAULT 'CREDIT',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `center_recharge`
--

INSERT INTO `center_recharge` (`cr_id`, `cr_payment_id`, `cr_razorpay_id`, `cr_FK_of_center_id`, `cr_amount`, `cr_status`, `cr_type`, `created_at`, `updated_at`) VALUES
(9, 'order_O0SOFb6ghHsFt2', 'pay_O0SPjIuYBYvXFp', 1, 100, 1, 'CREDIT', '2024-04-19 05:31:00', '11:02:38'),
(10, 'order_O0SRxG9WomYsFf', 'pay_O0SSUfEk8QD6Qb', 1, 60, 1, 'CREDIT', '2024-04-19 05:34:30', '11:05:11'),
(11, 'order_O0UngpvybUYr3x', 'pay_O0Uo91jggVrX7R', 1, 300, 1, 'CREDIT', '2024-04-19 07:52:28', '13:23:04'),
(12, 'order_O0lSUiAw9b2ucX', 'pay_O0lTGlche2CEAc', 1, 10000, 1, 'CREDIT', '2024-04-20 00:10:12', '05:41:06'),
(13, 'order_O1a2v6eOzBiGxs', 'pay_O1a3PuK3OiX8Od', 1, 100, 1, 'CREDIT', '2024-04-22 01:39:21', '07:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_short_name` varchar(255) DEFAULT NULL,
  `c_full_name` text DEFAULT NULL,
  `c_price` float DEFAULT NULL,
  `c_duration` varchar(255) DEFAULT NULL,
  `c_module_cover` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_short_name`, `c_full_name`, `c_price`, `c_duration`, `c_module_cover`, `created_at`, `updated_at`) VALUES
(1, 'DDEO', 'Diploma in Data Entry Operation', 2000, '2', NULL, '2024-04-08 08:29:58', '2024-04-08 08:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment`
--

CREATE TABLE `fees_payment` (
  `fp_id` int(11) NOT NULL,
  `fp_receipt_no` int(11) DEFAULT NULL,
  `fp_FK_of_student_id` int(11) DEFAULT NULL,
  `fp_FK_of_center_id` int(11) DEFAULT NULL,
  `fp_date` varchar(20) DEFAULT NULL,
  `fp_total_amount` float DEFAULT NULL,
  `fp_amount` float DEFAULT NULL,
  `fp_dues_amount` int(11) DEFAULT NULL,
  `fp_remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_payment`
--

INSERT INTO `fees_payment` (`fp_id`, `fp_receipt_no`, `fp_FK_of_student_id`, `fp_FK_of_center_id`, `fp_date`, `fp_total_amount`, `fp_amount`, `fp_dues_amount`, `fp_remarks`, `created_at`, `updated_at`) VALUES
(10, 1, 2, 1, '2024-04-12', 2000, 500, NULL, 'Fees Amount', '2024-04-13 10:42:14', '2024-04-13 10:42:14'),
(11, 2, 2, 1, '2024-04-13', 1500, 300, NULL, 'Fees Amount', '2024-04-13 10:42:30', '2024-04-13 10:42:30'),
(12, 3, 1, 1, '2024-04-13', 1500, 1500, NULL, 'Fees Amount', '2024-04-13 10:44:38', '2024-04-13 10:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `income_expense`
--

CREATE TABLE `income_expense` (
  `ie_id` int(11) NOT NULL,
  `ie_FK_of_center_id` int(11) DEFAULT NULL,
  `ie_FK_of_admin_id` int(11) DEFAULT NULL,
  `ie_type` varchar(255) DEFAULT NULL,
  `ie_date` varchar(20) DEFAULT NULL,
  `ie_amount` float DEFAULT NULL,
  `ie_mode` varchar(255) DEFAULT NULL,
  `ie_remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_expense`
--

INSERT INTO `income_expense` (`ie_id`, `ie_FK_of_center_id`, `ie_FK_of_admin_id`, `ie_type`, `ie_date`, `ie_amount`, `ie_mode`, `ie_remarks`, `created_at`, `updated_at`) VALUES
(7, NULL, 1, 'INCOME', '2024-04-10', 1000, 'BANK', 'Test', '2024-04-11 06:00:42', '2024-04-11 06:00:42'),
(9, 1, NULL, 'INCOME', '2024-04-10', 1000, 'CASH', 'Test', '2024-04-12 08:13:28', '2024-04-12 08:13:28'),
(10, 1, NULL, 'EXPENSE', '2024-04-12', 500, 'CASH', 'Send Money', '2024-04-12 08:13:50', '2024-04-12 08:13:50'),
(11, NULL, 1, 'INCOME', '2024-04-25', 2000, 'BANK', 'Send Money', '2024-04-25 07:47:40', '2024-04-25 07:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `set_fee`
--

CREATE TABLE `set_fee` (
  `sf_id` int(11) NOT NULL,
  `sf_FK_of_student_id` int(11) DEFAULT NULL,
  `sf_FK_of_center_id` int(11) DEFAULT NULL,
  `sf_amount` float DEFAULT NULL,
  `sf_paid` float DEFAULT 0,
  `sf_due` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set_fee`
--

INSERT INTO `set_fee` (`sf_id`, `sf_FK_of_student_id`, `sf_FK_of_center_id`, `sf_amount`, `sf_paid`, `sf_due`, `created_at`, `updated_at`) VALUES
(6, 1, 1, 1500, 1500, 0, '2024-04-13 08:20:37', '2024-04-13 10:44:38'),
(7, 2, 1, 0, 2000, 1200, '2024-04-13 08:20:40', '2024-04-13 10:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `set_result`
--

CREATE TABLE `set_result` (
  `sr_id` int(11) NOT NULL,
  `sr_FK_of_student_id` int(11) DEFAULT NULL,
  `sr_FK_of_center_id` int(11) DEFAULT NULL,
  `sr_written` varchar(255) DEFAULT NULL,
  `sr_wr_full_marks` float DEFAULT NULL,
  `sr_wr_pass_marks` float DEFAULT NULL,
  `sr_wr_marks_obtained` float DEFAULT NULL,
  `sr_practical` varchar(255) DEFAULT NULL,
  `sr_pr_full_marks` float DEFAULT NULL,
  `sr_pr_pass_marks` float DEFAULT NULL,
  `sr_pr_marks_obtained` float DEFAULT NULL,
  `sr_project` varchar(255) DEFAULT NULL,
  `sr_ap_full_marks` float DEFAULT NULL,
  `sr_ap_pass_marks` float DEFAULT NULL,
  `sr_ap_marks_obtained` float DEFAULT NULL,
  `sr_viva` varchar(255) DEFAULT NULL,
  `sr_vv_full_marks` float DEFAULT NULL,
  `sr_vv_pass_marks` float DEFAULT NULL,
  `sr_vv_marks_obtained` float DEFAULT NULL,
  `sr_total_full_marks` float DEFAULT NULL,
  `sr_total_pass_marks` float DEFAULT NULL,
  `sr_total_marks_obtained` float DEFAULT NULL,
  `sr_percentage` float DEFAULT NULL,
  `sr_grade` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set_result`
--

INSERT INTO `set_result` (`sr_id`, `sr_FK_of_student_id`, `sr_FK_of_center_id`, `sr_written`, `sr_wr_full_marks`, `sr_wr_pass_marks`, `sr_wr_marks_obtained`, `sr_practical`, `sr_pr_full_marks`, `sr_pr_pass_marks`, `sr_pr_marks_obtained`, `sr_project`, `sr_ap_full_marks`, `sr_ap_pass_marks`, `sr_ap_marks_obtained`, `sr_viva`, `sr_vv_full_marks`, `sr_vv_pass_marks`, `sr_vv_marks_obtained`, `sr_total_full_marks`, `sr_total_pass_marks`, `sr_total_marks_obtained`, `sr_percentage`, `sr_grade`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Written', 100, 40, 100, 'Practical', 100, 40, 99, 'Assignment/Project', 100, 40, 98, 'Viva Voce', 100, 40, 99, 400, 160, 396, 99, 'A+', '2024-04-22 02:22:02', '2024-04-22 02:22:02'),
(2, 3, 1, 'Written', 100, 40, 78, 'Practical', 100, 40, 90, 'Assignment/Project', 100, 40, 55, 'Viva Voce', 100, 40, 45, 400, 160, 268, 67, 'C', '2024-04-22 08:28:06', '2024-04-22 08:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `sl_id` int(11) NOT NULL,
  `sl_FK_of_course_id` int(11) DEFAULT NULL,
  `sl_FK_of_center_id` int(11) DEFAULT NULL,
  `sl_dob` varchar(150) DEFAULT NULL,
  `sl_qualification` text DEFAULT NULL,
  `sl_reg_no` text DEFAULT NULL,
  `sl_sex` varchar(50) DEFAULT NULL,
  `sl_address` text DEFAULT NULL,
  `sl_name` text DEFAULT NULL,
  `sl_photo` text DEFAULT NULL,
  `sl_id_card` text DEFAULT NULL,
  `sl_mother_name` varchar(255) DEFAULT NULL,
  `sl_mobile_no` varchar(150) DEFAULT NULL,
  `sl_father_name` varchar(255) DEFAULT NULL,
  `sl_educational_certificate` text DEFAULT NULL,
  `sl_email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `sl_balance` float DEFAULT 0,
  `sl_status` enum('PENDING','VERIFIED','RESULT UPDATED','RESULT OUT','DISPATCHED','BLOCK') DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`sl_id`, `sl_FK_of_course_id`, `sl_FK_of_center_id`, `sl_dob`, `sl_qualification`, `sl_reg_no`, `sl_sex`, `sl_address`, `sl_name`, `sl_photo`, `sl_id_card`, `sl_mother_name`, `sl_mobile_no`, `sl_father_name`, `sl_educational_certificate`, `sl_email`, `password`, `sl_balance`, `sl_status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '911076010000', NULL, NULL, 'Student', '1712687249_IMG-20240306-WA0014.jpg', NULL, NULL, NULL, NULL, NULL, 'student@student.com', '$2a$12$nWdEyWHRluYNpEVARdq.n.4FDTLAdY5MavVRPOBSq4IxOh0yT9RFG', 0, 'VERIFIED', '2024-03-22 16:44:47', '2024-04-12 07:53:12'),
(2, 1, 1, '2014-12-30', 'Graduate', '911076010001', 'MALE', 'Gutinagori', 'Arindam Bera', '1712687249_IMG-20240306-WA0014.jpg', '1712687249_New_2023_Yamaha_MT_15_1.jpg', 'Mita Bera', '9007049952', 'Rupkumar Bera', '1712687249_IMG-20240306-WA0014.jpg', 'abera0275@gmail.com', '$2a$12$wNppcmIt9yYR2GgWGFUJNOuuaU.2PWwOWMGkalmWjM8H2EpdujbeC', 0, 'VERIFIED', '2024-04-09 12:57:29', '2024-04-12 04:31:06'),
(3, 1, 1, '2012-01-01', 'Matric', '911076010002', 'FEMALE', 'kolkata', 'Arpita Kumir', '1713530750_header.png', '1713530750_header.png', 'Radha Kumir', '1234567890', 'Raja Kumir', '1713530750_header.png', 'arpita@gmail.com', NULL, 0, 'RESULT OUT', '2024-04-19 07:15:50', '2024-04-22 08:28:06'),
(4, 1, 1, '2014-12-31', 'Post Graduate', '911076010003', 'MALE', 'Oddisha', 'Ompraksah Das', '1713611592_IMG-20240306-WA0010.jpg', '1713611592_IMG-20240306-WA0010.jpg', 'Shamoli Das', '8976498098', 'Suraj Das', '1713611592_IMG-20240306-WA0010.jpg', 'omprakash@gmail.com', NULL, 0, 'PENDING', '2024-04-20 05:43:12', '2024-04-20 05:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg_fee`
--

CREATE TABLE `student_reg_fee` (
  `srf_id` int(11) NOT NULL,
  `srf_amount` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_reg_fee`
--

INSERT INTO `student_reg_fee` (`srf_id`, `srf_amount`, `created_at`, `updated_at`) VALUES
(1, 300, '2024-04-19 12:49:17', '2024-04-19 07:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(11) NOT NULL,
  `t_FK_of_center_id` int(11) DEFAULT NULL,
  `t_student_reg_no` varchar(255) DEFAULT NULL,
  `t_amount` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `t_FK_of_center_id`, `t_student_reg_no`, `t_amount`, `created_at`, `updated_at`) VALUES
(1, 1, '911076010002', 50, '2024-04-19 12:45:50', '2024-04-19 12:45:50'),
(2, 1, '911076010003', 300, '2024-04-20 11:13:12', '2024-04-20 11:13:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`al_id`);

--
-- Indexes for table `attendance_mark`
--
ALTER TABLE `attendance_mark`
  ADD PRIMARY KEY (`am_id`);

--
-- Indexes for table `attendence_batch`
--
ALTER TABLE `attendence_batch`
  ADD PRIMARY KEY (`ab_id`);

--
-- Indexes for table `attendence_set`
--
ALTER TABLE `attendence_set`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `center_login`
--
ALTER TABLE `center_login`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `center_recharge`
--
ALTER TABLE `center_recharge`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `fees_payment`
--
ALTER TABLE `fees_payment`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `income_expense`
--
ALTER TABLE `income_expense`
  ADD PRIMARY KEY (`ie_id`);

--
-- Indexes for table `set_fee`
--
ALTER TABLE `set_fee`
  ADD PRIMARY KEY (`sf_id`);

--
-- Indexes for table `set_result`
--
ALTER TABLE `set_result`
  ADD PRIMARY KEY (`sr_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `student_reg_fee`
--
ALTER TABLE `student_reg_fee`
  ADD PRIMARY KEY (`srf_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_mark`
--
ALTER TABLE `attendance_mark`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `attendence_batch`
--
ALTER TABLE `attendence_batch`
  MODIFY `ab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendence_set`
--
ALTER TABLE `attendence_set`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `center_login`
--
ALTER TABLE `center_login`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `center_recharge`
--
ALTER TABLE `center_recharge`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees_payment`
--
ALTER TABLE `fees_payment`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `income_expense`
--
ALTER TABLE `income_expense`
  MODIFY `ie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `set_fee`
--
ALTER TABLE `set_fee`
  MODIFY `sf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `set_result`
--
ALTER TABLE `set_result`
  MODIFY `sr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_reg_fee`
--
ALTER TABLE `student_reg_fee`
  MODIFY `srf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
