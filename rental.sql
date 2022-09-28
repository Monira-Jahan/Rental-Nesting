-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2022 at 01:26 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment_details`
--

CREATE TABLE `apartment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_bed` int(11) NOT NULL,
  `total_bath` int(11) NOT NULL,
  `apartment_size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_rent` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` int(11) NOT NULL,
  `total_view` int(11) NOT NULL DEFAULT '0',
  `holding_id` int(100) NOT NULL,
  `commission_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_details`
--

INSERT INTO `apartment_details` (`id`, `owner_id`, `district`, `zone`, `address`, `total_bed`, `total_bath`, `apartment_size`, `apartment_description`, `apartment_category`, `flat_name`, `floor_no`, `apartment_rent`, `active_status`, `total_view`, `holding_id`, `commission_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 3, '1600sqft', 'Take A Look At this Impressive Flat Of 1650 Sq Ft For Rent Located At South Khulsi Very Close To Mercantile Bank Limited\nWhen it comes to apartments, there is usually a long list of criteria that people look upon when deciding to get something. It is important to remember during these times that regardless of what kind of advice you get around town, your concern should be your satisfaction.', 'apartment', 'C4', '3rd Floor', '20000', 1, 0, 12345, 0, '2021-05-24 08:12:39', '2021-05-24 08:13:38'),
(2, 2, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 2, '1000 sqft', 'Take A Look At this Impressive Flat Of 1000 Sq Ft For Rent Located At South Khulsi Very Close To Mercantile Bank Limited\nWhen it comes to apartments, there is usually a long list of criteria that people look upon when deciding to get something. It is important to remember during these times that regardless of what kind of advice you get around town, your concern should be your satisfaction.', 'apartment', 'B2', '2nd Floor', '15000', 1, 1, 12345, 0, '2021-05-24 10:58:41', '2021-06-03 12:22:19'),
(3, 2, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 1, 1, '800 sqft', 'Are you thinking of expanding your business or need a new location for your new venture? As an expansion of your business to a new Office assures your business growth and success, we think you would be willing to do that. This vacant business space located in 7 No. West Sholoshohor Ward is having all the modern fittings along with security.  \nAdvance  1lakh.', 'office space', 'A1', 'Ground Floor', '7000', 2, 6, 12345, 0, '2021-05-24 11:04:43', '2021-06-03 14:03:45'),
(4, 3, 'Chattogram', 'Bayazid', 'Hill View R/A, Bayazid, Chattogram', 3, 3, '1100 sqft', 'A calming 1100 SQ FT home is up at Bayazid at a very low price\nThis lovely apartment is located in a great location with numerous restaurants and places to visit nearby. A credible entrance leads to the flat. Bathrooms and kitchen are completed with sturdy fixtures. All the rooms are well spacious and lets you have the whole feel of solace and calmness with closed ones.', 'apartment', 'C2', '3rd Floor', '19000', 1, 0, 13456, 0, '2021-05-24 11:28:24', '2021-05-24 12:16:23'),
(5, 3, 'Chattogram', 'Bayazid', 'Hill View R/A, Bayazid, Chattogram', 2, 2, '900 sqft', 'A calming 900 SQ FT home is up at Bayazid at a very low price\nThis lovely apartment is located in a great location with numerous restaurants and places to visit nearby. A credible entrance leads to the flat. Bathrooms and kitchen are completed with sturdy fixtures. All the rooms are well spacious and lets you have the whole feel of solace and calmness with closed ones.', 'apartment', 'B1', '2rd Floor', '12000', 1, 0, 13456, 0, '2021-05-24 11:30:18', '2021-05-24 12:16:27'),
(6, 3, 'Chattogram', 'Bayazid', 'Hill View R/A, Bayazid, Chattogram', 1, 1, '500 sq ft', 'Take rent of a pleasantly done 500 SQ FT residential flat located at Hill View R/A\nWe are here to serve you if you are thinking of starting a residence in an easy-going area like Bayazid. Bayazid is offering a flat for rent to pick it for your  next door.', 'sublet', 'A1', '1st floor', '6000', 1, 0, 13456, 0, '2021-05-24 11:36:10', '2021-05-24 12:16:25'),
(7, 4, 'Chattogram', 'Bahaddarhat', 'Bahaddarhat, 4 No Chandgaon Ward, Chattogram', 2, 2, '1200 Sqft', 'We Bring You An Excellent Flat Of 1200 Sq Ft For Rent In Bahaddarhat\nConvenient location and a friendly neighborhood yes this apartment is located exactly in this location. A good amount of school, college and groceries will be located right nearby to your home. All-time electricity backup with updated apartment fittings will make your life smooth.', 'apartment', 'B2', '2nd Floor', '17000', 2, 3, 56432, 0, '2021-05-24 11:53:44', '2021-06-03 14:42:34'),
(8, 4, 'Chattogram', 'Bahaddarhat', 'Bahaddarhat, 4 No Chandgaon Ward, Chattogram', 1, 1, '500 Sqft', 'We Bring You An Excellent Flat Of 500 Sq Ft For sublet rent In Bahaddarhat\nConvenient location and a friendly neighborhood yes this apartment is located exactly in this location. A good amount of school, college and groceries will be located right nearby to your home. All-time electricity backup with updated apartment fittings will make your life smooth. Its a best option for a single person.', 'sublet', 'D1', '4th Floor', '7000', 1, 1, 56432, 0, '2021-05-24 11:58:06', '2022-08-23 10:12:16'),
(9, 4, 'Chattogram', 'Bahaddarhat', 'Bahaddarhat, 4 No Chandgaon Ward, Chattogram', 2, 2, '800 Sqft', 'We Bring You An Excellent Flat Of 500 Sq Ft For sublet rent In Bahaddarhat\nConvenient location and a friendly neighborhood yes this apartment is located exactly in this location. A good amount of school, college and groceries will be located right nearby to your home. All-time electricity backup with updated apartment fittings will make your life smooth. Its a best option for a single person.', 'sublet', 'D1', '4th Floor', '9000', 1, 0, 56432, 0, '2021-05-24 11:59:36', '2021-05-24 12:16:35'),
(10, 5, 'Chattogram', 'Chawkbazar', 'Chawk Bazar, 16 No. Chawk Bazaar Ward, Chattogram', 3, 2, '1250sqft', 'Now you can afford to dwell well, check this 1250 SQ FT home which is for rent in 16 No. Chawk Bazaar Ward\nGood news for the home hunters! If you are planning to shift to one of the most rising neighborhoods in the city, we got a great update. 16 No. Chawk Bazaar Ward is granting a lovely flat for rent. The apartment is well facilitated with all-time gas, water and electricity.', 'apartment', 'B1', '2nd Floor', '20000', 1, 0, 76543, 0, '2021-05-24 12:11:05', '2021-05-24 12:16:33'),
(11, 5, 'Chattogram', 'Chawkbazar', 'Chawk Bazar, 16 No. Chawk Bazaar Ward, Chattogram', 2, 2, '1000sqft', 'Now you can afford to dwell well, check this 1000 SQ FT home which is for rent in 16 No. Chawk Bazaar Ward\nGood news for the home hunters! If you are planning to shift to one of the most rising neighborhoods in the city, we got a great update. 16 No. Chawk Bazaar Ward is granting a lovely flat for rent. The apartment is well facilitated with all-time gas, water and electricity.', 'apartment', 'c1', '3rd Floor', '15000', 1, 0, 76543, 0, '2021-05-24 12:12:19', '2021-05-24 12:16:37'),
(12, 6, 'Chattogram', 'South Khulsi', 'South khulshi,Khushi,Chattogram', 3, 2, '1200 Sqft', 'With Several Noteworthy Facilities, This Apartment Is For Rent In South Khulsi.\nFortified living has become a must when it comes to securing a permanent address in this city. To make sure you are gratified with a home that gives you the ultimate comfort, South Khulsi brings you a house which is a complete bundle of ample space, affordability and great location.', 'apartment', 'E4', '5th floor', '20000', 1, 0, 87342, 0, '2021-05-24 21:11:46', '2021-05-24 21:27:32'),
(13, 6, 'Chattogram', 'South Khulsi', 'South khulshi,Khushi,Chattogram', 3, 3, '1650 Sqft', 'With Several Noteworthy Facilities, This Apartment Is For Rent In South Khulsi.\nFortified living has become a must when it comes to securing a permanent address in this city. To make sure you are gratified with a home that gives you the ultimate comfort, South Khulsi brings you a house which is a complete bundle of ample space, affordability and great location.', 'apartment', 'C4', '3rd floor', '30000', 1, 0, 87342, 0, '2021-05-24 21:13:15', '2021-05-24 21:27:34'),
(14, 8, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 2, '1200 Sqft', 'With Several Noteworthy Facilities, This Apartment Is For Rent In South Khulsi.\nFortified living has become a must when it comes to securing a permanent address in this city. To make sure you are gratified with a home that gives you the ultimate comfort.', 'apartment', 'E1', '5th floor', '18000', 1, 0, 14532, 0, '2021-05-24 21:40:56', '2021-05-25 07:19:06'),
(15, 8, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 3, '1500 Sqft', 'With Several Noteworthy Facilities, This Apartment Is For Rent In South Khulsi.\nFortified living has become a must when it comes to securing a permanent address in this city. To make sure you are gratified with a home that gives you the ultimate comfort.', 'apartment', 'D3', '4th floor', '20000', 1, 0, 14532, 0, '2021-05-24 21:41:43', '2021-05-25 07:19:09'),
(16, 8, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 1, 1, '600 Sqft', 'With Several Noteworthy Facilities, This Apartment Is For Rent In South Khulsi.\nFortified living has become a must when it comes to securing a permanent address in this city. To make sure you are gratified with a home that gives you the ultimate comfort.', 'apartment', 'c4', '3rd floor', '7000', 1, 0, 14532, 0, '2021-05-24 21:53:04', '2021-05-25 07:19:07'),
(17, 9, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 3, '1440 Sqft', 'A well-featured rental 1400 SQ FT residence is ready for you to own at South Khulshi', 'apartment', 'B3', '2nd Floor', '20000', 1, 0, 43125, 0, '2021-05-24 22:01:38', '2021-05-25 07:19:13'),
(18, 9, 'Chattogram', 'South Khulsi', 'South khulshi,Chattogram', 3, 2, '1240 Sqft', 'A well-featured rental 1400 SQ FT residence is ready for you to own at South Khulshi', 'apartment', 'B1', '2nd Floor', '16000', 1, 0, 43125, 0, '2021-05-24 22:02:16', '2021-05-25 07:19:11'),
(19, 10, 'Chattogram', 'South Khulshi', 'South khulshi,Chattogram', 4, 3, '2000 sqft', 'Find 2000 SQ FT nice apartment available to Rent in Khulshi\nThose who are thinking about finding a new apartment and feel their budget will be a setback should surely check this amazing apartment. This beautiful apartment is greatly affordable and will come within your budget. This lovely apartment is vacant right now. Please come and visit this apartment to make it your new home. We are waiting to assist you and make this flat your own.', 'apartment', 'B3', '2nd Floor', '25000', 1, 0, 43125, 0, '2021-05-25 12:34:44', '2021-05-25 12:55:06'),
(20, 10, 'Chattogram', 'Bayazid', 'Bayazid,Chattogram', 3, 3, '1800 sqft', 'Find 1800 SQ FT nice apartment available to Rent in Bayazid\nThose who are thinking about finding a new apartment and feel their budget will be a setback should surely check this amazing apartment. This beautiful apartment is greatly affordable and will come within your budget. This lovely apartment is vacant right now. Please come and visit this apartment to make it your new home. We are waiting to assist you and make this flat your own.', 'apartment', 'B3', '3rd Floor', '20000', 2, 4, 34213, 0, '2021-05-25 12:40:43', '2021-06-03 13:47:38'),
(21, 10, 'Chattogram', 'Bayazid', 'Bayazid,Chattogram', 3, 2, '1400 sqft', 'Find 1600 SQ FT nice apartment available to Rent in Bayazid\nThose who are thinking about finding a new apartment and feel their budget will be a setback should surely check this amazing apartment. This beautiful apartment is greatly affordable and will come within your budget. This lovely apartment is vacant right now. Please come and visit this apartment to make it your new home. We are waiting to assist you and make this flat your own.', 'apartment', 'B3', '2nd  Floor', '16000', 1, 0, 34213, 0, '2021-05-25 12:42:02', '2021-05-25 12:55:08'),
(22, 11, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 3, 3, '1550 sqft', 'Find This Space As Your Home For Rent Is Available In Nasirabad Housing Society.\nA calm place to live in with serene surroundings, yes Muradpur residential area is surely that kind of a location in our busy city. This apartment has all the facilities you will need like gas, electricity and water supplies. Once you enter the home you will find out how well the apartment is planned. The rooms are spacious enough to pass some great and comfortable time with friend and family.', 'apartment', 'E1', '5th floor', '22000', 1, 0, 53214, 0, '2021-05-25 13:05:10', '2021-05-25 13:20:16'),
(23, 11, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 3, 2, '1200 sqft', 'Find This Space As Your Home For Rent Is Available In Nasirabad Housing Society.\nA calm place to live in with serene surroundings, yes Muradpur residential area is surely that kind of a location in our busy city. This apartment has all the facilities you will need like gas, electricity and water supplies. Once you enter the home you will find out how well the apartment is planned. The rooms are spacious enough to pass some great and comfortable time with friend and family.', 'apartment', 'D1', '4thh floor', '18000', 1, 0, 53214, 0, '2021-05-25 13:05:55', '2021-05-25 13:20:18'),
(24, 11, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 1, 1, '500 sqft', 'Find This Space As Your Home For Rent Is Available In Nasirabad Housing Society.\nA calm place to live in with serene surroundings, yes Muradpur residential area is surely that kind of a location in our busy city. This apartment has all the facilities you will need like gas, electricity and water supplies. Once you enter the home you will find out how well the apartment is planned. This house is best option for single person.', 'sublet', 'A1', 'Ground floor', '18000', 1, 0, 53214, 0, '2021-05-25 13:08:13', '2021-05-25 13:20:22'),
(25, 12, 'Chattogram', 'Muradpur', '1 No Railway Gate, Muradpur, Chattogram', 3, 3, '1100 sqft', 'We present This To You A Perfectly Designed Apartment Of 1100 Sq Ft In Muradpur, For Rent\nA flat is vacant in the lively location of Muradpur right now. You can have your weekend guest at home without any doubt as having an ample space makes it enough roomy. Bathrooms are completed with durable fittings to give you a better living experience.', 'apartment', 'B3', '2nd Floor', '15000', 1, 0, 65432, 0, '2021-05-25 13:13:18', '2021-05-25 13:20:20'),
(26, 12, 'Chattogram', 'Muradpur', '1 No Railway Gate, Muradpur, Chattogram', 2, 2, '1000 sqft', 'We present This To You A Perfectly Designed Apartment Of 1000 Sq Ft In Muradpur, For Rent\nA flat is vacant in the lively location of Muradpur right now. You can have your weekend guest at home without any doubt as having an ample space makes it enough roomy. Bathrooms are completed with durable fittings to give you a better living experience.', 'apartment', 'B3', '3rd Floor', '12000', 1, 0, 65432, 0, '2021-05-25 13:14:38', '2021-05-25 13:20:24'),
(27, 12, 'Chattogram', 'Muradpur', '1 No Railway Gate, Muradpur, Chattogram', 1, 1, '600 sqft', 'We present This To You A Perfectly Designed Apartment Of 600 Sq Ft In Muradpur, For Rent\nA flat is vacant in the lively location of Muradpur right now.', 'apartment', 'B3', '3rd Floor', '7000', 1, 0, 65432, 0, '2021-05-25 13:15:53', '2021-05-25 13:20:27'),
(28, 13, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 3, 3, '1600sqft', 'Reasonable 1600 Sq Ft Residential Place For Rent Adjacent To Orkids School In Nasirabad Housing Society.\nWith several noteworthy facilities, this vacant flat assures all time water, gas and electricity. An active elevator takes you to this floor in that building right to this flat. The interior is well maintained and bears the look which appeals to inhabitants.', 'apartment', 'C4', '3rd floor', '20000', 1, 0, 83214, 0, '2021-05-25 13:26:48', '2021-05-25 13:33:34'),
(29, 13, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 2, 2, '1200sqft', 'Reasonable 1200 Sq Ft Residential Place For Rent Adjacent To Orkids School In Nasirabad Housing Society.\nWith several noteworthy facilities, this vacant flat assures all time water, gas and electricity. An active elevator takes you to this floor in that building right to this flat. The interior is well maintained and bears the look which appeals to inhabitants.', 'apartment', 'D1', '4th floor', '12000', 1, 0, 83214, 0, '2021-05-25 13:27:49', '2021-05-25 13:33:36'),
(30, 13, 'Chattogram', 'Muradpur', 'Nasirabad Housing Society, Muradpur, Chattogram', 1, 1, '600sqft', 'Reasonable 600 Sq Ft Residential Place For Rent Adjacent To Orkids School In Nasirabad Housing Society.\nWith several noteworthy facilities, this vacant flat assures all time water, gas and electricity. The interior is well maintained and bears the look which appeals to inhabitants.', 'sublet', 'A1', 'Ground floor', '8000', 1, 0, 83214, 0, '2021-05-25 13:29:31', '2021-05-25 13:33:39'),
(31, 14, 'Chattogram', 'Bahaddarhat', 'Bahaddarhat, 4 No Chandgaon Ward, Chattogram', 2, 2, '900 sqft', 'At Bahadderhat 900 Sq Ft Apartment Is Ready To Rent\nLooking for a nice and cozy place to settle. Check out this flat from our enlisted photos which is lovely as well as affordable. The flat has got an open floor plan, all over tiled flooring and soothing painting which are some of the great features this home is going to offer.', 'apartment', 'B1', '2nd Floor', '9000', 1, 0, 65231, 0, '2021-05-25 13:38:54', '2022-08-23 09:57:04'),
(32, 14, 'Chattogram', 'Bahaddarhat', 'Bahaddarhat, 4 No Chandgaon Ward, Chattogram', 1, 1, '500 sqft', 'At Bahadderhat 500 Sq Ft Apartment Is Ready To Rent\nLooking for a nice and cozy place to settle. Check out this flat from our enlisted photos which is lovely as well as affordable. The flat has got an open floor plan, all over tiled flooring and soothing painting which are some of the great features this home is going to offer.', 'apartment', 'C2', '3rd Floor', '6000', 1, 0, 65231, 0, '2021-05-25 13:40:13', '2021-05-25 13:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detailes_images`
--

CREATE TABLE `detailes_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detailes_images`
--

INSERT INTO `detailes_images` (`id`, `apartment_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '16218655590.jpeg', '2021-05-24 08:12:39', '2021-05-24 08:12:39'),
(2, 1, '16218655591.jpeg', '2021-05-24 08:12:39', '2021-05-24 08:12:39'),
(3, 1, '16218655592.jpeg', '2021-05-24 08:12:39', '2021-05-24 08:12:39'),
(4, 2, '16218755210.jpeg', '2021-05-24 10:58:41', '2021-05-24 10:58:41'),
(5, 2, '16218755211.jpeg', '2021-05-24 10:58:41', '2021-05-24 10:58:41'),
(6, 2, '16218755212.jpeg', '2021-05-24 10:58:41', '2021-05-24 10:58:41'),
(7, 3, '16218758840.jpeg', '2021-05-24 11:04:44', '2021-05-24 11:04:44'),
(8, 4, '16218773040.jpeg', '2021-05-24 11:28:24', '2021-05-24 11:28:24'),
(9, 4, '16218773041.jpeg', '2021-05-24 11:28:24', '2021-05-24 11:28:24'),
(10, 5, '16218774180.jpeg', '2021-05-24 11:30:18', '2021-05-24 11:30:18'),
(11, 5, '16218774191.jpeg', '2021-05-24 11:30:19', '2021-05-24 11:30:19'),
(12, 6, '16218777700.jpeg', '2021-05-24 11:36:10', '2021-05-24 11:36:10'),
(13, 7, '16218788240.jpeg', '2021-05-24 11:53:44', '2021-05-24 11:53:44'),
(14, 7, '16218788241.jpeg', '2021-05-24 11:53:44', '2021-05-24 11:53:44'),
(15, 7, '16218788242.jpeg', '2021-05-24 11:53:44', '2021-05-24 11:53:44'),
(16, 7, '16218788243.jpeg', '2021-05-24 11:53:44', '2021-05-24 11:53:44'),
(17, 8, '16218790870.jpeg', '2021-05-24 11:58:07', '2021-05-24 11:58:07'),
(18, 9, '16218791760.jpeg', '2021-05-24 11:59:36', '2021-05-24 11:59:36'),
(19, 9, '16218791771.jpeg', '2021-05-24 11:59:37', '2021-05-24 11:59:37'),
(20, 10, '16218798650.jpeg', '2021-05-24 12:11:05', '2021-05-24 12:11:05'),
(21, 10, '16218798651.jpeg', '2021-05-24 12:11:05', '2021-05-24 12:11:05'),
(22, 10, '16218798652.jpeg', '2021-05-24 12:11:05', '2021-05-24 12:11:05'),
(23, 11, '16218799390.jpeg', '2021-05-24 12:12:19', '2021-05-24 12:12:19'),
(24, 11, '16218799391.jpeg', '2021-05-24 12:12:19', '2021-05-24 12:12:19'),
(25, 11, '16218799392.jpeg', '2021-05-24 12:12:19', '2021-05-24 12:12:19'),
(26, 12, '16219123060.jpeg', '2021-05-24 21:11:46', '2021-05-24 21:11:46'),
(27, 12, '16219123061.jpeg', '2021-05-24 21:11:46', '2021-05-24 21:11:46'),
(28, 12, '16219123062.jpeg', '2021-05-24 21:11:46', '2021-05-24 21:11:46'),
(29, 13, '16219123950.jpeg', '2021-05-24 21:13:15', '2021-05-24 21:13:15'),
(30, 13, '16219123951.jpeg', '2021-05-24 21:13:15', '2021-05-24 21:13:15'),
(31, 14, '16219140570.jpeg', '2021-05-24 21:40:57', '2021-05-24 21:40:57'),
(32, 14, '16219140571.jpeg', '2021-05-24 21:40:57', '2021-05-24 21:40:57'),
(33, 14, '16219140572.jpeg', '2021-05-24 21:40:57', '2021-05-24 21:40:57'),
(34, 14, '16219140573.jpeg', '2021-05-24 21:40:57', '2021-05-24 21:40:57'),
(35, 15, '16219141040.jpeg', '2021-05-24 21:41:44', '2021-05-24 21:41:44'),
(36, 15, '16219141041.jpeg', '2021-05-24 21:41:44', '2021-05-24 21:41:44'),
(37, 15, '16219141042.jpeg', '2021-05-24 21:41:44', '2021-05-24 21:41:44'),
(38, 15, '16219141043.jpeg', '2021-05-24 21:41:44', '2021-05-24 21:41:44'),
(39, 16, '16219147840.jpeg', '2021-05-24 21:53:04', '2021-05-24 21:53:04'),
(40, 16, '16219147841.jpeg', '2021-05-24 21:53:04', '2021-05-24 21:53:04'),
(41, 16, '16219147842.jpeg', '2021-05-24 21:53:04', '2021-05-24 21:53:04'),
(42, 17, '16219152980.jpeg', '2021-05-24 22:01:38', '2021-05-24 22:01:38'),
(43, 17, '16219152981.jpeg', '2021-05-24 22:01:38', '2021-05-24 22:01:38'),
(44, 17, '16219152982.jpeg', '2021-05-24 22:01:38', '2021-05-24 22:01:38'),
(45, 17, '16219152983.jpeg', '2021-05-24 22:01:38', '2021-05-24 22:01:38'),
(46, 18, '16219153360.jpeg', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(47, 18, '16219153361.jpeg', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(48, 18, '16219153362.jpeg', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(49, 18, '16219153363.jpeg', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(50, 19, '16219676840.jpeg', '2021-05-25 12:34:44', '2021-05-25 12:34:44'),
(51, 19, '16219676841.jpeg', '2021-05-25 12:34:44', '2021-05-25 12:34:44'),
(52, 19, '16219676842.jpeg', '2021-05-25 12:34:44', '2021-05-25 12:34:44'),
(53, 19, '16219676843.jpeg', '2021-05-25 12:34:44', '2021-05-25 12:34:44'),
(54, 20, '16219680430.jpeg', '2021-05-25 12:40:43', '2021-05-25 12:40:43'),
(55, 20, '16219680441.jpeg', '2021-05-25 12:40:44', '2021-05-25 12:40:44'),
(56, 20, '16219680442.jpeg', '2021-05-25 12:40:44', '2021-05-25 12:40:44'),
(57, 21, '16219681220.jpeg', '2021-05-25 12:42:02', '2021-05-25 12:42:02'),
(58, 21, '16219681221.jpeg', '2021-05-25 12:42:02', '2021-05-25 12:42:02'),
(59, 21, '16219681222.jpeg', '2021-05-25 12:42:02', '2021-05-25 12:42:02'),
(60, 22, '16219695100.jpeg', '2021-05-25 13:05:10', '2021-05-25 13:05:10'),
(61, 22, '16219695101.jpeg', '2021-05-25 13:05:10', '2021-05-25 13:05:10'),
(62, 22, '16219695102.jpeg', '2021-05-25 13:05:10', '2021-05-25 13:05:10'),
(63, 23, '16219695550.jpeg', '2021-05-25 13:05:55', '2021-05-25 13:05:55'),
(64, 23, '16219695551.jpeg', '2021-05-25 13:05:55', '2021-05-25 13:05:55'),
(65, 23, '16219695552.jpeg', '2021-05-25 13:05:55', '2021-05-25 13:05:55'),
(66, 24, '16219696930.jpeg', '2021-05-25 13:08:13', '2021-05-25 13:08:13'),
(67, 25, '16219699980.jpeg', '2021-05-25 13:13:18', '2021-05-25 13:13:18'),
(68, 25, '16219699981.jpeg', '2021-05-25 13:13:18', '2021-05-25 13:13:18'),
(69, 25, '16219699982.jpeg', '2021-05-25 13:13:18', '2021-05-25 13:13:18'),
(70, 26, '16219700780.jpeg', '2021-05-25 13:14:38', '2021-05-25 13:14:38'),
(71, 26, '16219700781.jpeg', '2021-05-25 13:14:38', '2021-05-25 13:14:38'),
(72, 26, '16219700782.jpeg', '2021-05-25 13:14:38', '2021-05-25 13:14:38'),
(73, 27, '16219701530.jpeg', '2021-05-25 13:15:53', '2021-05-25 13:15:53'),
(74, 27, '16219701531.jpeg', '2021-05-25 13:15:53', '2021-05-25 13:15:53'),
(75, 27, '16219701532.jpeg', '2021-05-25 13:15:53', '2021-05-25 13:15:53'),
(76, 28, '16219708080.jpeg', '2021-05-25 13:26:48', '2021-05-25 13:26:48'),
(77, 28, '16219708081.jpeg', '2021-05-25 13:26:48', '2021-05-25 13:26:48'),
(78, 28, '16219708082.jpeg', '2021-05-25 13:26:48', '2021-05-25 13:26:48'),
(79, 28, '16219708083.jpeg', '2021-05-25 13:26:48', '2021-05-25 13:26:48'),
(80, 29, '16219708690.jpeg', '2021-05-25 13:27:49', '2021-05-25 13:27:49'),
(81, 29, '16219708691.jpeg', '2021-05-25 13:27:49', '2021-05-25 13:27:49'),
(82, 29, '16219708692.jpeg', '2021-05-25 13:27:49', '2021-05-25 13:27:49'),
(83, 29, '16219708693.jpeg', '2021-05-25 13:27:49', '2021-05-25 13:27:49'),
(84, 30, '16219709710.jpeg', '2021-05-25 13:29:31', '2021-05-25 13:29:31'),
(85, 30, '16219709711.jpeg', '2021-05-25 13:29:31', '2021-05-25 13:29:31'),
(86, 30, '16219709712.jpeg', '2021-05-25 13:29:31', '2021-05-25 13:29:31'),
(87, 30, '16219709713.jpeg', '2021-05-25 13:29:31', '2021-05-25 13:29:31'),
(88, 31, '16219715340.jpeg', '2021-05-25 13:38:54', '2021-05-25 13:38:54'),
(89, 31, '16219715341.jpeg', '2021-05-25 13:38:54', '2021-05-25 13:38:54'),
(90, 31, '16219715342.jpeg', '2021-05-25 13:38:54', '2021-05-25 13:38:54'),
(91, 32, '16219716130.jpeg', '2021-05-25 13:40:13', '2021-05-25 13:40:13'),
(92, 32, '16219716131.jpeg', '2021-05-25 13:40:13', '2021-05-25 13:40:13'),
(93, 32, '16219716132.jpeg', '2021-05-25 13:40:13', '2021-05-25 13:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_images`
--

CREATE TABLE `feature_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_images`
--

INSERT INTO `feature_images` (`id`, `apartment_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1621865559.jpeg', '2021-05-24 08:12:39', '2021-05-24 08:12:39'),
(2, 2, '1621875521.jpeg', '2021-05-24 10:58:41', '2021-05-24 10:58:41'),
(3, 3, '1621875883.jpeg', '2021-05-24 11:04:43', '2021-05-24 11:04:43'),
(4, 4, '1621877304.jpeg', '2021-05-24 11:28:24', '2021-05-24 11:28:24'),
(5, 5, '1621877418.jpeg', '2021-05-24 11:30:18', '2021-05-24 11:30:18'),
(6, 6, '1621877770.jpeg', '2021-05-24 11:36:10', '2021-05-24 11:36:10'),
(7, 7, '1621878824.jpeg', '2021-05-24 11:53:44', '2021-05-24 11:53:44'),
(8, 8, '1621879087.jpeg', '2021-05-24 11:58:07', '2021-05-24 11:58:07'),
(9, 9, '1621879176.jpeg', '2021-05-24 11:59:36', '2021-05-24 11:59:36'),
(10, 10, '1621879865.jpeg', '2021-05-24 12:11:05', '2021-05-24 12:11:05'),
(11, 11, '1621879939.jpeg', '2021-05-24 12:12:19', '2021-05-24 12:12:19'),
(12, 12, '1621912306.jpeg', '2021-05-24 21:11:46', '2021-05-24 21:11:46'),
(13, 13, '1621912395.jpeg', '2021-05-24 21:13:15', '2021-05-24 21:13:15'),
(14, 14, '1621914056.jpeg', '2021-05-24 21:40:56', '2021-05-24 21:40:56'),
(15, 15, '1621914104.jpeg', '2021-05-24 21:41:44', '2021-05-24 21:41:44'),
(16, 16, '1621914784.jpeg', '2021-05-24 21:53:04', '2021-05-24 21:53:04'),
(17, 17, '1621915298.jpeg', '2021-05-24 22:01:38', '2021-05-24 22:01:38'),
(18, 18, '1621915336.jpeg', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(20, 19, '1621967762.jpeg', '2021-05-25 12:36:02', '2021-05-25 12:36:02'),
(21, 20, '1621968043.jpeg', '2021-05-25 12:40:43', '2021-05-25 12:40:43'),
(22, 21, '1621968122.jpeg', '2021-05-25 12:42:02', '2021-05-25 12:42:02'),
(23, 22, '1621969510.jpeg', '2021-05-25 13:05:10', '2021-05-25 13:05:10'),
(24, 23, '1621969555.jpeg', '2021-05-25 13:05:55', '2021-05-25 13:05:55'),
(25, 24, '1621969693.jpeg', '2021-05-25 13:08:13', '2021-05-25 13:08:13'),
(26, 25, '1621969998.jpeg', '2021-05-25 13:13:18', '2021-05-25 13:13:18'),
(27, 26, '1621970078.jpeg', '2021-05-25 13:14:38', '2021-05-25 13:14:38'),
(28, 27, '1621970153.jpeg', '2021-05-25 13:15:53', '2021-05-25 13:15:53'),
(29, 28, '1621970808.jpeg', '2021-05-25 13:26:48', '2021-05-25 13:26:48'),
(30, 29, '1621970869.jpeg', '2021-05-25 13:27:49', '2021-05-25 13:27:49'),
(31, 30, '1621970971.jpeg', '2021-05-25 13:29:31', '2021-05-25 13:29:31'),
(32, 31, '1621971534.jpeg', '2021-05-25 13:38:54', '2021-05-25 13:38:54'),
(33, 32, '1621971613.jpeg', '2021-05-25 13:40:13', '2021-05-25 13:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `holding_address`
--

CREATE TABLE `holding_address` (
  `id` int(11) NOT NULL,
  `holding_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holding_address`
--

INSERT INTO `holding_address` (`id`, `holding_id`) VALUES
(1, '12345'),
(2, '13456'),
(3, '56432\r\n'),
(4, '14532'),
(5, '76543'),
(6, '56432'),
(7, '87342'),
(8, '34213'),
(9, '43125'),
(10, '53214'),
(11, '65432'),
(12, '83214'),
(13, '65231');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_30_063401_create_apartment_details_table', 1),
(5, '2020_10_30_064106_create_feature_images_table', 1),
(6, '2020_10_30_064804_create_detailes_images_table', 1),
(7, '2020_10_30_065007_create_rent_requests_table', 1),
(8, '2020_10_30_082620_create_rent_confirmations_table', 1),
(9, '2020_10_30_082716_create_rent_details_table', 1),
(10, '2020_10_30_143236_create_notifications_table', 1),
(11, '2020_10_31_154328_create_complains_table', 1),
(12, '2020_11_03_101724_create_otps_table', 1),
(13, '2021_02_04_074155_create_payment_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, 'You have due Rent on June', 'Unread', '2021-06-03 14:46:31', '2021-06-03 14:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `otp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `user_id`, `token`, `otp`, `created_at`, `updated_at`) VALUES
(2, 0, 'jucwXnALY6NHHucQBrGPh7tJFd133G', '4032', '2021-06-03 03:13:56', '2021-06-03 03:13:56'),
(3, 0, 'mYAYmpQkqXQtio8aXM8A3E4mCGekSN', '9982', '2021-06-03 03:14:29', '2021-06-03 03:14:29'),
(4, 0, 'tVZ1SbtMJAtyDcqJ7rM0zwT5nUpN6T', '2883', '2021-06-03 09:21:41', '2021-06-03 09:21:41'),
(5, 0, 'dd7xYFrCONPTzMRvEiOeJYr4JTOovf', '2516', '2021-06-03 10:32:31', '2021-06-03 10:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holding_no` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_confirmations`
--

CREATE TABLE `rent_confirmations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `advance_payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `contract_year` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_confirmations`
--

INSERT INTO `rent_confirmations` (`id`, `renter_id`, `owner_id`, `apartment_id`, `advance_payment`, `status`, `contract_year`, `created_at`, `updated_at`) VALUES
(1, 16, 4, 7, '12000', 0, '2', '2021-06-03 14:42:34', '2021-06-03 14:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `rent_details`
--

CREATE TABLE `rent_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_status` int(11) DEFAULT NULL,
  `service_charge_status` int(11) DEFAULT NULL,
  `gas_bill_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_details`
--

INSERT INTO `rent_details` (`id`, `renter_id`, `apartment_id`, `owner_id`, `month`, `rent_status`, `service_charge_status`, `gas_bill_status`, `created_at`, `updated_at`) VALUES
(1, 16, 7, 4, 'June', 1, 1, 1, '2021-06-03 14:46:31', '2022-08-23 09:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `rent_requests`
--

CREATE TABLE `rent_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_requests`
--

INSERT INTO `rent_requests` (`id`, `renter_id`, `apartment_id`, `owner_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, 32, 14, 0, '2021-06-03 03:16:22', '2021-06-03 03:16:22'),
(2, 16, 20, 10, 1, '2021-06-03 09:49:05', '2021-06-03 13:47:38'),
(3, 16, 3, 2, 1, '2021-06-03 13:56:59', '2021-06-03 14:05:58'),
(4, 16, 7, 4, 1, '2021-06-03 14:18:00', '2021-06-03 14:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_role`, `name`, `email`, `phone`, `nid`, `image`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin26@gmail.com', '01984119355', '', '', 0, NULL, '$2y$10$OIwU4kJ.x.Tj7S0D3Xl3TugPBczGZDJTZ1InsFdvYlKXHT45fw5XO', NULL, NULL, NULL),
(2, 'owner', 'Monira Jahan', 'moniramumu66@gmail.com', '01884100116', '199715175462211', '1621863955.jpeg', 2, NULL, '$2y$10$ZXviohAuuHh9IXDjAxyo5.UyhqlDFbB9jFcHdf4xx7jGNwdhWC6Bm', NULL, '2021-05-24 07:45:55', '2021-05-24 07:53:21'),
(3, 'owner', 'Zahid Hasan Siddique', 'zahid123@gmail.com', '01835957864', '1972645134466', '1621876714.jpg', 2, NULL, '$2y$10$UCa8jhdqQ8zs5G/yv8F7MeDxX1ICmJpzPdmCDd5lZwWz4IDTi4Wmq', NULL, '2021-05-24 11:18:34', '2021-05-24 11:19:38'),
(4, 'owner', 'Razia Rima', 'raziarima23@gmail.com', '01867888797', '19946146731373', '1621878171.jpg', 2, NULL, '$2y$10$/SrlTEcjV0ybSbADEEm4ZO38ZGsf1mnPtII25Lye9XUwGuw0sWsiy', NULL, '2021-05-24 11:42:51', '2021-05-24 11:47:57'),
(5, 'owner', 'Selina Akter', 'selinaakter34@gmail.com', '01824068596', '19563561717863', '1621879442.jpg', 2, NULL, '$2y$10$u3NmTV0Z/sypyTzmxq95aedknnAppoTQR8tCcrXtPaxylaFDl5/J6', NULL, '2021-05-24 12:04:02', '2021-05-24 12:05:37'),
(6, 'owner', 'Mohammad Ali', 'mohammad12@gmail.com', '01811977949', '19602656416461', '1621911199.jpg', 2, NULL, '$2y$10$Wemfoeoz90aQ1L8FBIGjuu7GiyQe.eLequtM3Fitx0ZL1781hUR2W', NULL, '2021-05-24 20:53:19', '2021-05-24 21:07:04'),
(8, 'owner', 'Farzana Tabassum Mouri', 'farzana12@gmail.com', '01646512520', '1995253144342', '1621913774.jpeg', 2, NULL, '$2y$10$hb7PyD2rdm.08Xd9kWr/0.mnApczULzBwCv2L4dfYEpdnvLbJq7Fi', NULL, '2021-05-24 21:36:15', '2021-05-24 21:37:19'),
(9, 'owner', 'Monira Mitu', 'moniramitu@gmail.com', '01823250897', '195624345343', '1621914916.jpg', 2, NULL, '$2y$10$1eqmugSJbGHeuM6kql6a7uq/10YAozAwCbRp12Mp86hW.0noglsFW', NULL, '2021-05-24 21:55:16', '2021-05-24 21:57:15'),
(10, 'owner', 'Shahidul alam', 'shahidul12@gmail.com', '01831482821', '19748664671671', '1621966868.jpg', 2, NULL, '$2y$10$43aVZ34ETsECtaaeRfEb2ufhlnlGj1M0BQ6mTBTGYVoiZp1cwP6Bi', NULL, '2021-05-25 12:21:09', '2021-05-25 12:24:12'),
(11, 'owner', 'Rashedul Islam', 'rashedul12@gmail.com', '01857736787', '197636268618611', '1621968427.jpg', 2, NULL, '$2y$10$oLt4LabjcBf978O4sjYqXeg.jS7q2zRz6RKjXyVQNQjU01/Dve8XS', NULL, '2021-05-25 12:47:07', '2021-05-25 12:54:47'),
(12, 'owner', 'Shamima Akter', 'shamima12@gmail.com', '01881726320', '1986214346133', '1621968726.jpg', 2, NULL, '$2y$10$C09J9b5S8xYk7isgpKRzOOUAJLzKsv9E1XpMvg9vlsLwoxgi2L992', NULL, '2021-05-25 12:52:07', '2021-05-25 13:22:03'),
(13, 'owner', 'Shahnaz Parvin', 'shahnaz12@gmail.com', '01857819736', '197653462546244', '1621970289.jpg', 2, NULL, '$2y$10$AymJRumsF3Vpp5ekcJkQwOoIOhwxU.lDg3osgJ5Pd8CJkt69EtflK', NULL, '2021-05-25 13:18:10', '2021-05-25 13:23:05'),
(14, 'owner', 'Touhidul Islam', 'touhidul12@gmaiil.com', '01827781604', '197837647575625', '1621971165.jpg', 2, NULL, '$2y$10$Q2w1xeTKKxHziQPOxbpe.ubaFGm70ht/f7EZfU6BH9.ShwkF.DLja', NULL, '2021-05-25 13:32:46', '2021-05-25 13:33:55'),
(15, 'owner', 'Mahbuba Akter', 'mahbuba12@gmail.com', '01645941508', '19974524361671', '1622174799.jpeg', 2, NULL, '$2y$10$ek9aq1W5TH.bcBgWqvPHQujjka/MTKFNnHXfCA7oRoTkzAgpLGeB6', NULL, '2021-05-27 22:06:39', '2021-05-27 22:09:56'),
(16, 'renter', 'Mohammad Robiul Alam', 'robi3443@gmail.com', '01679636311', '16429666325', 'image', 1, NULL, '$2y$10$tXr4tnhoJUuJdghH5oteFewQeQ0GgKX9tcbl7HvqsT1q31yqbxVlu', NULL, '2021-06-03 03:15:27', '2021-06-03 03:15:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment_details`
--
ALTER TABLE `apartment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_details_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complains_renter_id_foreign` (`renter_id`),
  ADD KEY `complains_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `detailes_images`
--
ALTER TABLE `detailes_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detailes_images_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feature_images`
--
ALTER TABLE `feature_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_images_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `holding_address`
--
ALTER TABLE `holding_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_renter_id_foreign` (`renter_id`);

--
-- Indexes for table `rent_confirmations`
--
ALTER TABLE `rent_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_confirmations_renter_id_foreign` (`renter_id`),
  ADD KEY `rent_confirmations_owner_id_foreign` (`owner_id`),
  ADD KEY `rent_confirmations_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_details_renter_id_foreign` (`renter_id`),
  ADD KEY `rent_details_owner_id_foreign` (`owner_id`),
  ADD KEY `rent_details_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `rent_requests`
--
ALTER TABLE `rent_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_requests_renter_id_foreign` (`renter_id`),
  ADD KEY `rent_requests_owner_id_foreign` (`owner_id`),
  ADD KEY `rent_requests_apartment_id_foreign` (`apartment_id`);

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
-- AUTO_INCREMENT for table `apartment_details`
--
ALTER TABLE `apartment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detailes_images`
--
ALTER TABLE `detailes_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_images`
--
ALTER TABLE `feature_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `holding_address`
--
ALTER TABLE `holding_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_confirmations`
--
ALTER TABLE `rent_confirmations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent_details`
--
ALTER TABLE `rent_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent_requests`
--
ALTER TABLE `rent_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartment_details`
--
ALTER TABLE `apartment_details`
  ADD CONSTRAINT `apartment_details_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complains`
--
ALTER TABLE `complains`
  ADD CONSTRAINT `complains_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complains_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detailes_images`
--
ALTER TABLE `detailes_images`
  ADD CONSTRAINT `detailes_images_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_images`
--
ALTER TABLE `feature_images`
  ADD CONSTRAINT `feature_images_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rent_confirmations`
--
ALTER TABLE `rent_confirmations`
  ADD CONSTRAINT `rent_confirmations_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_confirmations_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_confirmations_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD CONSTRAINT `rent_details_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_details_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_details_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rent_requests`
--
ALTER TABLE `rent_requests`
  ADD CONSTRAINT `rent_requests_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartment_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_requests_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rent_requests_renter_id_foreign` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
