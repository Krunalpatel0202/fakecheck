-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 04:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fake news detector`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `S.NO` int(10) NOT NULL,
  `NAME` text NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `MESSAGE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`S.NO`, `NAME`, `EMAIL`, `SUBJECT`, `MESSAGE`) VALUES
(1, '', '', '', ''),
(2, 'Krunal', '180390111002@saffrony.ac.in', 'Inquiry issue', 'cdfsxsa'),
(12, 'Patel', 'kp@123.gmail.com', 'bug fixes', 'good to see great site...'),
(13, 'Nidhi', '2526@saffrony.ac.in', 'Appreciation', 'A blog (a truncation of \"weblog\")[1] is a discussion or informational website published on the World');

-- --------------------------------------------------------

--
-- Table structure for table `contact us`
--

CREATE TABLE `contact us` (
  `S.NO` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `MESSAGE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `newslatter`
--

CREATE TABLE `newslatter` (
  `S.NO` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `tagline` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  `img_file` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Sillicon Valley of India', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', 'first', 'The .btn classes are designed to be used with the <button> element. However, you can also use these classes on <a> or <input> elements (though some browsers may apply a slightly different rendering).\r\n\r\nWhen using button classes on <a> elements that are used to trigger in-page functionality (like collapsing content), rather than linking to new pages or sections within the current page, these links should be given a role=\"button\" to appropriately convey their purpose to assistive technologies suc', 'about.jpg', '2020-11-14'),
(2, 'Fake news detector', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', 'second', 'The .btn classes are designed to be used with the <button> element. However, you can also use these classes on <a> or <input> elements (though some browsers may apply a slightly different rendering).\r\n\r\nWhen using button classes on <a> elements that are used to trigger in-page functionality (like collapsing content), rather than linking to new pages or sections within the current page, these links should be given a role=\"button\" to appropriately convey their purpose to assistive technologies suc', 'welcom.png', '2020-11-14'),
(3, 'News protection', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', 'third', 'The .btn classes are designed to be used with the <button> element. However, you can also use these classes on <a> or <input> elements (though some browsers may apply a slightly different rendering).\r\n\r\nWhen using button classes on <a> elements that are used to trigger in-page functionality (like collapsing content), rather than linking to new pages or sections within the current page, these links should be given a role=\"button\" to appropriately convey their purpose to assistive technologies suc', 'about.jpg', '2020-11-14'),
(4, 'Machinelearning', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', 'fourth', 'The .btn classes are designed to be used with the <button> element. However, you can also use these classes on <a> or <input> elements (though some browsers may apply a slightly different rendering).\r\n\r\nWhen using button classes on <a> elements that are used to trigger in-page functionality (like collapsing content), rather than linking to new pages or sections within the current page, these links should be given a role=\"button\" to appropriately convey their purpose to assistive technologies suc', 'about.jpg', '2020-11-14'),
(5, '17 Blogging Mistakes to Avoid in 2020, According t', 'Sometimes, when I tell people that I blog for a living, they roll their eyes. \"That\'s so easy,\" they', 'fifth', '5. Make your point again and again.\r\nMistake: You digress.\r\nAlthough you are encouraged to let your own personality shine through in your writing, don\'t abuse the privilege. It\'s one thing to be yourself in the topic you\'re covering, but it\'s another thing to bring up too many personal experiences that bury the point you\'re trying to make.\r\n\r\nDon\'t digress into these personal anecdotes and analogies too much -- your readers aren\'t sitting in front of you, which means you can\'t guarantee that you have their undivided attention. They can (and will) bounce from your article if they lose patience. \r\n\r\nSolution: Repeatedly assert your argument. \r\nTo prevent your writing from losing its audience, restate your point in every section of the article. The best blog posts commit to an overarching message and then deliver it gradually, expressing it multiple times in small ways from beginning to end.\r\n\r\nIf you\'re writing about how much water a potted plant needs, for example, don\'t spend three paragraphs telling a story of how you came home to a dead fern after returning from a two-week vacation. This story offers real evidence of your point, but what is your point? Certain plants can\'t go without water for more than 14 days. That\'s one possible point, and it should be stated upfront.\r\n\r\n6. Start with a very specific working title.\r\nMistake: Your topics are too broad.\r\nWhen people start blogging, they generally want to write on really big topics like:\r\n\r\n\"How to Do Social Media Marketing\"\r\n\"Business Best Practices\"\r\n\"How to Make Money on the Internet\"\r\nTopics like these are far too broad. Because there are so many details and nuances in these topics, it\'s really hard to do a good job answering them. Plus, more specific topics tend to attract smaller, more targeted audiences, which tend to be higher quality and more likely to convert into leads and customers.\r\n\r\nSo, to get the most short-term and long-term benefits of blogging, you\'ll need to get way more specific.\r\n\r\nSolution: Begin with a clear, concise idea.\r\nNailing really specific blog topics is crucial to knocking your first few posts out of the park. Let us help you brainstorm with our Blog Ideas Generator. This tool allows you to enter basic terms you know you want to cover, and then produces five sample blog titles that work for business blogs.\r\n\r\nKeep in mind that a working title isn\'t final -- it\'s just a concrete angle you can use to keep your writing on track. Once you nail this stage of the ideation process, it\'s much easier to write your blog posts.\r\n\r\n7. Specific posts should still tie into the bigger picture. \r\nMistake: You\'re don\'t tie a specific topic into your reader\'s broader struggle. \r\nYou already know how important it is to resonate with your buyer persona and understand their pain points. However, there\'s a reason why they\'re experiencing pain points and what is driving them to get it solved. \r\n\r\nSolution: Understand the challenges and consequences they\'re facing.\r\nYou should be asking yourself: \r\n\r\nWhat is at stake?\r\nWhat do they gain by taking action?\r\nWhat are they afraid of happening if they don\'t take action?\r\nAll of these things can manifest in the content that you write for your blog post. Doing so will signal to your reader that you understand what they\'re going through and you want to help.\r\n\r\n', 'about.jpg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`S.NO`);

--
-- Indexes for table `contact us`
--
ALTER TABLE `contact us`
  ADD PRIMARY KEY (`S.NO`);

--
-- Indexes for table `newslatter`
--
ALTER TABLE `newslatter`
  ADD PRIMARY KEY (`S.NO`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `S.NO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
