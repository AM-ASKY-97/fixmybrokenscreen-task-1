-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 08:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixmybrokenscreen`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_28_062242_create_movies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster_path` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `poster_path`, `release_date`, `created_at`, `updated_at`) VALUES
(1, 'The Godfather', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg', '1972-03-14', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(2, 'Avengers: Infinity War', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', '2018-04-25', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(3, 'Spirited Away', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/dL11DBPcRhWWnJcFXl9A07MrqTI.jpg', '2001-07-20', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(4, 'Life Is Beautiful', 'https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', '1997-12-20', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(5, 'Schindler\'s List', 'https://m.media-amazon.com/images/I/81+H4lZVw+L._AC_UF894,1000_QL80_.jpg', '1993-11-29', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(6, 'The Godfather: Part II', 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', '1974-12-20', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(7, 'Whiplash', 'https://i0.wp.com/dailycampus.com/wp-content/uploads/2021/03/whiplash.jpg?fit=720%2C1024&ssl=1&w=640', '2014-10-10', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(8, 'Pulp Fiction', 'https://www.miramax.com/assets/Pulp-Fiction1.png', '1994-09-10', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(9, 'Doctor Who: The Time of the Doctor', 'https://upload.wikimedia.org/wikipedia/en/7/77/The_Time_of_the_Doctor_promo.jpg', '2013-12-25', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(10, 'The Green Mile', 'https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/green_mile_keyart.jpg', '1999-12-10', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(11, 'Once Upon a Time in America', 'https://flxt.tmsimg.com/assets/p8405_p_v8_aa.jpg', '1984-05-23', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(12, 'Fight Club', 'https://flxt.tmsimg.com/assets/p23069_p_v8_aa.jpg', '1999-10-15', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(13, 'A Silent Voice', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/drlyoSKDOPnxzJFrRWGqzDsyJvR.jpg', '2016-09-17', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(14, 'Harakiri', 'https://m.media-amazon.com/images/M/MV5BNzBkNGE4YTItNTA3ZC00NmUwLWFkMmItN2I5ZTJhYjcyNjUwXkEyXkFqcGdeQXVyMTExNzQzMDE0._V1_.jpg', '1962-09-15', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(15, 'One Flew Over the Cuckoo\'s Nest', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG9EKewiI74mOftP3Oztpoe68HIflT08cXksv1RcIroUgfvNEgPJZyz2V5f-m9CEvOJbU&usqp=CAU', '1975-11-18', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(16, 'Forrest Gump', 'https://i.ytimg.com/vi/hf_lCA-T99c/movieposter_en.jpg', '1994-07-06', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(17, 'Psycho', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/81d8oyEFgj7FlxJqSDXWr8JH8kV.jpg', '1960-06-16', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(18, 'The Shawshank Redemption', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyZdK3bLUJ3-OnVUC7rmDC1XIa74Tl4yhAfQ&usqp=CAU', '1994-09-23', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(19, 'White Heat', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM_tc6UjdsaEC5AOFAIi8qZLbsV24ISl8ffQ&usqp=CAU', '2016-08-26', '2023-02-28 01:00:04', '2023-02-28 01:00:04'),
(20, 'Dilwale Dulhania Le Jayenge', 'https://filmfare.wwmindia.com/content/2020/oct/dilwale-dulhania-le-jayenge-11603179328.jpg', '1995-10-20', '2023-02-28 01:00:04', '2023-02-28 01:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
