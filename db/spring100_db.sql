/*
Navicat MySQL Data Transfer

Source Server         : LOCA
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : spring100_db

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-01 19:36:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `biz_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `biz_tbl`;
CREATE TABLE `biz_tbl` (
  `bid` int(11) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `doe` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biz_tbl
-- ----------------------------
INSERT INTO `biz_tbl` VALUES ('25', 'Red', null, 'Joshua', 'https://mario.nintendo.com/assets/img/home/intro/mario-pose4.png', '23', 'jack');
INSERT INTO `biz_tbl` VALUES ('26', 'Red', null, 'NAGENDRA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRhAq5unIziWFrfocrkdmpFUx-zFJytjec9D-7FIzmMVaLfWO-U', '453', 'jack');
INSERT INTO `biz_tbl` VALUES ('31', 'Red', null, 'Oamahah', 'https://cdn.vox-cdn.com/thumbor/VlPF8UuUKoUHFtiebdDsQpW1zYs=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/9632107/mario.jpg', '22', 'Joshua');

-- ----------------------------
-- Table structure for `cars_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `cars_tbl`;
CREATE TABLE `cars_tbl` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `power` varchar(30) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cars_tbl
-- ----------------------------
INSERT INTO `cars_tbl` VALUES ('1', 'Audi', 'white', '1212CC', '2019-09-24 17:33:35', '1223');
INSERT INTO `cars_tbl` VALUES ('3', 'BMW', 'yellow', '891871CC', '2019-09-24 18:13:25', '122333');
INSERT INTO `cars_tbl` VALUES ('5', 'Brezza', 'Brezza', '1223CC', '2019-09-24 18:40:26', '22333');
INSERT INTO `cars_tbl` VALUES ('6', 'Creta', 'Creta', '9292CC', '2019-09-24 18:41:03', '12333');
INSERT INTO `cars_tbl` VALUES ('7', 'Zeep', 'blue', '019C', '2019-09-25 17:47:23', '133');
INSERT INTO `cars_tbl` VALUES ('8', 'Oauaua', 'Oauau', '0202CC', '2019-09-25 18:18:45', '213');

-- ----------------------------
-- Table structure for `clogin_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `clogin_tbl`;
CREATE TABLE `clogin_tbl` (
  `uname` varchar(40) NOT NULL,
  `llt` datetime DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clogin_tbl
-- ----------------------------
INSERT INTO `clogin_tbl` VALUES ('coddybugk@gmail.com', '2020-01-13 20:02:55', 'chill@1234', 'Customer');
INSERT INTO `clogin_tbl` VALUES ('jack', '2020-01-02 20:19:06', 'jill', 'admin');
INSERT INTO `clogin_tbl` VALUES ('raghu', '2020-01-07 20:29:31', 'test', 'customer');
INSERT INTO `clogin_tbl` VALUES ('synergisticit2020@gmail.com', '2020-01-07 19:48:20', 'test', 'customer');
INSERT INTO `clogin_tbl` VALUES ('pratap.ashutosh@gmail.com', '2020-01-07 19:48:53', '234234', 'customer');

-- ----------------------------
-- Table structure for `colors_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `colors_tbl`;
CREATE TABLE `colors_tbl` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colors_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customers_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customers_tbl`;
CREATE TABLE `customers_tbl` (
  `cid` int(11) NOT NULL,
  `cage` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fusername` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `FK2u7wnx1blrs4suei431onljwy` (`fusername`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customers_tbl
-- ----------------------------
INSERT INTO `customers_tbl` VALUES ('41', '40', 'nagen@gmail.com', 'Male', 'Nagendra', 'amoga');
INSERT INTO `customers_tbl` VALUES ('42', '81', 'nagen@gmail.com', 'Male', 'Maoaoa', null);

-- ----------------------------
-- Table structure for `danger_dogs_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `danger_dogs_tbl`;
CREATE TABLE `danger_dogs_tbl` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of danger_dogs_tbl
-- ----------------------------
INSERT INTO `danger_dogs_tbl` VALUES ('10', 'White', 'Now it should work', '908');
INSERT INTO `danger_dogs_tbl` VALUES ('11', 'Pink', 'wrwerwer', '23432');
INSERT INTO `danger_dogs_tbl` VALUES ('13', 'Pink', 'Opera', '91981');
INSERT INTO `danger_dogs_tbl` VALUES ('15', 'Black', 'OEIEIE', '3454');
INSERT INTO `danger_dogs_tbl` VALUES ('16', 'Black', 'Jhon', '91981');
INSERT INTO `danger_dogs_tbl` VALUES ('19', 'Black', 'OAOAOAO', '90');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('43');
INSERT INTO `hibernate_sequence` VALUES ('43');
INSERT INTO `hibernate_sequence` VALUES ('43');
INSERT INTO `hibernate_sequence` VALUES ('43');
INSERT INTO `hibernate_sequence` VALUES ('43');
INSERT INTO `hibernate_sequence` VALUES ('43');

-- ----------------------------
-- Table structure for `login_history_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `login_history_tbl`;
CREATE TABLE `login_history_tbl` (
  `lhid` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `f_login` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lhid`),
  KEY `FK7ge925t0ey04gipdndxf8hba8` (`f_login`),
  CONSTRAINT `FK7ge925t0ey04gipdndxf8hba8` FOREIGN KEY (`f_login`) REFERENCES `login_tbl` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_history_tbl
-- ----------------------------
INSERT INTO `login_history_tbl` VALUES ('13', 'Delhi , India', '2019-10-16 16:15:04', null, 'D7F9AE3BC66B6C674C0A63662EDF7640', '2', null);
INSERT INTO `login_history_tbl` VALUES ('14', 'Austin, TX', '2019-10-18 15:04:13', '2019-10-18 15:15:04', '016F6F01007CAAB57429C69584B3B20A', '2', null);
INSERT INTO `login_history_tbl` VALUES ('15', 'Austin, TX', '2019-10-18 15:15:10', null, '0897A0912082CEEB5E39807D4B54C480', '2', null);
INSERT INTO `login_history_tbl` VALUES ('16', 'Austin, TX', '2019-10-18 15:49:52', '2019-10-18 15:53:47', '4C04BFF274D8B46F9107B5D8971B47E6', '2', null);
INSERT INTO `login_history_tbl` VALUES ('17', 'Austin, TX', '2019-10-18 15:53:52', null, '149D23C3EFA9CD6206DA05984A47C8E6', '2', null);
INSERT INTO `login_history_tbl` VALUES ('18', 'Austin, TX', '2019-10-18 16:02:40', null, '33FC6CC7BB2ECCB15EAB72D8946F11F9', '2', null);
INSERT INTO `login_history_tbl` VALUES ('19', 'Austin, TX', '2019-10-21 15:55:44', null, '23A1725AA31C0BDBAF25B986527AAD91', '2', null);
INSERT INTO `login_history_tbl` VALUES ('32', 'Austin, TX', '2019-11-03 08:13:54', null, '3D3FD8F335267E412E3B73DED9D2EC75', '2', null);
INSERT INTO `login_history_tbl` VALUES ('33', 'Austin, TX', '2019-11-17 05:50:31', null, 'D7F07B2FFE005939EE982868AFDF7447', '2', null);
INSERT INTO `login_history_tbl` VALUES ('34', 'Austin, TX', '2019-11-21 17:42:25', null, 'A065BEBBE649BCEE201554774522838F', '2', null);
INSERT INTO `login_history_tbl` VALUES ('35', 'Austin, TX', '2019-11-21 17:46:35', null, 'A065BEBBE649BCEE201554774522838F', '2', null);
INSERT INTO `login_history_tbl` VALUES ('36', 'Austin, TX', '2019-11-24 04:30:30', null, '1337C89D455DC60675353C54EFA5E774', '2', null);

-- ----------------------------
-- Table structure for `login_role`
-- ----------------------------
DROP TABLE IF EXISTS `login_role`;
CREATE TABLE `login_role` (
  `lid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`lid`,`rid`),
  KEY `FKb8uctrhm0vrgcvm54a3qt5ssm` (`rid`),
  CONSTRAINT `FK4facrb61e9hwjw7agjt4r4usv` FOREIGN KEY (`lid`) REFERENCES `login_tbl` (`lid`),
  CONSTRAINT `FKb8uctrhm0vrgcvm54a3qt5ssm` FOREIGN KEY (`rid`) REFERENCES `roles_tbl` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_role
-- ----------------------------
INSERT INTO `login_role` VALUES ('2', '1');
INSERT INTO `login_role` VALUES ('30', '2');
INSERT INTO `login_role` VALUES ('30', '3');
INSERT INTO `login_role` VALUES ('2', '5');

-- ----------------------------
-- Table structure for `login_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `login_tbl`;
CREATE TABLE `login_tbl` (
  `lid` int(11) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_tbl
-- ----------------------------
INSERT INTO `login_tbl` VALUES ('2', 'jill', 'test', 'jack');
INSERT INTO `login_tbl` VALUES ('30', 'jill', 'test', 'Joshua');

-- ----------------------------
-- Table structure for `mdogs_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `mdogs_tbl`;
CREATE TABLE `mdogs_tbl` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `breed` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `doe` datetime DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mdogs_tbl
-- ----------------------------
INSERT INTO `mdogs_tbl` VALUES ('200', 'Zebra', 'red', '2020-01-20 20:53:20', '56');
INSERT INTO `mdogs_tbl` VALUES ('201', 'Maloe', 'white', null, '344');
INSERT INTO `mdogs_tbl` VALUES ('202', 'Michal', 'red', null, '233');
INSERT INTO `mdogs_tbl` VALUES ('203', 'taut', 'green', null, '20032');

-- ----------------------------
-- Table structure for `profiles_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `profiles_tbl`;
CREATE TABLE `profiles_tbl` (
  `pid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `doe` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `f_loginid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK9016acli5f1s1u1cca3sbo5bx` (`f_loginid`),
  CONSTRAINT `FK9016acli5f1s1u1cca3sbo5bx` FOREIGN KEY (`f_loginid`) REFERENCES `login_tbl` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profiles_tbl
-- ----------------------------
INSERT INTO `profiles_tbl` VALUES ('1', 'H1818', '2019-10-16 15:27:45', 'nagen@synergisticit.com', '1231232332', 'NAGENDRA', '2');
INSERT INTO `profiles_tbl` VALUES ('29', 'nagen@synergisticit.com', '2019-10-25 16:28:49', 'nagen@synergisticit.com', '96968686868', 'Joshua', '30');

-- ----------------------------
-- Table structure for `roles_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `roles_tbl`;
CREATE TABLE `roles_tbl` (
  `rid` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles_tbl
-- ----------------------------
INSERT INTO `roles_tbl` VALUES ('1', 'Super Power', 'ROLE_ADMIN');
INSERT INTO `roles_tbl` VALUES ('2', 'Normal User', 'ROLE_CUSTOMER');
INSERT INTO `roles_tbl` VALUES ('3', 'Normal Employee', 'ROLE_EMPLOYEE');
INSERT INTO `roles_tbl` VALUES ('4', 'POWER', 'ROLE_POWER');
INSERT INTO `roles_tbl` VALUES ('5', 'GUEST', 'ROLE_GUEST');
INSERT INTO `roles_tbl` VALUES ('6', 'OFFICE STAFF', 'ROLE_OFFICESTAFF');
INSERT INTO `roles_tbl` VALUES ('7', 'LAB STAFF', 'ROLE_LABSTAFF');

-- ----------------------------
-- Table structure for `students_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `students_tbl`;
CREATE TABLE `students_tbl` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of students_tbl
-- ----------------------------
INSERT INTO `students_tbl` VALUES ('101', 'Jocker', 'jocker@gmail.com', '123933', 'Fremont  CA120,USA', '2019-12-18 22:45:16');
INSERT INTO `students_tbl` VALUES ('102', 'Omega', 'omega@gmail.com', '123933', 'Fremont  CA120,USA', '2019-12-19 20:15:13');
INSERT INTO `students_tbl` VALUES ('103', 'Raghu', 'raghu@gmail.com', '102922', 'USA', '2019-12-19 20:25:31');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin@email.com', '$2a$12$qAngScP12op71bTNpqXECeNB7fJXVPV67TS9gOUqHGqGyqeS88GuO', 'admin');
INSERT INTO `user` VALUES ('2', 'client@email.com', '$2a$12$GEpkVO7qIe4jWNlU0FjyFuRZcQqO4/QvkmEa2ZTV3IbR1Dx3W1c96', 'client');

-- ----------------------------
-- Table structure for `user_entity`
-- ----------------------------
DROP TABLE IF EXISTS `user_entity`;
CREATE TABLE `user_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4xad1enskw4j1t2866f7sodrx` (`email`),
  UNIQUE KEY `UK_2jsk4eakd0rmvybo409wgwxuw` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_entity
-- ----------------------------
INSERT INTO `user_entity` VALUES ('1', 'admin@email.com', '$2a$12$L8CQD73lKsWxXEKj8WPlw.mPV9p3BD1u1oKwTprY.k4ACw2shIHzu', 'admin');
INSERT INTO `user_entity` VALUES ('2', 'client@email.com', '$2a$12$kkDTkVvIZDfHwFU7aPUNRezUdxygeyA7.IujcT1Xc.F3Di2OF.dbK', 'client');

-- ----------------------------
-- Table structure for `user_entity_roles`
-- ----------------------------
DROP TABLE IF EXISTS `user_entity_roles`;
CREATE TABLE `user_entity_roles` (
  `user_entity_id` int(11) NOT NULL,
  `roles` int(11) DEFAULT NULL,
  KEY `FKjvvinok3stf32dvgie3vr73s0` (`user_entity_id`),
  CONSTRAINT `FKjvvinok3stf32dvgie3vr73s0` FOREIGN KEY (`user_entity_id`) REFERENCES `user_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_entity_roles
-- ----------------------------
INSERT INTO `user_entity_roles` VALUES ('1', '0');
INSERT INTO `user_entity_roles` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `roles` int(11) DEFAULT NULL,
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '0');
INSERT INTO `user_roles` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `voucher_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `voucher_tbl`;
CREATE TABLE `voucher_tbl` (
  `bid` int(11) NOT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `voucherdt` datetime DEFAULT NULL,
  `voucherno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of voucher_tbl
-- ----------------------------
INSERT INTO `voucher_tbl` VALUES ('100', 'P', 'Hello T', '2019-10-27 06:17:38', 'P019282733');
INSERT INTO `voucher_tbl` VALUES ('101', 'R', 'Hello439329 ', '2019-10-21 06:18:01', 'P0182378373');

-- ----------------------------
-- Table structure for `zooms_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `zooms_tbl`;
CREATE TABLE `zooms_tbl` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zooms_tbl
-- ----------------------------
INSERT INTO `zooms_tbl` VALUES ('1', 'Omega', 'white', '2019-11-06 05:30:40', '100');
INSERT INTO `zooms_tbl` VALUES ('9', 'Omega', 'white', '2019-11-06 05:30:49', '200');
INSERT INTO `zooms_tbl` VALUES ('10', 'Jaya', 'red', '2019-11-06 05:31:00', '100');
INSERT INTO `zooms_tbl` VALUES ('20', 'Jullie', 'red', '2019-11-06 06:48:03', '323');
INSERT INTO `zooms_tbl` VALUES ('21', 'Nagendra', 'black', '2019-11-06 05:31:19', '323');
