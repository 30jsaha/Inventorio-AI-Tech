-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2025 at 12:50 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsaha_inventrio`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2025-01-17 11:23:12', NULL),
(2, 'Hardware', 'hardware', '2025-01-17 11:23:12', NULL),
(3, 'Smartphones', 'smartphones', '2025-01-17 11:23:12', NULL),
(4, 'Speakers', 'speakers', '2025-01-17 11:23:12', NULL),
(5, 'Software', 'software', '2025-01-17 11:23:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'Angel Murray', 'russel.heidi@example.org', '1-564-224-9925', '2314 Francisco Underpass\nDarionberg, NE 57705-7771', NULL, 'Zetta Schuster', '41754899', 'BSI', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(2, 'Ravi Reddy', 'hintz.skye@example.org', '248-555-1657', '446 Randy Trafficway Suite 228\r\nNoahberg, CA 17618-9196', NULL, 'Leilani Stokes', '65361863', 'Mandiri', '2025-01-17 11:23:13', '2025-01-19 19:28:06'),
(3, 'Miss Zita Mueller', 'nwill@example.org', '352.331.6179', '1877 Gaylord Course\nPort Libbiefurt, UT 35715', NULL, 'Adrien Murphy', '53573094', 'BSI', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(4, 'Madison Braun', 'maribel58@example.net', '+1 (934) 986-8128', '539 Brando Keys\nPhilipfurt, SD 97706-0052', NULL, 'Alisha Davis', '67034547', 'Mandiri', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(5, 'Geeta Yadav', 'xbailey@example.org', '(551) 342-0166', '463 Weissnat Mission Apt. 868\r\nCelestinoton, OH 68659-0730', NULL, 'Prof. Alex Bartoletti', '59664104', 'BCA', '2025-01-17 11:23:13', '2025-01-19 19:25:29'),
(6, 'Sanjana Joshi', 'mozell55@example.net', '1-828-961-8295', '869 Deja Prairie Apt. 979\r\nKochland, NE 50160-3098', NULL, 'Mr. Granville Kutch', '22015889', 'Mandiri', '2025-01-17 11:23:13', '2025-01-19 19:28:21'),
(7, 'Jody Jacobson', 'gutmann.katelyn@example.com', '(586) 540-4896', '5823 Aurelie Springs\nNew Enrique, VT 71256', NULL, 'Mr. Jalon Smith', '89587425', 'BNI', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(8, 'Abigail Stroman', 'ugaylord@example.net', '(971) 693-3765', '42316 Bernie Ville\nGleasonburgh, FL 16089-3743', NULL, 'Alayna Weimann', '21934909', 'Mandiri', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(9, 'Kamille Stark', 'rippin.marlon@example.org', '857-800-5005', '26500 Gleason Fort\nWatersfort, MA 89698', NULL, 'Rose Spinka', '27391352', 'BCA', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(10, 'Broderick Kling', 'vandervort.blanca@example.com', '+1.631.270.9003', '87121 Hodkiewicz Shore Suite 742\nNorth Zackary, IL 74845', NULL, 'Ruby Donnelly II', '79751278', 'BNI', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(11, 'Lloyd Ryan', 'xsmitham@example.com', '+1-570-908-4707', '9116 Evelyn Passage Suite 392\nEast Monica, MO 68669-9686', NULL, 'Sigurd Fay', '48307532', 'BCA', '2025-01-17 11:23:13', '2025-01-17 11:23:13'),
(12, 'Shruti Sharma', 'roberts.myrl@example.org', '(605) 353-5752', '505 Ofelia Circles\r\nCordeliabury, MS 82973-3327', NULL, 'Murray Howell', '29035076', 'Mandiri', '2025-01-17 11:23:14', '2025-01-19 19:27:48'),
(13, 'Shubham Yadav', 'feest.emie@example.net', '640.731.1911', '10735 Jeffrey Island Suite 694\r\nEast Titochester, WV 86018', NULL, 'Helga Green', '91649050', 'BSI', '2025-01-17 11:23:14', '2025-01-19 19:27:21'),
(14, 'Dr. Macy Cartwright IV', 'demetrius.wilkinson@example.net', '+1.360.381.8257', '6184 McClure Green\nSouth Beth, RI 73294-9472', NULL, 'Monty Reinger', '17226897', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(15, 'Maximilian Kerluke', 'wehner.khalid@example.com', '+1.541.624.4852', '44138 Hudson Landing\nEast Wileyville, NJ 33592-8239', NULL, 'Logan Ryan', '91851991', 'Mandiri', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(16, 'Aryanna Hermann', 'npowlowski@example.org', '(346) 576-5837', '92269 Raleigh Tunnel\nSchadentown, AL 57302-0387', NULL, 'Eloisa Kuhn Sr.', '92886326', 'Mandiri', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(17, 'Bell Nolan', 'hayes.susanna@example.net', '+1.626.277.6564', '5999 Kristy Course Suite 196\nNorth Lonzomouth, MS 36435-8183', NULL, 'Jameson McClure', '56563892', 'Mandiri', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(18, 'Kendra Schowalter', 'dayton.okeefe@example.net', '+15634364238', '1725 Halie Center Suite 675\nPort Enola, GA 32819', NULL, 'Luz Douglas', '10362446', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(19, 'Emmalee Carroll II', 'lmills@example.net', '+13126195297', '94769 Erna Cliff Apt. 363\nPort Kacishire, OH 07146', NULL, 'Beau Farrell', '24592895', 'BRI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(20, 'Amitabh Kumar', 'dtillman@example.org', '1-754-365-7454', '38768 Hazel Crescent Apt. 792\r\nJastberg, DC 58690', NULL, 'Arjun Howell', '34503178', 'BNI', '2025-01-17 11:23:14', '2025-01-19 19:24:58'),
(21, 'Seema Thakur', 'rolfson.wyman@example.org', '1-701-990-4321', '547 Reagan Well\r\nLilaview, KY 96696-7358', NULL, 'Willis Bradtke', '20413868', 'BCA', '2025-01-17 11:23:14', '2025-01-19 19:30:01'),
(22, 'Claudie Simonis DDS', 'roxane.jacobson@example.net', '+1-806-330-3798', '710 Monserrate Gateway Apt. 252\nKeelingfurt, ND 79928-0617', NULL, 'Osvaldo Lesch', '45861841', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(23, 'Ian Waters', 'walker.zelma@example.net', '+1-208-499-3152', '53927 Eladio Park Suite 679\nEstamouth, SC 42126', NULL, 'Norris Bashirian', '58974011', 'Mandiri', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(24, 'Israel Lakin', 'heaney.jayson@example.com', '+1-773-307-9277', '2804 Rippin Skyway\nRollinborough, HI 92292', NULL, 'Ms. Eliza Treutel II', '40197842', 'BRI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(25, 'Marcellus Trantow', 'fjenkins@example.org', '+1 (828) 640-8137', '7556 Skye Spurs\nJerdeborough, OH 67955-6181', NULL, 'Lia Heller MD', '82970679', 'BNI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(26, 'Camilla Luettgen', 'bartoletti.jada@example.org', '240.200.9379', '753 Breana Locks\nPort Brionnaburgh, MS 97211', NULL, 'Sim Waelchi', '36421242', 'BSI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(27, 'Katrine Leffler', 'rowan.klein@example.org', '+13345475866', '623 Glennie Throughway Suite 164\nLindville, MS 29847-2215', NULL, 'Mr. Lonnie Boyer', '25124149', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(28, 'Jadon Dibbert', 'marvin.zachery@example.com', '845-527-9392', '389 Leannon Extension Apt. 738\nWest Andre, MA 92628-6358', NULL, 'Arden Homenick', '72671579', 'BNI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(29, 'Ajay Rani', 'gayle.kovacek@example.com', '+18784670181', '8966 McKenzie Crossing Suite 613\r\nIsabellfort, OH 28760-6779', NULL, 'Zula Ondricka', '96775019', 'BCA', '2025-01-17 11:23:14', '2025-01-19 19:30:26'),
(30, 'Aarti Verma', 'gabe.stamm@example.net', '517.650.0192', '27164 Elwin Manors\r\nNew Georgiannafort, AL 61333-6490', NULL, 'Malinda Volkman', '34744922', 'Mandiri', '2025-01-17 11:23:14', '2025-01-19 19:26:54'),
(31, 'Vikash Sinha', 'gmaggio@example.net', '+1-585-609-2039', '71431 Simonis Lodge\r\nKeeblerborough, KY 81071', NULL, 'Beth Swaniawski', '62756599', 'Mandiri', '2025-01-17 11:23:14', '2025-01-19 19:28:40'),
(32, 'Arthur Davis III', 'oreilly.shad@example.net', '(458) 577-0303', '682 Rickie Port Apt. 562\nSouth Abbey, VT 79711-1687', NULL, 'Myron Wisoky', '75228009', 'BSI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(33, 'Priyanka Iyer', 'smitham.jedidiah@example.com', '+12392584823', '37134 Quincy Mountain\r\nQuitzonville, MT 36468-7842', NULL, 'Dena Boyer', '29366226', 'BRI', '2025-01-17 11:23:14', '2025-01-19 19:29:00'),
(34, 'Martin Dooley', 'agreen@example.org', '1-854-537-3549', '7788 Wilkinson Stravenue Suite 392\nMitchellburgh, GA 87151-4053', NULL, 'Vincenza Block', '68392538', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(35, 'Kartik Reddy', 'hyatt.lucie@example.net', '231.475.8732', '43649 Wintheiser Pass\r\nNorth Paxtonbury, KY 77574-6814', NULL, 'Edgardo Gorczany PhD', '12904631', 'BCA', '2025-01-17 11:23:14', '2025-01-19 19:31:35'),
(36, 'Felipa Dickens', 'wbergstrom@example.net', '(850) 423-2644', '6280 Bode Island\nDulcemouth, NM 95321', NULL, 'Lonie VonRueden', '68878118', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(37, 'Radhika Joshi', 'felix.considine@example.net', '+1.689.724.6061', '925 Berge Divide Apt. 287\r\nEnosburgh, NC 49162', NULL, 'Dr. Amari Durgan MD', '84142957', 'BSI', '2025-01-17 11:23:14', '2025-01-19 19:32:04'),
(38, 'Cayla Gleason I', 'bschaden@example.org', '510-306-3036', '74584 Vaughn Garden Suite 920\nNorth Felicia, NC 93705', NULL, 'Marisa Russel', '72822330', 'BNI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(39, 'Libby Jacobs', 'jkutch@example.net', '680-633-8508', '80244 Rashad Court Apt. 464\nCamillahaven, OK 74172', NULL, 'Bailey Effertz', '62281882', 'BRI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(40, 'Kali Hickle DDS', 'qkassulke@example.com', '864.747.9677', '259 Fahey Oval\nWest Filomena, WA 36750-7083', NULL, 'Marguerite Parisian Jr.', '55396421', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(41, 'Billie Leannon', 'wblock@example.net', '+1-843-999-0769', '285 Johnston Terrace Apt. 457\nNew Karellechester, ND 59690', NULL, 'Alana Witting', '41979171', 'BSI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(42, 'Dawn Green IV', 'pacocha.jayme@example.com', '+1-201-431-5999', '378 Ilene Trafficway\nLake Izabella, MS 37181', NULL, 'Brad Kris V', '82743835', 'BNI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(43, 'Bettie Wiegand', 'bridie.treutel@example.net', '1-712-583-9542', '81061 Brett Bridge\nLake Clementina, TN 39105-1407', NULL, 'Dr. Audreanne Hettinger', '50756751', 'Mandiri', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(44, 'Lance Blick', 'lilliana.schmitt@example.net', '941-438-6723', '42315 Griffin Underpass\nEast Jayceeland, OK 30368-4334', NULL, 'Jonas Roob', '32264086', 'BCA', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(45, 'Ajay Rani', 'alysa.dibbert@example.net', '1-458-873-1266', '80040 Gutmann Port Suite 497\r\nNedbury, WA 74907-5334', NULL, 'Melyna Oberbrunner', '14587315', 'Mandiri', '2025-01-17 11:23:14', '2025-01-19 19:29:24'),
(46, 'Felicity Mosciski', 'gutkowski.juston@example.net', '986.543.9598', '5427 Gulgowski Street\nPort Shayna, NC 98846', NULL, 'Eileen Bernhard', '33817904', 'BSI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(47, 'Deepak Mehta', 'rogelio.abernathy@example.org', '+1-615-495-6238', '27693 Hirthe Plaza Apt. 538\r\nEast Anibal, WV 37004-5080', NULL, 'Thad Langworth', '14178786', 'Mandiri', '2025-01-17 11:23:14', '2025-01-19 19:26:37'),
(48, 'Miss Marilou Wintheiser Sr.', 'harber.serenity@example.net', '929-761-9797', '725 Leslie Plains Suite 655\nEast Fermintown, CA 72410', NULL, 'Vivian Hermiston DDS', '95217601', 'BSI', '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(49, 'Vikash Sinha', 'boberbrunner@example.org', '(980) 817-6638', '2559 Laurence Course\r\nNew Edytheview, CA 94564', NULL, 'Prof. Vernice Rosenbaum IV', '78584659', 'BNI', '2025-01-17 11:23:14', '2025-01-19 19:28:33'),
(50, 'Tanvi Gupta', 'luettgen.vito@example.org', '931.330.8355', '370 Destinee Creek Suite 593\r\nLake Elishaton, CA 02991', NULL, 'Kayli Lemke', '84475229', 'BNI', '2025-01-17 11:23:14', '2025-01-19 19:29:36'),
(51, 'Loyal Hudson', 'xswift@example.com', '1-931-617-2770', '7491 Garth Alley\nLake Raheemside, VA 63187-4699', NULL, 'Sydnee Feeney', '99583748', 'BSI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(52, 'Bonnie Morar', 'powlowski.ed@example.net', '786-272-0330', '7706 Abshire Haven Suite 560\nEast Stanford, AK 49343', NULL, 'Ahmad VonRueden', '61341540', 'Mandiri', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(53, 'Sanjay Patel', 'jovani90@example.com', '209-413-8025', '9111 Weber Wells\r\nKrismouth, WI 47975-6572', NULL, 'Robin Langosh', '72200373', 'BNI', '2025-01-17 11:23:16', '2025-01-19 19:29:48'),
(54, 'Howard Erdman', 'cmarquardt@example.net', '(470) 709-3385', '175 Waelchi Terrace\nPort Susanahaven, VA 37095-5630', NULL, 'Ulices Parisian', '74146227', 'BRI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(55, 'Jaiden Willms', 'ferry.kattie@example.com', '+1 (704) 901-5323', '84018 Dibbert Light Apt. 747\nTerrytown, MA 13135', NULL, 'Micah Howe', '57828669', 'BCA', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(56, 'Morton Crona', 'emonahan@example.com', '+1-346-830-7908', '8902 Dock Loaf\nStoltenbergburgh, NC 12161-9511', NULL, 'Miss Augustine Renner DVM', '94093321', 'BRI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(57, 'Rekha Patel', 'jaeden.beer@example.net', '727-880-6408', '4135 Abernathy Camp Apt. 690\r\nNew Precious, AR 81319', NULL, 'Marcos Ledner', '84899796', 'BRI', '2025-01-17 11:23:16', '2025-01-19 19:26:11'),
(58, 'Sanjay Patel', 'koch.floy@example.net', '240.951.4766', '905 Wunsch Ports\r\nLavonport, CO 07603-5095', NULL, 'Cathy Adams IV', '33100127', 'BSI', '2025-01-17 11:23:16', '2025-01-19 19:31:03'),
(59, 'Seema Thakur', 'rosie56@example.net', '+1.828.591.3656', '98200 Anastacio Junctions\r\nSouth Antwonhaven, HI 12170-1591', NULL, 'Dr. Isaac Haley PhD', '22785107', 'BCA', '2025-01-17 11:23:16', '2025-01-19 19:31:17'),
(60, 'Miss Maryse Anderson MD', 'clang@example.net', '848.314.5219', '602 Cora Mountains Apt. 168\nWest Kristofertown, IA 93706', NULL, 'Ubaldo Homenick', '68943885', 'BNI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(61, 'Jeffery Sanford', 'mable77@example.com', '(504) 871-4261', '881 Maribel Harbor\nNitzscheside, MA 09775', NULL, 'Brayan Witting', '27405085', 'BCA', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(62, 'Audie Wintheiser', 'wilber77@example.com', '+1 (423) 364-1131', '12689 Kulas Park\nNew Lera, FL 35006-0711', NULL, 'Cordell Champlin III', '31754985', 'Mandiri', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(63, 'Aliya Leannon', 'phill@example.org', '(332) 790-1003', '563 Evie Via\nWelchchester, MD 18092', NULL, 'Amiya Koepp', '41344767', 'Mandiri', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(64, 'Miss Minerva Zboncak', 'king.hulda@example.com', '(239) 314-2739', '758 Julianne Centers\nWest Aletha, SC 71958-0517', NULL, 'Prof. Garry Doyle III', '21065819', 'BSI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(65, 'Dr. Jarred Jacobson I', 'uhudson@example.com', '+12763230009', '9114 Kihn Springs Apt. 989\nKrismouth, SD 47582-7295', NULL, 'Jammie Kirlin', '62496292', 'BCA', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(66, 'Darby Donnelly', 'david.lubowitz@example.net', '+1-681-658-3284', '258 Brain Mill\nLake Alanis, OK 12651-6446', NULL, 'Hettie Osinski', '69923120', 'BRI', '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(67, 'Tanvi Gupta', 'celine.larson@example.com', '916.972.5057', '656 Donnelly Spurs\r\nEast Jimmyburgh, TX 36833', NULL, 'Mrs. Claire Littel MD', '24617406', 'BSI', '2025-01-17 11:23:17', '2025-01-19 19:30:46'),
(68, 'Fiona Quigley III', 'rickie.thiel@example.net', '(458) 391-0570', '36889 Dayna Stravenue\nNorth Raegan, AL 62605', NULL, 'Dr. Fae Schmitt MD', '68298908', 'BSI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(69, 'Finn Ziemann', 'dfriesen@example.com', '346.900.6566', '540 Rosamond Stream\nElmoton, IN 46870', NULL, 'Brooklyn Schmidt Jr.', '65932795', 'BRI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(70, 'Jazlyn Osinski', 'ada16@example.org', '(504) 333-6141', '7682 Douglas Hollow Apt. 566\nMooreland, MN 10007', NULL, 'Gunner Flatley', '63080988', 'BSI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(71, 'Heather Sauer DDS', 'tillman.brigitte@example.com', '872.830.5572', '5288 Rath Grove Apt. 177\nNew Kris, TX 56095', NULL, 'Prof. Garland Fahey Sr.', '48543446', 'BSI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(72, 'Kenton Gulgowski', 'maye77@example.org', '667.322.2351', '6639 Denis Ranch\nSouth Caleigh, MA 16628', NULL, 'Miss Breanne Botsford', '79816643', 'BSI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(73, 'Jamey Jaskolski', 'beau85@example.com', '1-702-815-5380', '896 Gene Drive\nPaucekburgh, UT 07972-0200', NULL, 'Prof. Madelyn Veum DDS', '58578905', 'BCA', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(74, 'Else Carroll', 'ykemmer@example.org', '+15859892346', '677 Eula Valleys\nWest Pearliemouth, HI 64346', NULL, 'Ms. Elta Gleichner II', '90965852', 'BSI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(75, 'Manoj Sharma', 'roma.quitzon@example.net', '1-954-791-1826', '812 Purdy Park\r\nPourosmouth, MA 25989', NULL, 'Mina Lubowitz III', '20696392', 'BCA', '2025-01-17 11:23:17', '2025-01-19 19:25:47'),
(76, 'Darlene Graham', 'owilderman@example.com', '(910) 502-7337', '137 Grady Plain Apt. 889\nHerzogview, IA 32916', NULL, 'Mrs. Glenda Miller', '16269332', 'BNI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(77, 'Mr. Dallas Nikolaus', 'xshields@example.org', '+13027414065', '8453 Ashleigh Ports Suite 007\nMeganeborough, LA 89699-7113', NULL, 'Sarah Bartoletti', '18024041', 'BRI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(78, 'Caden Bednar Jr.', 'gayle10@example.com', '737-856-4960', '309 Roberts Walk\nHoseaside, NE 93038', NULL, 'Jayne Lehner', '82230582', 'Mandiri', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(79, 'Hoyt Howe', 'oharris@example.net', '+1 (513) 364-4824', '4671 Kozey Course\nWest Carmelo, OH 32642', NULL, 'Dr. Darrick Keebler', '29989822', 'BCA', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(80, 'Candida Kub III', 'white.heidi@example.org', '828.562.1201', '5243 Marcellus Bridge Apt. 658\nFeeneyburgh, FL 58423-0528', NULL, 'Marianna Eichmann', '23158182', 'BNI', '2025-01-17 11:23:17', '2025-01-17 11:23:17'),
(81, 'Debolina Das', 'bivata8458@fundapk.com', 'XXXXXXXX', 'XXXXXXXXXXXXXXX', '1821770796724442.jpg', 'XXXXXX', 'XXXXXXXXXX', 'BNI', '2025-01-20 17:56:59', '2025-01-20 17:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_30_150318_create_customers_table', 1),
(6, '2023_05_01_111143_create_suppliers_table', 1),
(7, '2023_05_02_114617_create_categories_table', 1),
(8, '2023_05_02_122454_create_units_table', 1),
(9, '2023_05_02_140630_create_products_table', 1),
(10, '2023_05_04_084431_create_orders_table', 1),
(11, '2023_05_04_084646_create_order_details_table', 1),
(12, '2023_05_04_173440_create_shoppingcart_table', 1),
(13, '2023_05_06_142348_create_purchases_table', 1),
(14, '2023_05_06_143104_create_purchase_details_table', 1),
(15, '2023_11_03_140528_create_quotations_table', 1),
(16, '2023_11_03_140529_create_quotation_details_table', 1),
(17, '2023_11_17_183122_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` tinyint NOT NULL COMMENT '0 - Pending / 1 - Complete',
  `total_products` int NOT NULL,
  `sub_total` int NOT NULL,
  `vat` int NOT NULL,
  `total` int NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` int NOT NULL,
  `due` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `invoice_no`, `payment_type`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, 1, '1992-09-27 19:36:29', 0, 10, 19281, 15, 66938, 'INV-1717869551', 'cash', 98365, 28623, '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(2, 2, '1992-12-29 10:07:28', 0, 10, 60183, 15, 17134, 'INV-3485198885', 'due', 46638, 77804, '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(3, 3, '1980-08-05 20:15:58', 2, 1, 85714, 6, 25393, 'INV-7013891684', 'due', 54505, 23974, '2025-01-17 11:23:14', '2025-01-17 11:23:14'),
(4, 4, '1991-01-18 09:45:59', 1, 5, 43820, 6, 96702, 'INV-0133696494', 'cash', 82484, 60130, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(5, 5, '2020-12-15 13:44:12', 1, 1, 50960, 15, 44950, 'INV-9299874751', 'due', 43123, 59529, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(6, 6, '2016-06-06 02:13:01', 0, 10, 52055, 24, 49606, 'INV-8989795057', 'due', 64528, 49176, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(7, 7, '1975-11-26 06:59:24', 1, 10, 88075, 24, 37017, 'INV-4977982007', 'cash', 52903, 98809, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(8, 8, '1989-04-03 18:12:14', 1, 1, 15665, 15, 40824, 'INV-2422795029', 'cheque', 63672, 96643, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(9, 9, '2024-01-07 14:14:24', 2, 15, 38486, 15, 79790, 'INV-9751159962', 'cash', 50187, 93071, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(10, 10, '2014-11-30 06:32:45', 1, 1, 28014, 24, 47371, 'INV-3124309427', 'cash', 77067, 90929, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(11, 11, '1992-07-10 05:50:06', 1, 5, 22500, 15, 25052, 'INV-3145286009', 'cheque', 41416, 58951, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(12, 12, '2021-08-24 17:40:50', 0, 1, 31403, 6, 48470, 'INV-1607311212', 'due', 22347, 59071, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(13, 13, '1988-08-04 15:29:44', 1, 15, 32974, 15, 47343, 'INV-3499113929', 'cash', 76879, 74564, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(14, 14, '2022-03-31 11:41:22', 0, 5, 12976, 15, 27847, 'INV-3913594592', 'cheque', 15510, 44019, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(15, 15, '2021-09-03 00:24:22', 0, 15, 80743, 24, 94041, 'INV-7119994347', 'cash', 53150, 31479, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(16, 16, '2021-11-11 02:31:13', 1, 10, 12416, 24, 24864, 'INV-7303935473', 'due', 87632, 31478, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(17, 17, '2009-05-29 12:47:37', 0, 10, 70305, 6, 50999, 'INV-1310980437', 'cash', 92707, 94446, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(18, 18, '2008-03-28 20:30:56', 1, 5, 76267, 15, 24112, 'INV-2392108495', 'cash', 36506, 14150, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(19, 19, '1983-12-13 06:30:09', 0, 1, 56691, 15, 12401, 'INV-9426857123', 'cheque', 35983, 97347, '2025-01-17 11:23:15', '2025-01-17 11:23:15'),
(20, 20, '1994-12-29 04:11:20', 1, 1, 46656, 6, 70058, 'INV-9969582900', 'cash', 15538, 13194, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(21, 21, '1978-09-19 03:46:20', 0, 10, 25513, 15, 79554, 'INV-9659481602', 'cash', 90027, 90905, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(22, 22, '2019-04-03 09:09:06', 1, 10, 42981, 24, 67084, 'INV-3398336161', 'cash', 27327, 11753, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(23, 23, '2010-01-02 18:29:38', 0, 15, 97836, 15, 75436, 'INV-2751064250', 'cheque', 38143, 36859, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(24, 24, '2004-11-28 19:48:49', 0, 5, 45735, 6, 87768, 'INV-9586539770', 'due', 28704, 51011, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(25, 25, '2010-03-30 01:19:19', 1, 1, 34355, 6, 37660, 'INV-2607028868', 'cheque', 93078, 14406, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(26, 26, '2024-10-14 01:49:07', 1, 1, 32220, 15, 12437, 'INV-9566010283', 'cheque', 38885, 87326, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(27, 27, '1980-08-19 05:47:54', 1, 15, 59093, 6, 30121, 'INV-4316717414', 'cheque', 52441, 69327, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(28, 28, '1972-11-26 07:44:39', 1, 15, 85336, 6, 32598, 'INV-5725790300', 'cheque', 74940, 55640, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(29, 29, '1989-08-24 07:31:21', 2, 10, 42739, 24, 23891, 'INV-8027374488', 'cash', 74892, 33536, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(30, 30, '1975-01-04 06:59:32', 2, 10, 58117, 6, 26506, 'INV-5978449844', 'cash', 77213, 46810, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(31, 31, '1989-05-07 05:10:11', 2, 15, 79758, 24, 80214, 'INV-5295854282', 'cash', 45559, 80507, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(32, 32, '2019-10-24 00:58:30', 1, 1, 69742, 6, 39559, 'INV-0571728462', 'cash', 97223, 86652, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(33, 33, '1988-09-11 10:21:33', 1, 15, 40373, 15, 79209, 'INV-4485497723', 'due', 15997, 26628, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(34, 34, '1976-01-18 20:00:09', 0, 1, 72960, 6, 94099, 'INV-2869410598', 'cheque', 78342, 25495, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(35, 35, '2015-04-03 23:09:05', 1, 1, 44826, 6, 19510, 'INV-6562827753', 'due', 75395, 30374, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(36, 36, '1999-11-20 03:24:45', 1, 5, 67003, 6, 75769, 'INV-7519205935', 'due', 63733, 74843, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(37, 37, '2007-08-06 21:23:44', 1, 1, 88125, 24, 67535, 'INV-1692290706', 'cash', 62008, 88522, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(38, 38, '2021-09-17 07:39:33', 1, 15, 31796, 24, 40673, 'INV-7584388749', 'cash', 15512, 70219, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(39, 39, '2020-05-12 15:25:55', 2, 5, 98294, 6, 61975, 'INV-1479578598', 'cheque', 58264, 97203, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(40, 40, '1998-12-19 08:47:06', 1, 10, 48705, 6, 80756, 'INV-8810753290', 'cheque', 20672, 99230, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(41, 41, '2019-03-18 07:29:57', 0, 1, 84983, 6, 82068, 'INV-0017572781', 'cheque', 25087, 35779, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(42, 42, '1992-06-02 17:12:03', 0, 5, 54945, 15, 94474, 'INV-2899819669', 'cheque', 25602, 36955, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(43, 43, '1997-04-24 09:29:29', 2, 10, 93587, 6, 26554, 'INV-9263165723', 'due', 11208, 41894, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(44, 44, '2017-12-10 01:10:54', 2, 10, 51321, 6, 21957, 'INV-9721994677', 'cash', 97290, 33491, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(45, 45, '1999-05-01 08:40:47', 0, 5, 29976, 6, 42594, 'INV-6174811969', 'cheque', 18258, 53321, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(46, 46, '1975-05-15 21:17:18', 0, 15, 90716, 15, 83834, 'INV-4677979118', 'cash', 25161, 99448, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(47, 47, '1977-03-01 16:44:15', 0, 10, 60859, 15, 46972, 'INV-2561537888', 'cash', 50713, 34791, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(48, 48, '2016-10-10 00:57:55', 1, 5, 72023, 6, 78973, 'INV-2234752782', 'cash', 85586, 17380, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(49, 49, '2017-04-17 07:56:36', 2, 10, 61903, 6, 16982, 'INV-6455258769', 'cheque', 49676, 10513, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(50, 50, '1989-03-04 04:36:18', 2, 5, 58893, 6, 75685, 'INV-6050851758', 'due', 31464, 23836, '2025-01-17 11:23:16', '2025-01-17 11:23:16'),
(51, 17, '2025-01-17 00:00:00', 1, 3, 2700, 648, 3348, 'INV-996959', 'HandCash', 3348, 0, '2025-01-17 11:38:25', '2025-01-17 11:38:58'),
(52, 63, '2025-01-19 00:00:00', 1, 1, 900, 216, 1116, 'INV-996960', 'HandCash', 1116, 0, '2025-01-19 14:14:36', '2025-01-19 14:16:18'),
(53, 8, '2025-01-21 00:00:00', 1, 1, 500, 120, 620, 'INV-996961', 'HandCash', 1000, -380, '2025-01-21 15:33:37', '2025-01-21 15:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `unitcost` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(3, 53, 7, 1, 500, 500, '2025-01-21 15:33:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `buying_price` int NOT NULL COMMENT 'Buying Price',
  `selling_price` int NOT NULL COMMENT 'Selling Price',
  `quantity_alert` int NOT NULL,
  `tax` int DEFAULT NULL,
  `tax_type` tinyint DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `unit_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `code`, `quantity`, `buying_price`, `selling_price`, `quantity_alert`, `tax`, `tax_type`, `notes`, `product_image`, `category_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(2, 'ASUS Laptop', 'asus-laptop', '2', 10, 90000, 140000, 10, 24, 0, NULL, '1835156537157615.png', 1, 3, '2025-01-17 11:23:13', '2025-06-17 06:27:36'),
(3, 'Logitech Keyboard', 'logitech-keyboard', '3', 10, 90000, 140000, 10, 24, 0, NULL, '1835156481250076.png', 2, 3, '2025-01-17 11:23:13', '2025-06-17 06:26:42'),
(4, 'Logitech Speakers', 'logitech-speakers', '4', 10, 90000, 140000, 10, 24, 0, NULL, '1835156420978092.png', 4, 3, '2025-01-17 11:23:13', '2025-06-17 06:25:45'),
(5, 'AutoCAD v7.0', 'autocad-v70', '5', 11, 90000, 140000, 10, 24, 0, NULL, '1835156300766778.jpg', 5, 3, '2025-01-17 11:23:13', '2025-06-17 06:23:50'),
(6, 'iphone 16', 'iphone-16', 'PC01', 16, 90000, 130000, 10, NULL, 0, NULL, '1835157842662678.jpeg', 3, 3, '2025-01-19 19:38:58', '2025-06-17 06:48:21'),
(7, 'Oppo', 'oppo', 'PC02', 16, 50000, 100000, 3, NULL, 0, NULL, '1835156242271810.png', 3, 3, '2025-01-20 20:34:41', '2025-06-17 06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `total_amount` int NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `date`, `purchase_no`, `status`, `total_amount`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1996-02-23 20:15:00', '5', 0, 55, 1, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(2, 2, '2004-09-14 18:39:34', '3', 1, 78, 2, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(3, 3, '1997-01-27 06:09:10', '3', 1, 26, 3, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(4, 4, '2014-12-22 20:52:23', '5', 0, 37, 4, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(5, 5, '1998-08-01 13:43:52', '3', 0, 28, 5, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(6, 6, '2023-05-31 02:53:20', '4', 0, 2, 6, NULL, '2025-01-17 11:23:26', '2025-01-17 11:23:26'),
(7, 7, '2015-06-22 09:50:46', '2', 0, 82, 7, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(8, 8, '1998-09-07 18:05:46', '2', 1, 68, 8, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(9, 9, '2009-12-13 14:56:52', '1', 1, 21, 9, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(10, 10, '2018-07-11 07:55:19', '1', 0, 66, 10, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(11, 11, '2019-08-30 11:38:01', '3', 0, 14, 11, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(12, 12, '2003-11-13 09:16:18', '1', 1, 46, 12, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(13, 13, '1995-02-18 11:12:53', '5', 1, 97, 13, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(14, 14, '2016-01-14 20:37:07', '1', 0, 60, 14, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(15, 15, '2009-05-12 08:46:28', '5', 1, 47, 15, 71, '2025-01-17 11:23:27', '2025-06-17 06:58:02'),
(16, 16, '2018-05-04 22:04:30', '5', 0, 9, 16, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(17, 17, '2016-04-30 18:18:49', '1', 1, 70, 17, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(18, 18, '2006-01-03 18:06:04', '2', 0, 99, 18, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(19, 19, '1998-09-24 05:55:39', '5', 0, 0, 19, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(20, 20, '2012-09-10 13:09:10', '4', 0, 91, 20, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(21, 21, '2021-02-03 15:04:16', '2', 0, 0, 21, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(22, 22, '2024-02-23 14:32:53', '2', 0, 74, 22, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(23, 23, '2006-06-14 01:15:34', '4', 0, 72, 23, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(24, 24, '2022-05-22 14:25:44', '3', 0, 74, 24, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(25, 25, '1998-05-15 10:39:40', '5', 1, 89, 25, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(26, 26, '2004-03-28 07:41:07', '3', 0, 65, 26, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(27, 27, '2012-04-08 05:12:52', '3', 1, 7, 27, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(28, 28, '2014-06-04 20:01:44', '1', 1, 20, 28, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(29, 29, '2015-12-05 13:18:16', '3', 1, 22, 29, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(30, 30, '2021-10-15 02:53:42', '3', 0, 81, 30, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(31, 31, '1995-01-18 02:18:20', '1', 0, 96, 31, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(32, 32, '2024-08-29 09:20:00', '1', 1, 68, 32, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(33, 33, '2002-08-02 16:02:28', '5', 1, 44, 33, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(34, 34, '1998-04-10 01:57:42', '2', 1, 88, 34, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(35, 35, '2001-02-20 10:57:56', '5', 0, 74, 35, NULL, '2025-01-17 11:23:27', '2025-01-17 11:23:27'),
(36, 36, '2003-04-28 12:02:46', '1', 0, 78, 36, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(37, 37, '2017-12-20 21:13:59', '1', 0, 94, 37, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(38, 38, '2001-04-30 10:19:42', '4', 0, 17, 38, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(39, 39, '2020-03-07 14:14:01', '3', 1, 49, 39, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(40, 40, '2022-12-23 05:10:29', '1', 0, 6, 40, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(41, 41, '2017-09-14 23:33:48', '2', 0, 86, 41, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(42, 42, '2008-02-28 01:18:06', '5', 1, 70, 42, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(43, 43, '1998-05-15 02:07:27', '3', 1, 22, 43, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(44, 44, '2017-05-25 08:40:01', '2', 0, 95, 44, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(45, 45, '2022-01-21 11:22:50', '3', 1, 99, 45, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(46, 46, '2006-03-22 06:56:15', '5', 1, 38, 46, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(47, 47, '2003-08-13 19:22:32', '4', 1, 17, 47, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(48, 48, '2005-01-10 20:30:02', '4', 0, 79, 48, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(49, 49, '2001-09-13 08:21:20', '1', 0, 93, 49, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(50, 50, '1997-10-22 12:00:35', '2', 0, 18, 50, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(51, 51, '2016-09-14 10:52:03', '5', 0, 89, 51, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(52, 52, '2017-05-25 09:40:38', '1', 1, 60, 52, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(53, 53, '1995-08-31 22:14:26', '3', 1, 3, 53, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(54, 54, '2003-04-16 18:49:12', '4', 1, 19, 54, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(55, 55, '2008-08-23 07:37:05', '2', 1, 7, 55, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(56, 56, '2002-02-19 02:26:38', '2', 0, 90, 56, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(57, 57, '2025-01-07 15:55:52', '4', 1, 2, 57, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(58, 58, '2011-09-18 17:08:28', '3', 0, 72, 58, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(59, 59, '2021-09-10 13:15:55', '1', 0, 4, 59, NULL, '2025-01-17 11:23:28', '2025-01-17 11:23:28'),
(60, 60, '2013-10-20 23:25:36', '3', 1, 77, 60, NULL, '2025-01-17 11:23:29', '2025-01-17 11:23:29'),
(61, 4, '2025-01-17 00:00:00', 'PRS-000001', 1, 1800, 71, 71, '2025-01-17 11:40:13', '2025-01-17 11:40:30'),
(62, 4, '2025-01-18 00:00:00', 'PRS-000002', 1, 1980, 71, 71, '2025-01-18 10:12:01', '2025-01-18 10:12:28'),
(63, 11, '2025-01-19 00:00:00', 'PRS-000003', 1, 1800, 71, 71, '2025-01-19 14:12:53', '2025-01-19 14:13:06'),
(64, 44, '2025-01-21 00:00:00', 'PRS-000004', 1, 1500, 71, 71, '2025-01-21 15:29:51', '2025-01-21 15:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `unitcost` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(4, 64, 7, 3, 500, 1500, '2025-01-21 15:29:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int NOT NULL DEFAULT '0',
  `tax_amount` int NOT NULL DEFAULT '0',
  `discount_percentage` int NOT NULL DEFAULT '0',
  `discount_amount` int NOT NULL DEFAULT '0',
  `shipping_amount` int NOT NULL DEFAULT '0',
  `total_amount` int NOT NULL,
  `status` tinyint NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint UNSIGNED NOT NULL,
  `quotation_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `unit_price` int NOT NULL,
  `sub_total` int NOT NULL,
  `product_discount_amount` int NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `type`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'Akshay Patel', 'tyshawn.corkery@example.net', '9876543285', '43, Ramesh Nagar, Mumbai, Maharashtra', 'Govind Sports Shop', 'distributor', NULL, 'Akshay Patel', '39553926', 'BCA', '2025-01-17 11:23:17', '2025-01-19 19:18:00'),
