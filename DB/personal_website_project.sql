-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2022 at 01:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_website_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Mister Morshedul Arefin', 'arefindev@gmail.com', '$2y$10$fIzn2uK2FxkNo8VQ9uTzKutAwMvlN3eumUmfYP96mCFrPwqa3tMMq', 'admin.jpg', '', NULL, '2022-02-19 10:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint UNSIGNED NOT NULL,
  `month` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_post` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `month`, `year`, `total_post`, `created_at`, `updated_at`) VALUES
(1, '07', '2022', 1, NULL, '2022-10-20 00:50:37'),
(2, '08', '2022', 1, NULL, NULL),
(3, '09', '2022', 1, NULL, NULL),
(4, '10', '2022', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `photo`, `url`, `created_at`, `updated_at`) VALUES
(1, 'client_1665550385.png', NULL, '2022-10-11 22:18:51', '2022-10-11 22:53:10'),
(2, 'client_1665550398.png', NULL, '2022-10-11 22:18:59', '2022-10-11 22:53:18'),
(3, 'client_1665550405.png', NULL, '2022-10-11 22:19:07', '2022-10-11 22:53:25'),
(4, 'client_1665550412.png', NULL, '2022-10-11 22:19:15', '2022-10-11 22:53:32'),
(5, 'client_1665550418.png', NULL, '2022-10-11 22:19:26', '2022-10-11 22:53:38'),
(6, 'client_1665550426.png', NULL, '2022-10-11 22:19:35', '2022-10-11 22:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `person_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `person_name`, `person_email`, `person_comment`, `person_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Patrick Henderson', 'pat@gmail.com', 'This is a very nice website.', 'Visitor', 1, '2022-10-21 22:00:17', '2022-10-22 00:30:49'),
(2, 6, 'Smith Cooper', 'smith@gmail.com', 'I will soon make a website like you. So I want to hire you for my project soon. Keep up the good work.', 'Visitor', 1, '2022-10-21 22:01:18', '2022-10-22 00:26:49'),
(4, 6, 'MIster Arefin', 'arefin2k@gmail.com', 'I want to hire you also for my next project. Are you interested?', 'Visitor', 1, '2022-10-22 00:39:07', '2022-10-22 00:39:21'),
(5, 6, 'Mister Morshedul Arefin', 'arefindev@gmail.com', 'Thank you for being interested to hire me for your projects. Don\'t hesitate to contact me.', 'Admin', 1, '2022-10-22 02:57:19', '2022-10-22 03:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint UNSIGNED NOT NULL,
  `degree` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `degree`, `institute`, `time`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'B.Sc. in Computer Science and Engineering', 'Khulna University', '2015-2019', 1, '2022-10-10 05:23:35', '2022-10-10 05:23:35'),
(2, 'H.S.C. in Science Group', 'Cantonment College, Khulna', '2013-2015', 2, '2022-10-10 05:23:55', '2022-10-10 21:00:11'),
(3, 'S.S.C. in Science Group', 'Cantonment College, Khulna', '2011-2013', 3, '2022-10-10 05:24:11', '2022-10-10 05:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `designation`, `time`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'ArefinDev Limited', 'Software Engineer', '2022-Present', 1, '2022-10-10 22:22:49', '2022-10-10 23:33:20'),
(2, 'Prime Software Limited', 'Senior Developer', '2021-2022', 2, '2022-10-10 22:23:09', '2022-10-10 22:23:09'),
(3, 'ABC Computer Solution', 'Junior Developer', '2019-2021', 3, '2022-10-10 22:23:26', '2022-10-10 22:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_items`
--

