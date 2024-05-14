/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - suca
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `suca`;

USE `suca`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `color1` varchar(40) default NULL,
  `color2` varchar(40) default NULL,
  `color3` varchar(40) default NULL,
  PRIMARY KEY  (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert into `login` (`username`,`password`,`color1`,`color2`,`color3`) values ('user1','user1','204','204','204');
insert into `login` (`username`,`password`,`color1`,`color2`,`color3`) values ('user2','user2','210','210','210');
insert into `login` (`username`,`password`,`color1`,`color2`,`color3`) values ('user3','user3','111','123','123');

/*Table structure for table `senderinfo` */

DROP TABLE IF EXISTS `senderinfo`;

CREATE TABLE `senderinfo` (
  `rxr` varchar(5) default NULL,
  `rxg` varchar(5) default NULL,
  `rxb` varchar(5) default NULL,
  `kyr` varchar(5) default NULL,
  `kyg` varchar(5) default NULL,
  `kyb` varchar(5) default NULL,
  `enr` varchar(5) default NULL,
  `eng` varchar(5) default NULL,
  `enb` varchar(5) default NULL,
  `message` varchar(50) default NULL,
  `messagekey` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `receiveruser` varchar(100) default NULL,
  `receiverpass` varchar(100) default NULL,
  `random` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `senderinfo` */

insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('204','204','204','-5','-5','10','199','199','214','welcome to all','153','user3','user3','user1','user1','123');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','153','user1','user1','user2','user2','MA8250');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','153','user1','user1','user2','user2','MA9662');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','256','user1','user1','user2','user2','MA7784');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','878','user1','user1','user2','user2','MA7356');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','3465','user1','user1','user2','user2','MA6318');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','878','user1','user1','user2','user2','MA789');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','256','user1','user1','user2','user2','MA4781');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','-1','-1','2','209','209','212','welcome','153','user1','user1','user2','user2','MA145');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','3','3','3','213','213','213','asdf','153','user1','user1','user2','user2','MA2064');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','3','3','3','213','213','213','asdf','256','user1','user1','user2','user2','MA5365');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','3','3','3','213','213','213','asdf','878','user1','user1','user2','user2','MA2737');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','3','3','3','213','213','213','asdf','3465','user1','user1','user2','user2','MA979');
insert into `senderinfo` (`rxr`,`rxg`,`rxb`,`kyr`,`kyg`,`kyb`,`enr`,`eng`,`enb`,`message`,`messagekey`,`username`,`password`,`receiveruser`,`receiverpass`,`random`) values ('210','210','210','3','3','3','213','213','213','asdf','8723','user1','user1','user2','user2','MA2871');

SET SQL_MODE=@OLD_SQL_MODE;