(2, 'Komal Verma', 'droberts@example.com', '9876543258', '16, Kandivali West, Mumbai, Maharashtra', 'Rashi Cosmetics', 'distributor', NULL, 'Komal Verma', '43659103', 'Mandiri', '2025-01-17 11:23:17', '2025-01-19 17:56:18'),
(3, 'Aryan Patel', 'amit.singh@example.com', '9876543212', '78, M.G. Road, Ahmedabad, Gujarat', 'Sharma Electronics', 'distributor', NULL, 'Aryan Patel', '86120851', 'BNI', '2025-01-17 11:23:18', '2025-01-19 16:37:48'),
(4, 'Isha Mehta', 'laron80@example.org', '9876543286', '12, Sector 22, Gurgaon, Haryana', 'Nisha Cosmetics & Beauty', 'distributor', NULL, 'Isha Mehta', '46112739', 'Mandiri', '2025-01-17 11:23:18', '2025-01-19 19:19:04'),
(5, 'Pranav Mishra', 'ofay@example.org', '9876543252', '15, Kesar Bagh, Lucknow, UP', 'Sonal Fast Food', 'distributor', NULL, 'Pranav Mishra', '52605143', 'BRI', '2025-01-17 11:23:18', '2025-01-19 17:49:33'),
(6, 'Aishwarya Reddy', 'bettie04@example.net', '9876543271', '38, Model Town, Jaipur, Rajasthan', 'Munna Fancy Store', 'distributor', NULL, 'Aishwarya Reddy', '90722808', 'BRI', '2025-01-17 11:23:18', '2025-01-19 18:29:38'),
(7, 'Tanuja Deshmukh', 'lourdes50@example.com', '9876543256', '33, Sadar Bazar, Ahmedabad, Gujarat', 'Krishna Sports Goods', 'distributor', NULL, 'Tanuja Deshmukh', '11507564', 'Mandiri', '2025-01-17 11:23:18', '2025-01-19 17:53:59'),
(8, 'Sanjay Sharma', 'kunal.sharma@example.com', '9876543238', '25, Khajuri Khas, Patna, Bihar', 'Sanjay Furniture & Interiors', 'distributor', NULL, 'Sanjay Sharma', '95174388', 'BCA', '2025-01-17 11:23:18', '2025-01-19 17:18:21'),
(9, 'Vidya Suresh', 'arvilla94@example.org', '7994007824', '23, Rajouri Garden, Delhi', 'Seema Saree Boutique', 'distributor', NULL, 'Vidya Suresh', '47620368', 'BRI', '2025-01-17 11:23:18', '2025-01-19 19:05:48'),
(10, 'Nidhi Joshi', 'amit.mehra@example.com', '9876543243', '27, Sector 9, Noida, UP', 'Ashok Fruit Shop', 'distributor', NULL, 'Nidhi Joshi', '22609218', 'BSI', '2025-01-17 11:23:19', '2025-01-19 17:25:16'),
(11, 'Praveen Kumar', 'jakob77@example.com', '9876543283', '72, Model Town, Patiala, Punjab', 'Ravi Cloth Merchant', 'distributor', NULL, 'Praveen Kumar', '33850863', 'BRI', '2025-01-17 11:23:19', '2025-01-19 19:15:08'),
(12, 'Ritu Mehra', 'daniel.gerhard@example.net', '9876543245', '55, Sikar, Rajasthan', 'Pankaj Saree Collection', 'distributor', NULL, 'Ritu Mehra', '84386062', 'Mandiri', '2025-01-17 11:23:19', '2025-01-19 17:26:46'),
(13, 'Shubham Verma', 'dsteuber@example.org', '9876543273', '72, Malleswaram, Bangalore, Karnataka', 'Gita Beauty Salon', 'distributor', NULL, 'Shubham Verma', '48231891', 'BCA', '2025-01-17 11:23:19', '2025-01-19 18:33:10'),
(14, 'Vandana Prasad', 'rherman@example.com', '9876543277', '19, New Delhi, Delhi', 'Manish Jewels', 'distributor', NULL, 'Vandana Prasad', '48436592', 'BCA', '2025-01-17 11:23:19', '2025-01-19 19:09:34'),
(15, 'Nisha Mehta', 'pooja.agarwal@example.com', '9876543239', '14, Mayur Vihar, Delhi', 'Sanjay Furniture & Interiors', 'distributor', NULL, 'Nisha Mehta', '53737132', 'BCA', '2025-01-17 11:23:19', '2025-01-19 17:21:36'),
(16, 'Pankaj Kumar', 'qskiles@example.net', '9876543266', '9, Kirti Nagar, Delhi', 'Sangeeta Electronics', 'distributor', NULL, 'Pankaj Kumar', '45992348', 'BRI', '2025-01-17 11:23:19', '2025-01-19 18:21:42'),
(17, 'Anjali Kumar', 'schumm.lilly@example.com', '9876543275', '62, Subhash Nagar, Amritsar, Punjab', 'Tara Bakery', 'distributor', NULL, 'Anjali Kumar', '88553760', 'Mandiri', '2025-01-17 11:23:19', '2025-01-19 19:08:07'),
(18, 'Rajendra Chaudhary', 'qokuneva@example.org', '9876543270', '4, Indirapuram, Ghaziabad, UP', 'Harish General Merchandise', 'distributor', NULL, 'Rajendra Chaudhary', '58896023', 'BNI', '2025-01-17 11:23:20', '2025-01-19 18:26:36'),
(19, 'Kiran Joshi', 'kirti.gupta@example.com', '9876543223', '77, Sadar Bazar, Jaipur, Rajasthan', 'Sai Tea & Snacks', 'distributor', NULL, 'Karan Joshi', '57877352', 'BSI', '2025-01-17 11:23:20', '2025-01-19 18:05:04'),
(20, 'Subhash Chandra', 'koss.whitney@example.net', '9876543259', '8, Surajpur, Greater Noida, UP', 'Omkar Furniture World', 'distributor', NULL, 'Subhash Chandra', '67789624', 'BNI', '2025-01-17 11:23:20', '2025-01-19 17:57:19'),
(21, 'Aniket Chaudhary', 'gislason.horace@example.net', '9876543246', '70, Bibvewadi, Pune, Maharashtra', 'Venu Electronics', 'distributor', NULL, 'Aniket Chaudhary', '88691857', 'BCA', '2025-01-17 11:23:20', '2025-01-19 17:27:39'),
(22, 'Deepika Sharma', 'colby79@example.org', '9876543251', '10, Sector 21, Noida, UP', 'Suman Stationery House', 'distributor', NULL, 'Deepika Sharma', '82559935', 'Mandiri', '2025-01-17 11:23:20', '2025-01-19 17:46:01'),
(23, 'Devansh Jain', 'karan.pandey@example.com', '9876543227', '53, Choudhary Lane, Surat, Gujarat', 'Kiran General Store', 'distributor', NULL, 'Devansh Jain', '12646848', 'BSI', '2025-01-17 11:23:20', '2025-01-19 16:57:02'),
(24, 'Kiran Khanna', 'krajcik.dudley@example.com', '9876543255', '75, Ambedkar Nagar, Chennai, Tamil Nadu', 'Vijay Plywood & Furniture', 'distributor', NULL, 'Kiran Khanna', '12391531', 'BRI', '2025-01-17 11:23:20', '2025-01-19 17:53:04'),
(25, 'Manish Sharma', 'rajesh.patel@example.com', '9876543225', '42, Civil Lines, Allahabad, UP', 'Dinesh Food Center', 'distributor', NULL, 'Manish Sharma', '71455320', 'BNI', '2025-01-17 11:23:20', '2025-01-19 16:54:47'),
(26, 'Priyanka Singh', 'vladimir00@example.net', '9876543284', '5, A-Block, Shastri Nagar, Delhi', 'Sushma Tailoring', 'distributor', NULL, 'Priyanka Singh', '86571249', 'Mandiri', '2025-01-17 11:23:21', '2025-01-19 19:16:53'),
(27, 'Aarav Kumar', 'rajesh.kumar@example.com', '9876543210', 'Sector 18, Noida, UP', 'Bhatia Kirana Store', 'distributor', NULL, 'Aarav Kumar', '85503478', 'BCA', '2025-01-17 11:23:21', '2025-01-19 16:34:18'),
(28, 'Priya Verma', 'ritu.shukla@example.com', '9876543215', '56, Bellandur, Bangalore, Karnataka', 'Suman Grocery Mart', 'distributor', NULL, 'Priya Verma', '20916332', 'BCA', '2025-01-17 11:23:21', '2025-01-19 16:43:04'),
(29, 'Neelam Desai', 'skautzer@example.net', '9876543281', '47, Shalimar Bagh, Delhi', 'Shubham Footwear', 'distributor', NULL, 'Neelam Desai', '92222087', 'Mandiri', '2025-01-17 11:23:21', '2025-01-19 19:12:51'),
(30, 'Ananya Sharma', 'neha.sharma@example.com', '9876543211', '4B, Vasant Vihar, New Delhi, Delhi', 'Rani Saree Emporium', 'distributor', NULL, 'Ananya Sharma', '20562420', 'BSI', '2025-01-17 11:23:21', '2025-01-19 16:35:23'),
(31, 'Ashish Patel', 'gkuvalis@example.net', '9876543253', '35, Ramnagar, Varanasi, UP', 'Suraj Auto Parts', 'distributor', NULL, 'Ashish Patel', '25965924', 'Mandiri', '2025-01-17 11:23:21', '2025-01-19 17:48:33'),
(32, 'Krishan Lal', 'ybartoletti@example.org', '9876543265', '54, Rajendra Nagar, Patna, Bihar', 'Rashi Cosmetics', 'distributor', NULL, 'Krishan Lal', '78147983', 'BCA', '2025-01-17 11:23:21', '2025-01-19 18:12:26'),
(33, 'Meenal Gupta', 'pfriesen@example.com', '9876543247', '58, Kolar, Bangalore, Karnataka', 'Radhe Shyam Petha', 'distributor', NULL, 'Meenal Gupta', '40443785', 'BRI', '2025-01-17 11:23:22', '2025-01-19 17:28:59'),
(34, 'Kunal Mehta', 'freichel@example.com', '9876543274', '91, Laxmi Nagar, Delhi', 'Shyam Kirana & General Store', 'distributor', NULL, 'Kunal Mehta', '46017669', 'BNI', '2025-01-17 11:23:22', '2025-01-19 19:07:07'),
(35, 'Neetu Kumar', 'sylvester80@example.net', '9876543254', '20, Jor Bagh, Delhi', 'Shubham Kirana Shop', 'distributor', NULL, 'Neetu Kumar', '79662445', 'BSI', '2025-01-17 11:23:22', '2025-01-19 17:50:31'),
(36, 'Seema Reddy', 'columbus73@example.com', '9876543264', '27, Hazaratganj, Lucknow, UP', 'Rajan Tailoring Service', 'distributor', NULL, 'Seema Reddy', '43269163', 'BNI', '2025-01-17 11:23:22', '2025-01-19 18:11:28'),
(37, 'Sameer Yadav', 'whitney22@example.com', '9876543282', '8, Bapu Nagar, Jaipur, Rajasthan', 'Sanjay Mobile World', 'distributor', NULL, 'Sameer Yadav', '71852597', 'Mandiri', '2025-01-17 11:23:22', '2025-01-19 19:14:14'),
(38, 'Bhavna Mehra', 'nico.borer@example.org', '9876543267', '78, Sector 12, Faridabad, Haryana', 'Deepak Steel Suppliers', 'distributor', NULL, 'Bhavna Mehra', '15516086', 'BCA', '2025-01-17 11:23:22', '2025-01-19 18:22:31'),
(39, 'Harshit Kumar', 'dkoss@example.com', '9876543248', '36, Gulmohar Colony, Indore, MP', 'Shakti General Store', 'distributor', NULL, 'Harshit Kumar', '99053205', 'BSI', '2025-01-17 11:23:22', '2025-01-19 17:30:29'),
(40, 'Diya Reddy', 'anjali.mehta@example.com', '9876543220', '88, Jagatpuri, Delhi', 'Aarti Books & Stationery', 'distributor', NULL, 'Diya Reddy', '28182489', 'BCA', '2025-01-17 11:23:22', '2025-01-19 16:47:44'),
(41, 'Radhika Iyer', 'ashish.kumar@example.com', '9876543230', '28, Sant Nagar, Delhi', 'Tiwari Stationery Shop', 'distributor', NULL, 'Radhika Iyer', '52510854', 'BNI', '2025-01-17 11:23:23', '2025-01-19 17:06:41'),
(42, 'Sunil Yadav', 'lisandro49@example.org', '9876543276', '41, Malkajgiri, Hyderabad, Telangana', 'Suraj Tea Shop', 'distributor', NULL, 'Sunil Yadav', '66126256', 'Mandiri', '2025-01-17 11:23:23', '2025-01-19 19:08:49'),
(43, 'Simran Jain', 'nschaden@example.org', '8703325831', '21, Civil Lines, Ghaziabad, UP', 'Omkar Furniture World', 'distributor', NULL, 'Simran Jain', '63517187', 'Mandiri', '2025-01-17 11:23:23', '2025-01-19 18:18:22'),
(44, 'Aditi Singh', 'priya.patel@example.com', '9876543213', '23, Moti Nagar, Lucknow, UP', 'Gupta Fashion Hub', 'distributor', NULL, 'Aditi Singh', '44771799', 'BRI', '2025-01-17 11:23:23', '2025-01-19 16:39:23'),
(45, 'Rakesh Choudhury', 'raynor.margot@example.com', '9876543287', '33, Princep Street, Kolkata, West Bengal', 'Raj Furniture House', 'distributor', NULL, 'Rakesh Choudhury', '28380537', 'BCA', '2025-01-17 11:23:23', '2025-01-19 19:21:05'),
(46, 'Aditya Yadav', 'eichmann.marta@example.org', '9876543218', 'Durga Nagar, Patna, Bihar', 'Om Mobile World', 'distributor', NULL, 'Aditya Yadav', '27212160', 'Mandiri', '2025-01-17 11:23:24', '2025-01-19 16:45:33'),
(47, 'Nitin Gupta', 'jenifer88@example.org', '9876543261', '49, Bhagwati Vihar, Delhi', 'Sonal Fast Food', 'distributor', NULL, 'Nitin Gupta', '32832952', 'BNI', '2025-01-17 11:23:24', '2025-01-19 18:06:22'),
(48, 'Aakash Gupta', 'sakshi.yadav@example.com', '9876543242', '63, Ghatkopar East, Mumbai, Maharashtra', 'Madan Stationery Mart', 'distributor', NULL, 'Aakash Gupta', '98597525', 'BCA', '2025-01-17 11:23:24', '2025-01-19 17:24:21'),
(49, 'Simran Kaur', 'vikram.rathore@example.com', '9876543232', '62, Noida Sector 56, Noida, UP', 'Agarwal Footwear', 'distributor', NULL, 'Simran Kaur', '80911645', 'BCA', '2025-01-17 11:23:24', '2025-01-19 17:09:14'),
(50, 'Aditya Yadav', 'manoj.pandey@example.com', '9876543219', '29, Surajkund, Faridabad, Haryana', 'Patel Electronics', 'distributor', NULL, 'Aditya Yadav', '36517060', 'Mandiri', '2025-01-17 11:23:24', '2025-01-19 16:50:21'),
(51, 'Karan Joshi', 'deepak.sharma@example.com', '9876543221', '22, Kolar Road, Bhopal, MP', 'Kapoor Furniture Store', 'distributor', NULL, 'Karan Joshi', '54543910', 'Mandiri', '2025-01-17 11:23:24', '2025-01-19 16:48:29'),
(52, 'Riya Roy', 'amit.shukla@example.com', '9876543224', '53, Choudhary Lane, Surat, Gujarat', 'Mehta Jewelry', 'distributor', NULL, 'Riya Roy', '29928812', 'BRI', '2025-01-17 11:23:25', '2025-01-19 17:51:44'),
(53, 'Sanya Kapoor', 'kanika.mishra@example.com', '9876543226', '9876543226', 'Gaurav Paints', 'distributor', NULL, 'Sanya Kapoor', '35297748', 'BSI', '2025-01-17 11:23:25', '2025-01-19 16:56:02'),
(54, 'Kavya Gupta', 'ankur.singh@example.com', '9876543222', '11, Shiv Colony, Kanpur, UP', 'Pooja Medical Store', 'distributor', NULL, 'Kavya Gupta', '50043786', 'BCA', '2025-01-17 11:23:25', '2025-01-19 16:49:22'),
(55, 'Naveen Patel', 'ava.nienow@example.net', '9876543272', '87, Dilsukhnagar, Hyderabad, Telangana', 'Neha Medical Store', 'distributor', NULL, 'Naveen Patel', '21883816', 'BNI', '2025-01-17 11:23:25', '2025-01-19 18:32:18'),
(56, 'Aman Sharma', 'kihn.terrell@example.com', '9876543278', '11, Sector 15, Faridabad, Haryana', 'Vimal Stationery', 'distributor', NULL, 'Aman Sharma', '52093211', 'Mandiri', '2025-01-17 11:23:25', '2025-01-19 19:10:29'),
(57, 'Pooja Agarwal', 'neha.yadav@example.com', '9876543228', '42, Civil Lines, Allahabad, UP', 'Shree Lassi Center', 'distributor', NULL, 'Pooja Agarwal', '85860479', 'BCA', '2025-01-17 11:23:25', '2025-01-19 16:58:49'),
(58, 'Vikram Yadav', 'manisha.gupta@example.com', '9876543229', '50, Malad East, Mumbai, Maharashtra', 'Raj Fruits & Vegetables', 'distributor', NULL, 'Vikram Yadav', '44410562', 'BCA', '2025-01-17 11:23:25', '2025-01-19 17:05:32'),
(59, 'Suman Sharma', 'schimmel.mireille@example.org', '9876543280', '24, Varanasi, UP', 'Parmeshwari Electricals', 'distributor', NULL, 'Suman Sharma', '19197899', 'BRI', '2025-01-17 11:23:26', '2025-01-19 19:12:12'),
(60, 'Neha Reddy', 'sonali.kapoor@example.com', '9876543217', 'Chhattisgarh Colony, Raipur, CG', 'Anand Hardware', 'distributor', NULL, 'Neha Reddy', '59720279', 'BNI', '2025-01-17 11:23:26', '2025-01-19 16:44:47'),
(61, 'Siddharth Gupta', 'rohit.sharma@example.com', '9876543216', '81, Pritam Nagar, Mumbai, Maharashtra', 'Laxmi Sweet House', 'distributor', NULL, 'Siddharth Gupta', '93861168', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 16:44:02'),
(62, 'Rahul Mehta', 'vikas.yadav@example.com', '9876543214', '12, Shivaji Nagar, Pune, Maharashtra', 'Radha Textiles', 'distributor', NULL, 'Rahul Mehta', '49451251', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 16:41:41'),
(63, 'Sunita Sinha', 'simran.singh@example.com', '9876543237', '2, Lajpat Nagar, Delhi', 'Nandini Women\'s Apparel', 'distributor', NULL, 'Sunita Sinha', '29659988', 'BSI', '2025-01-17 11:23:29', '2025-01-19 17:16:17'),
(64, 'Ravi Singh', 'hill.dewayne@example.com', '9876543250', '48, Andheri West, Mumbai, Maharashtra', 'Akash Tea Stall', 'distributor', NULL, 'Ravi Singh', '81184793', 'BCA', '2025-01-17 11:23:29', '2025-01-19 17:32:16'),
(65, 'Shashank Gupta', 'keagan.abbott@example.com', '9876543268', '41, Kharar, Punjab', 'Rupa Dress House', 'distributor', NULL, 'Shashank Gupta', '81473333', 'BNI', '2025-01-17 11:23:29', '2025-01-19 18:23:34'),
(66, 'Gaurav Thakur', 'pradeep.kumar@example.com', '9876543240', '84, Shastri Nagar, Jaipur, Rajasthan', 'Chandra Sweets & Snacks', 'distributor', NULL, 'Gaurav Thakur', '96896213', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 17:22:36'),
(67, 'Swati Agarwal', 'marlee.murray@example.net', '9876543260', '25, Ghatkopar West, Mumbai, Maharashtra', 'Sangeeta Electronics', 'distributor', NULL, 'Swati Agarwal', '87581738', 'BSI', '2025-01-17 11:23:29', '2025-01-19 18:04:30'),
(68, 'Rajesh Rani', 'nidhi.jain@example.com', '9876543235', '17, Ashok Nagar, Nagpur, Maharashtra', 'Tiwari Sweet Corner', 'distributor', NULL, 'Rajesh Rani', '67341887', 'BSI', '2025-01-17 11:23:29', '2025-01-19 17:13:43'),
(69, 'Arpit Sharma', 'bpaucek@example.net', '9876543263', '11, Panipat, Haryana', 'Krishna Sports Goods', 'distributor', NULL, 'Arpit Sharma', '73071669', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 18:09:13'),
(70, 'Jyoti Yadav', 'ankunding.susan@example.com', '9876543269', '63, Subhash Nagar, Delhi', 'Shree Shyam Agarbatti', 'distributor', NULL, 'Jyoti Yadav', '50547110', 'BRI', '2025-01-17 11:23:29', '2025-01-19 18:24:18'),
(71, 'Ramesh Kumar', 'enola35@example.com', '9876543257', '90, Model Town, Delhi', 'Rajan Tailoring Service', 'distributor', NULL, 'Ramesh Kumar', '36118470', 'BNI', '2025-01-17 11:23:29', '2025-01-19 17:55:27'),
(72, 'Payal Shah', 'shubham.mishra@example.com', '9876543241', '3, Vasundhara Enclave, Delhi', 'Vikas Clothing Store', 'distributor', NULL, 'Payal Shah', '50121839', 'BRI', '2025-01-17 11:23:29', '2025-01-19 17:23:37'),
(73, 'Rupal Shah', 'franecki.giovani@example.com', '9876543262', '60, Durgapuri, Raipur, CG', 'Shubham Kirana Shop', 'distributor', NULL, 'Rupal Shah', '24378977', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 18:07:23'),
(74, 'Arvind Prasad', 'mcclure.robbie@example.net', '9876543244', '45, Sector 14, Chandigarh', 'Ganga Spices', 'distributor', NULL, 'Arvind Prasad', '30203309', 'BCA', '2025-01-17 11:23:29', '2025-01-19 17:26:03'),
(75, 'Shreya Patel', 'sachin.sharma@example.com', '+9876543234', '11, Shankar Vihar, Pune, Maharashtra', 'Khandelwal Mobile Service', 'distributor', NULL, 'Shreya Patel', '93713740', 'BSI', '2025-01-17 11:23:29', '2025-01-19 17:12:51'),
(76, 'Sakshi Rani', 'nhuels@example.com', '9876543249', '19, Chandi Chowk, Delhi', 'Neelam Kitchenware', 'distributor', NULL, 'Sakshi Rani', '10827995', 'BSI', '2025-01-17 11:23:29', '2025-01-19 17:31:19'),
(77, 'Sunita Sinha', 'vijay.singh@example.com', '9876543236', '91, Vaishali Nagar, Indore, MP', 'Patel Shoe Mart', 'distributor', NULL, 'Sunita Sinha', '65342902', 'BNI', '2025-01-17 11:23:29', '2025-01-19 17:14:46'),
(78, 'Harsh Kumar', 'anjali.kumar@example.com', '9876543233', '39, Mahavir Enclave, Delhi', 'Meera Beauty Products', 'distributor', NULL, 'Harsh Kumar', '15108180', 'BRI', '2025-01-17 11:23:29', '2025-01-19 17:09:55'),
(79, 'Viraj Desai', 'parul.mehra@example.com', '9876543231', '5, Tilak Nagar, Patiala, Punjab', 'Manish Tailors', 'distributor', NULL, 'Viraj Desai', '91212998', 'Mandiri', '2025-01-17 11:23:29', '2025-01-19 17:07:38'),
(80, 'Ankur Joshi', 'demond04@example.org', '9876543279', '17, West Delhi, Delhi', 'Preeti Cloth House', 'distributor', NULL, 'Ankur Joshi', '41625670', 'BSI', '2025-01-17 11:23:29', '2025-01-19 19:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `slug`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 'Meters', 'meters', 'm', NULL, NULL),
(2, 'Centimeters', 'centimeters', 'cm', NULL, NULL),
(3, 'Piece', 'piece', 'pc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Myron Wilkinson', 'dpredovic', 'jocelyn29@example.org', '2025-01-17 11:23:17', '$2y$10$WdACmO7edTxPJssZB6MyL.AFGFWu8Ck9URbz35XL6rMB7pF6SnWdW', 'VnYIZWZFMK', '2025-01-17 11:23:17', '2025-01-17 11:23:17', NULL),
(2, 'Ms. Rosalee Thompson III', 'ward.audrey', 'whitney.littel@example.net', '2025-01-17 11:23:17', '$2y$10$jzLP7OsdsTJBqrPvG5kb4uurZAwY/vICcTpj2v4Ie0wa.C5UxLLH2', '7bqLGlFlG1', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(3, 'Madonna Daugherty', 'ernesto.ratke', 'prempel@example.net', '2025-01-17 11:23:18', '$2y$10$S0bFE19qIe6Jb1APHjiYNO/5u3xJuFhre4r5YxSm9nvDlHRwmlpFy', 'cjVJaVdf4O', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(4, 'Lucas Stiedemann MD', 'tierra.moen', 'wolf.king@example.com', '2025-01-17 11:23:18', '$2y$10$NtQlhzk6FL.JzrHq7Vd6A.kGADZgqaoGe21So5UliHBuWqoQ57xFO', 'x4NRKGekG0', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(5, 'Ms. Kathleen Smith IV', 'legros.laron', 'okeefe.aleen@example.com', '2025-01-17 11:23:18', '$2y$10$A2dydt4OpoyQFWSQJQkCw.SKBHPjeuUYaU/o.JsY9Tqpp4Neh6q2C', 'EaupkigZ86', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(6, 'Queenie Mayer', 'mitchell.susana', 'ystrosin@example.com', '2025-01-17 11:23:18', '$2y$10$FerETdTQs8P3dLjaHpXBPOrSbYhTSVn3Lwhxhk9NejhnKGoC5Doqi', 's9vWh71Zzw', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(7, 'Roslyn Collins', 'avery.tremblay', 'buster.cummings@example.com', '2025-01-17 11:23:18', '$2y$10$ZyJOVDCmzYbEX47j1kGe4eenp6MVptiGPjxhJmetaYarR7l.HqezO', 'olby5lnCz8', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(8, 'Dr. Orland McClure', 'jaiden.rice', 'dschmeler@example.net', '2025-01-17 11:23:18', '$2y$10$QWOv7ljVG08UirCdUOAKTe4zJkKg8kLzezqjItyoFSIcNjfcp6rAC', '8tWPY9absq', '2025-01-17 11:23:18', '2025-01-17 11:23:18', NULL),
(9, 'Caesar Hamill', 'abner.collier', 'rjones@example.net', '2025-01-17 11:23:19', '$2y$10$ZeKcf0.C/B5TBnt/FmhcpeIrkCSnJOGJxjDQHkBrZ2X39uVCJVy6q', '1xmeweALZM', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(10, 'Mrs. Sierra Funk', 'ecrona', 'bailee31@example.net', '2025-01-17 11:23:19', '$2y$10$ErsToZzYhUGxPPPpuE3gKeONyOiL/raljfJhlxTlL290T1kzow5Hy', 'Kzhs1BU6WZ', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(11, 'Shaun Gulgowski', 'usanford', 'micaela.daniel@example.org', '2025-01-17 11:23:19', '$2y$10$U9Bw47mHb.YeVYI9RIrWWOzmW.Lcb//77ZddggXhD4GLhhuQyVIZW', 'bZ7aGAqHnp', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(12, 'Edna VonRueden', 'hahn.jaclyn', 'fabiola.larkin@example.com', '2025-01-17 11:23:19', '$2y$10$s9qUNiVEzpJkbln0K8alM.IS2drwVPsIFyIjiR/Nuh.C/pAM6IYVC', '4QEeevk92v', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(13, 'Mr. Clyde Christiansen PhD', 'merdman', 'botsford.alexandria@example.org', '2025-01-17 11:23:19', '$2y$10$TKFAJ2Ki86DOss0M4wN3muAoa079vLTGqY/p9aqEDIbvGYgF./44a', 'w3XApTWxHb', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(14, 'Jaycee Treutel', 'elinor58', 'alycia44@example.org', '2025-01-17 11:23:19', '$2y$10$gi5uGOS7Rkky4o6Ylulb6uyMskGTQ8dLQv2afYjKy48fevfbtuNom', 'eEKMSrnWf5', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(15, 'May Dickens', 'pschaefer', 'alta94@example.net', '2025-01-17 11:23:19', '$2y$10$U3uOfhuS.4Obsi80PEl.Kew6BghyOTn/ssQCt1A/N2JjlOtKG8Usm', 'eqn4KiEjQ0', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(16, 'Mandy Herman', 'ehickle', 'winston.spinka@example.net', '2025-01-17 11:23:19', '$2y$10$T876zXIab0xgJXf2496e/eRda76mdY4UG0MJBrpsI9N145pcL19T2', 'vuJ7I4KA4P', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(17, 'Gianni Kutch', 'wayne.bailey', 'noble.damore@example.com', '2025-01-17 11:23:19', '$2y$10$yHzeSaU.zywhtUr2x5gP/uoCWRWT6B3G2XWtUYYwtIZjcoQnhXszS', '3k98QVqG0W', '2025-01-17 11:23:19', '2025-01-17 11:23:19', NULL),
(18, 'Barney Carter', 'natasha41', 'eric.stokes@example.org', '2025-01-17 11:23:20', '$2y$10$mckRqp9p1T6wbFswQylAU.w5t23HPMiHQUS7FESry76epYD79dVO6', 'NjMHGsD04B', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(19, 'Mr. Nelson Jakubowski DDS', 'hartmann.arvel', 'eldon.sawayn@example.org', '2025-01-17 11:23:20', '$2y$10$RtiSdIOJtn8RlRo0YYf4beDIwj1rQVnu.E3r4FnjXclMlgTRdeJJ2', 'Cy0IbE7EHg', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(20, 'Michale Denesik', 'bsawayn', 'balistreri.raphael@example.org', '2025-01-17 11:23:20', '$2y$10$tyV60hbeRd0rYsbGYOYkRu84igSlqGuTICNkw7uyGvtysP.uA5jyq', 'FyVdloRoyf', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(21, 'Dianna Windler', 'nfisher', 'jett20@example.org', '2025-01-17 11:23:20', '$2y$10$ZuacNIW90PV01kahN06Nc.PBWIrucW0K5DxZ1.FSk6Mtw7XGUqst2', '4dN1w2THLU', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(22, 'Juvenal Toy', 'rgutkowski', 'frenner@example.org', '2025-01-17 11:23:20', '$2y$10$HVfxm/HZ.6TF1vVs9Q9UXewjH8FZFaxsT1.H1fEiremD8/Hy0N5ou', 'DHy861wZD4', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(23, 'Scotty Lueilwitz', 'wilber.conn', 'theresia22@example.org', '2025-01-17 11:23:20', '$2y$10$GA4rLUVAUqOz7N4/64.R1uQhpc1EWGn1vNPlIpAaejlvEsyU27t16', 'nMLNo2Bd3g', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(24, 'Ellis Bode', 'ivy.lebsack', 'emaggio@example.com', '2025-01-17 11:23:20', '$2y$10$iAxi3rYsaVJyGhrSMOFDQOdmsERPW7G81Vsow0tFMlKw5X4nX2oo.', 'bbEBxBlNjw', '2025-01-17 11:23:20', '2025-01-17 11:23:20', NULL),
(25, 'Prof. Adelbert Lehner', 'franecki.cortney', 'monica31@example.net', '2025-01-17 11:23:21', '$2y$10$xuTyaFUye7Lk/B7OYgC5CO.D2dq0hUg4vLk45vsjC0WnwayimCZO2', 'MqmgOKISdP', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(26, 'Wilford Jast', 'macejkovic.willy', 'harmony.bogan@example.com', '2025-01-17 11:23:21', '$2y$10$TPdEDvKuKRqPq/sG51N5cucO9Xccw7iOS3oVIrFcqeQr5Wfjfy0aC', 'gBkZvnOErK', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(27, 'Liza Daugherty V', 'kaitlyn.schuster', 'mohr.aglae@example.org', '2025-01-17 11:23:21', '$2y$10$XHpcNZafDbhiMclHqkqZEeCh/O1L8QGzasGNuRQtbhnoMd5YOiWi.', 'QV06THOqoL', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(28, 'Cecile Hirthe', 'hettinger.karolann', 'lester24@example.net', '2025-01-17 11:23:21', '$2y$10$KOGH41hyshxW7HlDi0lWMeq3.Be37Okfy/mrJMH18UCGf81eGrxtC', 'qgZ43l4xeN', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(29, 'Jarrod Kilback I', 'rowan.roberts', 'jamil14@example.net', '2025-01-17 11:23:21', '$2y$10$FSE8iZt81bO9ciU6ByoyeOiX6CTwMJD2E0olUkjV1ObmMQUeOvTD2', 'aFiSCoJWjm', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(30, 'Kristoffer Mertz', 'savannah.reinger', 'hahn.serenity@example.com', '2025-01-17 11:23:21', '$2y$10$OTZt2Ivlj7a.liduwjcXTOKeHyVNJCzGxluPwY2p8Szl.vq9pmfKG', 'l78COyxBWB', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(31, 'Aimee Hills I', 'irwin31', 'brandon17@example.net', '2025-01-17 11:23:21', '$2y$10$6AG2Fi4Fjnu.Ys9iiWzNtuWdEm.1emIQOPaIZvWSz3dPL9F/NCDdy', 'NQBdUSeSr5', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(32, 'Imani Larkin', 'dooley.mayra', 'demario83@example.net', '2025-01-17 11:23:21', '$2y$10$spIhT0kGmjrPm9VUU0EaFu.uCrLF7z3dTDzmqf5yRjfL484N5xq3e', 'tccvGZfLkY', '2025-01-17 11:23:21', '2025-01-17 11:23:21', NULL),
(33, 'Mrs. Mary Yost', 'marks.cleo', 'mia16@example.org', '2025-01-17 11:23:22', '$2y$10$r4MohJCLf2sxRMyRTJaqMOblPbOYQynxeroDOlxo3dL5OO5tHgzMq', 'dh2WQxV2HS', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(34, 'Yasmeen Jacobson', 'vstoltenberg', 'powlowski.trystan@example.com', '2025-01-17 11:23:22', '$2y$10$nVh919.6.ZEr4WyukrPSauYJskPGC/O9G3USl7Mkt.kv9CWrVnHmW', 'stb5WzKZK4', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(35, 'Amber Huels', 'collins.hilton', 'jgottlieb@example.net', '2025-01-17 11:23:22', '$2y$10$L.8PhC.CGxxOHDv4woT9d.8pZbPRG7yn5Z1T66XW3FHrM7DBaQcdu', 'rxzSG40yez', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(36, 'Rachelle Schulist', 'king79', 'botsford.casper@example.org', '2025-01-17 11:23:22', '$2y$10$Ogb1NqJZ6.byPnDaPUpMheAkz5fbFqDsEw3gK4oUvHME5Z52x7tLK', 'e6eTP5yFgo', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(37, 'Kathleen Schmidt Jr.', 'stephon.cronin', 'mary95@example.org', '2025-01-17 11:23:22', '$2y$10$Qs2ndT1SkRLs5eLv4iih8OJ5IUSXl1QAqZOXvUeaiDmk4r94437v.', 'q4FYqsQPAl', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(38, 'Dr. Afton Hettinger MD', 'malinda.auer', 'kshlerin.conor@example.com', '2025-01-17 11:23:22', '$2y$10$e5ElFipeeDJDXVDVwEv53.ZN0IZLRdIra7Fa9O8DH.O6lAIUnlZqW', 'RSzqne6oyb', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(39, 'Fletcher Deckow PhD', 'cade64', 'rparisian@example.org', '2025-01-17 11:23:22', '$2y$10$YajtYbPr2AuvpIivlKEfzeVbIe7NUTJrs4OykLV1Y.wFaB0N/21wq', 'QpqzwvlBtb', '2025-01-17 11:23:22', '2025-01-17 11:23:22', NULL),
(40, 'Yazmin Dare', 'ratke.myrl', 'adeckow@example.org', '2025-01-17 11:23:23', '$2y$10$ktEdfrqQvpJfJkQx1Ku3cul5qxasVCyrZ4oBZyRsInUS/1YIVXLi6', '3GgZxH75fU', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(41, 'Ebony Romaguera', 'okeefe.janae', 'courtney.price@example.org', '2025-01-17 11:23:23', '$2y$10$xbxnnwVprS9Zamp45yrELOLUiKNDc6qMwKoZ1RyJRQRk0oD5YJpDe', 'N7Ehd8fbOi', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(42, 'Ms. Lydia Hamill', 'whegmann', 'kaitlin.prosacco@example.org', '2025-01-17 11:23:23', '$2y$10$1n2i0wjiCrXdtDo8CS.eRuiliNAQTO2rtMqUiaTjMuy3lLX9W.RtS', 'QrRhJztJM4', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(43, 'Wilson Haley III', 'rrobel', 'murray.demario@example.org', '2025-01-17 11:23:23', '$2y$10$OvzNkSHjB/FkFDs1h3rmAOtKQTgeHpObwdJeRCg4Grja7SfhU3MIO', 'QbLDOTccSW', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(44, 'Alejandra Lueilwitz', 'bbednar', 'bhill@example.com', '2025-01-17 11:23:23', '$2y$10$jSnpvvlbIfJpvAWSV8wWYu4JT2E9Jxuxp3Q2PQJ0UtEmLkNEhKRTe', 'ZC27OzjfGL', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(45, 'Emmet Crooks', 'korey92', 'hettie.nienow@example.net', '2025-01-17 11:23:23', '$2y$10$uVIoozKBSrW.OZGkD.vtMuNDxoNTFO39VvTr/kNlwsV3y2IBc3WJu', 'iYFVA8NXDH', '2025-01-17 11:23:23', '2025-01-17 11:23:23', NULL),
(46, 'Savannah Tromp', 'hquitzon', 'uschumm@example.net', '2025-01-17 11:23:24', '$2y$10$L9CxrEAC3pGU1iLtvl/ESO0.1yQVcFya2VB7BQ5dWBnoiop5q/I0u', 'B3BsQA1A8t', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(47, 'Avery Bednar III', 'kfunk', 'lonie.parisian@example.com', '2025-01-17 11:23:24', '$2y$10$4aLFFs5SUtcAd.FCkgmAhufC6jrlJpYcWpbIPDfZsX9RmYSqoB91C', 'svWJ3povpZ', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(48, 'Ms. Liana Feest V', 'casimer52', 'benjamin.smith@example.com', '2025-01-17 11:23:24', '$2y$10$mVVkSndRp42ABssj5OTbIOF2RdKmFXccjbhcxVAi2JaFbdpwiewki', 'Tk1SOGkfti', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(49, 'Dr. Nathaniel O\'Conner', 'mclaughlin.darren', 'dharvey@example.net', '2025-01-17 11:23:24', '$2y$10$8mOQJMeetUzJtPm/i8d.eu2pD9jIzupQz9vf894gigM7yIj8z3ayG', 'XQxo9qoy9X', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(50, 'Chauncey O\'Connell', 'anderson.shaniya', 'elebsack@example.com', '2025-01-17 11:23:24', '$2y$10$tw4xLY1I.7qBw0HZmGIyGepxF49ncxV.MOX2YGNwNYqrzifhdJmSu', 'VbAZtFaT7g', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(51, 'Christa Bradtke Sr.', 'fritsch.demond', 'dallin35@example.net', '2025-01-17 11:23:24', '$2y$10$LQG.m8Qu0.aMWYolE/BhsuKf7dC.AfzYg/1Sr1gyBdYZfK4I1lRmy', 'sOlJd0hb5p', '2025-01-17 11:23:24', '2025-01-17 11:23:24', NULL),
(52, 'Arthur Yost', 'amir.stehr', 'jenkins.antone@example.net', '2025-01-17 11:23:25', '$2y$10$W/0cfwwkJBSJa/yGWoHQh.FoRCieP4n4FRnDjzuoxEb6Qtsr6ma.m', 'QnLXsSTET5', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(53, 'Durward Hermann', 'vern.metz', 'zleuschke@example.com', '2025-01-17 11:23:25', '$2y$10$YFBPVf6KiNo/kN4T4yRbVufG.BWD9b5roF63EYjItZWG1AzzAOFYm', 'R7D1w7b8tP', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(54, 'Miss Antonetta Zboncak', 'ycormier', 'reed94@example.net', '2025-01-17 11:23:25', '$2y$10$ov9Ae7sTdP0lSAq9sj2bzOKsdRwOgxfS1IRrX/4AyveXZnOcPRrSe', 'GvB0G6yoXV', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(55, 'Lukas Considine MD', 'rwiegand', 'hilda.bayer@example.net', '2025-01-17 11:23:25', '$2y$10$kaXdeD59cszTV43BUDYp..GRYaTv4E5aeAkJtQc7FnHyVmMPA3RFO', 'QKhIyGExIp', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(56, 'Prof. Dillan O\'Kon I', 'yoshiko.abernathy', 'wharris@example.org', '2025-01-17 11:23:25', '$2y$10$IyojXSTyT/NO3hYZax7TK.OepI8wBw0Knri2xELYdOlIt6lWRUNvG', 'gboc49hwD7', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(57, 'Dr. Marina Douglas', 'nwatsica', 'kkautzer@example.net', '2025-01-17 11:23:25', '$2y$10$kiR2hawIBU8towFpqbiULuFAv64m/rPXhPiQeiXJm9zF4lrdfp4e6', 'EA1oA9niV9', '2025-01-17 11:23:25', '2025-01-17 11:23:25', NULL),
(58, 'Miss Abagail Gerhold', 'barbara03', 'zhaley@example.com', '2025-01-17 11:23:25', '$2y$10$/FCAYLf9xynm9GJ5KSZegevS7676ZV0pWQeAuUHCQ2fJoQV79sKwO', '18a6jCKGRS', '2025-01-17 11:23:26', '2025-01-17 11:23:26', NULL),
(59, 'Miss Heather Murphy', 'treutel.brice', 'sschultz@example.net', '2025-01-17 11:23:26', '$2y$10$ccsImYdbaGHExzJybI4LQuGdAmGawRVkhfrAwfufDBBuzwDHMP1qa', 'OMA8ufxKrR', '2025-01-17 11:23:26', '2025-01-17 11:23:26', NULL),
(60, 'Prof. Davin Simonis', 'shanahan.josefina', 'zemlak.lavinia@example.com', '2025-01-17 11:23:26', '$2y$10$XC9mbNFjBjjn62uNkvqOb.0JG6LVr4Y1WbtEljeN6D4S8dJNZAEZe', '4eW9sSEcMF', '2025-01-17 11:23:26', '2025-01-17 11:23:26', NULL),
(61, 'Dr. Uriah Conn', 'eliseo54', 'heloise61@example.com', '2025-01-17 11:23:29', '$2y$10$wVQt.bCgJYPU0aF9FfXNgOR74xyNQQRu94HvXo3fV2fwKWX3mtKrK', '782WxjCrIv', '2025-01-17 11:23:30', '2025-01-17 11:23:30', NULL),
(62, 'Roselyn Mante II', 'edgardo.oconner', 'gwalsh@example.com', '2025-01-17 11:23:30', '$2y$10$WEfe46i3.YStYUn5y2bcG.H05g.EeyNrKXfiDDhqfZzHu4oQQ.kaS', 'EKepY2XaMK', '2025-01-17 11:23:30', '2025-01-17 11:23:30', NULL),
(63, 'Elza Conn', 'marcelina63', 'darian99@example.org', '2025-01-17 11:23:30', '$2y$10$MS26xBUPqpxv84AEoKA6ie6wB/rsncn2kkpQFQDV8MQd56z1aQYSi', 'tpAN7dtxQ4', '2025-01-17 11:23:30', '2025-01-17 11:23:30', NULL),
(64, 'Haylee Kirlin', 'mateo06', 'irma.willms@example.net', '2025-01-17 11:23:30', '$2y$10$uMoShOS3odlBtjBj6CMa9OvthHn7jUB4hPb2ZIn/TyV796vgMzQOK', '4I3S0MIzMO', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(65, 'Prof. Kacey Klocko', 'juwan50', 'hermann.josiah@example.com', '2025-01-17 11:23:30', '$2y$10$yoq1yIlXG/B3Gq6JZDGMWuF84e/MwlpQ23e72gsIPL4gjoIm9zela', 'P3aoy8DcoN', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(66, 'Kaylee Medhurst', 'stoltenberg.henriette', 'dolores84@example.com', '2025-01-17 11:23:30', '$2y$10$7YqJ3bbTgKj9a7XL0lh2h.qbUqgWM4gPPckq/oNiSd8nIbWHn7h6S', 's6bf5cvIxB', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(67, 'Blaise Gutmann', 'sokeefe', 'corene13@example.com', '2025-01-17 11:23:30', '$2y$10$l2uzQe8FoiZi0wpGWVg4KOS1DUlBEVuaOmp7PKUdPPFLjF/88z9xC', 'Bt5DzOyCqf', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(68, 'Prof. Ralph Kihn Jr.', 'melyssa.graham', 'dana.mcdermott@example.net', '2025-01-17 11:23:30', '$2y$10$zQol8q74n3PLhG5lKJ6cGedSJuY4wzKcO6YYVx30v1P97DzBXYpeG', 'ICgORmxnLR', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(69, 'Dr. Lacey Wuckert', 'agnes.barrows', 'creola64@example.org', '2025-01-17 11:23:30', '$2y$10$3XqxrCy7k38rJ7FYJt1szuyF.hG3SHKrWRmCp2J7SgTrJCI6Rwi2C', 'H0XmDqWJtp', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(70, 'Ellen Bednar DVM', 'green.welch', 'tebert@example.com', '2025-01-17 11:23:30', '$2y$10$9udE/aVzwWxfh9W1DFAtLe2HfGw.XbsRoZvBUvQlWNIcJDx7Gytla', 'iraWAY6FTH', '2025-01-17 11:23:31', '2025-01-17 11:23:31', NULL),
(71, 'admin', 'toby77', 'admin@admin.com', '2025-01-17 11:23:31', '$2y$10$JerzX8FJt/OJTijkPdzWmOT16dxvHB25PKQnn8FwO23g/2.0KIZgG', '68xK6yDzRSXDCi1NZqdq7u2KvVlECV1Y0QdN4vi8l3SZr0b3d2clpphzGdEj', '2025-01-17 11:23:31', '2025-01-19 13:57:19', '1821665121733357.png'),
(72, 'Arya Bhattacharya', 'Arya2004', 'aryabhattacharya2004@gmail.com', NULL, 'Arya2004', NULL, '2025-01-20 16:49:44', '2025-01-20 16:49:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
