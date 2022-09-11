-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 08:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessibility`
--

CREATE TABLE `accessibility` (
  `accessibility_id` int(11) NOT NULL,
  `accessibility_type` varchar(255) DEFAULT NULL,
  `accessibility_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessibility`
--

INSERT INTO `accessibility` (`accessibility_id`, `accessibility_type`, `accessibility_desc`) VALUES
(1, 'Mobility', 'Wheelchair accessible'),
(2, 'Visual', 'Braille throughout premises'),
(3, 'Auditory', 'Audio link for hearing aids'),
(4, 'Sensory', 'Designated quiet periods for those with sensory overstimulation');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `building_num` varchar(255) NOT NULL COMMENT 'VARCHAR as not always strict integer, e.g. 5b',
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `geolocation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `building_num`, `address_line_1`, `address_line_2`, `postcode`, `city_id`, `country_id`, `geolocation_id`) VALUES
(1, '80', 'Houndsditch', NULL, 'EC3A 7AB', 2, 3, 0),
(2, '170', 'Shepherds Bush Road', NULL, 'W6 7PB', 1, 3, 0),
(3, '144', ' Praed Street', NULL, 'W2 1HU', 1, 3, 0),
(4, '301', 'Park Avenue', NULL, '10022', 4, 4, 0),
(5, '341', 'West 36th Street', NULL, '10018', 4, 4, 0),
(6, '85', 'West Broadway', NULL, '10017', 4, 4, 0),
(7, '3', 'Boulevard de Neuilly', NULL, '92400', 10, 6, 0),
(8, '85', 'Boulevard de Strasbourg', NULL, '75010', 10, 6, 0),
(9, '4', 'rue Croix des Petits Champs', NULL, '75001', 10, 6, 0),
(10, '10', 'Avenue d\'Iena', NULL, '75116', 10, 6, 0),
(11, '34', 'Waxwing Avenue', NULL, 'B1 1AD', 1, 3, 0),
(12, '0731', 'Golf Drive', NULL, 'W2 5JD', 2, 3, 0),
(13, '37', 'rue de Garcons', NULL, '06300', 3, 3, 0),
(14, '1', 'Esker Hills Drive', NULL, '662680', 4, 2, 0),
(15, '26496', 'American Boulevard', NULL, '562430', 5, 2, 0),
(16, '10', 'Havey Street', NULL, 'L1 0AF', 1, 1, 0),
(17, '97', 'Calypso Street', NULL, 'L1 0AF', 1, 1, 0),
(18, '00066', 'Place de Cherbourg', NULL, '5925', 10, 3, 0),
(19, '4', 'Calle del Mar', NULL, '30001', 11, 8, 0),
(20, '8930', 'Reinke Drive', NULL, '955000', 2, 3, 0),
(21, '', '', NULL, '', 2, 3, NULL),
(22, '', '', NULL, '', 4, 4, NULL),
(23, '', '', NULL, '', 10, 6, NULL),
(27, '5000', 'S Great Trinity Forest Way', NULL, 'TX 75217', 12, 2, NULL),
(28, '5000', 'S Great Trinity Forest Way', NULL, 'TX 75217', 12, 2, NULL),
(29, '5000', 'S Great Trinity Forest Way', NULL, 'TX 75217', 12, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `amenity_id` int(11) NOT NULL,
  `amenity_name` varchar(255) DEFAULT NULL,
  `amenity_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`amenity_id`, `amenity_name`, `amenity_type`) VALUES
(1, 'Reception 24 hours', 'Hotel'),
(2, 'Breakfast buffet', 'Hotel'),
(3, 'Restaurant', 'Hotel'),
(4, 'Spa', 'Hotel'),
(5, 'Swimming pool', 'Hotel'),
(6, 'Room service 24 hours', 'Hotel'),
(7, 'Pay films', 'Hotel'),
(8, 'In-room childcare surcharge', 'Hotel'),
(9, 'Free toiletries', 'Hotel'),
(10, 'Free WiFi', 'Hotel'),
(11, 'Fridge', 'Room'),
(12, 'Hair dryer', 'Room'),
(13, 'In-room safe', 'Room'),
(14, 'Minibar', 'Room'),
(15, 'HotTub', 'Room'),
(16, 'Bath Hoist', 'Room'),
(17, 'Wireless Speaker', 'Room'),
(18, 'Television', 'Room'),
(19, 'Towels provided', 'Room'),
(20, 'Iron/ironing board', 'Room');

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `attraction_id` int(11) NOT NULL,
  `attraction_name` varchar(255) NOT NULL,
  `attraction_desc` varchar(255) NOT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`attraction_id`, `attraction_name`, `attraction_desc`, `address_id`) VALUES
(1, 'Big Ben', 'A big clock in London', 21),
(2, 'Tower of London', 'A tower with some expensive jewels', 21),
(3, 'Harry Potter World', 'An exhibition with lots of wizards', 21),
(4, 'Statue of Liberty', 'A large green statue that is awkward to get to and costs a fortune to get inside', 22),
(5, 'Empire State Building', 'An extremely tall building that sells overpriced fridge magnets', 22),
(6, 'Times Square', 'A permanent Comicon exhibition with the odd naked cowboy ', 22),
(7, 'Eiffel Tower', 'A metal tower with really long queues', 23),
(8, 'The Louvre', 'A fancy French building with an overrated Italian painting', 23),
(9, 'Palace of Versailles', 'A beautiful palace that no one ever bothers to visit', 23),
(10, 'Notre Dame Cathedral', 'A half-baked cathedral', 23);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_ref` varchar(255) NOT NULL,
  `customer_account_id` int(11) NOT NULL,
  `booking_type_id` int(11) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `special_request` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_ref`, `customer_account_id`, `booking_type_id`, `arrival_date`, `departure_date`, `special_request`) VALUES
(1, '43063-235', 4, 1, '2021-12-21', '2021-12-27', NULL),
(2, '65044-5058', 1, 1, '2022-04-02', '2022-04-04', NULL),
(3, '13734-143', 9, 2, '2021-11-27', '2021-11-28', NULL),
(4, '52125-732', 2, 1, '2022-04-01', '2022-04-08', NULL),
(5, '62011-0051', 6, 1, '2021-12-01', '2021-12-03', NULL),
(6, '52533-028', 6, 1, '2022-05-15', '2022-05-22', NULL),
(7, '10812-008', 2, 1, '2022-05-03', '2022-05-04', NULL),
(8, '16590-047', 3, 1, '2022-07-10', '2022-07-20', NULL),
(9, '62541-302', 8, 2, '2021-12-31', '2022-01-02', NULL),
(10, '43063-038', 6, 1, '2022-10-30', '2022-11-04', NULL),
(11, '1131-9988', 10, 1, '2021-08-04', '2021-08-09', NULL),
(12, '2233-5436', 5, 1, '2021-11-02', '2021-11-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `card_number` varbinary(255) NOT NULL,
  `exp_date` date NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `first_name`, `last_name`, `card_number`, `exp_date`, `payment_method_id`) VALUES
(1, 'Justin', 'Thomas', 0x88779c62e571273fd6507d1a2ecf031055670b6826d9c65eae7eddcc68b0ef45, '2023-10-08', NULL),
(2, 'Matthew', 'Enrich', 0x88779c62e571273fd6507d1a2ecf031055670b6826d9c65eae7eddcc68b0ef45, '2023-12-12', NULL),
(3, 'Eddie', 'Cavanagh', 0x88779c62e571273fd6507d1a2ecf031055670b6826d9c65eae7eddcc68b0ef45, '2022-09-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country_id`) VALUES
(1, 'Birmingham', 1),
(2, 'London', 1),
(3, 'Liverpool', 1),
(4, 'New York', 2),
(5, 'Miami', 2),
(6, 'Los Angeles', 2),
(7, 'Philadelphia', 2),
(8, 'Nice', 3),
(9, 'Marseille', 3),
(10, 'Paris', 3),
(11, 'Madrid', 8),
(12, 'Dallas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'Japan', 'JP'),
(2, 'China', 'CN'),
(3, 'United Kingdom', 'UK'),
(4, 'United States', 'US'),
(5, 'Russia', 'RU'),
(6, 'France', 'FR'),
(7, 'Croatia', 'HR'),
(8, 'Spain', 'ES'),
(9, 'New Zealand', 'NZ'),
(10, 'Thailand', 'TH');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Dollar', 'USD'),
(2, 'Krona', 'SEK'),
(3, 'Euro', 'EUR'),
(4, 'Peso', 'PHP'),
(5, 'Peso', 'MXN'),
(6, 'Naira', 'NGN'),
(7, 'Pound', 'GBP'),
(8, 'Yuan Renminbi', 'CNY'),
(9, 'Rupiah', 'IDR'),
(10, 'Lempira', 'HNL');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `customer_account_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `user_password` varbinary(255) NOT NULL,
  `personal_info_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`customer_account_id`, `email_address`, `user_password`, `personal_info_id`, `address_id`, `language_id`, `currency_id`, `permission_id`) VALUES
