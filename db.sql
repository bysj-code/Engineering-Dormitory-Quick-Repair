/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - guigongchengqinshikuaiixiu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guigongchengqinshikuaiixiu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guigongchengqinshikuaiixiu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'quyu_types','区域',1,'区域1',NULL,NULL,'2023-03-22 10:58:43'),(2,'quyu_types','区域',2,'区域2',NULL,NULL,'2023-03-22 10:58:43'),(3,'quyu_types','区域',3,'区域3',NULL,NULL,'2023-03-22 10:58:43'),(4,'guzhangshangbao_types','故障类型',1,'故障类型1',NULL,NULL,'2023-03-22 10:58:43'),(5,'guzhangshangbao_types','故障类型',2,'故障类型2',NULL,NULL,'2023-03-22 10:58:43'),(6,'guzhangshangbao_types','故障类型',3,'故障类型3',NULL,NULL,'2023-03-22 10:58:43'),(7,'guzhangshangbao_yesno_types','处理结果',1,'待处理',NULL,NULL,'2023-03-22 10:58:43'),(8,'guzhangshangbao_yesno_types','处理结果',2,'已通过',NULL,NULL,'2023-03-22 10:58:43'),(9,'guzhangshangbao_yesno_types','处理结果',3,'已拒绝',NULL,NULL,'2023-03-22 10:58:43'),(10,'guzhangshangbao_yesno_types','处理结果',4,'待维修',NULL,NULL,'2023-03-22 10:58:43'),(11,'guzhangshangbao_yesno_types','处理结果',5,'已维修',NULL,NULL,'2023-03-22 10:58:43'),(13,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-22 10:58:43'),(14,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-22 10:58:43'),(15,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-22 10:58:43'),(16,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-22 10:58:44'),(17,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-22 10:58:44'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-22 10:58:44'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-22 10:58:44');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`weixiuyuan_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',480,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(2,'帖子标题2',NULL,2,NULL,'发布内容2',212,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(3,'帖子标题3',NULL,1,NULL,'发布内容3',32,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',273,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(5,'帖子标题5',NULL,1,NULL,'发布内容5',120,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(6,'帖子标题6',NULL,2,NULL,'发布内容6',340,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',120,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(8,'帖子标题8',NULL,1,NULL,'发布内容8',471,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',407,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(10,'帖子标题10',NULL,2,NULL,'发布内容10',487,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',271,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(12,'帖子标题12',NULL,2,NULL,'发布内容12',214,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(13,'帖子标题13',NULL,2,NULL,'发布内容13',385,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',5,1,'2023-03-22 10:59:01','2023-03-22 10:59:01','2023-03-22 10:59:01'),(15,NULL,1,NULL,NULL,'12312312',14,2,'2023-03-22 13:36:26',NULL,'2023-03-22 13:36:26'),(16,NULL,NULL,NULL,1,'123123',14,2,'2023-03-22 13:36:55',NULL,'2023-03-22 13:36:55'),(17,NULL,NULL,1,NULL,'12312312',14,2,'2023-03-22 13:37:43',NULL,'2023-03-22 13:37:43');

/*Table structure for table `guzhangshangbao` */

DROP TABLE IF EXISTS `guzhangshangbao`;

CREATE TABLE `guzhangshangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `guzhangshangbao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `quyu_types` int(11) DEFAULT NULL COMMENT '区域',
  `guzhangshangbao_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `guzhangshangbao_guzhang` varchar(200) DEFAULT NULL COMMENT '故障信息',
  `guzhangshangbao_types` int(11) DEFAULT NULL COMMENT '故障类型',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `guzhangshangbao_yesno_types` int(11) DEFAULT NULL COMMENT '处理结果',
  `guzhangshangbao_yesno_text` longtext COMMENT '处理回复',
  `guzhangshangbao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='在线报修';

/*Data for the table `guzhangshangbao` */

insert  into `guzhangshangbao`(`id`,`yonghu_id`,`guzhangshangbao_uuid_number`,`quyu_types`,`guzhangshangbao_address`,`guzhangshangbao_guzhang`,`guzhangshangbao_types`,`weixiuyuan_id`,`guzhangshangbao_yesno_types`,`guzhangshangbao_yesno_text`,`guzhangshangbao_delete`,`create_time`) values (1,1,'1679453941105',3,'详细地址1','故障信息1',3,2,1,NULL,1,'2023-03-22 10:59:01'),(2,3,'1679453941135',3,'详细地址2','故障信息2',2,3,1,NULL,1,'2023-03-22 10:59:01'),(3,1,'1679453941137',1,'详细地址3','故障信息3',1,1,1,NULL,1,'2023-03-22 10:59:01'),(4,3,'1679453941076',2,'详细地址4','故障信息4',3,2,1,NULL,1,'2023-03-22 10:59:01'),(5,3,'1679453941114',1,'详细地址5','故障信息5',3,2,1,NULL,1,'2023-03-22 10:59:01'),(6,2,'1679453941151',1,'详细地址6','故障信息6',2,1,1,NULL,1,'2023-03-22 10:59:01'),(7,1,'1679453941129',3,'详细地址7','故障信息7',2,3,1,NULL,1,'2023-03-22 10:59:01'),(8,2,'1679453941137',3,'详细地址8','故障信息8',2,3,1,NULL,1,'2023-03-22 10:59:01'),(9,1,'1679453941094',1,'详细地址9','故障信息9',2,2,1,NULL,1,'2023-03-22 10:59:01'),(10,2,'1679453941134',1,'详细地址10','故障信息10',3,1,1,NULL,1,'2023-03-22 10:59:01'),(11,1,'1679453941073',3,'详细地址11','故障信息11',2,2,1,NULL,1,'2023-03-22 10:59:01'),(12,3,'1679453941159',1,'详细地址12','故障信息12',3,NULL,2,'123',1,'2023-03-22 10:59:01'),(13,3,'1679453941115',1,'详细地址13','故障信息13',2,1,5,'1111',1,'2023-03-22 10:59:01'),(14,1,'1679453941146',3,'详细地址14','故障信息14',1,1,5,'12312',1,'2023-03-22 10:59:01'),(16,1,'1679463475269',1,'123','123',2,NULL,1,'',1,'2023-03-22 13:38:02');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-22 10:59:01','公告详情1','2023-03-22 10:59:01'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-22 10:59:01','公告详情2','2023-03-22 10:59:01'),(3,'公告标题3',3,'upload/news3.jpg','2023-03-22 10:59:01','公告详情3','2023-03-22 10:59:01'),(4,'公告标题4',1,'upload/news4.jpg','2023-03-22 10:59:01','公告详情4','2023-03-22 10:59:01'),(5,'公告标题5',2,'upload/news5.jpg','2023-03-22 10:59:01','公告详情5','2023-03-22 10:59:01'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-22 10:59:01','公告详情6','2023-03-22 10:59:01'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-22 10:59:01','公告详情7','2023-03-22 10:59:01'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-22 10:59:01','公告详情8','2023-03-22 10:59:01'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-22 10:59:01','公告详情9','2023-03-22 10:59:01'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-22 10:59:01','公告详情10','2023-03-22 10:59:01'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-22 10:59:01','公告详情11','2023-03-22 10:59:01'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-22 10:59:01','公告详情12','2023-03-22 10:59:01'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-22 10:59:01','公告详情13','2023-03-22 10:59:01'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-22 10:59:01','公告详情14','2023-03-22 10:59:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '医院id',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','weixiuyuan','维修人员','vfg3xoeaqbi4972t5529ueraxv2da2iz','2023-03-22 11:20:17','2023-03-22 14:36:09'),(2,1,'admin','users','管理员','0ksqbv95chadytkp3dwy09dq9vxh13kp','2023-03-22 11:29:16','2023-03-22 14:36:38'),(3,2,'a2','weixiuyuan','维修人员','9k0c075m5hto5n40kg6pjwnr61tw5d1o','2023-03-22 11:39:42','2023-03-22 12:39:42'),(4,1,'a1','yonghu','学生','ejtemonky4sr4wyqajqeb0q4dg64nthr','2023-03-22 11:54:10','2023-03-22 14:37:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-22 10:58:43');

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weixiuyuan_name` varchar(200) DEFAULT NULL COMMENT '维修人员姓名 Search111 ',
  `weixiuyuan_phone` varchar(200) DEFAULT NULL COMMENT '维修人员手机号',
  `weixiuyuan_id_number` varchar(200) DEFAULT NULL COMMENT '维修人员身份证号',
  `weixiuyuan_photo` varchar(200) DEFAULT NULL COMMENT '维修人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `weixiuyuan_email` varchar(200) DEFAULT NULL COMMENT '维修人员邮箱',
  `weixiuyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修人员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`username`,`password`,`weixiuyuan_name`,`weixiuyuan_phone`,`weixiuyuan_id_number`,`weixiuyuan_photo`,`sex_types`,`weixiuyuan_email`,`weixiuyuan_delete`,`insert_time`,`create_time`) values (1,'a1','123456','维修人员姓名1','17703786901','410224199010102001','upload/weixiuyuan1.jpg',1,'1@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01'),(2,'a2','123456','维修人员姓名2','17703786902','410224199010102002','upload/weixiuyuan2.jpg',1,'2@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01'),(3,'a3','123456','维修人员姓名3','17703786903','410224199010102003','upload/weixiuyuan3.jpg',2,'3@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01');

/*Table structure for table `weixiuyuan_commentback` */

DROP TABLE IF EXISTS `weixiuyuan_commentback`;

CREATE TABLE `weixiuyuan_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `weixiuyuan_commentback_pingfen_number` int(11) DEFAULT NULL COMMENT '评分',
  `weixiuyuan_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='维修人员评价';

/*Data for the table `weixiuyuan_commentback` */

insert  into `weixiuyuan_commentback`(`id`,`weixiuyuan_id`,`yonghu_id`,`weixiuyuan_commentback_pingfen_number`,`weixiuyuan_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,2,3,'评价内容1','2023-03-22 10:59:01','回复信息1','2023-03-22 10:59:01','2023-03-22 10:59:01'),(2,2,1,4,'评价内容2','2023-03-22 10:59:01','回复信息2','2023-03-22 10:59:01','2023-03-22 10:59:01'),(3,1,3,3,'评价内容3','2023-03-22 10:59:01','回复信息3','2023-03-22 10:59:01','2023-03-22 10:59:01'),(4,2,2,1,'评价内容4','2023-03-22 10:59:01','回复信息4','2023-03-22 10:59:01','2023-03-22 10:59:01'),(5,1,1,3,'评价内容5','2023-03-22 10:59:01','回复信息5','2023-03-22 10:59:01','2023-03-22 10:59:01'),(6,1,1,5,'评价内容6','2023-03-22 10:59:01','回复信息6','2023-03-22 10:59:01','2023-03-22 10:59:01'),(7,3,2,1,'评价内容7','2023-03-22 10:59:01','回复信息7','2023-03-22 10:59:01','2023-03-22 10:59:01'),(8,3,1,2,'评价内容8','2023-03-22 10:59:01','回复信息8','2023-03-22 10:59:01','2023-03-22 10:59:01'),(9,1,2,4,'评价内容9','2023-03-22 10:59:01','回复信息9','2023-03-22 10:59:01','2023-03-22 10:59:01'),(10,1,2,3,'评价内容10','2023-03-22 10:59:01','回复信息10','2023-03-22 10:59:01','2023-03-22 10:59:01'),(11,2,2,1,'评价内容11','2023-03-22 10:59:01','回复信息11','2023-03-22 10:59:01','2023-03-22 10:59:01'),(12,3,3,0,'评价内容12','2023-03-22 10:59:01','回复信息12','2023-03-22 10:59:01','2023-03-22 10:59:01'),(13,2,2,1,'评价内容13','2023-03-22 10:59:01','回复信息13','2023-03-22 10:59:01','2023-03-22 10:59:01');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-03-22 10:59:01','2023-03-22 10:59:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
