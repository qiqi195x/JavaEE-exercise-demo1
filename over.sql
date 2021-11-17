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

insert  into `t_checkgroup_checkitem`(`checkgroup_id`,`checkitem_id`) values 
(5,33),
(5,35),
(5,36),
(5,37),
(6,40),
(6,41),
(6,42),
(6,43),
(7,47),
(7,48),
(7,49),
(8,33),
(8,35),
(8,37),
(9,39),
(9,40),
(9,41),
(10,39),
(10,40),
(10,41),
(11,48),
(11,49),
(11,50),
(12,62),
(12,63),
(12,64),
(12,65),
(13,73),
(13,74),
(13,75),
(13,76),
(14,72),
(14,73),
(14,74),
(14,75),
(15,74),
(15,75),
(15,85),
(15,86);

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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='�������';

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
) ENGINE=MyISAM AUTO_INCREMENT=10036 DEFAULT CHARSET=utf8;

/*Data for the table `t_member` */

insert  into `t_member`(`id`,`fileNumber`,`name`,`sex`,`idCard`,`phoneNumber`,`regTime`,`password`,`email`,`birthday`,`remark`) values 
(1001,NULL,'test','1','111111111111111','','2020-12-01',NULL,NULL,NULL,NULL),
(1002,NULL,NULL,NULL,NULL,NULL,'2020-12-04',NULL,NULL,NULL,NULL),
(1003,NULL,NULL,NULL,NULL,NULL,'2020-12-17',NULL,NULL,NULL,NULL),
(1004,NULL,NULL,NULL,NULL,NULL,'2021-01-08',NULL,NULL,NULL,NULL),
(1005,NULL,NULL,NULL,NULL,NULL,'2021-01-20',NULL,NULL,NULL,NULL),
(1006,NULL,NULL,NULL,NULL,NULL,'2021-02-10',NULL,NULL,NULL,NULL),
(1007,NULL,NULL,NULL,NULL,NULL,'2021-02-19',NULL,NULL,NULL,NULL),
(1008,NULL,NULL,NULL,NULL,NULL,'2021-03-09',NULL,NULL,NULL,NULL),
(1009,NULL,NULL,NULL,NULL,NULL,'2021-03-15',NULL,NULL,NULL,NULL),
(10010,NULL,NULL,NULL,NULL,NULL,'2021-04-15',NULL,NULL,NULL,NULL),
(10011,NULL,NULL,NULL,NULL,NULL,'2021-05-15',NULL,NULL,NULL,NULL),
(10012,NULL,NULL,NULL,NULL,NULL,'2021-06-15',NULL,NULL,NULL,NULL),
(10013,NULL,NULL,NULL,NULL,NULL,'2021-06-15',NULL,NULL,NULL,NULL),
(10014,NULL,NULL,NULL,NULL,NULL,'2021-07-15',NULL,NULL,NULL,NULL),
(10015,NULL,NULL,NULL,NULL,NULL,'2021-07-15',NULL,NULL,NULL,NULL),
(10016,NULL,NULL,NULL,NULL,NULL,'2021-08-15',NULL,NULL,NULL,NULL),
(10017,NULL,NULL,NULL,NULL,NULL,'2021-08-15',NULL,NULL,NULL,NULL),
(10018,NULL,NULL,NULL,NULL,NULL,'2021-08-15',NULL,NULL,NULL,NULL),
(10019,NULL,NULL,NULL,NULL,NULL,'2021-08-15',NULL,NULL,NULL,NULL),
(10020,NULL,NULL,NULL,NULL,NULL,'2021-09-08',NULL,NULL,NULL,NULL),
(10021,NULL,NULL,NULL,NULL,NULL,'2021-09-08',NULL,NULL,NULL,NULL),
(10022,NULL,NULL,NULL,NULL,NULL,'2021-09-08',NULL,NULL,NULL,NULL),
(10023,NULL,NULL,NULL,NULL,NULL,'2021-09-08',NULL,NULL,NULL,NULL),
(10024,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10025,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10026,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10027,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10028,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10029,NULL,NULL,NULL,NULL,NULL,'2021-10-08',NULL,NULL,NULL,NULL),
(10030,NULL,NULL,NULL,NULL,NULL,'2021-11-08',NULL,NULL,NULL,NULL),
(10031,NULL,NULL,NULL,NULL,NULL,'2021-11-08',NULL,NULL,NULL,NULL),
(10032,NULL,NULL,NULL,NULL,NULL,'2021-11-08',NULL,NULL,NULL,NULL),
(10033,NULL,NULL,NULL,NULL,NULL,'2021-11-08',NULL,NULL,NULL,NULL),
(10034,NULL,'53434','1','320382199301090238','15052055538','2021-11-17',NULL,NULL,NULL,NULL),
(10035,NULL,'cq','1','320382199301090233','17821858688','2021-11-17',NULL,NULL,NULL,NULL);

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `linkUrl` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `parentMenuId` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_13` (`parentMenuId`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`parentMenuId`) REFERENCES `t_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`name`,`linkUrl`,`path`,`priority`,`icon`,`description`,`parentMenuId`,`level`) values 
(1,'会员管理',NULL,'2',1,'fa-user-md',NULL,NULL,1),
(2,'会员档案','member.html','/2-1',1,NULL,NULL,1,2),
(3,'体检上传',NULL,'/2-2',2,NULL,NULL,1,2),
(4,'会员统计',NULL,'/2-3',3,NULL,NULL,1,2),
(5,'预约管理',NULL,'3',2,'fa-tty',NULL,NULL,1),
(6,'预约列表','ordersettinglist.html','/3-1',1,NULL,NULL,5,2),
(7,'预约设置','ordersetting.html','/3-2',2,NULL,NULL,5,2),
(8,'套餐管理','setmeal.html','/3-3',3,NULL,NULL,5,2),
(9,'检查组管理','checkgroup.html','/3-4',4,NULL,NULL,5,2),
(10,'检查项管理','checkitem.html','/3-5',5,NULL,NULL,5,2),
(11,'健康评估',NULL,'4',3,'fa-stethoscope',NULL,NULL,1),
(12,'中医体质辨识',NULL,'/4-1',1,NULL,NULL,11,2),
(13,'统计分析',NULL,'5',4,'fa-heartbeat',NULL,NULL,1),
(14,'会员数量','report_member.html','/5-1',1,NULL,NULL,13,2),
(15,'系统设置',NULL,'6',5,'fa-users',NULL,NULL,1),
(16,'菜单管理','menu.html','/6-1',1,NULL,NULL,15,2),
(17,'权限管理','permission.html','/6-2',2,NULL,NULL,15,2),
(18,'角色管理','role.html','/6-3',3,NULL,NULL,15,2),
(19,'用户管理','user.html','/6-4',4,NULL,NULL,15,2),
(20,'套餐占比','report_setmeal.html','/5-2',2,NULL,NULL,13,2),
(21,'运营数据','report_business.html','/5-3',3,NULL,NULL,13,2);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`id`,`member_id`,`orderDate`,`orderType`,`orderStatus`,`setmeal_id`) values 
(1,10034,'2021-12-17','微信预约','未到诊',16),
(2,10035,'2021-11-19','微信预约','未到诊',15);

