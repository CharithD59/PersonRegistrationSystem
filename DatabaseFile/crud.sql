-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 09:49 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `customer_cif` varchar(30) DEFAULT NULL,
  `cif_type` varchar(20) DEFAULT NULL,
  `primary_nic` varchar(20) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `long_name` varchar(150) DEFAULT NULL,
  `home_number` varchar(20) DEFAULT NULL,
  `work_number` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `add_ln1` varchar(100) DEFAULT NULL,
  `add_ln2` varchar(100) DEFAULT NULL,
  `add_ln3` varchar(100) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `rec_type` enum('N','U') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `title`, `customer_cif`, `cif_type`, `primary_nic`, `branch`, `dob`, `long_name`, `home_number`, `work_number`, `mobile_number`, `email`, `add_ln1`, `add_ln2`, `add_ln3`, `city`, `rec_type`, `created_at`, `updated_at`) VALUES
(1, 'Ms.', '446339', 'Minor', '965680520V', 'Kalmunai Branch', '0000-00-00', 'MOHAMED AMEER IFFATH', '94672220720', '94672229131', '', 'hazaly@hotmail.com', '214', 'LIBRARY ROAD ', 'MARUTHAMUNAI-03', 'Kalmunai Branch', 'N', '2021-07-26 14:37:18', '2021-07-26 14:37:18'),
(2, 'Ms.', '446349', 'Joint', '865680520V', 'Kalmunai Branch', '0000-00-00', 'MOHAMED AMEER IFFATH', '94672220720', '94672229131', '', 'hazaly@hotmail.com', '214', 'LIBRARY ROAD ', 'MARUTHAMUNAI-03', 'Kalmunai Branch', 'N', '2021-07-26 14:37:18', '2021-07-26 14:37:18'),
(3, 'Ms.', '115246', 'Joint', '865680520V', 'Kalmunai Branch', '0000-00-00', 'MOHAMED AMEER IFFATH', '94672220720', '94672229131', '', 'hazaly@hotmail.com', '214', 'LIBRARY ROAD ', 'MARUTHAMUNAI-03', 'Kalmunai Branch', 'N', '2021-07-26 14:37:18', '2021-07-26 14:37:18'),
(4, 'Ms.', '115246', 'Joint', '865680520V', 'Kalmunai Branch', '0000-00-00', 'MOHAMED AMEER IFFATH', '94672220720', '94672229131', '', 'hazaly@hotmail.com', '214', 'LIBRARY ROAD ', 'MARUTHAMUNAI-03', 'Kalmunai Branch', 'N', '2021-07-26 14:46:54', '2021-07-26 14:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `count_oracle` int(10) NOT NULL,
  `count_new_s` int(10) NOT NULL,
  `count_update_s` int(10) NOT NULL,
  `count_error_c` int(10) NOT NULL,
  `count_error_u` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `count_oracle`, `count_new_s`, `count_update_s`, `count_error_c`, `count_error_u`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 0, 0, 0, '2021-07-03 02:01:37', '2021-07-03 02:01:37'),