CREATE TABLE `home_page_items` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_person_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_person_designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_button_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_person_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_person_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_person_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon1_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon2_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon3_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon4_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_icon5_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `skill_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `skill_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qualification_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qualification_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `experience_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `counter1_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter1_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter2_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter2_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter3_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter3_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter4_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter4_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_total` int NOT NULL,
  `service_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolio_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolio_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_items`
--

INSERT INTO `home_page_items` (`id`, `banner_title`, `banner_person_name`, `banner_person_designation`, `banner_description`, `banner_button_text`, `banner_button_url`, `banner_photo`, `about_subtitle`, `about_title`, `about_description`, `about_person_name`, `about_person_phone`, `about_person_email`, `about_icon1`, `about_icon1_url`, `about_icon2`, `about_icon2_url`, `about_icon3`, `about_icon3_url`, `about_icon4`, `about_icon4_url`, `about_icon5`, `about_icon5_url`, `about_photo`, `about_status`, `skill_subtitle`, `skill_title`, `skill_status`, `qualification_subtitle`, `qualification_title`, `qualification_status`, `education_title`, `experience_title`, `counter1_number`, `counter1_name`, `counter2_number`, `counter2_name`, `counter3_number`, `counter3_name`, `counter4_number`, `counter4_name`, `counter_background`, `counter_status`, `testimonial_subtitle`, `testimonial_title`, `testimonial_background`, `testimonial_status`, `client_subtitle`, `client_title`, `client_status`, `service_subtitle`, `service_title`, `service_total`, `service_status`, `portfolio_subtitle`, `portfolio_title`, `portfolio_status`, `blog_subtitle`, `blog_title`, `blog_status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Hello, I\'m', 'Morshedul Arefin', 'Professional Web Developer', 'I am 25 years old web designer & developer; and working to build websites for my international clients.', 'Hire Me', NULL, 'home_banner.png', 'Who Am I', 'About Me', 'I am an experienced web developers from Bangladesh. I am working in my field for about the last 10+ years. I worked on Laravel Development, WordPress Theme and Plugin Development etc.\r\n\r\nI have created a lot of online courses and I have over 3000 students online who are learning well from my lectures. I hope if you enroll you will also enjoy.', 'Morshedul Arefin', '111-222-2334', 'arefindev@gmail.com', 'fab fa-facebook-f', '#', 'fab fa-twitter', '#', 'fab fa-linkedin-in', '#', 'fab fa-instagram', '#', NULL, NULL, 'home_about.jpg', 'Show', 'My Skill', 'My Expertise Area', 'Show', 'My Qualification', 'Education and Experience', 'Show', 'Education', 'Experience', '600', 'Clients', '200', 'Projects', '5000', 'Students', '80', 'Products', 'counter_background.jpg', 'Show', 'Client Testimonials', 'See What My Clients Tell', 'testimonial_background.jpg', 'Show', 'My Clients', 'Clients with Whom I worked', 'Show', 'Services', 'What Services I Offer', 6, 'Show', 'My Portfolio', 'All Main Client Works', 'Show', 'Latest Blog', 'Updated Posts Are Listed', 'Show', 'Home', 'Home', NULL, '2022-10-18 21:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(7, '2022_10_08_040311_create_home_page_items_table', 2),
(8, '2022_10_09_111716_create_skills_table', 3),
(10, '2022_10_10_111847_create_education_table', 4),
(11, '2022_10_11_041432_create_experiences_table', 5),
(12, '2022_10_11_080841_create_testimonials_table', 6),
(13, '2022_10_12_041106_create_clients_table', 7),
(14, '2022_10_12_082021_create_services_table', 8),
(15, '2022_10_15_031920_create_page_items_table', 9),
(16, '2022_10_15_100235_create_portfolio_categories_table', 10),
(17, '2022_10_15_115527_create_portfolios_table', 11),
(18, '2022_10_16_093404_create_portfolio_photos_table', 12),
(19, '2022_10_17_045513_create_portfolio_videos_table', 13),
(20, '2022_10_19_032156_create_post_categories_table', 14),
(21, '2022_10_19_190419_create_posts_table', 15),
(22, '2022_10_20_063438_create_archives_table', 16),
(23, '2022_10_22_034319_create_comments_table', 17),
(24, '2022_10_22_034610_create_replies_table', 18),
(25, '2022_10_22_104040_create_settings_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `page_items`
--

CREATE TABLE `page_items` (
  `id` bigint UNSIGNED NOT NULL,
  `services_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `services_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolios_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolios_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolios_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolios_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map_iframe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archive_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_items`
--

INSERT INTO `page_items` (`id`, `services_heading`, `services_banner`, `services_seo_title`, `services_seo_meta_description`, `portfolios_heading`, `portfolios_banner`, `portfolios_seo_title`, `portfolios_seo_meta_description`, `about_heading`, `about_banner`, `about_photo`, `about_description`, `about_seo_title`, `about_seo_meta_description`, `contact_heading`, `contact_banner`, `contact_address`, `contact_email`, `contact_phone`, `contact_map_iframe`, `contact_seo_title`, `contact_seo_meta_description`, `blog_heading`, `blog_banner`, `blog_seo_title`, `blog_seo_meta_description`, `category_banner`, `archive_banner`, `archive_seo_title`, `archive_seo_meta_description`, `search_banner`, `search_seo_title`, `search_seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Services', 'banner_services_1665806068.jpg', 'Services', 'Services', 'Portfolios', 'banner_portfolios_1666065925.jpg', 'Portfolios', 'Portfolios', 'About Me', 'banner_about_1666075073.jpg', 'photo_about_1666081095.jpg', '<h2>About Me</h2><p>Lorem ipsum dolor sit amet, ad vide autem omnium duo, cu erant tantas doctus per. Duo eu adipisci neglegentur. His at quidam rationibus, has prima petentium inciderint te, dicat discere maiestatis has eu. Per at dicta dictas audiam, cu qui esse scripserit. Dicam signiferumque eu mea, at ius eirmod alienum noluisse, amet accommodare id quo.</p><h2>My History</h2><p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.<br>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.<br>&nbsp;</p>', 'About', 'About', 'Contact', 'banner_contact_1666087397.jpg', '34, MN Street,\r\nNYC, USA, 22345', 'info@arefindev.com\r\ncontact@arefindev.com', '122-344-4447\r\n344-222-1122', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14969.583387528844!2d-87.84570983694078!3d41.885518138411534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2c3cd0f4cbed%3A0xafe0a6ad09c0c000!2sChicago%2C%20IL%2C%20USA!5e0!3m2!1sen!2sbd!4v1664255386426!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', 'Blog', 'banner_blog_1666212050.jpg', 'Blog', 'Blog', 'banner_category_1666218310.jpg', 'banner_archive_1666218328.jpg', 'Archive', 'Archive', 'banner_search_1666218337.jpg', 'Search', 'Search', NULL, '2022-10-20 01:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_category_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_client` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_start_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_end_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_cost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_category_id`, `name`, `slug`, `description`, `photo`, `banner`, `project_client`, `project_company`, `project_start_date`, `project_end_date`, `project_cost`, `project_website`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Web Design Project 1', 'web-design-project-1', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'portfolio_photo_1665838434.jpg', 'portfolio_banner_1665838434.jpg', 'Peter Smith', 'AA Company', 'Sep 01, 2022', 'Sep 22, 2022', '$2500', 'https://www.abc.com', 'Web Design Project 1', 'Web Design Project 1', '2022-10-15 06:53:54', '2022-10-15 06:53:54'),
(2, 2, 'Web Development Project 1', 'web-development-project-1', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'portfolio_photo_1665838907.jpg', 'portfolio_banner_1665838907.jpg', 'Peter John', 'BB Multimedia', 'July, 2022', 'October, 2022', '$5000', 'https://www.petermultimedia.com', 'Web Development Project 1', 'Web Development Project 1', '2022-10-15 07:01:47', '2022-10-15 09:52:02'),
(4, 1, 'Web Design Project 2', 'web-design-project-2', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'portfolio_photo_1665848737.jpg', 'portfolio_banner_1665848737.jpg', 'Smith Johnson', 'MM Technology', '23 April, 2022', '18 August, 2022', '$800', NULL, 'Smith Johnson', 'Smith Johnson', '2022-10-15 09:45:37', '2022-10-15 09:45:37'),
(5, 1, 'Web Design Project 3', 'web-design-project-3', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849008.jpg', 'portfolio_banner_1665849008.jpg', 'Tom Cruise', 'Tom Technology', '2022-03-22', '2022-08-10', '$1900', 'https://www.tomtechnology.com', 'Web Design Project 3', 'Web Design Project 3', '2022-10-15 09:50:08', '2022-10-15 09:50:08'),
(6, 2, 'Web Development Project 2', 'web-development-project-2', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849116.jpg', 'portfolio_banner_1665849116.jpg', 'Ricky Ponting', 'Ricky Lab Limited', '2022-01-01', '2022-07-12', '$3500', 'https://www.rickylab.com', 'Web Development Project 2', 'Web Development Project 2', '2022-10-15 09:51:56', '2022-10-15 09:51:56'),
(7, 2, 'Web Development Project 3', 'web-development-project-3', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849208.jpg', 'portfolio_banner_1665849208.jpg', 'Adam Pit', 'Adam Techonology', '2021-10-23', '2022-06-10', '$3100', 'https://www.adam-techonology.com', 'Web Development Project 3', 'Web Development Project 3', '2022-10-15 09:53:28', '2022-10-17 21:36:43'),
(8, 3, 'Digital Marketing Project 1', 'digital-marketing-project-1', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849308.jpg', 'portfolio_banner_1665849308.jpg', 'Ben Glitch', 'Ben Limited', '2020-10-29', '2022-08-20', '$5000', 'https://www.ben-limited.com', 'Digital Marketing Project 1', 'Digital Marketing Project 1', '2022-10-15 09:55:08', '2022-10-15 09:55:08'),
(9, 3, 'Digital Marketing Project 2', 'digital-marketing-project-2', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849384.jpg', 'portfolio_banner_1665849384.jpg', 'Patrick Henderson', 'Patrick Media', '2020-10-29', '2022-08-20', '$2000', 'https://www.patrick-media.com', 'Digital Marketing Project 2', 'Digital Marketing Project 2', '2022-10-15 09:56:24', '2022-10-15 09:57:50'),
(10, 3, 'Digital Marketing Project 3', 'digital-marketing-project-3', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span></p>', 'portfolio_photo_1665849456.jpg', 'portfolio_banner_1665849456.jpg', 'Amit Agarwal', 'Amit Limited', '2020-10-29', '2022-08-20', '$1500', 'https://www.amit-limited.com', 'Digital Marketing Project 3', 'Digital Marketing Project 3', '2022-10-15 09:57:36', '2022-10-15 09:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', '2022-10-15 04:15:02', '2022-10-15 04:18:08'),
(2, 'Web Development', '2022-10-15 04:15:16', '2022-10-15 04:15:16'),
(3, 'Digital Marketing', '2022-10-15 04:15:25', '2022-10-15 04:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_photos`
--

CREATE TABLE `portfolio_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_id` int NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_photos`
--

INSERT INTO `portfolio_photos` (`id`, `portfolio_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'portfolio_gallery_photo_1665913886.jpg', '2022-10-16 03:51:26', '2022-10-16 03:51:26'),
(2, 2, 'portfolio_gallery_photo_1665913913.jpg', '2022-10-16 03:51:53', '2022-10-16 03:51:53'),
(3, 2, 'portfolio_gallery_photo_1665913931.jpg', '2022-10-16 03:52:11', '2022-10-16 03:52:11'),
(4, 1, 'portfolio_gallery_photo_1665913945.jpg', '2022-10-16 03:52:25', '2022-10-16 03:52:25'),
(5, 1, 'portfolio_gallery_photo_1665913950.jpg', '2022-10-16 03:52:30', '2022-10-16 03:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_videos`
--

CREATE TABLE `portfolio_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_id` int NOT NULL,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_videos`
--

INSERT INTO `portfolio_videos` (`id`, `portfolio_id`, `caption`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'How I made this Photography Website for a client', 'wQ0u8B0zhME', '2022-10-16 23:04:02', '2022-10-16 23:04:02'),
(2, 1, 'How to let your clients pay for Elementor Pro', 'K2KHiFY46oA', '2022-10-16 23:05:41', '2022-10-16 23:05:41'),
(3, 2, 'It\'s Easier to Keep the Code Clean', 'Bda5OnWVsOk', '2022-10-16 23:07:25', '2022-10-16 23:07:25'),
(4, 2, 'Laravel Log Cleaner: A Simple Package Review', '_kOqjbxhvJU', '2022-10-16 23:07:38', '2022-10-16 23:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_category_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_category_id`, `title`, `slug`, `short_description`, `description`, `photo`, `banner`, `show_comment`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Blog Post Title 1', 'post-1', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666209950.jpg', 'post_banner_1666209950.jpg', 'Yes', 'Blog Post Title 1', 'Blog Post Title 1', '2022-07-19 13:20:11', '2022-10-19 14:05:50'),
(3, 2, 'Blog Post Title 2', 'post-2', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666210004.jpg', 'post_banner_1666210004.jpg', 'Yes', 'Blog Post Title 2', 'Blog Post Title 2', '2022-08-19 14:06:44', '2022-10-19 14:06:44'),
(4, 4, 'Blog Post Title 3', 'post-3', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666210047.jpg', 'post_banner_1666210047.jpg', 'No', 'Blog Post Title 3', 'Blog Post Title 3', '2022-09-19 14:07:27', '2022-10-19 16:54:27'),
(5, 5, 'Blog Post Title 4', 'post-4', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666210082.jpg', 'post_banner_1666210082.jpg', 'Yes', 'Blog Post Title 4', 'Blog Post Title 4', '2022-10-19 14:08:02', '2022-10-19 16:54:40'),
(6, 6, 'Blog Post Title 5', 'post-5', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666210119.jpg', 'post_banner_1666210119.jpg', 'Yes', 'Blog Post Title 5', 'Blog Post Title 5', '2022-10-19 14:08:39', '2022-10-19 16:54:50'),
(7, 2, 'Blog Post Title 6', 'post-6', 'Lorem ipsum dolor sit amet, sit vidit soluta assueverit ei. Pro ut case abhorreant persequeris. Mei at adhuc invenire. Id purto eloquentiam duo, ne erroribus rationibus mel.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p>Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</p><p>Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</p>', 'post_photo_1666210159.jpg', 'post_banner_1666210159.jpg', 'Yes', 'Blog Post Title 6', 'Blog Post Title 6', '2022-10-19 14:09:19', '2022-10-19 14:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_name`, `category_slug`, `category_seo_title`, `category_seo_meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Website Security', 'website-security', 'Website Security', 'Website Security', '2022-10-18 21:30:19', '2022-10-19 16:14:42'),
(4, 'Technology', 'technology', 'Technology', 'Technology', '2022-10-19 15:19:38', '2022-10-19 16:14:48'),
(5, 'Server Maintenance', 'server-maintenance', 'Server Maintenance', 'Server Maintenance', '2022-10-19 15:19:55', '2022-10-19 16:14:55'),
(6, 'Computer Science', 'computer-science', 'Computer Science', 'Computer Science', '2022-10-19 15:20:09', '2022-10-19 16:15:02'),
(7, 'Programming', 'programming', 'Programming', 'Programming', '2022-10-19 16:55:43', '2022-10-19 16:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `person_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `post_id`, `comment_id`, `person_name`, `person_email`, `person_comment`, `person_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Mr. Brent', 'brent@gmail.com', 'I also see this is a very nice website. I agree with you.', 'Visitor', 1, '2022-10-22 01:09:55', '2022-10-22 01:17:53'),
(3, 6, 2, 'Amanda', 'amanda@gmail.com', 'I also will hire him', 'Visitor', 1, '2022-10-22 01:20:12', '2022-10-22 01:21:08'),
(4, 6, 2, 'Peter', 'peter@gmail.com', 'Like you, I will hire him for my next project too. He is an excellent developer I think.', 'Visitor', 1, '2022-10-22 02:24:11', '2022-10-22 02:24:18'),
(5, 6, 2, 'Mister Morshedul Arefin', 'arefindev@gmail.com', 'Hi Smith, please contact me here: arefindev@gmail.com', 'Admin', 1, '2022-10-22 03:04:31', '2022-10-22 03:10:23'),
(6, 6, 2, 'Smith Cooper', 'smith@gmail.com', 'I will email you soon.', 'Visitor', 1, '2022-10-22 03:06:31', '2022-10-22 03:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `short_description`, `description`, `icon`, `photo`, `banner`, `seo_title`, `seo_meta_description`, `item_order`, `created_at`, `updated_at`) VALUES
(1, 'Website Design', 'website-design', 'Lorem ipsum dolor sit amet, eos eu tollit argumentum, affert nostrum facilisi ut sit. Ne vide assum suavitate usu, nihil petentium est et.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'fas fa-volleyball-ball', 'service_photo_1665563815.jpg', 'service_banner_1665563815.jpg', 'Website Design', 'Website Design', 1, '2022-10-12 02:36:55', '2022-10-14 22:09:43'),
(2, 'Website Development', 'website-development', 'Ne nam mollis hendrerit, ne latine deseruisse sed, ceteros accusam sea id. Vis erant putant assentior eu, in porro nonumy sapientem sed.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Lus te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'fas fa-toolbox', 'service_photo_1665573405.jpg', 'service_banner_1665573405.jpg', 'Website Development', 'Website Development', 2, '2022-10-12 05:16:45', '2022-10-14 22:11:51'),
(3, 'Digital Marketing', 'digital-marketing', 'Vis in tempor nemore oportere, quidam noluisse comprehensam usu in. Singulis nominati torquatos cum cu, nec aliquid honestatis at.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'fas fa-bullhorn', 'service_photo_1665573484.jpg', 'service_banner_1665573484.jpg', 'Digital Marketing', 'Digital Marketing', 3, '2022-10-12 05:18:04', '2022-10-14 22:12:04'),
(4, 'Content Writing', 'content-writing', 'Lorem ipsum dolor sit amet, eos eu tollit argumentum, affert nostrum facilisi ut sit. Ne vide assum suavitate usu, nihil petentium est et.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'fas fa-pencil-alt', 'service_photo_1665573547.jpg', 'service_banner_1665573547.jpg', 'Content Writing', 'Content Writing', 4, '2022-10-12 05:19:07', '2022-10-14 22:12:16'),
(5, 'Social Media Marketing', 'smm', 'Ne nam mollis hendrerit, ne latine deseruisse sed, ceteros accusam sea id. Vis erant putant assentior eu, in porro nonumy sapientem sed.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'far fa-lightbulb', 'service_photo_1665573587.jpg', 'service_banner_1665573587.jpg', 'Social Media Marketing', 'Social Media Marketing', 5, '2022-10-12 05:19:47', '2022-10-14 22:24:18'),
(6, 'Search Engine Optimization', 'seo', 'Vis in tempor nemore oportere, quidam noluisse comprehensam usu in. Singulis nominati torquatos cum cu, nec aliquid honestatis at.', '<p>Qui ea oporteat democritum, ad sed minimum offendit expetendis. Idque volumus platonem eos ut, in est verear delectus. Vel ut option adipisci consequuntur. Mei et solum malis detracto, has iuvaret invenire inciderint no. Id est dico nostrud invenire.</p><p><span style=\"text-align: var(--bs-body-text-align);\">Ius te rebum philosophia, illum instructior te his. Quot option platonem mei an. Homero utroque mei at, congue mentitum ei vix, an luptatum gubergren mel. Has duis indoctum imperdiet ea.</span><br></p><p><span style=\"text-align: var(--bs-body-text-align);\">Brute illud persequeris ius ne, liber errem no nec, vel ut libris accusam. Ius gloriatur voluptatibus id, ad nec antiopam inciderint. Vis tota molestie vivendum ad. Facete albucius laboramus vel an, vix ea quodsi inciderint. Cu quod assum nominati mei, dictas comprehensam et est. Vidit dolorum fabellas has ad.</span><br></p>', 'fas fa-search', 'service_photo_1665573630.jpg', 'service_banner_1665573630.jpg', 'Search Engine Optimization', 'Search Engine Optimization', 6, '2022-10-12 05:20:30', '2022-10-14 22:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_1` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_1_url` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_2` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_2_url` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_3` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_3_url` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_4` text COLLATE utf8mb4_unicode_ci,
  `footer_icon_4_url` text COLLATE utf8mb4_unicode_ci,
  `footer_copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preloader_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `logo_footer`, `footer_text`, `footer_icon_1`, `footer_icon_1_url`, `footer_icon_2`, `footer_icon_2_url`, `footer_icon_3`, `footer_icon_3_url`, `footer_icon_4`, `footer_icon_4_url`, `footer_copyright`, `preloader_status`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'logo_1666440980.jpg', 'favicon_1666440997.png', 'logo_footer_1666441007.png', 'Cum an oratio fierent detraxit, per in novum aliquando. Vel ei aeque appellantur. Ne deserunt adipisci sed, sed ex veniam accusam, usu ut nonumy admodum recteque.', 'fab fa-facebook-f', '#', 'fab fa-twitter', '#', 'fab fa-linkedin-in', '#', 'fab fa-instagram', '#', 'Copright 2022, Morshedul Arefin. All Rights Reserved.', 'Show', '#EE6348', NULL, '2022-10-22 07:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `side` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `percentage`, `side`, `created_at`, `updated_at`) VALUES
(1, 'Photoshop', '60', 'Left', '2022-10-09 05:36:59', '2022-10-09 12:35:06'),
(2, 'Illustrator', '80', 'Left', '2022-10-09 12:35:20', '2022-10-09 12:35:20'),
(3, 'Graphic Design', '70', 'Left', '2022-10-09 12:35:32', '2022-10-09 22:23:40'),
(4, 'Search Engine Optimization', '55', 'Left', '2022-10-09 12:35:42', '2022-10-09 12:35:42'),
(5, 'Laravel', '95', 'Right', '2022-10-09 12:35:54', '2022-10-09 12:35:54'),
(6, 'WordPress', '80', 'Right', '2022-10-09 12:36:04', '2022-10-09 12:36:04'),
(7, 'Python', '65', 'Right', '2022-10-09 12:36:13', '2022-10-09 12:36:13'),
(8, 'Java', '40', 'Right', '2022-10-09 12:36:24', '2022-10-09 12:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Patrick Henderson', 'CEO, ABC Software', 'Ad sea commodo tincidunt. Perfecto pericula ut eum, ei usu fugit utroque qualisque. Ius no illud prodesset repudiandae, mei fastidii iudicabit id. Zril democritum an cum, mel cu solet diceret. Est error abhorreant contentiones ea, in stet intellegebat eum.', 'testimonial_1665476443.jpg', '2022-10-11 02:20:43', '2022-10-11 02:20:43'),
(2, 'David Scott', 'Founder, ZZ Multimedia', 'Minim scriptorem eos te, debet habemus laboramus usu te. Ei mel alia graeco melius, ius elit tacimates consectetuer ea. Erat exerci menandri no his, primis repudiare at vix, cu quod novum nemore vix. Ne lucilius maluisset persequeris mea, vix inermis accusamus.', 'testimonial_1665478118.jpg', '2022-10-11 02:21:44', '2022-10-11 02:48:38'),
(3, 'Brent Grundy', 'Director, MN Business Solution', 'Vis summo suscipit splendide ne, ad augue consul impetus vel. Et qui inani utroque accusata, sit tation fastidii ut, eos ex natum urbanitas. Dolorum civibus democritum in usu. Quodsi accusam appellantur quo id, ea mel saepe viderer. Nam id stet comprehensam.', 'testimonial_1665476532.jpg', '2022-10-11 02:22:12', '2022-10-11 02:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_page_items`
--
ALTER TABLE `home_page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_items`
--
ALTER TABLE `page_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_photos`
--
ALTER TABLE `portfolio_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_videos`
--
ALTER TABLE `portfolio_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_items`
--
ALTER TABLE `home_page_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `page_items`
--
ALTER TABLE `page_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio_photos`
--
ALTER TABLE `portfolio_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `portfolio_videos`
--
ALTER TABLE `portfolio_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