(1, 'ctreker0@pen.io', 0x767a36354572, 1, 11, 1, 7, 1),
(2, 'ospileman1@clickbank.net', 0x7149484e30665635545030, 2, 12, 2, 1, 1),
(3, 'jtusa@pga.com', 0x7677587464347a4b, 3, 14, 1, 3, 1),
(4, 'lshankster3@jigsy.com', 0x793768333359746d, 4, 16, 1, 1, 1),
(5, 'mulletman@pgaaus.com', 0x47714672356e783666, 5, 18, 5, 3, 1),
(6, 'asorenstam@lpga.com', 0x4a556467323843, 6, 13, 1, 7, 1),
(7, 'woodsy15@pga.com', 0x655a53424959683249324a, 7, 20, 5, 7, 1),
(8, 'menrich7@mysql.com', 0x75644d373739575041, 8, 19, 2, 1, 1),
(9, 'mberndsen8@state.tx.us', 0x7a4d524531764755686264, 9, 15, 1, 5, 1),
(10, 'jruperto9@ted.com', 0x6e5a4470767a33, 10, 17, 1, 7, 1),
(22, 'fmolinari@eurotour.eu', 0x33623836626661333064366566343839303334363135653432613830386434333964663931633831336132333734, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_type` varchar(255) NOT NULL,
  `faq_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_type`, `faq_desc`) VALUES
(1, 'Booking', 'How do I book multiple rooms?'),
(2, 'Booking', 'How do I book for multiple people?'),
(3, 'Refunds', 'What is your refund policy?'),
(4, 'Refunds', 'How long do refunds take to be processed?'),
(5, 'COVID', 'How is my booking affected?'),
(6, 'COVID', 'What are current travel restrictions?'),
(7, 'Cancellation', 'What is your cancellation policy?'),
(8, 'Cancellation', 'How long do I have to cancel?'),
(9, 'Property listing', 'How can I list my property?'),
(10, 'Property listing', 'What are the service charges for listing?');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `personal_info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `personal_info_id`) VALUES
(5, 3),
(4, 11),
(1, 17),
(2, 19),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `guest_list`
--