/*Table structure for table `t_ordersetting` */

DROP TABLE IF EXISTS `t_ordersetting`;

CREATE TABLE `t_ordersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL COMMENT 'ԼԤ����',
  `number` int(11) DEFAULT NULL COMMENT '��ԤԼ����',
  `reservations` int(11) DEFAULT NULL COMMENT '��ԤԼ����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='ԤԼ����';

/*Data for the table `t_ordersetting` */

insert  into `t_ordersetting`(`id`,`orderDate`,`number`,`reservations`) values 
(1,'2021-10-21',500,500),
(2,'2021-10-22',21,0),
(3,'2021-10-23',22,0),
(4,'2021-10-24',23,0),
(5,'2021-10-25',24,0),
(6,'2021-10-26',25,0),
(7,'2021-10-27',26,0),
(8,'2021-10-28',27,0),
(9,'2021-10-29',28,0),
(10,'2021-10-30',29,0),
(11,'2021-10-31',30,0),
(12,'2021-11-01',31,0),
(13,'2021-11-02',32,0),
(14,'2021-11-03',33,0),
(15,'2021-11-04',34,0),
(16,'2021-11-05',35,0),
(17,'2021-11-06',36,0),
(18,'2021-11-07',37,0),
(19,'2021-11-08',38,0),
(20,'2021-11-09',39,0),
(21,'2021-11-10',40,0),
(22,'2021-11-11',41,0),
(23,'2021-11-12',42,0),
(24,'2021-11-13',43,0),
(25,'2021-11-14',44,0),
(26,'2021-11-15',45,0),
(27,'2021-11-16',46,0),
(28,'2021-11-17',47,0),
(29,'2021-11-18',48,0),
(30,'2021-11-19',30,1),
(31,'2021-11-20',50,0),
(32,'2021-11-21',51,0),
(33,'2021-11-22',52,0),
(34,'2021-11-23',53,0),
(35,'2021-11-24',54,0),
(36,'2021-11-25',55,0),
(37,'2021-11-26',56,0),
(38,'2021-11-27',57,0),
(39,'2021-11-28',58,0),
(40,'2021-11-29',59,0),
(41,'2021-11-30',60,0),
(42,'2021-12-01',61,0),
(43,'2021-12-02',62,0),
(44,'2021-12-03',63,0),
(45,'2021-12-04',64,0),
(46,'2021-12-05',65,0),
(47,'2021-12-06',66,0),
(48,'2021-12-07',67,0),
(49,'2021-12-08',68,0),
(50,'2021-12-09',69,0),
(51,'2021-12-10',70,0),
(52,'2021-12-11',71,0),
(53,'2021-12-12',72,0),
(54,'2021-12-13',73,0),
(55,'2021-12-14',74,0),
(56,'2021-12-15',75,0),
(57,'2021-12-16',76,0),
(58,'2021-12-17',77,1),
(59,'2021-12-18',78,0),
(60,'2021-12-19',79,0),
(61,'2021-12-20',80,0),
(62,'2021-12-21',81,0),
(63,'2021-12-22',82,0),
(64,'2021-12-23',83,0),
(65,'2021-12-24',84,0),
(66,'2021-12-25',85,0),
(67,'2021-12-26',86,0),
(68,'2021-12-27',87,0),
(69,'2021-12-28',88,0),
(70,'2021-12-29',89,0),
(71,'2021-12-30',90,0),
(72,'2021-12-31',91,0),
(73,'2022-01-01',92,0),
(74,'2022-01-02',93,0),
(75,'2022-01-03',94,0);

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`name`,`keyword`,`description`) values 
(1,'新增检查项','CHECKITEM_ADD',NULL),
(2,'删除检查项','CHECKITEM_DELETE',NULL),
(3,'编辑检查项','CHECKITEM_EDIT',NULL),
(4,'查询检查项','CHECKITEM_QUERY',NULL),
(5,'新增检查组','CHECKGROUP_ADD',NULL),
(6,'删除检查组','CHECKGROUP_DELETE',NULL),
(7,'编辑检查组','CHECKGROUP_EDIT',NULL),
(8,'查询检查组','CHECKGROUP_QUERY',NULL),
(9,'新增套餐','SETMEAL_ADD',NULL),
(10,'删除套餐','SETMEAL_DELETE',NULL),
(11,'编辑套餐','SETMEAL_EDIT',NULL),
(12,'查询套餐','SETMEAL_QUERY',NULL),
(13,'预约设置','ORDERSETTING',NULL),
(14,'查看统计报表','REPORT_VIEW',NULL),
(15,'新增菜单','MENU_ADD',NULL),
(16,'删除菜单','MENU_DELETE',NULL),
(17,'编辑菜单','MENU_EDIT',NULL),
(18,'查询菜单','MENU_QUERY',NULL),
(19,'新增角色','ROLE_ADD',NULL),
(20,'删除角色','ROLE_DELETE',NULL),
(21,'编辑角色','ROLE_EDIT',NULL),
(22,'查询角色','ROLE_QUERY',NULL),
(23,'新增用户','USER_ADD',NULL),
(24,'删除用户','USER_DELETE',NULL),
(25,'编辑用户','USER_EDIT',NULL),
(26,'查询用户','USER_QUERY',NULL);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`,`keyword`,`description`) values 
(1,'系统管理员','ROLE_ADMIN',NULL),
(2,'健康管理师','ROLE_HEALTH_MANAGER',NULL);

