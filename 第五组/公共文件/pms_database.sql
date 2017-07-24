# Host: 127.0.0.1  (Version: 5.1.73-community)
# Date: 2017-07-24 11:18:26
# Generator: MySQL-Front 5.3  (Build 4.128)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "departments"
#

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "departments"
#

INSERT INTO `departments` VALUES (1,'生产部','001','using'),(2,'销售部','002','using'),(3,'财务部','003','using'),(6,'人事部','004','using'),(7,'采购部','005','delete'),(8,'行政部','006','using'),(11,'事业部','007','using'),(12,'技术部','008','delete');

#
# Structure for table "employee"
#

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `entry_date` varchar(255) NOT NULL,
  `work_date` varchar(255) NOT NULL,
  `employment_form` varchar(255) NOT NULL,
  `personnel_source` varchar(255) NOT NULL,
  `statu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "employee"
#

INSERT INTO `employee` VALUES (17,'王一','男','0001','2017-07-05','123','生产部','副经理','2017-07-06','2017-07-06','全日制用工','外部招聘','离职'),(18,'王二','男','0002','2017-07-04','123','事业部','经理','2017-07-05','2017-07-05','劳务派遣工','外部招聘','离职'),(19,'王三','男','0003','2017-07-15','123','行政部','经理','2017-07-16','2017-07-16','非全日制用工','内部提升','离职'),(20,'王四','男','0004','2017-07-04','123','行政部','副经理','2017-07-05','2017-07-05','全日制用工','内部提升','正式员工'),(21,'王五','男','0005','2017-07-04','123','生产部','经理','2017-07-05','2017-07-05','非全日制用工','内部提升','实习期'),(22,'王月','女','0006','2017-07-04','123','人事部','经理','2017-07-05','2017-07-05','非全日制用工','内部提升','正式员工'),(23,'李一','男','0007','2017-07-05','123','销售部','副经理','2017-07-06','2017-07-06','非全日制用工','内部提升','实习期'),(24,'李二','男','0008','2017-07-05','123','事业部','技术支持','2017-07-06','2017-07-06','全日制用工','外部招聘','实习期'),(25,'李三','女','0009','2017-07-05','123','生产部','技术支持','2017-07-06','2017-07-06','劳务派遣工','外部招聘','正式员工');

#
# Structure for table "people"
#

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `marriage` varchar(255) NOT NULL DEFAULT '',
  `folk` varchar(255) NOT NULL DEFAULT '',
  `political` varchar(255) NOT NULL DEFAULT '',
  `education` varchar(255) NOT NULL DEFAULT '',
  `school` varchar(255) NOT NULL DEFAULT '',
  `major` varchar(255) NOT NULL DEFAULT '',
  `graduate_date` varchar(255) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "people"
#

INSERT INTO `people` VALUES (14,'王一','0001','123','','','未婚','','','','','','',''),(15,'王二','0002','123','','','未婚','','','','','','',''),(16,'王三','0003','123','','','未婚','','','','','','',''),(17,'王四','0004','123','','','已婚','','','','','','',''),(18,'王五','0005','123','','','离异','','','','','','',''),(19,'王月','0006','123','','','未婚','','','','','','',''),(20,'李一','0007','123','','','已婚','','','','','','',''),(21,'李二','0008','123','','','未婚','','','','','','',''),(22,'李三','0009','123','','','已婚','','','','','','','');

#
# Structure for table "positions"
#

DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "positions"
#

INSERT INTO `positions` VALUES (1,'会计','01','财务部','using'),(2,'副经理','02','人事部','using'),(3,'技术支持','03','技术部','using'),(4,'经理','04','人事部','using'),(5,'产品经理','05','销售部','using'),(6,'总裁','06','人事部','using'),(7,'后台开发','07','事业部','using');

#
# Structure for table "resign"
#

DROP TABLE IF EXISTS `resign`;
CREATE TABLE `resign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `begin_date` varchar(255) NOT NULL,
  `resign_date` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `resign_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "resign"
#

INSERT INTO `resign` VALUES (8,'王一','0001','2017-07-06','2017-07-18','财务部','会计','辞退'),(9,'王二','0002','2017-07-05','2017-07-18','生产部','技术支持','辞职'),(11,'王三','0003','2017-07-16','2017-07-23','行政部','经理','退休');

#
# Structure for table "transfer"
#

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `former_department` varchar(255) NOT NULL,
  `former_position` varchar(255) NOT NULL,
  `current_department` varchar(255) NOT NULL,
  `current_position` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "transfer"
#

INSERT INTO `transfer` VALUES (3,'王四','0004','2017-07-22','人事部','副经理','行政部','副经理',''),(4,'王五','0005','2017-07-22','财务部','经理','生产部','经理',''),(5,'王月','0006','2017-07-22','财务部','副经理','人事部','经理','');

#
# Structure for table "trial"
#

DROP TABLE IF EXISTS `trial`;
CREATE TABLE `trial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `begin_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "trial"
#

INSERT INTO `trial` VALUES (8,'王二','0002','2017-07-05','2017-10-05','3个月','using','已录用'),(9,'王三','0003','2017-07-16','2018-01-16','6个月','using','试用中'),(10,'王五','0005','2017-07-05','2017-10-05','3个月','using','试用中'),(11,'李一','0007','2017-07-06','2018-01-06','6个月','using','试用中'),(12,'李二','0008','2017-07-06','2017-10-06','3个月','using','试用中');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'test','test'),(2,'lalala','123'),(3,'admin','admin');