CREATE TABLE `guest_list` (
  `guest_list_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_list`
--

INSERT INTO `guest_list` (`guest_list_id`, `booking_id`, `guest_id`) VALUES
(1, 8, 5),
(2, 8, 1),
(3, 8, 2),
(4, 8, 3),
(5, 3, 4),
(6, 9, 1),
(7, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `rooms_total` int(11) NOT NULL,
  `rooms_available` int(11) NOT NULL,
  `hotel_desc` text NOT NULL,
  `star_rating_id` int(11) NOT NULL,
  `avg_review_id` int(11) DEFAULT NULL,
  `theme_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `rooms_total`, `rooms_available`, `hotel_desc`, `star_rating_id`, `avg_review_id`, `theme_id`, `address_id`) VALUES
(1, 'Pan Pacific London', 387, 65, 'Luxury hotel with 2 restaurants, near Liverpool Street', 5, NULL, 1, 1),
(2, 'Brook Green Hotel', 422, 176, '3-star hotel with restaurant, near Eventim Apollo', 3, NULL, 5, 2),
(3, 'Mercure London Paddington', 709, 410, '4-star hotel with restaurant, near Hyde Park', 4, NULL, 3, 3),
(4, 'Waldorf Astoria New York', 562, 653, 'Luxury hotel with full-service spa, connected to the convention centre, near 5th Avenue', 5, NULL, 4, 4),
(5, 'Hotel Central Times Square', 149, 35, '3.5-star hotel with 24-hour fitness, near Madison Square Garden', 3, NULL, 5, 5),
(6, 'Smyth Tribeca', 574, 131, '4-star hotel with 2 bars/lounges, near The Oculus', 4, NULL, 5, 6),
(7, 'Melia Paris La Defense', 209, 311, '4-star hotel with 2 restaurants, near Grande Arche', 4, NULL, 7, 7),
(8, 'Hôtel d\'Alsace', 269, 703, '3-star hotel, convenient for Canal Saint-Martin', 3, NULL, 4, 8),
(9, 'Timhotel Le Louvre', 161, 19, 'Shopping hotel connected to the convention centre, within walking distance of Louvre Museum', 3, NULL, 7, 9),
(10, 'Shangri-La Paris', 385, 422, 'Luxury palace with spa, near Eiffel Tower', 5, NULL, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_accessibility`
--

CREATE TABLE `hotel_accessibility` (
  `hotel_accessibility_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `accessibility_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_accessibility`
--

INSERT INTO `hotel_accessibility` (`hotel_accessibility_id`, `hotel_id`, `accessibility_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 3, 1),
(5, 3, 3),
(6, 4, 4),
(7, 4, 1),
(8, 5, 2),
(9, 5, 3),
(10, 6, 1),
(11, 6, 2),
(12, 6, 3),
(13, 6, 4),
(14, 7, 1),
(15, 7, 2),
(16, 7, 4),
(17, 8, 1),
(18, 9, 3),
(19, 10, 1),
(20, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenity`
--

CREATE TABLE `hotel_amenity` (
  `hotel_amenity_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_amenity`
--

INSERT INTO `hotel_amenity` (`hotel_amenity_id`, `hotel_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 3, 1),
(5, 3, 3),
(6, 4, 4),
(7, 4, 1),
(8, 5, 2),
(9, 5, 3),
(10, 6, 1),
(11, 6, 2),
(12, 6, 3),
(13, 6, 4),
(14, 7, 1),
(15, 7, 2),
(16, 7, 4),
(17, 8, 1),
(18, 9, 3),
(19, 10, 1),
(20, 10, 2),
(21, 1, 8),
(22, 1, 10),
(23, 1, 11),
(24, 3, 20),
(25, 3, 19),
(26, 4, 15),
(27, 4, 12),
(28, 5, 11),
(29, 5, 12),
(30, 6, 11),
(31, 6, 5),
(32, 6, 6),
(33, 6, 7),
(34, 9, 12),
(35, 9, 17),
(36, 7, 18),
(37, 8, 5),
(38, 9, 5),
(39, 10, 7),
(40, 10, 15);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_attaction`
--

CREATE TABLE `hotel_attaction` (
  `hotel_attraction_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_attaction`
--

INSERT INTO `hotel_attaction` (`hotel_attraction_id`, `hotel_id`, `attraction_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 3),
(8, 4, 4),
(9, 4, 5),
(10, 4, 6),
(11, 5, 4),
(12, 5, 5),
(13, 5, 6),
(14, 6, 4),
(15, 7, 7),
(16, 7, 9),
(17, 8, 7),
(18, 8, 8),
(19, 8, 9),
(20, 8, 10),
(21, 10, 7),
(22, 10, 8),
(23, 10, 9),
(24, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_faq`
--

CREATE TABLE `hotel_faq` (
  `hotel_faq_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_faq`
--

INSERT INTO `hotel_faq` (`hotel_faq_id`, `hotel_id`, `faq_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 1, 5),
(4, 2, 6),
(5, 3, 8),
(6, 3, 5),
(7, 4, 1),
(8, 4, 2),
(9, 5, 3),
(10, 5, 10),
(11, 6, 9),
(12, 6, 8),
(13, 8, 5),
(14, 8, 6),
(15, 8, 3),
(16, 8, 1),
(17, 8, 2),
(18, 9, 4),
(19, 10, 3),
(20, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_photo`
--

CREATE TABLE `hotel_photo` (
  `hotel_photo_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_photo`
--

INSERT INTO `hotel_photo` (`hotel_photo_id`, `hotel_id`, `photo_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_policy`
--

CREATE TABLE `hotel_policy` (
  `hotel_policy_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_policy`
--

INSERT INTO `hotel_policy` (`hotel_policy_id`, `hotel_id`, `policy_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 3, 2),
(5, 3, 3),
(6, 4, 4),
(7, 4, 1),
(8, 5, 2),
(9, 5, 4),
(10, 6, 1),
(11, 6, 2),
(12, 6, 3),
(13, 6, 4),
(14, 7, 1),
(15, 7, 2),
(16, 7, 4),
(17, 8, 3),
(18, 8, 4),
(19, 8, 2),
(20, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'English'),
(2, 'French'),
(3, 'Hungarian'),
(4, 'Swahili'),
(5, 'Spanish'),
(6, 'Fijian'),
(7, 'Tswana'),
(8, 'Romanian'),
(9, 'Telugu'),
(10, 'Kashmiri');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL CHECK (`payment_status` in ('Paid','Partial payment','Pay at hotel')),
  `balance` decimal(13,2) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_status`, `balance`, `payment_method_id`, `booking_id`) VALUES
(1, 'Paid', NULL, 1, 8),
(2, 'Partial payment', NULL, 1, 10),
(3, 'Paid', NULL, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_type` varchar(225) NOT NULL CHECK (`payment_type` in ('Card','PayPal','Gift Card'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_type`) VALUES
(1, 'Card'),
(2, 'PayPal'),
(3, 'Gift Card');

-- --------------------------------------------------------

--
-- Table structure for table `payment_option`
--

CREATE TABLE `payment_option` (
  `payment_option_id` int(11) NOT NULL,
  `payment_option_desc` varchar(255) NOT NULL,
  `payment_option_rate` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_option`
--

INSERT INTO `payment_option` (`payment_option_id`, `payment_option_desc`, `payment_option_rate`) VALUES
(1, 'Pay now 10% discount', '0.90'),
(2, 'Pay later 10% upcharge', '1.10'),
(3, 'Default (no charge)', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `permission_desc` varchar(255) DEFAULT NULL,
  `opt_in` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_desc`, `opt_in`) VALUES
(1, 'Permission to receive hotels.com deals and offers via email.', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `personal_info_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`personal_info_id`, `first_name`, `last_name`, `dob`, `phone_number`, `title_id`, `gender_id`) VALUES
(1, 'Charles', 'Treker', '2002-03-04', '+86 207 304 4351', 7, 1),
(2, 'Olivia', 'Spileman', '1974-02-18', '+352 960 758 1054', 6, 1),
(3, 'Justin', 'Thomas', '1989-02-25', '+63 923 375 4094', 8, 1),
(4, 'Eddie', 'Cavanagh', '1989-02-12', '+389 571 751 8173', 1, 3),
(5, 'Cameron', 'Smith', '1969-11-22', '+420 770 786 0374', 1, 1),
(6, 'Annika', 'Sorenstam', '1964-02-02', '+1 717 439 2487', 5, 2),
(7, 'Elderick', 'Woods', '1973-12-18', '+86 805 760 7341', 4, 1),
(8, 'Matthew', 'Enrich', '1999-06-15', '+62 528 389 5576', 2, 1),
(9, 'Miley', 'Berndsen', '1995-06-02', '+86 357 233 8006', 8, 2),
(10, 'James', 'Rupert', '1983-12-08', '+46 197 200 5999', 7, 1),
(11, 'Karolina', 'Roddick', '1952-07-08', '+7 416 860 5261', 1, 2),
(12, 'Myrtia', 'Mordie', '1963-10-09', '+381 630 257 0863', 3, 2),
(13, 'Arthur', 'Bish', '1980-07-16', '+62 805 162 4914', 1, 1),
(14, 'Ebonee', 'Dorking', '1983-03-22', '+86 784 465 7590', 2, 2),
(15, 'Rania', 'Caplin', '1969-01-10', '+62 460 621 7337', 3, 2),
(16, 'Glenden', 'Disley', '1983-04-04', '+962 627 323 3038', 4, 1),
(17, 'Allyce', 'Veld', '1983-08-11', '+381 754 131 4689', 2, 2),
(18, 'Drucie', 'Acutt', '2003-01-09', '+86 861 718 1716', 1, 1),
(19, 'Ivan', 'Fabler', '1991-11-18', '+53 985 357 1205', 1, 1),
(20, 'Dana', 'Rosewarne', '1977-09-09', '+86 668 840 7195', 4, 2),
(25, 'Jordan', 'Spieth', '1993-07-27', '+1 214 432 6745', 1, 1),
(26, 'Jordan', 'Spieth', '1993-07-27', '+1 214 432 6745', 1, 1),
(27, 'Jordan', 'Spieth', '1993-07-27', '+1 214 432 6745', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `photo_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `photo_url`, `photo_desc`) VALUES
(1, 'http://dummyimage.com/140x100.png/ff4444/ffffff', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(2, 'http://dummyimage.com/164x100.png/dddddd/000000', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(3, 'http://dummyimage.com/224x100.png/cc0000/ffffff', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
(4, 'http://dummyimage.com/200x100.png/cc0000/ffffff', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(5, 'http://dummyimage.com/122x100.png/cc0000/ffffff', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(6, 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(7, 'http://dummyimage.com/158x100.png/5fa2dd/ffffff', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(8, 'http://dummyimage.com/170x100.png/dddddd/000000', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(9, 'http://dummyimage.com/146x100.png/dddddd/000000', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(10, 'http://dummyimage.com/230x100.png/dddddd/000000', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(11, 'http://dummyimage.com/181x100.png/ff4444/ffffff', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
(12, 'http://dummyimage.com/150x100.png/dddddd/000000', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(13, 'http://dummyimage.com/243x100.png/dddddd/000000', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(14, 'http://dummyimage.com/164x100.png/cc0000/ffffff', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(15, 'http://dummyimage.com/217x100.png/ff4444/ffffff', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(16, 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(17, 'http://dummyimage.com/141x100.png/ff4444/ffffff', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(18, 'http://dummyimage.com/182x100.png/dddddd/000000', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(19, 'http://dummyimage.com/111x100.png/5fa2dd/ffffff', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(20, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(21, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(22, 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
(23, 'http://dummyimage.com/109x100.png/dddddd/000000', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),
(24, 'http://dummyimage.com/171x100.png/ff4444/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(25, 'http://dummyimage.com/223x100.png/cc0000/ffffff', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
(26, 'http://dummyimage.com/182x100.png/ff4444/ffffff', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(27, 'http://dummyimage.com/152x100.png/5fa2dd/ffffff', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),
(28, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(29, 'http://dummyimage.com/145x100.png/cc0000/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(30, 'http://dummyimage.com/194x100.png/dddddd/000000', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
(31, 'http://dummyimage.com/177x100.png/cc0000/ffffff', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(32, 'http://dummyimage.com/166x100.png/dddddd/000000', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),
(33, 'http://dummyimage.com/193x100.png/ff4444/ffffff', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(34, 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(35, 'http://dummyimage.com/134x100.png/ff4444/ffffff', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(36, 'http://dummyimage.com/160x100.png/dddddd/000000', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(37, 'http://dummyimage.com/124x100.png/dddddd/000000', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(38, 'http://dummyimage.com/190x100.png/dddddd/000000', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
(39, 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(40, 'http://dummyimage.com/192x100.png/5fa2dd/ffffff', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
(41, 'http://dummyimage.com/139x100.png/cc0000/ffffff', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(42, 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(43, 'http://dummyimage.com/133x100.png/ff4444/ffffff', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(44, 'http://dummyimage.com/205x100.png/ff4444/ffffff', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
(45, 'http://dummyimage.com/214x100.png/cc0000/ffffff', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(46, 'http://dummyimage.com/233x100.png/dddddd/000000', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(47, 'http://dummyimage.com/139x100.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(48, 'http://dummyimage.com/101x100.png/cc0000/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(49, 'http://dummyimage.com/212x100.png/dddddd/000000', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),
(50, 'http://dummyimage.com/116x100.png/dddddd/000000', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(51, 'http://dummyimage.com/234x100.png/cc0000/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(52, 'http://dummyimage.com/171x100.png/dddddd/000000', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
(53, 'http://dummyimage.com/105x100.png/dddddd/000000', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
(54, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(55, 'http://dummyimage.com/141x100.png/ff4444/ffffff', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(56, 'http://dummyimage.com/125x100.png/ff4444/ffffff', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(57, 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(58, 'http://dummyimage.com/183x100.png/5fa2dd/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(59, 'http://dummyimage.com/199x100.png/cc0000/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(60, 'http://dummyimage.com/169x100.png/dddddd/000000', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` int(11) NOT NULL,
  `policy_type` varchar(255) DEFAULT NULL,
  `policy_desc` varchar(255) DEFAULT NULL CHECK (`policy_type` in ('Pets','Cancellation','Check-in','Check-out'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `policy_type`, `policy_desc`) VALUES
(1, 'Pets', 'Pets allowed in designated areas'),
(2, 'Check-in', 'Check-in: 2pm (Early check-in may be available upon request)'),
(3, 'Check-out', 'Check-out: 11am (Late check-out may be available upon request)'),
(4, 'Check-out', 'Luggage store available for 24 hours upon checkout'),
(5, 'Check-in', 'Private concierge upon check-in'),
(6, 'Check-in', 'Special gift upon check-in'),
(7, 'Check-out', 'Quick check-out available from within room'),
(8, 'Pets', 'Pets allowed in room');

-- --------------------------------------------------------

--
-- Table structure for table `price_variation`
--

CREATE TABLE `price_variation` (
  `price_variation_id` int(11) NOT NULL,
  `variation_name` varchar(255) NOT NULL,
  `variation_rate` decimal(13,2) NOT NULL,
  `booking_date_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_variation`
--

INSERT INTO `price_variation` (`price_variation_id`, `variation_name`, `variation_rate`, `booking_date_id`) VALUES
(1, 'Halloween', '1.20', NULL),
(2, 'Christmas and New Year', '1.80', NULL),
(3, 'Easter', '1.30', NULL),
(4, 'Summer Holidays', '1.50', NULL),
(5, 'Event, e.g. concert, exhibition, etc.', '1.60', NULL),
(6, 'Off-peak', '1.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_comment` text NOT NULL,
  `review_rating_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_comment`, `review_rating_id`, `booking_id`) VALUES
(1, 'Abismal! The worst hotel on planet earth!', 1, 1),
(2, 'Horrible! I\'d rather stay in the Bates Motel!', 2, 2),
(3, 'Arghhhh! Cockroaches!', 3, 3),
(4, 'It\'d be comfier finding a park bench for the night!', 4, 4),
(5, 'Manuel at reception knew nothing!', 5, 5),
(6, 'The hotel was fine but the owner Mr Fawlty kept talking about the war!', 6, 6),
(7, 'Decent for a quick layover and a continental breakfast.', 7, 7),
(8, 'Beautiful hotel but probably slightly overpriced due to location.', 8, 8),
(9, 'One of the loveliest hotels we have stayed in. Facilities were immaculate and staff were attentive. The perfect honeymoon for my wife and I!', 9, 9),
(10, 'Excellent hotel that’s just finalizing renovation with an adjacent shopping mall and great views on historic railway station designed by Eiffel. Staff were amazing and very accommodating. Special credit to Victoria at reception, wonderful person who made the stay stress free and smooth. Breakfast was top notch as well!', 10, 10),
(11, 'Absolutely fabulous!', 9, 11),
(12, 'If it was good enough for Marilyn! Great spot.', 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `review_rating`
--

CREATE TABLE `review_rating` (
  `review_rating_id` int(11) NOT NULL,
  `review_rating_num` int(2) NOT NULL,
  `review_rating_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_rating`
--

INSERT INTO `review_rating` (`review_rating_id`, `review_rating_num`, `review_rating_desc`) VALUES
(1, 1, 'Very poor'),
(2, 2, 'Poor'),
(3, 3, 'Poor'),
(4, 4, 'Fair'),
(5, 5, 'Fair'),
(6, 6, 'Good'),
(7, 7, 'Good'),
(8, 8, 'Very good'),
(9, 9, 'Superb'),
(10, 10, 'Exceptional');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `bed_type_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_price_id` int(11) DEFAULT NULL,
  `room_availability_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_number`, `capacity`, `bed_type_id`, `hotel_id`, `room_price_id`, `room_availability_id`) VALUES
(1, '0012', 4, 0, 1, 3, NULL),
(2, '0013', 2, 0, 1, 4, NULL),
(3, '123', 2, 0, 2, 5, NULL),
(4, '150', 2, 0, 2, 6, NULL),
(5, '0245', 2, 0, 3, 7, NULL),
(6, '0246', 2, 0, 3, 8, NULL),
(7, '2A', 6, 0, 4, 9, NULL),
(8, '2B', 4, 0, 4, 10, NULL),
(9, '100', 6, 0, 5, 1, NULL),
(10, '101', 2, 0, 5, 11, NULL),
(11, '200', 2, 0, 6, 12, NULL),
(12, '201', 4, 0, 6, 13, NULL),
(13, '00.42', 2, 0, 7, 14, NULL),
(14, '03.20', 4, 0, 7, 15, NULL),
(15, '09', 3, 0, 8, 16, NULL),
(16, '10', 2, 0, 8, 17, NULL),
(17, '1003', 2, 0, 9, 19, NULL),
(18, '1004', 2, 0, 9, 20, NULL),
(19, '001', 2, 0, 10, 18, NULL),
(20, '085', 6, 0, 10, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_accessibility`
--

CREATE TABLE `room_accessibility` (
  `room_accessibility_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `accessibility_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_accessibility`
--

INSERT INTO `room_accessibility` (`room_accessibility_id`, `room_id`, `accessibility_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 9, 1),
(6, 9, 2),
(7, 9, 3),
(8, 9, 4),
(9, 11, 1),
(10, 11, 2),
(11, 11, 3),
(12, 14, 3),
(13, 14, 2),
(14, 17, 1),
(15, 17, 2),
(16, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_amenity`
--

CREATE TABLE `room_amenity` (
  `room_amenity_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_amenity`
--

INSERT INTO `room_amenity` (`room_amenity_id`, `room_id`, `amenity_id`) VALUES
(1, 1, 13),
(2, 1, 17),
(3, 2, 11),
(4, 2, 17),
(5, 3, 11),
(6, 3, 16),
(7, 3, 18),
(8, 4, 11),
(9, 5, 12),
(10, 5, 14),
(11, 6, 15),
(12, 6, 14),
(13, 7, 11),
(14, 7, 14),
(15, 8, 15),
(16, 8, 12),
(17, 8, 16),
(18, 9, 11),
(19, 10, 12),
(20, 10, 13),
(21, 11, 13),
(22, 12, 17),
(23, 12, 11),
(24, 13, 17),
(25, 13, 11),
(26, 13, 16),
(27, 13, 18),
(28, 14, 11),
(29, 15, 12),
(30, 16, 14),
(31, 16, 15),
(32, 17, 14),
(33, 17, 11),
(34, 17, 16),
(35, 18, 15),
(36, 18, 12),
(37, 19, 16),
(38, 19, 11),
(39, 19, 12),
(40, 20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `room_base_rate`
--

CREATE TABLE `room_base_rate` (
  `room_base_rate_id` int(11) NOT NULL,
  `room_rate` decimal(13,2) NOT NULL,
  `room_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_base_rate`
--

INSERT INTO `room_base_rate` (`room_base_rate_id`, `room_rate`, `room_type_id`) VALUES
(1, '80.00', 1),
(2, '90.00', 1),
(3, '100.00', 1),
(4, '150.00', 1),
(5, '200.00', 1),
(6, '250.00', 1),
(7, '300.00', 1),
(8, '500.00', 1),
(9, '800.00', 1),
(10, '1000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `booking_id`, `room_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 1, 10),
(4, 2, 20),
(5, 4, 12),
(6, 5, 11),
(7, 6, 10),
(8, 7, 4),
(9, 8, 9),
(10, 9, 13),
(11, 9, 14),
(12, 10, 7),
(14, 11, 8),
(15, 12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room_photo`
--

CREATE TABLE `room_photo` (
  `room_photo_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_photo`
--

INSERT INTO `room_photo` (`room_photo_id`, `room_id`, `photo_id`) VALUES
(1, 1, 21),
(2, 1, 22),
(3, 2, 23),
(4, 2, 24),
(5, 3, 25),
(6, 3, 26),
(7, 4, 27),
(8, 4, 28),
(9, 5, 29),
(10, 5, 30),
(11, 6, 31),
(12, 6, 32),
(13, 7, 33),
(14, 7, 34),
(15, 8, 35),
(16, 8, 36),
(17, 9, 37),
(18, 9, 38),
(19, 10, 39),
(20, 10, 40),
(21, 11, 41),
(22, 11, 42),
(23, 12, 43),
(24, 12, 44),
(25, 13, 45),
(26, 13, 46),
(27, 14, 47),
(28, 14, 48),
(29, 15, 49),
(30, 15, 50),
(31, 16, 51),
(32, 16, 52),
(33, 17, 53),
(34, 17, 54),
(35, 18, 55),
(36, 18, 56),
(37, 19, 57),
(38, 19, 58),
(39, 20, 59),
(40, 20, 60);

-- --------------------------------------------------------

--
-- Table structure for table `room_policy`
--

CREATE TABLE `room_policy` (
  `room_policy_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_policy`
--

INSERT INTO `room_policy` (`room_policy_id`, `room_id`, `policy_id`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 2, 7),
(4, 2, 8),
(5, 3, 5),
(6, 3, 6),
(7, 4, 5),
(8, 4, 6),
(9, 5, 5),
(10, 5, 6),
(11, 6, 7),
(12, 6, 8),
(13, 8, 6),
(14, 8, 8),
(15, 9, 5),
(16, 9, 6),
(17, 9, 7),
(18, 10, 8),
(19, 12, 5),
(20, 12, 6),
(21, 12, 7),
(22, 12, 8),
(23, 13, 5),
(24, 13, 6),
(25, 14, 5),
(26, 14, 6),
(27, 15, 5),
(28, 15, 6),
(29, 16, 7),
(30, 16, 8),
(31, 17, 7),
(32, 17, 6),
(33, 19, 7),
(34, 19, 8),
(35, 19, 5),
(36, 19, 6),
(37, 20, 7),
(38, 20, 8);

-- --------------------------------------------------------

--
-- Table structure for table `room_price`
--

CREATE TABLE `room_price` (
  `room_price_id` int(11) NOT NULL,
  `total_room_price` decimal(13,2) DEFAULT NULL,
  `room_base_rate_id` int(11) NOT NULL,
  `price_variation_id` int(11) DEFAULT NULL,
  `payment_option_id` int(11) NOT NULL,
  `optional_extra_id` int(11) DEFAULT NULL,
  `reward_discount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_price`
--

INSERT INTO `room_price` (`room_price_id`, `total_room_price`, `room_base_rate_id`, `price_variation_id`, `payment_option_id`, `optional_extra_id`, `reward_discount_id`) VALUES
(1, NULL, 4, 2, 1, NULL, NULL),
(2, NULL, 10, 4, 1, NULL, NULL),
(3, NULL, 9, 2, 3, NULL, NULL),
(4, NULL, 8, 3, 3, NULL, NULL),
(5, NULL, 2, 5, 1, NULL, NULL),
(6, NULL, 2, 3, 2, NULL, NULL),
(7, NULL, 6, 6, 3, NULL, NULL),
(8, NULL, 6, 6, 3, NULL, NULL),
(9, NULL, 9, 3, 1, NULL, NULL),
(10, NULL, 9, 4, 1, NULL, NULL),
(11, NULL, 4, 1, 2, NULL, NULL),
(12, NULL, 7, 2, 2, NULL, NULL),
(13, NULL, 8, 5, 3, NULL, NULL),
(14, NULL, 7, 6, 3, NULL, NULL),
(15, NULL, 8, 2, 3, NULL, NULL),
(16, NULL, 2, 3, 3, NULL, NULL),
(17, NULL, 2, 2, 1, NULL, NULL),
(18, NULL, 9, 6, 1, NULL, NULL),
(19, NULL, 5, 5, 3, NULL, NULL),
(20, NULL, 5, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `star_rating_num` int(1) NOT NULL COMMENT 'kept to 1 in length as it should be a hotel rating of 1-5',
  `star_rating_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `star_rating_num`, `star_rating_desc`) VALUES
(1, 1, '1 Star'),
(2, 2, '2 Star'),
(3, 3, '3 Star'),
(4, 4, '4 Star'),
(5, 5, '5 Star');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL,
  `theme_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `theme_desc`) VALUES
(1, 'Spa'),
(2, 'LGBT'),
(3, 'Beach'),
(4, 'Amazing Views'),
(5, 'Boutique'),
(6, 'Poolside'),
(7, 'Honeymoon'),
(8, 'Ski'),
(9, 'Casino'),
(10, 'Airport');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessibility`
--
ALTER TABLE `accessibility`
  ADD PRIMARY KEY (`accessibility_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_address_city_city_id` (`city_id`),
  ADD KEY `FK_address_country_country_id` (`country_id`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`attraction_id`),
  ADD KEY `FK_attraction_address_address_id` (`address_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_booking_customer_account_customer_account_id` (`customer_account_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `FK_card_payment_method_payment_method_id` (`payment_method_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`customer_account_id`),
  ADD KEY `FK_customer_account_address_address_id` (`address_id`),
  ADD KEY `FK_customer_account_language_language_id` (`language_id`),
  ADD KEY `FK_customer_account_currency_currency_id` (`currency_id`),
  ADD KEY `FK_customer_account_permission_permission_id` (`permission_id`),
  ADD KEY `FK_customer_account_personal_info_personal_info_id` (`personal_info_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD KEY `FK_guest_personal_info_personal_info_id` (`personal_info_id`);

--
-- Indexes for table `guest_list`
--
ALTER TABLE `guest_list`
  ADD PRIMARY KEY (`guest_list_id`),
  ADD KEY `FK_guest_list_booking_booking_id` (`booking_id`),
  ADD KEY `FK_guest_list_guest_guest_id` (`guest_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_theme_theme_id` (`theme_id`),
  ADD KEY `FK_hotel_star_rating_star_rating_id` (`star_rating_id`),
  ADD KEY `FK_hotel_avg_review_avg_review_id` (`avg_review_id`),
  ADD KEY `FK_hotel_address_ address_id` (`address_id`);

--
-- Indexes for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD PRIMARY KEY (`hotel_accessibility_id`),
  ADD KEY `FK_hotel_accessibility_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_accessibility_accessibility_accessibility_id` (`accessibility_id`);

--
-- Indexes for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD PRIMARY KEY (`hotel_amenity_id`),
  ADD KEY `FK_hotel_amenity_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_amenity_amenity_amenity_id` (`amenity_id`);

--
-- Indexes for table `hotel_attaction`
--
ALTER TABLE `hotel_attaction`
  ADD PRIMARY KEY (`hotel_attraction_id`),
  ADD KEY `FK_hotel_attraction_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_attraction_attraction_attraction_id` (`attraction_id`);

--
-- Indexes for table `hotel_faq`
--
ALTER TABLE `hotel_faq`
  ADD PRIMARY KEY (`hotel_faq_id`),
  ADD KEY `FK_hotel_faq_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_faq_faq_faq_id` (`faq_id`);

--
-- Indexes for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  ADD PRIMARY KEY (`hotel_photo_id`),
  ADD KEY `FK_hotel_photo_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_photo_photo_photo_id` (`photo_id`);

--
-- Indexes for table `hotel_policy`
--
ALTER TABLE `hotel_policy`
  ADD PRIMARY KEY (`hotel_policy_id`),
  ADD KEY `FK_hotel_policy_policy_policy_id` (`policy_id`),
  ADD KEY `FK_hotel_policy_hotel_hotel_id` (`hotel_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_booking_booking_id` (`booking_id`),
  ADD KEY `FK_payment_payment_method_payment_method_id` (`payment_method_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_option`
--
ALTER TABLE `payment_option`
  ADD PRIMARY KEY (`payment_option_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`personal_info_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `price_variation`
--
ALTER TABLE `price_variation`
  ADD PRIMARY KEY (`price_variation_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_review_review_rating_review_rating_id` (`review_rating_id`),
  ADD KEY `FK_review_booking_booking_id` (`booking_id`);

--
-- Indexes for table `review_rating`
--
ALTER TABLE `review_rating`
  ADD PRIMARY KEY (`review_rating_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_room_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_room_room_price_room_price_id` (`room_price_id`);

--
-- Indexes for table `room_accessibility`
--
ALTER TABLE `room_accessibility`
  ADD PRIMARY KEY (`room_accessibility_id`),
  ADD KEY `FK_room_accessibility_accessibility_accessibility_id` (`accessibility_id`),
  ADD KEY `FK_room_accessibility_room_room_id` (`room_id`);

--
-- Indexes for table `room_amenity`
--
ALTER TABLE `room_amenity`
  ADD PRIMARY KEY (`room_amenity_id`),
  ADD KEY `FK_room_amenity_amenity_amenity_id` (`amenity_id`),
  ADD KEY `FK_room_amenity_room_room_id` (`room_id`);

--
-- Indexes for table `room_base_rate`
--
ALTER TABLE `room_base_rate`
  ADD PRIMARY KEY (`room_base_rate_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_room_booking_room_room_id` (`room_id`),
  ADD KEY `FK_room_booking_booking_booking_id` (`booking_id`);

--
-- Indexes for table `room_photo`
--
ALTER TABLE `room_photo`
  ADD PRIMARY KEY (`room_photo_id`),
  ADD KEY `FK _room_photo_photo_photo_id` (`photo_id`),
  ADD KEY `FK_room_photo_room_room_id` (`room_id`);

--
-- Indexes for table `room_policy`
--
ALTER TABLE `room_policy`
  ADD PRIMARY KEY (`room_policy_id`),
  ADD KEY `FK_room_policy_policy_policy_id` (`policy_id`),
  ADD KEY `FK_room_policy_room_room_id` (`room_id`);

--
-- Indexes for table `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`room_price_id`),
  ADD KEY `FK_room_price_room_base_rate_room_base_rate_id` (`room_base_rate_id`),
  ADD KEY `FK_room_price_price_variation_price_variation_id` (`price_variation_id`),
  ADD KEY `FK_room_price_payment_option_payment_option_id` (`payment_option_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessibility`
--
ALTER TABLE `accessibility`
  MODIFY `accessibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `amenity`
--
ALTER TABLE `amenity`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `attraction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_account`
--
ALTER TABLE `customer_account`
  MODIFY `customer_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guest_list`
--
ALTER TABLE `guest_list`
  MODIFY `guest_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  MODIFY `hotel_accessibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  MODIFY `hotel_amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hotel_attaction`
--
ALTER TABLE `hotel_attaction`
  MODIFY `hotel_attraction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hotel_faq`
--
ALTER TABLE `hotel_faq`
  MODIFY `hotel_faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  MODIFY `hotel_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel_policy`
--
ALTER TABLE `hotel_policy`
  MODIFY `hotel_policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_option`
--
ALTER TABLE `payment_option`
  MODIFY `payment_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `personal_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `price_variation`
--
ALTER TABLE `price_variation`
  MODIFY `price_variation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `review_rating`
--
ALTER TABLE `review_rating`
  MODIFY `review_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room_accessibility`
--
ALTER TABLE `room_accessibility`
  MODIFY `room_accessibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_amenity`
--
ALTER TABLE `room_amenity`
  MODIFY `room_amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `room_base_rate`
--
ALTER TABLE `room_base_rate`
  MODIFY `room_base_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room_photo`
--
ALTER TABLE `room_photo`
  MODIFY `room_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `room_policy`
--
ALTER TABLE `room_policy`
  MODIFY `room_policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `room_price`
--
ALTER TABLE `room_price`
  MODIFY `room_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_address_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_address_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `attraction`
--
ALTER TABLE `attraction`
  ADD CONSTRAINT `FK_attraction_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_customer_account_customer_account_id` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_account` (`customer_account_id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_card_payment_method_payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `FK_customer_account_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_customer_account_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_customer_account_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FK_customer_account_permission_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  ADD CONSTRAINT `FK_customer_account_personal_info_personal_info_id` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_info` (`personal_info_id`);

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `FK_guest_personal_info_personal_info_id` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_info` (`personal_info_id`);

--
-- Constraints for table `guest_list`
--
ALTER TABLE `guest_list`
  ADD CONSTRAINT `FK_guest_list_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_guest_list_guest_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_address_ address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `hotel_accessibility`
--
ALTER TABLE `hotel_accessibility`
  ADD CONSTRAINT `FK_hotel_accessibility_accessibility_accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`accessibility_id`),
  ADD CONSTRAINT `FK_hotel_accessibility_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD CONSTRAINT `FK_hotel_amenity_amenity_amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`),
  ADD CONSTRAINT `FK_hotel_amenity_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_attaction`
--
ALTER TABLE `hotel_attaction`
  ADD CONSTRAINT `FK_hotel_attraction_attraction_attraction_id` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`attraction_id`),
  ADD CONSTRAINT `FK_hotel_attraction_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_faq`
--
ALTER TABLE `hotel_faq`
  ADD CONSTRAINT `FK_hotel_faq_faq_faq_id` FOREIGN KEY (`faq_id`) REFERENCES `faq` (`faq_id`),
  ADD CONSTRAINT `FK_hotel_faq_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  ADD CONSTRAINT `FK_hotel_photo_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_hotel_photo_photo_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`);

--
-- Constraints for table `hotel_policy`
--
ALTER TABLE `hotel_policy`
  ADD CONSTRAINT `FK_hotel_policy_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_hotel_policy_policy_policy_id` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`policy_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_payment_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_payment_payment_method_payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_review_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_review_review_rating_review_rating_id` FOREIGN KEY (`review_rating_id`) REFERENCES `review_rating` (`review_rating_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_room_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_room_room_price_room_price_id` FOREIGN KEY (`room_price_id`) REFERENCES `room_price` (`room_price_id`);

--
-- Constraints for table `room_accessibility`
--
ALTER TABLE `room_accessibility`
  ADD CONSTRAINT `FK_room_accessibility_accessibility_accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`accessibility_id`),
  ADD CONSTRAINT `FK_room_accessibility_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_amenity`
--
ALTER TABLE `room_amenity`
  ADD CONSTRAINT `FK_room_amenity_amenity_amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`),
  ADD CONSTRAINT `FK_room_amenity_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_room_booking_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_room_booking_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_photo`
--
ALTER TABLE `room_photo`
  ADD CONSTRAINT `FK _room_photo_photo_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`),
  ADD CONSTRAINT `FK_room_photo_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_policy`
--
ALTER TABLE `room_policy`
  ADD CONSTRAINT `FK_room_policy_policy_policy_id` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`policy_id`),
  ADD CONSTRAINT `FK_room_policy_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_price`
--
ALTER TABLE `room_price`
  ADD CONSTRAINT `FK_room_price_payment_option_payment_option_id` FOREIGN KEY (`payment_option_id`) REFERENCES `payment_option` (`payment_option_id`),
  ADD CONSTRAINT `FK_room_price_price_variation_price_variation_id` FOREIGN KEY (`price_variation_id`) REFERENCES `price_variation` (`price_variation_id`),
  ADD CONSTRAINT `FK_room_price_room_base_rate_room_base_rate_id` FOREIGN KEY (`room_base_rate_id`) REFERENCES `room_base_rate` (`room_base_rate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
