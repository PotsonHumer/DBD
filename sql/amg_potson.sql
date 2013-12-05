-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 12 月 05 日 10:12
-- 服务器版本: 5.0.22
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `amg_potson`
--

-- --------------------------------------------------------

--
-- 表的结构 `dbd_count`
--

CREATE TABLE IF NOT EXISTS `dbd_count` (
  `dc_id` int(8) NOT NULL auto_increment,
  `dc_b` int(5) NOT NULL,
  `dc_d` int(5) NOT NULL,
  `dc_date` date NOT NULL,
  PRIMARY KEY  (`dc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

-- --------------------------------------------------------

--
-- 表的结构 `dbd_duty`
--

CREATE TABLE IF NOT EXISTS `dbd_duty` (
  `dd_date` date NOT NULL,
  `dl_id_1` int(8) NOT NULL,
  `dl_id_2` int(8) NOT NULL,
  `dd_code` varchar(16) NOT NULL,
  PRIMARY KEY  (`dd_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbd_duty_list`
--

CREATE TABLE IF NOT EXISTS `dbd_duty_list` (
  `dl_id` int(8) NOT NULL auto_increment,
  `dl_name` varchar(255) NOT NULL,
  `dl_mail` text NOT NULL,
  PRIMARY KEY  (`dl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- 表的结构 `dbd_list`
--

CREATE TABLE IF NOT EXISTS `dbd_list` (
  `dbd_id` int(8) NOT NULL auto_increment,
  `dbd_name` varchar(255) NOT NULL,
  `dbd_price` int(5) NOT NULL,
  `dbd_content` text NOT NULL,
  `dbd_date` date NOT NULL,
  `dbd_time` time NOT NULL,
  `dbd_info` text NOT NULL,
  `dbd_type` tinyint(1) NOT NULL COMMENT '0 => 便當 , 1 => 飲料',
  `dbd_key` text NOT NULL,
  PRIMARY KEY  (`dbd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=296 ;

-- --------------------------------------------------------

--
-- 表的结构 `dbd_record`
--

CREATE TABLE IF NOT EXISTS `dbd_record` (
  `dbd_id` int(8) NOT NULL,
  `dr_done` tinyint(1) NOT NULL,
  `dr_over` int(5) NOT NULL,
  PRIMARY KEY  (`dbd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
