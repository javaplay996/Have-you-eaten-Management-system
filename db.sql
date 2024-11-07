/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmww028
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmww028` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmww028`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740588675 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-18 18:00:37',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-18 18:00:37',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-18 18:00:37',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-18 18:00:37',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-18 18:00:37',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-18 18:00:37',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618740588674,'2021-04-18 18:09:47',1618740521150,'广东省梅州市梅江区江南街道作新小学','1','12345678900','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'meishi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740565060 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmww028/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmww028/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmww028/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dianjia` */

DROP TABLE IF EXISTS `dianjia`;

CREATE TABLE `dianjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianjiazhanghao` varchar(200) NOT NULL COMMENT '店家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianjiazhanghao` (`dianjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740394796 DEFAULT CHARSET=utf8 COMMENT='店家';

/*Data for the table `dianjia` */

insert  into `dianjia`(`id`,`addtime`,`dianjiazhanghao`,`mima`,`dianjiaxingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (21,'2021-04-18 18:00:37','店家1','123456','店家姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmww028/upload/dianjia_zhaopian1.jpg',100),(22,'2021-04-18 18:00:37','店家2','123456','店家姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmww028/upload/dianjia_zhaopian2.jpg',100),(23,'2021-04-18 18:00:37','店家3','123456','店家姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmww028/upload/dianjia_zhaopian3.jpg',100),(24,'2021-04-18 18:00:37','店家4','123456','店家姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmww028/upload/dianjia_zhaopian4.jpg',100),(25,'2021-04-18 18:00:37','店家5','123456','店家姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmww028/upload/dianjia_zhaopian5.jpg',100),(26,'2021-04-18 18:00:37','店家6','123456','店家姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmww028/upload/dianjia_zhaopian6.jpg',100),(1618740394795,'2021-04-18 18:06:34','12','12','12','男','12345678900',NULL,'440582199905128833','http://localhost:8080/ssmww028/upload/1618740409624.jpg',0);

/*Table structure for table `dianpu` */

DROP TABLE IF EXISTS `dianpu`;

CREATE TABLE `dianpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuleibie` varchar(200) DEFAULT NULL COMMENT '店铺类别',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `meishileibie` varchar(200) DEFAULT NULL COMMENT '美食类别',
  `meishiyuanliao` varchar(200) DEFAULT NULL COMMENT '美食原料',
  `meishitese` varchar(200) DEFAULT NULL COMMENT '美食特色',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `meishijieshao` longtext COMMENT '美食介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740478100 DEFAULT CHARSET=utf8 COMMENT='店铺';

/*Data for the table `dianpu` */

insert  into `dianpu`(`id`,`addtime`,`dianpumingcheng`,`dianpuleibie`,`meishimingcheng`,`meishileibie`,`meishiyuanliao`,`meishitese`,`dianjiazhanghao`,`dianjiaxingming`,`tupian`,`meishijieshao`,`thumbsupnum`,`crazilynum`,`price`) values (31,'2021-04-18 18:00:37','店铺名称1','店铺类别1','美食名称1','美食类别1','美食原料1','美食特色1','店家账号1','店家姓名1','http://localhost:8080/ssmww028/upload/dianpu_tupian1.jpg','美食介绍1',1,1,99.9),(32,'2021-04-18 18:00:37','店铺名称2','店铺类别2','美食名称2','美食类别2','美食原料2','美食特色2','店家账号2','店家姓名2','http://localhost:8080/ssmww028/upload/dianpu_tupian2.jpg','美食介绍2',2,2,99.9),(33,'2021-04-18 18:00:37','店铺名称3','店铺类别3','美食名称3','美食类别3','美食原料3','美食特色3','店家账号3','店家姓名3','http://localhost:8080/ssmww028/upload/dianpu_tupian3.jpg','美食介绍3',3,3,99.9),(34,'2021-04-18 18:00:37','店铺名称4','店铺类别4','美食名称4','美食类别4','美食原料4','美食特色4','店家账号4','店家姓名4','http://localhost:8080/ssmww028/upload/dianpu_tupian4.jpg','美食介绍4',4,4,99.9),(35,'2021-04-18 18:00:37','店铺名称5','店铺类别5','美食名称5','美食类别5','美食原料5','美食特色5','店家账号5','店家姓名5','http://localhost:8080/ssmww028/upload/dianpu_tupian5.jpg','美食介绍5',5,5,99.9),(36,'2021-04-18 18:00:37','店铺名称6','店铺类别6','美食名称6','美食类别6','美食原料6','美食特色6','店家账号6','店家姓名6','http://localhost:8080/ssmww028/upload/dianpu_tupian6.jpg','美食介绍6',6,6,99.9),(1618740478099,'2021-04-18 18:07:57','店铺测试','小吃','美食测试','甜品','XXX，xxx','XX特色','12','12','http://localhost:8080/ssmww028/upload/1618740457195.jpg','<p>美食介绍测试</p>',0,0,15);

/*Table structure for table `dianpufenlei` */

DROP TABLE IF EXISTS `dianpufenlei`;

CREATE TABLE `dianpufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpuleibie` varchar(200) DEFAULT NULL COMMENT '店铺类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740343398 DEFAULT CHARSET=utf8 COMMENT='店铺分类';

/*Data for the table `dianpufenlei` */

insert  into `dianpufenlei`(`id`,`addtime`,`dianpuleibie`) values (41,'2021-04-18 18:00:37','店铺类别1'),(42,'2021-04-18 18:00:37','店铺类别2'),(43,'2021-04-18 18:00:37','店铺类别3'),(44,'2021-04-18 18:00:37','店铺类别4'),(45,'2021-04-18 18:00:37','店铺类别5'),(46,'2021-04-18 18:00:37','店铺类别6'),(1618740343397,'2021-04-18 18:05:42','小吃');

/*Table structure for table `discussdianpu` */

DROP TABLE IF EXISTS `discussdianpu`;

CREATE TABLE `discussdianpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='店铺评论表';

/*Data for the table `discussdianpu` */

insert  into `discussdianpu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-18 18:00:37',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-18 18:00:37',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-18 18:00:37',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-18 18:00:37',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-18 18:00:37',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-18 18:00:37',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussmeishi` */

DROP TABLE IF EXISTS `discussmeishi`;

CREATE TABLE `discussmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740554238 DEFAULT CHARSET=utf8 COMMENT='美食评论表';

/*Data for the table `discussmeishi` */

insert  into `discussmeishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-18 18:00:37',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-18 18:00:37',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-18 18:00:37',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-18 18:00:37',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-18 18:00:37',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-18 18:00:37',6,6,'用户名6','评论内容6','回复内容6'),(1618740554237,'2021-04-18 18:09:13',1618740468267,1618740521150,'1','评论测试',NULL);

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpuleibie` varchar(200) DEFAULT NULL COMMENT '店铺类别',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `meishileibie` varchar(200) DEFAULT NULL COMMENT '美食类别',
  `meishiyuanliao` varchar(200) DEFAULT NULL COMMENT '美食原料',
  `meishitese` varchar(200) DEFAULT NULL COMMENT '美食特色',
  `dianjiazhanghao` varchar(200) DEFAULT NULL COMMENT '店家账号',
  `dianjiaxingming` varchar(200) DEFAULT NULL COMMENT '店家姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `meishijieshao` longtext COMMENT '美食介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740468268 DEFAULT CHARSET=utf8 COMMENT='美食';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`addtime`,`dianpumingcheng`,`dianpuleibie`,`meishimingcheng`,`meishileibie`,`meishiyuanliao`,`meishitese`,`dianjiazhanghao`,`dianjiaxingming`,`tupian`,`meishijieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (51,'2021-04-18 18:00:37','店铺名称1','店铺类别1','美食名称1','美食类别1','美食原料1','美食特色1','店家账号1','店家姓名1','http://localhost:8080/ssmww028/upload/meishi_tupian1.jpg','美食介绍1',1,1,'2021-04-18 18:00:37',99.9),(52,'2021-04-18 18:00:37','店铺名称2','店铺类别2','美食名称2','美食类别2','美食原料2','美食特色2','店家账号2','店家姓名2','http://localhost:8080/ssmww028/upload/meishi_tupian2.jpg','美食介绍2',2,2,'2021-04-18 18:00:37',99.9),(53,'2021-04-18 18:00:37','店铺名称3','店铺类别3','美食名称3','美食类别3','美食原料3','美食特色3','店家账号3','店家姓名3','http://localhost:8080/ssmww028/upload/meishi_tupian3.jpg','美食介绍3',3,3,'2021-04-18 18:00:37',99.9),(54,'2021-04-18 18:00:37','店铺名称4','店铺类别4','美食名称4','美食类别4','美食原料4','美食特色4','店家账号4','店家姓名4','http://localhost:8080/ssmww028/upload/meishi_tupian4.jpg','美食介绍4',4,4,'2021-04-18 18:00:37',99.9),(55,'2021-04-18 18:00:37','店铺名称5','店铺类别5','美食名称5','美食类别5','美食原料5','美食特色5','店家账号5','店家姓名5','http://localhost:8080/ssmww028/upload/meishi_tupian5.jpg','美食介绍5',5,5,'2021-04-18 18:00:37',99.9),(56,'2021-04-18 18:00:37','店铺名称6','店铺类别6','美食名称6','美食类别6','美食原料6','美食特色6','店家账号6','店家姓名6','http://localhost:8080/ssmww028/upload/meishi_tupian6.jpg','美食介绍6',6,6,'2021-04-18 18:00:37',99.9),(1618740468267,'2021-04-18 18:07:48','店铺测试','小吃','美食测试','甜品','XXX，xxx','XX特色','12','12','http://localhost:8080/ssmww028/upload/1618740457195.jpg','<p>美食介绍测试</p>',1,1,'2021-04-18 18:11:04',15);

/*Table structure for table `meishifenlei` */

DROP TABLE IF EXISTS `meishifenlei`;

CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishileibie` varchar(200) DEFAULT NULL COMMENT '美食类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740354885 DEFAULT CHARSET=utf8 COMMENT='美食分类';

/*Data for the table `meishifenlei` */

insert  into `meishifenlei`(`id`,`addtime`,`meishileibie`) values (61,'2021-04-18 18:00:37','美食类别1'),(62,'2021-04-18 18:00:37','美食类别2'),(63,'2021-04-18 18:00:37','美食类别3'),(64,'2021-04-18 18:00:37','美食类别4'),(65,'2021-04-18 18:00:37','美食类别5'),(66,'2021-04-18 18:00:37','美食类别6'),(1618740354884,'2021-04-18 18:05:54','甜品');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'meishi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740665211 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618740624019,'2021-04-18 18:10:23','202141818102274150514','meishi',1618740521150,1618740468267,'美食测试','http://localhost:8080/ssmww028/upload/1618740457195.jpg',3,15,15,45,45,1,'未支付','广东省梅州市梅江区江南街道作新小学','12345678900','1'),(1618740665210,'2021-04-18 18:11:04','20214181811352855103','meishi',1618740521150,1618740468267,'美食测试','http://localhost:8080/ssmww028/upload/1618740457195.jpg',4,15,15,60,60,1,'已完成','广东省梅州市梅江区江南街道作新小学','12345678900','1');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740561583 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','owtwkemhfrwtk56o9qny48utensydglu','2021-04-18 18:04:25','2021-04-18 19:04:25'),(2,1618740394795,'12','dianjia','管理员','c0bl0tjkfsqw47mzyr6whsbxe4m5bs1o','2021-04-18 18:06:38','2021-04-18 19:11:38'),(3,1618740521150,'1','yonghu','用户','o2mpgvchxh42a57ybetxrla7td33ju99','2021-04-18 18:08:45','2021-04-18 19:11:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-18 18:00:37');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618740521151 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`money`) values (11,'2021-04-18 18:00:36','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmww028/upload/yonghu_zhaopian1.jpg',100),(12,'2021-04-18 18:00:36','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmww028/upload/yonghu_zhaopian2.jpg',100),(13,'2021-04-18 18:00:36','用户3','123456','姓名3','女','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmww028/upload/yonghu_zhaopian3.jpg',100),(15,'2021-04-18 18:00:36','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmww028/upload/yonghu_zhaopian5.jpg',100),(16,'2021-04-18 18:00:36','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmww028/upload/yonghu_zhaopian6.jpg',100),(1618740521150,'2021-04-18 18:08:41','1','1','1','男','12345678900','','440582199905125833','http://localhost:8080/ssmww028/upload/1618740639000.jpg',99939);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
