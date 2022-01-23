-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 01:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mishtidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_desc`, `long_desc`) VALUES
(7, 'Europian ', 'This is a popular category in Europe', 'Although flatbreads (especially with toppings such as pizza or tarte flambée) and rice are eaten in Europe, they are only staple foods in limited areas, particularly in Southern Europe. Salads (cold dishes with uncooked or cooked vegetables, sometimes with a dressing) are an integral part of European cuisine.'),
(8, 'Chinese', 'Chinese cuisine is an important part of Chinese culture, which includes cuisine originating from the diverse regions of China.', 'A number of different styles contribute to Chinese cuisine but perhaps the best known and most influential are Cantonese cuisine, Shandong cuisine, Jiangsu cuisine (specifically Huaiyang cuisine) and Sichuan cuisine.'),
(10, 'Indian ', 'This is a popular category of food. Explore the Foods of this category!', 'Indian cuisine consists of a variety of regional and traditional cuisines native to the Indian subcontinent. Given the diversity in soil, climate, culture, ethnic groups, and occupations, these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits.');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `cat_id`, `fname`, `description`) VALUES
(7, 7, 'Bangers and Mash', 'To be honest, the combination of savory sausage, creamy mashed potatoes, and flavor-packed onion gravy is hard to beat.'),
(8, 8, 'Stir Fried Tofu with Rice', 'Sti fried togu with rice is a great main course dish to prepare at home laced with flavourful spices and sauces.'),
(9, 10, 'Chicken with Chestnuts', 'Stir-fried mushrooms with minced chicken, water chestnut and radish along with a host of veggies and sauces like date puree, fish sauce and the Chinese classic soya sauce.'),
(11, 8, 'Curry', 'If you ask any Indian about a curry, chances are they’ll reply, “Which one?”\r\n\r\n“Curry” was a blanket term used by the British during the era of colonization for the wide variety of foreign dishes they couldn’t identify.'),
(13, 7, 'Meatballs', 'These tasty, deep-fried meatballs are easy to make. They will hit your table in 40 minutes or less.'),
(15, 8, 'Briyani', 'If there’s one dish that almost everyone knows in Indian cuisine, it’s biryani. The origin of this aromatic mixture of rice, spices and meat is usually credited to the Mughal kings who once ruled the subcontinent.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `food_id`, `user_name`, `timestamp`) VALUES
(5, 'RSTGF572532', '15', '11', 'Zz', '23:01:2022 01:21:13am'),
(6, 'RSTGF333514', '15', '9', 'Zz', '23:01:2022 01:21:18am'),
(7, 'RSTGF605469', '15', '7', 'Zz', '23:01:2022 01:21:20am');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `timestamp`) VALUES
(4, 'r', 'r@r.com', '123', '22:01:2022 11:36:46pm'),
(5, 'ra', 'ra@ga.com', '123', '22:01:2022 11:56:03pm'),
(6, 'a', 'a@a.com', '123', '23:01:2022 12:00:44am'),
(8, 'da', 'ja@ja.com', '123', '23:01:2022 12:04:46am'),
(9, 'ss', 'sss@s.com', '123', '23:01:2022 12:05:48am'),
(11, 'ade', 'e21@w.com', 'eee', '23:01:2022 12:08:55am'),
(12, 'r23', 'r23@dq.com', '123', '23:01:2022 12:15:59am'),
(13, 'qs', 'qwe@g.com', '12', '23:01:2022 12:43:23am'),
(14, 'a', 'qwe@gmai.com', '123', '23:01:2022 12:52:06am'),
(15, 'Zz', 'zz@z.com', '123', '23:01:2022 01:20:50am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