(2, 5, 2, 3, 0, 0, '2021-07-03 02:02:15', '2021-07-03 02:02:15'),
(3, 5, 2, 2, 1, 0, '2021-07-03 02:03:23', '2021-07-03 02:03:23'),
(4, 5, 2, 2, 1, 0, '2021-07-03 02:05:30', '2021-07-03 02:05:30'),
(5, 5, 2, 2, 1, 0, '2021-07-03 02:06:14', '2021-07-03 02:06:14'),
(6, 5, 2, 3, 0, 0, '2021-07-03 02:06:40', '2021-07-03 02:06:40'),
(7, 5, 2, 0, 0, 3, '2021-07-03 02:07:20', '2021-07-03 02:07:20'),
(8, 5, 2, 0, 1, 2, '2021-07-03 02:08:49', '2021-07-03 02:08:49'),
(9, 5, 5, 0, 0, 0, '2021-07-03 02:09:43', '2021-07-03 02:09:43'),
(10, 5, 5, 0, 0, 0, '2021-07-03 02:10:05', '2021-07-03 02:10:05'),
(11, 5, 1, 4, 0, 0, '2021-07-03 02:18:07', '2021-07-03 02:18:07'),
(12, 5, 1, 4, 0, 0, '2021-07-03 02:42:25', '2021-07-03 02:42:25'),
(13, 5, 1, 4, 0, 0, '2021-07-03 02:48:01', '2021-07-03 02:48:01'),
(14, 5, 1, 4, 0, 0, '2021-07-03 02:48:14', '2021-07-03 02:48:14'),
(15, 5, 1, 4, 0, 0, '2021-07-03 02:49:02', '2021-07-03 02:49:02'),
(16, 5, 1, 4, 0, 0, '2021-07-03 02:50:01', '2021-07-03 02:50:01'),
(17, 5, 1, 4, 0, 0, '2021-07-03 02:51:01', '2021-07-03 02:51:01'),
(18, 5, 2, 3, 0, 0, '2021-07-03 02:52:01', '2021-07-03 02:52:01'),
(19, 5, 2, 3, 0, 0, '2021-07-03 02:53:02', '2021-07-03 02:53:02'),
(20, 5, 2, 3, 0, 0, '2021-07-03 02:54:01', '2021-07-03 02:54:01'),
(21, 5, 2, 3, 0, 0, '2021-07-03 04:39:08', '2021-07-03 04:39:08'),
(22, 5, 2, 3, 0, 0, '2021-07-03 04:40:01', '2021-07-03 04:40:01'),
(23, 5, 2, 3, 0, 0, '2021-07-03 04:41:01', '2021-07-03 04:41:01'),
(24, 5, 2, 3, 0, 0, '2021-07-03 04:42:02', '2021-07-03 04:42:02'),
(25, 5, 2, 3, 0, 0, '2021-07-03 04:43:01', '2021-07-03 04:43:01'),
(26, 5, 2, 3, 0, 0, '2021-07-03 04:44:01', '2021-07-03 04:44:01'),
(27, 5, 2, 3, 0, 0, '2021-07-03 04:45:02', '2021-07-03 04:45:02'),
(28, 5, 2, 3, 0, 0, '2021-07-03 04:46:01', '2021-07-03 04:46:01'),
(29, 5, 2, 0, 0, 3, '2021-07-03 04:47:01', '2021-07-03 04:47:01'),
(30, 5, 2, 0, 0, 3, '2021-07-03 04:47:34', '2021-07-03 04:47:34'),
(31, 5, 2, 0, 0, 3, '2021-07-03 04:48:02', '2021-07-03 04:48:02'),
(32, 5, 2, 0, 0, 3, '2021-07-03 04:49:01', '2021-07-03 04:49:01'),
(33, 5, 2, 0, 0, 3, '2021-07-03 04:50:01', '2021-07-03 04:50:01'),
(34, 5, 2, 0, 0, 3, '2021-07-04 15:20:03', '2021-07-04 15:20:03'),
(35, 5, 5, 0, 0, 0, '2021-07-04 15:21:09', '2021-07-04 15:21:09'),
(36, 5, 5, 0, 0, 0, '2021-07-04 15:21:34', '2021-07-04 15:21:34'),
(37, 5, 1, 4, 0, 0, '2021-07-04 15:22:00', '2021-07-04 15:22:00'),
(38, 5, 1, 4, 0, 0, '2021-07-04 15:22:35', '2021-07-04 15:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `created_at` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `created_at`) VALUES
(1, 'Akila Kavinda', 'Harper Olivia', 'Hello', '09:52:00'),
(2, 'Akila Kavinda', 'Harper Olivia', 'Good morning', '09:52:25'),
(3, 'Harper Olivia', 'Akila Kavinda', 'Good morning my friend', '09:52:46'),
(4, 'Harper Olivia', 'Akila Kavinda', 'How are you today?', '09:52:58'),
(5, 'Akila Kavinda', 'Harper Olivia', 'Good.... you?', '09:53:11'),
(6, 'Harper Olivia', 'Akila Kavinda', 'Same here.....', '09:53:33'),
(7, 'Emma Watson', 'Akila Kavinda', 'hello', '10:12:21'),
(8, 'Harper Olivia', 'Akila Kavinda', 'mmmmm', '10:12:35'),
(9, 'Harper Olivia', 'Akila Kavinda', 'yo yo', '12:39:57'),
(10, 'Akila Kavinda', 'Harper Olivia', 'heee', '12:42:13'),
(11, 'Harper Olivia', 'Akila Kavinda', 'bla bla blaaa', '12:43:29'),
(12, 'Akila Kavinda', 'Harper Olivia', 'hello', '10:37:52'),
(13, 'Akila Kavinda', 'Harper Olivia', 'aaaaaaaaa', '10:38:09'),
(14, 'Akila Kavinda', 'Harper Olivia', 'asasas', '10:38:11'),
(15, 'Harper Olivia', 'Akila Kavinda', 'ccccccc', '10:38:25'),
(16, 'Akila Kavinda', 'Harper Olivia', 'ccvcvc', '11:08:40'),
(17, 'Akila Kavinda', 'Harper Olivia', 'asasas', '11:09:44'),
(18, 'Akila Kavinda', 'Harper Olivia', 'cdcdc', '11:09:45'),
(19, 'Akila Kavinda', 'Harper Olivia', 'xcxc', '11:09:49'),
(20, 'Harper Olivia', 'Akila Kavinda', 'xcxc', '11:09:52'),
(21, 'Harper Olivia', 'Akila Kavinda', 'cxcx', '11:09:54'),
(22, 'Akila Kavinda', 'Harper Olivia', 'hello', '21:02:29'),
(23, 'Akila Kavinda', 'Harper Olivia', 'sdsdfsdfsdfsdf', '21:02:33');

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
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_05_29_062114_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `number` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `age` int(2) NOT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`number`, `id`, `firstName`, `lastName`, `mobile`, `email`, `address`, `password`, `date`, `age`, `religion`, `nationality`, `imageName`, `created_at`, `updated_at`) VALUES
(953640139, 19, 'Charith', 'Dilanka', '0778679640', 'charithdilanka2@gmail.com', 'Jinasiri, Matara', '$2y$10$O59bnZuRQ.W.ep91v7iN7.FxDT7bAJzk4mUISwNy12DZ.EU.GzjMK', '2021-10-20', 25, 'Buddhism', 'Srilanka', 'File-1634286504.png', '2021-10-15 02:58:24', '2021-10-15 14:01:08'),
(962546895, 20, 'Tashmila', 'Prasansani', '0778679640', 'tashmila@gmail.com', 'Middeniya', '$2y$10$ZmRI1TQl.FibKmXYKN.0re91QDLzhHHQy2hG5Wc8My4.VFDj7X2/m', '2021-10-12', 24, 'Buddhism', 'Srilanka', 'File-1634286722.png', '2021-10-15 03:02:02', '2021-10-15 03:02:02'),
(943640139, 21, 'Akila', 'Kavinda', '0778679640', 'akilakavinda@gmail.com', 'Galle', '$2y$10$WnthaJeMK9NFEreMSxqAWu2oSWFwwUmcgE0FR4.DfcxwS3W9DbnGe', '2021-10-26', 26, 'Islam', 'Srilanka', 'File-1634286787.jpg', '2021-10-15 03:03:07', '2021-10-15 03:03:07'),
(983640539, 22, 'Ishan', 'Kandamby', '0778679640', 'ishan@gmail.com', 'Matara', '$2y$10$eBrF2REHIidGhzLrs.jBZuVm4MYNL9QG/rnVMAkzFewBGGaKs3spu', '2021-10-06', 22, 'Buddhism', 'Srilanka', 'File-1634287178.png', '2021-10-15 03:09:38', '2021-10-15 03:30:55'),
(933640137, 23, 'Osand', 'Dilahara', '0778679640', 'osanda@gmail.com', 'Thissa', '$2y$10$6j65uk9xbvdr72T38WNnS.2ex1.8BQxXBlOJVZOp9QgfqghH7a66S', '2021-10-24', 27, 'Christianity', 'Srilanka', 'File-1634287244.jpg', '2021-10-15 03:10:44', '2021-10-15 03:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
