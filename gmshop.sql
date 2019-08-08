/*
SQLyog v10.2 
MySQL - 5.1.62-community : Database - gmshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gmshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gmshop`;

/*Table structure for table `tbl_category` */

DROP TABLE IF EXISTS `tbl_category`;

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK936F045FCC4601F0` (`parent_id`),
  CONSTRAINT `FK936F045FCC4601F0` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_category` */

insert  into `tbl_category`(`id`,`name`,`parent_id`) values (1,'家用电器',NULL),(2,'大家电',1),(3,'洗衣机',1),(4,'平板电视',1),(5,'电热水器',1),(6,'家庭音响',1),(7,'热水器',1),(8,'空调冰箱',1),(9,'冷柜',1),(10,'DVD',1),(11,'电视附件',1),(12,'电燃气',1),(13,'家电下乡',1),(14,'家电服务',1),(15,'电饭煲',1),(16,'摄像机',1),(17,'书籍',NULL),(18,'小说',17),(19,'传记',17),(21,'投资理财',17),(22,'经济',17),(23,'儿童文学',17),(24,'儿童绘本',17),(25,'家庭教育',17),(26,'科普百科',17),(27,'哲学',17),(28,'历史',17),(29,'文化',17),(30,'国学',17),(31,'军事',17),(32,'社会科学',17),(33,'手机数码',NULL),(34,'iPhone',33),(35,'三星',33),(36,'诺基亚',33),(37,'HTC',33),(38,'小米',33),(39,'摩托罗拉',33),(40,'索尼',33),(41,'华为',33),(42,'联想',33),(43,'安卓',33),(45,'充电器',33),(46,'存储卡',33),(47,'耳机',33),(48,'移动电源',33),(49,'保护壳',33),(50,'户外休闲',NULL),(51,'自行车',50),(52,'背包/袋',50),(53,'刀具',50),(54,'望远镜',50),(55,'户外服饰',50),(57,'灯具',50),(58,'帐篷',50),(59,'睡袋',50),(60,'防潮垫',50),(61,'折叠床/椅',50),(62,'充气地垫',50),(63,'野餐用品',50),(64,'滑雪装备',50),(65,'手杖',50),(66,'指南针',50),(67,'管理学',17);

/*Table structure for table `tbl_image` */

DROP TABLE IF EXISTS `tbl_image`;

CREATE TABLE `tbl_image` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKEC6D859A8A19F6F8` (`product_id`),
  CONSTRAINT `FKEC6D859A8A19F6F8` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_image` */

insert  into `tbl_image`(`id`,`product_id`,`url`) values (1,1,'000000000101232128_1.jpg'),(2,1,'000000000101232128_2.jpg'),(3,2,'000000000104616763_2.jpg'),(4,2,'000000000104616763_1.jpg'),(5,2,'000000000104616763_3.jpg'),(6,2,'000000000104616763_4.jpg'),(7,3,'000000000102539585_1.jpg'),(8,3,'000000000102539585_2.jpg'),(9,3,'000000000102539585_3.jpg'),(10,3,'000000000102539585_4.jpg'),(11,4,'000000000101232128_3.jpg'),(12,4,'000000000101232128_4.jpg'),(13,4,'000000000101232128_5.jpg'),(14,4,'000000000103932682_1.jpg'),(15,5,'000000000103932682_2.jpg'),(16,5,'000000000103932682_3.jpg'),(17,5,'000000000103932682_4.jpg'),(18,5,'000000000103932682_1.jpg'),(19,6,'000000000104045901_1.jpg'),(20,7,'000000000104045901_1.jpg'),(21,8,'000000000104001241_1.jpg'),(22,8,'000000000104001241_2.jpg'),(23,8,'000000000104001241_3.jpg'),(24,8,'000000000104001241_4.jpg'),(25,9,'000000000101432442_1.jpg'),(26,9,'000000000101432442_2.jpg'),(27,9,'000000000101432442_3.jpg'),(28,10,'000000000102406009_1.jpg'),(29,10,'000000000102406009_2.jpg'),(30,10,'000000000102406009_3.jpg'),(31,10,'000000000102406009_4.jpg'),(32,10,'000000000102406009_5.jpg');

