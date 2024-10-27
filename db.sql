/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cheliangweizhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cheliangweizhang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cheliangweizhang`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_chepai` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliang_yanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliang_pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `cheliang_chezuo` varchar(200) DEFAULT NULL COMMENT '车座',
  `cheliang_content` longtext COMMENT '车辆备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`yonghu_id`,`cheliang_name`,`cheliang_uuid_number`,`cheliang_photo`,`cheliang_types`,`cheliang_chepai`,`cheliang_yanse`,`cheliang_pinpai`,`cheliang_chezuo`,`cheliang_content`,`insert_time`,`create_time`) values (1,1,'车辆名称1','1679894899611','upload/cheliang1.jpg',2,'车牌号1','车辆颜色1','品牌1','车座1','车辆备注1','2023-03-27 13:28:19','2023-03-27 13:28:19'),(2,1,'车辆名称2','1679894899678','upload/cheliang2.jpg',3,'车牌号2','车辆颜色2','品牌2','车座2','车辆备注2','2023-03-27 13:28:19','2023-03-27 13:28:19'),(3,1,'车辆名称3','1679894899668','upload/cheliang3.jpg',1,'车牌号3','车辆颜色3','品牌3','车座3','车辆备注3','2023-03-27 13:28:19','2023-03-27 13:28:19'),(4,1,'车辆名称4','1679894899631','upload/cheliang4.jpg',4,'车牌号4','车辆颜色4','品牌4','车座4','车辆备注4','2023-03-27 13:28:19','2023-03-27 13:28:19'),(5,1,'车辆名称5','1679894899628','upload/cheliang5.jpg',4,'车牌号5','车辆颜色5','品牌5','车座5','车辆备注5','2023-03-27 13:28:19','2023-03-27 13:28:19'),(6,1,'车辆名称6','1679894899677','upload/cheliang6.jpg',4,'车牌号6','车辆颜色6','品牌6','车座6','车辆备注6','2023-03-27 13:28:19','2023-03-27 13:28:19'),(7,1,'车辆名称7','1679894899704','upload/cheliang7.jpg',4,'车牌号7','车辆颜色7','品牌7','车座7','车辆备注7','2023-03-27 13:28:19','2023-03-27 13:28:19'),(8,2,'车辆名称8','1679894899706','upload/cheliang8.jpg',1,'车牌号8','车辆颜色8','品牌8','车座8','车辆备注8','2023-03-27 13:28:19','2023-03-27 13:28:19'),(9,2,'车辆名称9','1679894899691','upload/cheliang9.jpg',2,'车牌号9','车辆颜色9','品牌9','车座9','车辆备注9','2023-03-27 13:28:19','2023-03-27 13:28:19'),(10,2,'车辆名称10','1679894899648','upload/cheliang10.jpg',1,'车牌号10','车辆颜色10','品牌10','车座10','车辆备注10','2023-03-27 13:28:19','2023-03-27 13:28:19'),(11,2,'车辆名称11','1679894899630','upload/cheliang11.jpg',4,'车牌号11','车辆颜色11','品牌11','车座11','车辆备注11','2023-03-27 13:28:19','2023-03-27 13:28:19'),(12,3,'车辆名称12','1679894899641','upload/cheliang12.jpg',2,'车牌号12','车辆颜色12','品牌12','车座12','车辆备注12','2023-03-27 13:28:19','2023-03-27 13:28:19'),(13,3,'车辆名称13','1679894899684','upload/cheliang13.jpg',1,'车牌号13','车辆颜色13','品牌13','车座13','车辆备注13','2023-03-27 13:28:19','2023-03-27 13:28:19'),(14,3,'车辆名称14','1679894899659','upload/cheliang14.jpg',3,'车牌号14','车辆颜色14','品牌14','车座14','车辆备注14','2023-03-27 13:28:19','2023-03-27 13:28:19'),(15,4,'车辆名称111','1679897040287','/upload/1679897049489.jpg',3,'豫A888888','白色','比亚迪','5座','<p>和京津冀军</p>','2023-03-27 14:04:32','2023-03-27 14:04:32');

