-- phpMyAdmin SQL Dump
-- version 4.3.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-04-24 12:07:56
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`address_id`, `username`, `telephone`, `address`, `postcode`, `user_id`, `flag`) VALUES
(1, 'admin', '027-88888888', '武汉理工大学升升学生公寓', '430070', '92', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL,
  `u_id` varchar(255) NOT NULL,
  `good_id` varchar(255) NOT NULL,
  `amount` int(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `good_id` varchar(255) NOT NULL,
  `stock` int(4) NOT NULL DEFAULT '0',
  `price` double NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit` varchar(12) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`good_id`, `stock`, `price`, `description`, `type`, `unit`, `url`, `good_name`) VALUES
('1', 68, 12.5, '西湖藕粉，味道鲜美', '精美小吃', '袋', 'null', '西湖藕粉'),
('2', 100, 4, '武汉特色美食', '精美小吃', '袋', 'null', '热干面'),
('3', 6, 200, '精美男装', '衣服饰品', '件', 'null', '森马衬衫');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `good_id` varchar(255) NOT NULL,
  `good_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `time` datetime NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '未发货'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`order_id`, `good_id`, `good_name`, `type`, `price`, `amount`, `total`, `time`, `user_id`, `status`) VALUES
(3, '2', '热干面', '精美小吃', 4, 1, 4, '2016-04-19 01:59:03', '92', '未发货'),
(6, '2', '热干面', '精美小吃', 4, 1, 4, '2016-04-19 08:41:27', '92', '未发货'),
(7, '3', '森马衬衫', '衣服饰品', 200, 1, 200, '2016-04-19 09:56:56', '92', '未发货'),
(8, '2', '热干面', '精美小吃', 4, 2, 8, '2016-04-20 06:58:18', '92', '未发货'),
(9, '1', '西湖藕粉', '精美小吃', 12.5, 1, 12.5, '2016-04-21 11:59:56', '92', '未发货'),
(10, '2', '热干面', '精美小吃', 4, 1, 4, '2016-04-21 11:59:56', '92', '未发货'),
(11, '2', '热干面', '精美小吃', 4, 1, 4, '2016-04-21 11:59:56', '92', '未发货'),
(12, '1', '西湖藕粉', '精美小吃', 12.5, 1, 12.5, '2016-04-21 02:11:58', '153', '未发货');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`) VALUES
(92, 'admin', 'admin', 'admin'),
(94, 'a', 'ph', 'ph'),
(109, '123@qq.com', '12', 'zhangxueyou'),
(113, '123@qq.com', '123', 'Mam'),
(114, '123@qq.com', '12', 'zhangxueyou'),
(118, '123', '123@qq.com', 'Chen'),
(129, 'AAA', 'AAA', 'AAA'),
(130, 'BBB', 'BBB', 'BBB'),
(131, 'LLL@com', 'LLL', 'LLL'),
(132, 'xxx@com', 'xxx', 'xxx'),
(133, '123@22.com', '1234', '刘德华'),
(153, '123@qq.com', '123', '本拉登');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`good_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