/*Table structure for table `tbl_order` */

DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKECC4638D5E71CEFC` (`user_id`),
  CONSTRAINT `FKECC4638D5E71CEFC` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_order` */

insert  into `tbl_order`(`id`,`address`,`phone`,`user_id`) values (1,'ffsdf','4324234',1),(2,'ffssdsew','53454535',1),(3,'vxcvx','vcxv',2),(4,'sdf','fdsfdsfs',NULL);

/*Table structure for table `tbl_order_detail` */

DROP TABLE IF EXISTS `tbl_order_detail`;

CREATE TABLE `tbl_order_detail` (
  `id` bigint(20) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `price` float NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `FK8BF60943C8E23618` (`order_id`),
  KEY `FK8BF609438A19F6F8` (`product_id`),
  CONSTRAINT `FK8BF609438A19F6F8` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `FK8BF60943C8E23618` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_order_detail` */

/*Table structure for table `tbl_product` */

DROP TABLE IF EXISTS `tbl_product`;

CREATE TABLE `tbl_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `freight` float NOT NULL,
  `expire_time` datetime NOT NULL,
  `sell_num` int(11) NOT NULL,
  `stock_num` int(11) DEFAULT NULL,
  `sell_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_num` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2BA956EAC87FD1C` (`category_id`),
  CONSTRAINT `FK2BA956EAC87FD1C` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_product` */

insert  into `tbl_product`(`id`,`name`,`price`,`freight`,`expire_time`,`sell_num`,`stock_num`,`sell_address`,`view_num`,`category_id`) values (1,'Muztaga 慕士塔格 秋冬女式MG76009W锦绣女式抓绒内胆两件套 ',1200,12,'2013-12-12 00:00:00',0,100,'广东',1,55),(2,'小辣椒手机M2(白色) ',1099,90,'2013-12-12 00:00:00',0,100,'深圳',1,35),(3,'西门子冰箱BCD-610W(KA62NV02TI) ',8888,88,'2013-12-12 00:00:00',0,988,'东莞',6,2),(4,'奥马冰箱BCD-176UB ',2000,88,'2013-12-13 00:00:00',0,90,'东莞',0,2),(5,'海信彩电LED32K30JD ',1000,90,'2013-12-13 00:00:00',0,100,'广州',4,2),(6,'年任汝芬教授考研政治序列之一要点精编',30,1,'2014-01-01 00:00:00',0,100,'广东',0,2),(7,'考研英语美文诵读宝典60+30(晨读)(2014考研英语)',20,0,'2014-01-01 00:00:00',0,200,'广州',0,23),(8,'361°女休闲鞋581316710白/浅红37 ',200,10,'2014-01-01 00:00:00',0,150,'深圳',0,64),(9,'酷博睿平板电视挂架CJ-440A ',300,10,'2014-10-10 00:00:00',0,100,'东莞',0,11),(10,' 爱美家电视万能遥控器URC30B-SN ',30,0,'2014-10-10 00:00:00',0,100,'东莞',0,11);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `my_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `born_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`my_name`,`login_name`,`pass`,`email`,`sex`,`user_img`,`born_day`) values (1,'tom','tom','123','xxxx@xx.com','男','/abc.jpg','2013-10-16'),(2,'李四','lisi','123','xxxx@xx.com','男','/abc.jpg','2013-10-16'),(3,'王五','ww','123','xxxx@xx.com','男','/abc.jpg','2013-10-16'),(4,'陈六','cl','123','xxxx@xx.com','男','/abc.jpg','2013-10-16'),(5,'张三','zs','123','dffg@qq.com','男','m9.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
