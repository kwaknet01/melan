-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 02:20 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutor`
--
CREATE DATABASE IF NOT EXISTS `tutor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tutor`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `course_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) DEFAULT '1',
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`course_id`, `ip_add`, `qty`, `customer_id`) VALUES
(4, '127.0.0.1', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'Web Development'),
(2, 'Music'),
(3, 'Art'),
(4, 'Business'),
(5, 'Management'),
(6, 'Coffee'),
(7, 'Software Dev'),
(8, 'Cooking');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(100) NOT NULL,
  `course_cat` int(100) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_desc` varchar(500) NOT NULL,
  `course_price` int(100) NOT NULL,
  `course_image` text NOT NULL,
  `course_keywords` text NOT NULL,
  `course_video` varchar(100) NOT NULL,
  `course_rate` int(10) NOT NULL,
  `instructor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_customer`
--

CREATE TABLE `course_customer` (
  `review_id` int(100) DEFAULT NULL,
  `course_id` int(100) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_customer`
--

INSERT INTO `course_customer` (`review_id`, `course_id`, `customer_id`) VALUES
(NULL, 3, 11),
(NULL, 3, 25),
(NULL, 4, 11),
(NULL, 4, 39),
(NULL, 5, 11),
(NULL, 7, 11),
(NULL, 8, 11),
(NULL, 8, 25),
(NULL, 11, 37),
(1, 3, 1),
(2, 4, 2),
(3, 5, 3),
(4, 6, 4),
(5, 7, 1),
(6, 13, 2),
(7, 12, 3),
(8, 11, 4),
(9, 10, 1),
(11, 8, 3),
(12, 3, 2),
(13, 12, 2),
(14, 10, 2),
(15, 9, 2),
(18, 8, 37);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_ip`, `customer_name`, `customer_password`, `customer_email`, `customer_username`, `customer_image`) VALUES
(39, '127.0.0.1', 'melani', 'melan', 'melani@gmail.com', 'ambot', 'customer4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `reviews` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `rating`, `reviews`) VALUES
(1, 5, 'Excellent course the Instructor was clear concise and above all, used modern real world examples, since finishing the course my knowledge on CSS has increased exponentially.'),
(2, 5, 'This course will definitely help you create the website you want to create. I learned everything i was expecting to learn from this course. The instructor is thorough and explains things clearly. '),
(3, 4, 'I started the course with Zero knowledge in Html & CSS, at the end of course i am pretty confident how to create a page and effects to it.Overall the course was awesome. '),
(4, 5, 'The teacher was easy to listen to. He explained everything clearly. It was very easy to stay focused and learn.'),
(5, 3, 'I love this guys teaching style and how he makes everything clear.'),
(6, 4, 'THE COURSE IS EXCELLENT. THE INTRUCTIONS ARE CLEAR. THE PRESENTER IS A TERRIFIC TEACHER.'),
(7, 4, 'the amazing part is at the end part of the course because the instructor tells you some amazing tips and tricks you can use to make your work easier and faster'),
(8, 5, 'Best teacher out there.\r\nHe is obviously very smart yet humble.\r\nVery clear voice and concise.'),
(9, 3, 'I can only speak to the video as I have not tried the exercises directly or accessed resources associated with the course.'),
(10, 4, 'The tutorial was very helpful to know more about CSS concepts. It provides an in depth knowledge and very useful. Can add assignments/exercises for practice.'),
(11, 5, 'I thought I was purchasing a true beginner\'s course but I was beyond amazed with what I learned.'),
(12, 4, 'Very well-explained, builds confidence of the learner. Keep up the good work. Thanks a lot.'),
(13, 4, 'A great course for HTML and CSS with a little perspective in design. If I were to suggest something that would improve the course it would be the adding of slides/notes for important tips during each lesson.'),
(14, 5, 'This course is good.'),
(18, 3, 'not so bad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_customer`
--
ALTER TABLE `course_customer`
  ADD PRIMARY KEY (`course_id`,`customer_id`),
  ADD KEY `review_foreign` (`review_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