/*Table structure for table `cheliang_koufen` */

DROP TABLE IF EXISTS `cheliang_koufen`;

CREATE TABLE `cheliang_koufen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_koufen_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆扣分编号',
  `cheliang_koufen_types` int(11) DEFAULT NULL COMMENT '扣分类型 Search111',
  `cheliang_koufen_content` longtext COMMENT '扣分缘由',
  `koufen_time` timestamp NULL DEFAULT NULL COMMENT '扣分时间',
  `cheliang_koufen_number` int(11) DEFAULT NULL COMMENT '分值',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='车辆扣分';

/*Data for the table `cheliang_koufen` */

insert  into `cheliang_koufen`(`id`,`cheliang_id`,`yonghu_id`,`cheliang_koufen_uuid_number`,`cheliang_koufen_types`,`cheliang_koufen_content`,`koufen_time`,`cheliang_koufen_number`,`insert_time`,`create_time`) values (1,1,1,'1679894899670',4,'扣分缘由1','2023-03-27 13:28:19',2,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(2,2,1,'1679894899670',1,'扣分缘由2','2023-03-27 13:28:19',2,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(3,3,1,'1679894899650',3,'扣分缘由3','2023-03-27 13:28:19',2,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(4,4,1,'1679894899638',1,'扣分缘由4','2023-03-27 13:28:19',1,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(5,5,1,'1679894899641',1,'扣分缘由5','2023-03-27 13:28:19',1,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(6,6,1,'1679894899646',4,'扣分缘由6','2023-03-27 13:28:19',1,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(7,7,1,'1679894899719',4,'扣分缘由7','2023-03-27 13:28:19',1,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(8,8,2,'1679894899703',2,'扣分缘由8','2023-03-27 13:28:19',2,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(9,9,2,'1679894899689',2,'扣分缘由9','2023-03-27 13:28:19',3,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(10,10,2,'1679894899701',3,'扣分缘由10','2023-03-27 13:28:19',3,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(11,11,3,'1679894899629',3,'扣分缘由11','2023-03-27 13:28:19',3,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(12,12,3,'1679894899687',2,'扣分缘由12','2023-03-27 13:28:19',3,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(13,13,3,'1679894899686',1,'扣分缘由13','2023-03-27 13:28:19',4,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(14,14,3,'1679894899641',2,'扣分缘由14','2023-03-27 13:28:19',4,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(15,15,4,'1679897077027',3,'<p>和京津冀军</p>','2023-03-27 14:04:44',3,'2023-03-27 14:04:47','2023-03-27 14:04:47');

/*Table structure for table `cheliang_weizhang` */

DROP TABLE IF EXISTS `cheliang_weizhang`;

CREATE TABLE `cheliang_weizhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_weizhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆违章编号',
  `cheliang_weizhang_name` varchar(200) DEFAULT NULL COMMENT '违章标题  Search111 ',
  `cheliang_weizhang_photo` varchar(200) DEFAULT NULL COMMENT '违章照片',
  `cheliang_weizhang_video` varchar(200) DEFAULT NULL COMMENT '违章视频',
  `cheliang_weizhang_types` int(11) DEFAULT NULL COMMENT '车辆违章类型 Search111',
  `cheliang_weizhang_content` longtext COMMENT '违章缘由',
  `weizhang_time` timestamp NULL DEFAULT NULL COMMENT '违章时间',
  `cheliang_weizhang_zhuangtai_types` int(11) DEFAULT NULL COMMENT '违章状态 Search111',
  `cheliang_weizhang_shensu_content` longtext COMMENT '申诉理由',
  `cheliang_weizhang_yesno_types` int(11) DEFAULT NULL COMMENT '申诉状态 Search111',
  `cheliang_weizhang_yesno_text` longtext COMMENT '申诉回复',
  `cheliang_weizhang_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='车辆违章';

/*Data for the table `cheliang_weizhang` */

insert  into `cheliang_weizhang`(`id`,`cheliang_id`,`yonghu_id`,`cheliang_weizhang_uuid_number`,`cheliang_weizhang_name`,`cheliang_weizhang_photo`,`cheliang_weizhang_video`,`cheliang_weizhang_types`,`cheliang_weizhang_content`,`weizhang_time`,`cheliang_weizhang_zhuangtai_types`,`cheliang_weizhang_shensu_content`,`cheliang_weizhang_yesno_types`,`cheliang_weizhang_yesno_text`,`cheliang_weizhang_shenhe_time`,`insert_time`,`create_time`) values (1,1,1,'1679894899712','违章标题1','upload/cheliang_weizhang1.jpg','upload/video.mp4',1,'违章缘由1','2023-03-27 13:28:19',2,'申诉理由1',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(2,2,1,'1679894899641','违章标题2','upload/cheliang_weizhang2.jpg','upload/video.mp4',3,'违章缘由2','2023-03-27 13:28:19',5,'申诉理由2',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(3,3,1,'1679894899723','违章标题3','upload/cheliang_weizhang3.jpg','upload/video.mp4',3,'违章缘由3','2023-03-27 13:28:19',2,'申诉理由3',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(4,4,1,'1679894899693','违章标题4','upload/cheliang_weizhang4.jpg','upload/video.mp4',4,'违章缘由4','2023-03-27 13:28:19',2,'申诉理由4',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(5,5,1,'1679894899626','违章标题5','upload/cheliang_weizhang5.jpg','upload/video.mp4',3,'违章缘由5','2023-03-27 13:28:19',1,'申诉理由5',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(6,6,1,'1679894899682','违章标题6','upload/cheliang_weizhang6.jpg','upload/video.mp4',1,'违章缘由6','2023-03-27 13:28:19',2,'申诉理由6',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(7,7,1,'1679894899685','违章标题7','upload/cheliang_weizhang7.jpg','upload/video.mp4',2,'违章缘由7','2023-03-27 13:28:19',6,'申诉理由7',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(8,8,2,'1679894899704','违章标题8','upload/cheliang_weizhang8.jpg','upload/video.mp4',4,'违章缘由8','2023-03-27 13:28:19',1,'申诉理由8',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(9,9,2,'1679894899713','违章标题9','upload/cheliang_weizhang9.jpg','upload/video.mp4',1,'违章缘由9','2023-03-27 13:28:19',6,'申诉理由9',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(10,10,2,'1679894899639','违章标题10','upload/cheliang_weizhang10.jpg','upload/video.mp4',2,'违章缘由10','2023-03-27 13:28:19',2,'申诉理由10',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(11,11,3,'1679894899683','违章标题11','upload/cheliang_weizhang11.jpg','upload/video.mp4',4,'违章缘由11','2023-03-27 13:28:19',1,'申诉理由11',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(12,12,3,'1679894899655','违章标题12','upload/cheliang_weizhang12.jpg','upload/video.mp4',3,'违章缘由12','2023-03-27 13:28:19',2,'申诉理由12',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(13,13,3,'1679894899704','违章标题13','upload/cheliang_weizhang13.jpg','upload/video.mp4',1,'违章缘由13','2023-03-27 13:28:19',6,'申诉理由13',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(14,14,3,'1679894899703','违章标题14','upload/cheliang_weizhang14.jpg','upload/video.mp4',2,'违章缘由14','2023-03-27 13:28:19',5,'申诉理由14',1,NULL,NULL,'2023-03-27 13:28:19','2023-03-27 13:28:19'),(15,1,1,'1679895533061','违章1111','/upload/1679895545499.jpg','/upload/1679895549104.mp4',3,'<p>个单双杠事故十多个大师傅待审核</p>','2023-03-27 13:39:16',2,'',NULL,NULL,NULL,'2023-03-27 13:39:17','2023-03-27 13:39:17'),(16,1,1,'1679895533061','违章1111','/upload/1679895545499.jpg','/upload/1679895549104.mp4',3,'<p>个单双杠事故十多个大师傅待审核</p>','2023-03-27 13:39:16',6,'刚刚好很好很好',3,'很好健健康康','2023-03-27 13:51:44','2023-03-27 13:39:17','2023-03-27 13:39:17'),(17,1,1,'1679895533061','违章1111','/upload/1679895545499.jpg','/upload/1679895549104.mp4',3,'<p>个单双杠事故十多个大师傅待审核</p>','2023-03-27 13:39:16',1,NULL,NULL,NULL,NULL,'2023-03-27 13:39:17','2023-03-27 13:39:17'),(18,1,1,'1679895533061','违章1111','/upload/1679895545499.jpg','/upload/1679895549104.mp4',3,'<p>个单双杠事故十多个大师傅待审核</p>','2023-03-27 13:39:16',6,NULL,NULL,NULL,NULL,'2023-03-27 13:39:17','2023-03-27 13:39:17'),(19,1,1,'1679895533061','违章1111','/upload/1679895545499.jpg','/upload/1679895549104.mp4',3,'<p>个单双杠事故十多个大师傅待审核</p>','2023-03-27 13:39:16',5,'句斤斤计较军',2,'哼哼唧唧军军','2023-03-27 14:06:06','2023-03-27 13:39:17','2023-03-27 13:39:17'),(20,15,4,'1679897135458','违章1111','/upload/1679897143826.jpg','/upload/1679897146910.mp4',2,'<p>和京津冀军</p>','2023-03-21 00:00:00',1,'',NULL,'',NULL,'2023-03-27 14:05:54','2023-03-27 14:05:54');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-27 13:26:51'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-27 13:26:51'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-27 13:26:51'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-27 13:26:51'),(5,'zixun_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-03-27 13:26:51'),(6,'zixun_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-03-27 13:26:51'),(7,'cheliang_types','车辆类型',1,'大型车',NULL,NULL,'2023-03-27 13:26:51'),(8,'cheliang_types','车辆类型',2,'中型车',NULL,NULL,'2023-03-27 13:26:51'),(9,'cheliang_types','车辆类型',3,'小型车',NULL,NULL,'2023-03-27 13:26:51'),(10,'cheliang_types','车辆类型',4,'面包车',NULL,NULL,'2023-03-27 13:26:51'),(11,'cheliang_weizhang_types','车辆违章类型',1,'违章类型1',NULL,NULL,'2023-03-27 13:26:51'),(12,'cheliang_weizhang_types','车辆违章类型',2,'违章类型2',NULL,NULL,'2023-03-27 13:26:51'),(13,'cheliang_weizhang_types','车辆违章类型',3,'违章类型3',NULL,NULL,'2023-03-27 13:26:51'),(14,'cheliang_weizhang_types','车辆违章类型',4,'违章类型4',NULL,NULL,'2023-03-27 13:26:51'),(15,'cheliang_weizhang_zhuangtai_types','违章状态',1,'未处理',NULL,NULL,'2023-03-27 13:26:51'),(16,'cheliang_weizhang_zhuangtai_types','违章状态',2,'已确认',NULL,NULL,'2023-03-27 13:26:51'),(17,'cheliang_weizhang_zhuangtai_types','违章状态',3,'已申诉',NULL,NULL,'2023-03-27 13:26:51'),(18,'cheliang_weizhang_zhuangtai_types','违章状态',4,'申诉被拒',NULL,NULL,'2023-03-27 13:26:51'),(19,'cheliang_weizhang_zhuangtai_types','违章状态',5,'申诉同意',NULL,NULL,'2023-03-27 13:26:51'),(20,'cheliang_weizhang_zhuangtai_types','违章状态',6,'已扣分',NULL,NULL,'2023-03-27 13:26:51'),(21,'cheliang_weizhang_yesno_types','申诉回复',1,'待审核',NULL,NULL,'2023-03-27 13:26:51'),(22,'cheliang_weizhang_yesno_types','申诉回复',2,'同意申诉',NULL,NULL,'2023-03-27 13:26:51'),(23,'cheliang_weizhang_yesno_types','申诉回复',3,'申诉拒绝',NULL,NULL,'2023-03-27 13:26:51'),(24,'cheliang_koufen_types','扣分类型',1,'扣分类型1',NULL,NULL,'2023-03-27 13:26:51'),(25,'cheliang_koufen_types','扣分类型',2,'扣分类型2',NULL,NULL,'2023-03-27 13:26:51'),(26,'cheliang_koufen_types','扣分类型',3,'扣分类型3',NULL,NULL,'2023-03-27 13:26:51'),(27,'cheliang_koufen_types','扣分类型',4,'扣分类型4',NULL,NULL,'2023-03-27 13:26:51'),(28,'zixun_types','资讯类型',3,'资讯类型3',NULL,'','2023-03-27 14:03:56');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-27 13:28:19','公告详情1','2023-03-27 13:28:19'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-27 13:28:19','公告详情2','2023-03-27 13:28:19'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-27 13:28:19','公告详情3','2023-03-27 13:28:19'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-27 13:28:19','公告详情4','2023-03-27 13:28:19'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-27 13:28:19','公告详情5','2023-03-27 13:28:19'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-27 13:28:19','公告详情6','2023-03-27 13:28:19'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-27 13:28:19','公告详情7','2023-03-27 13:28:19'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-27 13:28:19','公告详情8','2023-03-27 13:28:19'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-27 13:28:19','公告详情9','2023-03-27 13:28:19'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-27 13:28:19','公告详情10','2023-03-27 13:28:19'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-27 13:28:19','公告详情11','2023-03-27 13:28:19'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-27 13:28:19','公告详情12','2023-03-27 13:28:19'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-27 13:28:19','公告详情13','2023-03-27 13:28:19'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-27 13:28:19','公告详情14','2023-03-27 13:28:19');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-27 13:28:19','回复信息1','2023-03-27 13:28:19','2023-03-27 13:28:19'),(2,2,'留言标题2','留言内容2','2023-03-27 13:28:19','回复信息2','2023-03-27 13:28:19','2023-03-27 13:28:19'),(3,2,'留言标题3','留言内容3','2023-03-27 13:28:19','回复信息3','2023-03-27 13:28:19','2023-03-27 13:28:19'),(4,3,'留言标题4','留言内容4','2023-03-27 13:28:19','回复信息4','2023-03-27 13:28:19','2023-03-27 13:28:19'),(5,1,'留言标题5','留言内容5','2023-03-27 13:28:19','回复信息5','2023-03-27 13:28:19','2023-03-27 13:28:19'),(6,2,'留言标题6','留言内容6','2023-03-27 13:28:19','回复信息6','2023-03-27 13:28:19','2023-03-27 13:28:19'),(7,2,'留言标题7','留言内容7','2023-03-27 13:28:19','回复信息7','2023-03-27 13:28:19','2023-03-27 13:28:19'),(8,1,'留言标题8','留言内容8','2023-03-27 13:28:19','回复信息8','2023-03-27 13:28:19','2023-03-27 13:28:19'),(9,1,'留言标题9','留言内容9','2023-03-27 13:28:19','回复信息9','2023-03-27 13:28:19','2023-03-27 13:28:19'),(10,1,'留言标题10','留言内容10','2023-03-27 13:28:19','回复信息10','2023-03-27 13:28:19','2023-03-27 13:28:19'),(11,1,'留言标题11','留言内容11','2023-03-27 13:28:19','回复信息11','2023-03-27 13:28:19','2023-03-27 13:28:19'),(12,2,'留言标题12','留言内容12','2023-03-27 13:28:19','回复信息12','2023-03-27 13:28:19','2023-03-27 13:28:19'),(13,1,'留言标题13','留言内容13','2023-03-27 13:28:19','回复信息13','2023-03-27 13:28:19','2023-03-27 13:28:19'),(14,2,'留言标题14','留言内容14','2023-03-27 13:28:19','回复信息14','2023-03-27 13:28:19','2023-03-27 13:28:19'),(15,4,'标题111','广东省广东省和','2023-03-27 14:00:24','呵呵叫姐姐','2023-03-27 14:06:34','2023-03-27 14:00:24');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ah9hb07nwgtp4ysqhn4ja93xc69e19i8','2023-03-27 13:31:20','2023-03-27 15:09:02'),(2,1,'a1','yonghu','用户','7o9seuv2qajm9gqz6ytge7uwqg6xvlv7','2023-03-27 13:40:32','2023-03-27 15:03:02'),(3,4,'a5','yonghu','用户','nmn7iqj5hxlj6wibz6jqpnm8irbxc5o3','2023-03-27 14:00:11','2023-03-27 15:00:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-27 13:26:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','471.00','2023-03-27 13:28:19'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','789.71','2023-03-27 13:28:19'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','73.91','2023-03-27 13:28:19'),(4,'a5','123456','张5','17788889999','444555666699999999','upload/1679896892814.jpg',2,'5@qq.com','0.00','2023-03-27 14:00:06');

/*Table structure for table `zixun` */

DROP TABLE IF EXISTS `zixun`;

CREATE TABLE `zixun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zixun_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `zixun_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `zixun_types` int(11) NOT NULL COMMENT '资讯类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `zixun_content` longtext COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资讯';

/*Data for the table `zixun` */

insert  into `zixun`(`id`,`zixun_name`,`zixun_photo`,`zixun_types`,`insert_time`,`zixun_content`,`create_time`) values (1,'资讯名称1','upload/zixun1.jpg',1,'2023-03-27 13:28:19','资讯详情1','2023-03-27 13:28:19'),(2,'资讯名称2','upload/zixun2.jpg',2,'2023-03-27 13:28:19','资讯详情2','2023-03-27 13:28:19'),(3,'资讯名称3','upload/zixun3.jpg',2,'2023-03-27 13:28:19','资讯详情3','2023-03-27 13:28:19'),(4,'资讯名称4','upload/zixun4.jpg',2,'2023-03-27 13:28:19','资讯详情4','2023-03-27 13:28:19'),(5,'资讯名称5','upload/zixun5.jpg',1,'2023-03-27 13:28:19','资讯详情5','2023-03-27 13:28:19'),(6,'资讯名称6','upload/zixun6.jpg',2,'2023-03-27 13:28:19','资讯详情6','2023-03-27 13:28:19'),(7,'资讯名称7','upload/zixun7.jpg',2,'2023-03-27 13:28:19','资讯详情7','2023-03-27 13:28:19'),(8,'资讯名称8','upload/zixun8.jpg',1,'2023-03-27 13:28:19','资讯详情8','2023-03-27 13:28:19'),(9,'资讯名称9','upload/zixun9.jpg',2,'2023-03-27 13:28:19','资讯详情9','2023-03-27 13:28:19'),(10,'资讯名称10','upload/zixun10.jpg',2,'2023-03-27 13:28:19','资讯详情10','2023-03-27 13:28:19'),(11,'资讯名称11','upload/zixun11.jpg',1,'2023-03-27 13:28:19','资讯详情11','2023-03-27 13:28:19'),(12,'资讯名称12','upload/zixun12.jpg',1,'2023-03-27 13:28:19','资讯详情12','2023-03-27 13:28:19'),(13,'资讯名称13','upload/zixun13.jpg',1,'2023-03-27 13:28:19','资讯详情13','2023-03-27 13:28:19'),(14,'资讯名称14','upload/zixun14.jpg',1,'2023-03-27 13:28:19','<p>资讯详情14哼哼唧唧</p>','2023-03-27 13:28:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
