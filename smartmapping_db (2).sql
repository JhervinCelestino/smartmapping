-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2025 at 08:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartmapping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password_hash`, `created_at`, `password`) VALUES
(4, 'admin1', '$2y$10$9x23dsWqFjkIEbdajkldfjaiosdfWEOQEpiodfzMEjV39ji', '2025-07-03 03:49:14', ''),
(6, 'admin2', '$2y$10$hg4RFHwxXySCBb6Xqu0doe3C6WEg6H6xzCSHSqI9WP.e9jjgON/WG', '2025-07-03 03:54:14', ''),
(7, 'Dexter', '$2y$10$3RKig0r52Y9aFKFG2xGO.OfJ.1l4Px4i65Z8mJKxqsMGv.Y8itEvm', '2025-07-03 04:46:04', ''),
(8, 'R', '$2y$10$jCF7aPafEilMhg121U4xI.yEemoLLLbBdcMAvVnPz/.yQbtEsr5dy', '2025-07-04 02:38:45', ''),
(9, 'j', '$2y$10$WvgvDHpIIMNiAmVwq4s1u.lmXWMoNJrdNO3BaTm5XJP16WEP3RA5C', '2025-07-05 04:57:08', ''),
(10, 'admin', '$2y$10$QWcicoCpZCrqkKoaV4O.9eiV/o5X6fCECvhFMdel5/CmnVrgtmD4S', '2025-09-25 05:13:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `x_coord` float DEFAULT NULL,
  `y_coord` float DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `estimated_attendees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `organization`, `venue`, `event_date`, `event_time`, `end_time`, `event_type`, `latitude`, `longitude`, `status`, `x_coord`, `y_coord`, `rejection_reason`, `estimated_attendees`) VALUES