/*Table structure for table `t_role_menu` */

DROP TABLE IF EXISTS `t_role_menu`;

CREATE TABLE `t_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FK_Reference_10` (`menu_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`role_id`,`menu_id`) values 
(1,1),
(2,1),
(1,2),
(2,2),
(1,3),
(2,3),
(1,4),
(2,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(1,18),
(1,19),
(1,20),
(1,21);

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_Reference_12` (`permission_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`role_id`,`permission_id`) values 
(1,1),
(2,1),
(1,2),
(1,3),
(2,3),
(1,4),
(2,4),
(1,5),
(2,5),
(1,6),
(2,6),
(1,7),
(2,7),
(1,8),
(2,8),
(1,9),
(2,9),
(1,10),
(2,10),
(1,11),
(2,11),
(1,12),
(2,12),
(1,13),
(2,13),
(1,14),
(2,14),
(1,15),
(1,16),
(1,17),
(1,18),
(1,19),
(1,20),
(1,21),
(1,22),
(1,23),
(1,24),
(1,25),
(1,26);

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='����ײ�';

/*Data for the table `t_setmeal` */

insert  into `t_setmeal`(`id`,`name`,`code`,`helpCode`,`sex`,`age`,`price`,`remark`,`attention`,`img`) values 
(16,'777','777','777','0','777',777,'777','777','14d25fa6-85a9-43a8-8cd3-0cfd64f9d9e4L.jpg'),
(15,'444','454444','444','0','444',444,'444','444','828e1dae-ebab-4e20-818c-553808541fbf6.jpg'),
(14,'222','222','222','0','222',222,'222','222','5facf6de-b967-48c8-8a8c-d15c564f9ad46.jpg'),
(13,'111','111','111','0','111',111,'111','111','cd2cbe6d-70e4-49be-94a4-ef2cf7a767086.jpg');

/*Table structure for table `t_setmeal_checkgroup` */

DROP TABLE IF EXISTS `t_setmeal_checkgroup`;

CREATE TABLE `t_setmeal_checkgroup` (
  `setmeal_id` int(11) NOT NULL DEFAULT '0',
  `checkgroup_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setmeal_id`,`checkgroup_id`),
  KEY `checkgroup_key` (`checkgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_setmeal_checkgroup` */

insert  into `t_setmeal_checkgroup`(`setmeal_id`,`checkgroup_id`) values 
(13,5),
(13,6),
(13,7),
(13,8),
(14,11),
(14,12),
(14,13),
(14,14),
(15,6),
(15,7),
(15,9),
(15,11),
(16,9),
(16,10),
(16,11);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `station` varchar(1) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`birthday`,`gender`,`username`,`password`,`remark`,`station`,`telephone`) values 
(1,NULL,NULL,'admin','$2a$10$LPbhiutR34wKvjv3Qb8zBu7piw5hG3.IlQMAI3e/D1Y0DJ/mMSkYa',NULL,NULL,NULL),
(2,NULL,NULL,'xiaoming','$2a$10$3xW2nBjwBM3rx1LoYprVsemNri5bvxeOd/QfmO7UDFQhW2HRHLi.C',NULL,NULL,NULL);

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_Reference_8` (`role_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
