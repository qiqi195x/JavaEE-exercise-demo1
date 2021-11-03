/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.26 : Database - health
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`health` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `health`;

/*Table structure for table `t_checkgroup` */

DROP TABLE IF EXISTS `t_checkgroup`;

CREATE TABLE `t_checkgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `helpCode` varchar(32) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `attention` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='�������';

/*Data for the table `t_checkgroup` */

insert  into `t_checkgroup`(`id`,`code`,`name`,`helpCode`,`sex`,`remark`,`attention`) values 
(5,'0001','一般检查','YBJC','0','一般检查','无'),
(6,'0002','视力色觉','SLSJ','0','视力色觉',NULL),
(7,'0003','血常规','XCG','0','血常规',NULL),
(8,'0004','尿常规','NCG','0','尿常规',NULL),
(9,'0005','肝功三项','GGSX','0','肝功三项',NULL),
(10,'0006','肾功三项','NGSX','0','肾功三项',NULL),
(11,'0007','血脂四项','XZSX','0','血脂四项',NULL),
(12,'0008','心肌酶三项','XJMSX','0','心肌酶三项',NULL),
(13,'0009','甲功三项','JGSX','0','甲功三项',NULL),
(14,'0010','子宫附件彩超','ZGFJCC','2','子宫附件彩超',NULL),
(15,'0011','胆红素三项','DHSSX','0','胆红素三项',NULL);

/*Table structure for table `t_checkgroup_checkitem` */

DROP TABLE IF EXISTS `t_checkgroup_checkitem`;

CREATE TABLE `t_checkgroup_checkitem` (
  `checkgroup_id` int(11) NOT NULL DEFAULT '0',
  `checkitem_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`checkgroup_id`,`checkitem_id`),
  KEY `FK_Reference_5` (`checkitem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_checkgroup_checkitem` */

/*Table structure for table `t_checkitem` */

DROP TABLE IF EXISTS `t_checkitem`;

CREATE TABLE `t_checkitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` char(1) DEFAULT NULL COMMENT '���������,��Ϊ���ͼ�������',
  `attention` varchar(128) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='�������';

/*Data for the table `t_checkitem` */

insert  into `t_checkitem`(`id`,`code`,`name`,`sex`,`age`,`price`,`type`,`attention`,`remark`) values 
(33,'0006','裸视力（右）','0','0-100',5,'1','无','裸视力（右）'),
(35,'0008','矫正视力（右）','0','0-100',5,'1','无','矫正视力（右）'),
(36,'0009','矫正视力（左）','0','0-100',5,'1','无','矫正视力（左）'),
(37,'0010','色觉','0','0-100',5,'1','无','色觉'),
(39,'0012','红细胞计数','0','0-100',10,'2',NULL,'红细胞计数'),
(40,'0013','血红蛋白','0','0-100',10,'2',NULL,'血红蛋白'),
(41,'0014','红细胞压积','0','0-100',10,'2',NULL,'红细胞压积'),
(42,'0015','平均红细胞体积','0','0-100',10,'2',NULL,'平均红细胞体积'),
(43,'0016','平均红细胞血红蛋白含量','0','0-100',10,'2',NULL,'平均红细胞血红蛋白含量'),
(44,'0017','平均红细胞血红蛋白浓度','0','0-100',10,'2',NULL,'平均红细胞血红蛋白浓度'),
(45,'0018','红细胞分布宽度-变异系数','0','0-100',10,'2',NULL,'红细胞分布宽度-变异系数'),
(46,'0019','血小板计数','0','0-100',10,'2',NULL,'血小板计数'),
(47,'0020','平均血小板体积','0','0-100',10,'2',NULL,'平均血小板体积'),
(48,'0021','血小板分布宽度','0','0-100',10,'2',NULL,'血小板分布宽度'),
(49,'0022','淋巴细胞百分比','0','0-100',10,'2',NULL,'淋巴细胞百分比'),
(50,'0023','中间细胞百分比','0','0-100',10,'2',NULL,'中间细胞百分比'),
(51,'0024','中性粒细胞百分比','0','0-100',10,'2',NULL,'中性粒细胞百分比'),
(52,'0025','淋巴细胞绝对值','0','0-100',10,'2',NULL,'淋巴细胞绝对值'),
(53,'0026','中间细胞绝对值','0','0-100',10,'2',NULL,'中间细胞绝对值'),
(54,'0027','中性粒细胞绝对值','0','0-100',10,'2',NULL,'中性粒细胞绝对值'),
(55,'0028','红细胞分布宽度-标准差','0','0-100',10,'2',NULL,'红细胞分布宽度-标准差'),
(56,'0029','血小板压积','0','0-100',10,'2',NULL,'血小板压积'),
(57,'0030','尿比重','0','0-100',10,'2',NULL,'尿比重'),
(58,'0031','尿酸碱度','0','0-100',10,'2',NULL,'尿酸碱度'),
(59,'0032','尿白细胞','0','0-100',10,'2',NULL,'尿白细胞'),
(60,'0033','尿亚硝酸盐','0','0-100',10,'2',NULL,'尿亚硝酸盐'),
(61,'0034','尿蛋白质','0','0-100',10,'2',NULL,'尿蛋白质'),
(62,'0035','尿糖','0','0-100',10,'2',NULL,'尿糖'),
(63,'0036','尿酮体','0','0-100',10,'2',NULL,'尿酮体'),
(64,'0037','尿胆原','0','0-100',10,'2',NULL,'尿胆原'),
(65,'0038','尿胆红素','0','0-100',10,'2',NULL,'尿胆红素'),
(66,'0039','尿隐血','0','0-100',10,'2',NULL,'尿隐血'),
(67,'0040','尿镜检红细胞','0','0-100',10,'2',NULL,'尿镜检红细胞'),
(68,'0041','尿镜检白细胞','0','0-100',10,'2',NULL,'尿镜检白细胞'),
(69,'0042','上皮细胞','0','0-100',10,'2',NULL,'上皮细胞'),
(70,'0043','无机盐类','0','0-100',10,'2',NULL,'无机盐类'),
(71,'0044','尿镜检蛋白定性','0','0-100',10,'2',NULL,'尿镜检蛋白定性'),
(72,'0045','丙氨酸氨基转移酶','0','0-100',10,'2',NULL,'丙氨酸氨基转移酶'),
(73,'0046','天门冬氨酸氨基转移酶','0','0-100',10,'2',NULL,'天门冬氨酸氨基转移酶'),
(74,'0047','Y-谷氨酰转移酶','0','0-100',10,'2',NULL,'Y-谷氨酰转移酶'),
(75,'0048','尿素','0','0-100',10,'2',NULL,'尿素'),
(76,'0049','肌酐','0','0-100',10,'2',NULL,'肌酐'),
(77,'0050','尿酸','0','0-100',10,'2',NULL,'尿酸'),
(78,'0051','总胆固醇','0','0-100',10,'2',NULL,'总胆固醇'),
(79,'0052','甘油三酯','0','0-100',10,'2',NULL,'甘油三酯'),
(80,'0053','高密度脂蛋白胆固醇','0','0-100',10,'2',NULL,'高密度脂蛋白胆固醇'),
(81,'0054','低密度脂蛋白胆固醇','0','0-100',10,'2',NULL,'低密度脂蛋白胆固醇'),
(82,'0055','磷酸肌酸激酶','0','0-100',10,'2',NULL,'磷酸肌酸激酶'),
(83,'0056','磷酸肌酸激酶同工酶','0','0-100',10,'2',NULL,'磷酸肌酸激酶同工酶'),
(84,'0057','乳酸脱氢酶','0','0-100',10,'2',NULL,'乳酸脱氢酶'),
(85,'0058','三碘甲状腺原氨酸','0','0-100',10,'2',NULL,'三碘甲状腺原氨酸'),
(86,'0059','甲状腺素','0','0-100',10,'2',NULL,'甲状腺素'),
(87,'0060','促甲状腺激素','0','0-100',10,'2',NULL,'促甲状腺激素'),
(88,'0061','子宫','2','0-100',10,'2',NULL,'子宫'),
(89,'0062','附件','2','0-100',10,'2',NULL,'附件'),
(90,'0063','总胆红素','0','0-100',10,'2',NULL,'总胆红素'),
(91,'0064','直接胆红素','0','0-100',10,'2',NULL,'直接胆红素'),
(92,'0065','间接胆红素','0','0-100',10,'2',NULL,'间接胆红素');

/*Table structure for table `t_member` */

DROP TABLE IF EXISTS `t_member`;

CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileNumber` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `regTime` date DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_member` */

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `linkUrl` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `parentMenuId` int(11) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_13` (`parentMenuId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT 'Ա��id',
  `orderDate` date DEFAULT NULL COMMENT 'ԼԤ����',
  `orderType` varchar(8) DEFAULT NULL COMMENT 'ԼԤ���� �绰ԤԼ/΢��ԤԼ',
  `orderStatus` varchar(8) DEFAULT NULL COMMENT 'ԤԼ״̬���Ƿ��',
  `setmeal_id` int(11) DEFAULT NULL COMMENT '����id',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_6` (`setmeal_id`),
  KEY `key_member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

/*Table structure for table `t_ordersetting` */

DROP TABLE IF EXISTS `t_ordersetting`;

CREATE TABLE `t_ordersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL COMMENT 'ԼԤ����',
  `number` int(11) DEFAULT NULL COMMENT '��ԤԼ����',
  `reservations` int(11) DEFAULT NULL COMMENT '��ԤԼ����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ԤԼ����';

/*Data for the table `t_ordersetting` */

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

/*Table structure for table `t_role_menu` */

DROP TABLE IF EXISTS `t_role_menu`;

CREATE TABLE `t_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FK_Reference_10` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role_menu` */

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_Reference_12` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

/*Table structure for table `t_setmeal` */

DROP TABLE IF EXISTS `t_setmeal`;

CREATE TABLE `t_setmeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `helpCode` varchar(16) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `attention` varchar(128) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����ײ�';

/*Data for the table `t_setmeal` */

/*Table structure for table `t_setmeal_checkgroup` */

DROP TABLE IF EXISTS `t_setmeal_checkgroup`;

CREATE TABLE `t_setmeal_checkgroup` (
  `setmeal_id` int(11) NOT NULL DEFAULT '0',
  `checkgroup_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setmeal_id`,`checkgroup_id`),
  KEY `checkgroup_key` (`checkgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_setmeal_checkgroup` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(36) DEFAULT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `station` varchar(1) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_Reference_8` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