(5, 'Freshmen Orientation', 'Office of Student Affairs', 'HCC Gymnasium', '2025-07-09', NULL, NULL, 'Seminar', 15.0946, 120.7689, 'Declined', NULL, NULL, NULL, NULL),
(6, 'Inter‑Org Sports Meetup', 'HCC Student Council', 'Football Field', '2025-07-17', NULL, NULL, 'Sports', 15.095, 120.7692, 'Declined', NULL, NULL, NULL, NULL),
(12, 'a', 'SECLS', 'HCC Gymnasium', '2025-08-07', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(13, 'MATH', 'SECLS', 'HCC Gymnasium', '2025-08-26', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(14, 'Basketball', 'Office of Student Affairs', 'HCC Gymnasium', '2025-08-08', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(15, 'T', 'T', 'Gymnasium', '2025-08-29', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(16, 'ARAY KO', 'ELEM', 'HCC Gymnasium', '2025-08-23', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(17, 'G', 'ELEM', 'GYM', '2025-08-13', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(18, '', '', '', '0000-00-00', NULL, NULL, 'proposal', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(19, '', '', '', '0000-00-00', NULL, NULL, 'proposal', NULL, NULL, 'Declined', NULL, NULL, NULL, NULL),
(20, 'dad', 'ELEM', 'dasd', '2025-08-05', NULL, NULL, 'Workshop', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(21, 'add', 'ELEM', 'HCC Gymnasium', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(22, 'add', 'ELEM', 'HCC Gymnasium', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(23, 'fcxg', 'ELEM', 'HCC Gymnasium', '2025-08-13', NULL, NULL, 'Workshop', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(24, 'rein', 'ELEM', 'rein', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(25, 'rein', 'ELEM', 'rein', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(26, 'rein', 'ELEM', 'rein', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(27, 'rein', 'ELEM', 'rein', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(28, 'fcasddsd', 'ELEM', 'sadadasda', '2025-08-22', NULL, NULL, 'Seminar', NULL, NULL, 'Denied', NULL, NULL, NULL, NULL),
(29, 're', 'ELEM', 're', '2025-08-22', NULL, NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(30, 'asasa', 'Unknown', 'sasasads', '2025-08-07', NULL, NULL, 'Meeting', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(31, 'HOTDOG', 'Unknown', 'HCC Gymnasium', '2025-08-06', NULL, NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(32, 'A', '1', 'College Building', '2025-09-06', NULL, NULL, 'Meeting', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(33, 'sdfdfdg', 'secls', 'gdfgfdgdf', '2025-11-07', NULL, NULL, 'Meeting', 0, 0, 'Denied', NULL, NULL, NULL, NULL),
(34, 'happy', 'secls', 'birthday', '2025-09-27', NULL, NULL, 'Seminar', NULL, NULL, 'Approved', 0, 0, NULL, NULL),
(35, 'rein', 'secls', 'HCC Gymnasium', '2025-10-01', NULL, NULL, 'Seminar', NULL, NULL, 'Approved', 0, 0, NULL, NULL),
(36, 'hey', 'secls', 'College Building', '2025-09-20', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, NULL, NULL),
(37, 'Defense', 'secls', 'College Building', '2025-11-22', '11:50:00', NULL, 'Meeting', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(38, 'Mass', 'secls', 'College Building', '2025-10-15', '11:50:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(39, 'hahaha', 'secls', 'College Building', '2025-11-30', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(40, 'Christmas', 'secls', 'College Building', '2025-12-25', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(41, 'bday', 'secls', 'College Building', '2025-09-22', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, 'Automatically rejected: The request was submitted less than 7 days before the event date.', NULL),
(42, 'cvc', 'SCITE', 'asd', '2025-10-11', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(43, 'new year', 'secls', 'College Building', '2026-01-01', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, NULL),
(44, 'feb', 'secls', 'College Building', '2026-02-11', '12:00:00', NULL, 'Training', NULL, NULL, 'Approved', NULL, NULL, NULL, 1000),
(45, 'a', 'secls', 'Gymnasium', '2025-10-10', '12:00:00', NULL, 'Seminar', NULL, NULL, 'Approved', NULL, NULL, NULL, 200),
(46, 'march', 'secls', 'SHS AVR', '2025-09-27', '10:30:00', '15:00:00', 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, 'Automatically rejected: The request was submitted less than 7 days before the event date.', 1000),
(47, 'march', 'secls', 'SHS AVR', '2025-09-27', '12:00:00', '15:00:00', 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, 'Automatically rejected: The request was submitted less than 7 days before the event date.', 2000),
(48, 'a', 'secls', 'Gymnasium', '2025-09-27', '12:00:00', '18:00:00', 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, 'Automatically rejected: The request was submitted less than 7 days before the event date.', 2000),
(49, 't', 'secls', 'Gymnasium', '2025-09-27', '12:00:00', '18:00:00', 'Seminar', NULL, NULL, 'Rejected', NULL, NULL, 'Automatically rejected: The request was submitted less than 7 days before the event date.', 1200),
(50, 'pampanga day', 'secls', 'church', '2025-12-11', '08:00:00', '09:00:00', 'Meeting', NULL, NULL, 'Approved', NULL, NULL, NULL, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `event_materials`
--

CREATE TABLE `event_materials` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_materials`
--

INSERT INTO `event_materials` (`id`, `event_id`, `location`, `file_path`, `uploaded_at`) VALUES
(6, 5, 'Gym', '68678e1a289a6.jpg', '2025-07-04 08:17:30'),
(8, 5, 'Gym', '688c49cf3a4f4.jpg', '2025-08-01 04:59:59'),
(15, 40, 'Comp Lab B', '68d4a96babfc6.pdf', '2025-09-25 02:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `facility_requests`
--

CREATE TABLE `facility_requests` (
  `id` int(11) NOT NULL,
  `facility` varchar(100) DEFAULT NULL,
  `requested_by` varchar(100) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility_requests`
--

INSERT INTO `facility_requests` (`id`, `facility`, `requested_by`, `request_date`, `status`) VALUES
(2, 'EDUC', 'Doc', '2025-08-05', 'Pending'),
(3, 'T', 'T', '2025-08-07', 'Approved'),
(4, 'Room', 'o', '2025-08-23', 'Approved'),
(5, 'EDUC', 'r', '2025-08-30', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `message`, `is_read`, `created_at`) VALUES
(1, 'facility', 'New facility request from Officer: o for Room on 2025-08-23', 0, '2025-08-04 11:42:32'),
(2, 'facility', 'New facility request from Officer: r for EDUC on 2025-08-30', 0, '2025-08-25 15:22:53'),
(3, 'facility', 'New facility request(s) from Officer: kaka.', 0, '2025-09-20 10:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `username`, `password_hash`, `organization`, `created_at`) VALUES
(6, 'officer99', '$2y$10$jf3jQxdJubGzaTHjUoZH5ekSNGDu9P57.Q22E6N7Gk/25g0fM9jke', 'Demo Org', '2025-07-03 04:50:09'),
(7, 'rein', '$2y$10$OsRW0e/T/QzngrgBOVy/te0WEBwe8MyzyiFLkrpav1/eOhritiav.', 'SECLS', '2025-07-03 04:56:00'),
(8, 'ke', '$2y$10$DUSoFddvQZrWcM2DO7kVIuvapTYaNjD7QP0z5R6Byv.v0cnKx3RyC', 'fd', '2025-07-04 07:37:38'),
(9, 'r', '$2y$10$sJ4e6rMWmjUrwXJhvP9WNuuPM2GQxfDr1I7/pHruGmq9oUWrrcJYu', '1', '2025-07-05 05:23:26'),
(10, 'q', '$2y$10$r0dA.TfFCGYTW9xzncUrw.ofYrbL7itBAspnXMfTWbZHYRpwWKleq', 'q', '2025-07-11 11:14:38'),
(11, 'J', '$2y$10$lNurKLR6WcNZLVxvu6SUH.9XupWlZ33cAAkkHn4FDTmKdNIgxP0uG', 'r', '2025-08-01 04:35:08'),
(12, 'heart', '$2y$10$3AfyL5s1qq5PT65l/jIyAuwAo0LojbPlzkCa5dcvzf0XO4TIBZlPa', 'j', '2025-08-01 04:35:42'),
(13, 'T', '$2y$10$h.5Ui51V2FETj9WMrchdPeE.wv6Gk8pqS1aYvJ4wXPhjl2.Hg7P9m', 'T', '2025-08-03 06:52:42'),
(14, 'o', '$2y$10$/3xkRPjtZN6UoYsGpHjIZulAOG4pmZmQYBKiYPf4nYthgoJ..J8IK', 'ELEM', '2025-08-04 03:39:41'),
(15, 'kaka', '$2y$10$tor4S6Fz1gIdpaHxAU7lNe6ZMAzgkQvt5t82bwBxJd6mJkeDSnseO', 'secls', '2025-09-08 03:35:21'),
(16, 'k', '$2y$10$0APtG6Iq60rNG91DSLec4.aeQL6CCY2QQtTOSGTS5FNpNETIDww9e', 'secls', '2025-09-15 03:22:49'),
(17, 'h', '$2y$10$uAujegf4ti2TpJwOnKxNIerpN9KGXHs4uIslEUVm3Anuw3RublrPO', 'secls', '2025-09-17 04:13:18'),
(18, 'n', '$2y$10$uc5Upi2q/sXgkHvEvyOQCOxASFSDS1wUqQTPfT8k0C2oX.ZlHl0HK', 'secls', '2025-09-17 04:22:43'),
(19, 'v', '$2y$10$2E9nEsHDjc/clh9sA9KmKu2oaqFaK0FxuFjOme5p1TE15Qf8GiDzq', 'SCITE', '2025-09-22 10:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adviser` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `adviser`) VALUES
(1, 'HCC Student Council', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `role` enum('student','officer','admin') NOT NULL DEFAULT 'student',
  `organization` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `role`, `organization`, `created_at`, `password`) VALUES
(5, 'jher', '$2y$10$YoB7Vlh0NuVEieqTKbU5Jejc.sqeSyqV.9aOijukngs7TOmAwnPti', NULL, 'student', NULL, '2025-07-03 02:45:54', ''),
(8, 'jhe', '$2y$10$CKEZ6ZQ2lp.3D3DIVHhxWeH9TSwxWctq4WIWqsGouGH3VnZBi3YAu', NULL, 'student', NULL, '2025-07-04 05:35:21', ''),
(10, 'j', '$2y$10$Z8shBwAZi8FPMG2GGOgHM.aEMtri92biV1YupbBlJNdXltcVldF3O', NULL, 'student', NULL, '2025-07-05 06:09:46', ''),
(11, 't', '$2y$10$KJF.uJEbNQ4MaquMhqgDCeuAjdVLaD6bwbGLsB4Uac0Fnyv79Z7P.', NULL, 'student', NULL, '2025-07-11 11:00:27', ''),
(12, 'r', '$2y$10$TTWwGeIUaj0HLKYSE6wHYO/7KuAb/g8fHJvzcuVxZx2F6zWt9v8JK', NULL, 'student', NULL, '2025-08-01 04:29:08', ''),
(15, 'Te', '$2y$10$5bKibqLejMV99DuW3bzYlOwvLhIPIVK7pEhdvZwUvC1y6tIcM5UrW', NULL, 'student', NULL, '2025-08-01 04:36:20', ''),
(16, 'i', '$2y$10$D7SU7fzKArXBooPqhObfMOHTI5qhJrebGarLrMrou7dVcsAQ.TkFC', NULL, 'student', NULL, '2025-08-03 06:44:32', ''),
(17, 'rein', '$2y$10$sDv3pEXSwIhnsXkUTV5za.Q3FNzO.JDLG3BG3HePQtkHfDzn1juUG', NULL, 'student', NULL, '2025-08-04 03:17:03', ''),
(18, 'ge', '$2y$10$zqB8fpQFIVYXN7DZjYLIqeV8iJgHRv4Afoc80j.AGtea2RZZBxA16', NULL, 'student', NULL, '2025-08-25 09:52:44', ''),
(19, 'dog', '$2y$10$jD68mY4/Pp5CM7LS3eTrCu3/fBRFWQdBA00fYPETUuXM8uLNBYpo6', NULL, 'student', NULL, '2025-09-08 03:33:18', ''),
(20, 'admin', '$2y$10$c6BW5UniaEUFNmQDSPvjA.mEnRAx5uNtX7spZEfepZMgjNfhYyTTW', NULL, 'admin', NULL, '2025-09-09 08:07:58', ''),
(21, 'p', '$2y$10$.d2yR4Fq8kGem7FlRnUJR.apIHjT0pacl49MyKD7W0QMTZR9NkJHO', NULL, 'student', NULL, '2025-09-15 03:00:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_materials`
--
ALTER TABLE `event_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `facility_requests`
--
ALTER TABLE `facility_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `event_materials`
--
ALTER TABLE `event_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facility_requests`
--
ALTER TABLE `facility_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_materials`
--
ALTER TABLE `event_materials`
  ADD CONSTRAINT `event_materials_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
