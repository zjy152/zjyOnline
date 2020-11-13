/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : zjy_online

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-11-13 09:01:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 轮播图', '6', 'add_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 轮播图', '6', 'change_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 轮播图', '6', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 轮播图', '6', 'view_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 邮箱验证码', '7', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 邮箱验证码', '7', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 邮箱验证码', '7', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 邮箱验证码', '7', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 用户信息', '8', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 用户信息', '8', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 用户信息', '8', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 用户信息', '8', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('33', 'Can add Bookmark', '9', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('34', 'Can change Bookmark', '9', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete Bookmark', '9', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('36', 'Can view Bookmark', '9', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('37', 'Can add User Setting', '10', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('38', 'Can change User Setting', '10', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete User Setting', '10', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('40', 'Can view User Setting', '10', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('41', 'Can add User Widget', '11', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('42', 'Can change User Widget', '11', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete User Widget', '11', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('44', 'Can view User Widget', '11', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('45', 'Can add log entry', '12', 'add_log');
INSERT INTO `auth_permission` VALUES ('46', 'Can change log entry', '12', 'change_log');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete log entry', '12', 'delete_log');
INSERT INTO `auth_permission` VALUES ('48', 'Can view log entry', '12', 'view_log');
INSERT INTO `auth_permission` VALUES ('49', 'Can add revision', '13', 'add_revision');
INSERT INTO `auth_permission` VALUES ('50', 'Can change revision', '13', 'change_revision');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete revision', '13', 'delete_revision');
INSERT INTO `auth_permission` VALUES ('52', 'Can view revision', '13', 'view_revision');
INSERT INTO `auth_permission` VALUES ('53', 'Can add version', '14', 'add_version');
INSERT INTO `auth_permission` VALUES ('54', 'Can change version', '14', 'change_version');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete version', '14', 'delete_version');
INSERT INTO `auth_permission` VALUES ('56', 'Can view version', '14', 'view_version');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 章节', '15', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 章节', '15', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 章节', '15', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 章节', '15', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 课程', '16', 'add_course');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 课程', '16', 'change_course');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 课程', '16', 'delete_course');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 课程', '16', 'view_course');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 视频', '17', 'add_video');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 视频', '17', 'change_video');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 视频', '17', 'delete_video');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 视频', '17', 'view_video');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 课程资源', '18', 'add_courseresourse');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 课程资源', '18', 'change_courseresourse');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 课程资源', '18', 'delete_courseresourse');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 课程资源', '18', 'view_courseresourse');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 城市', '19', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 城市', '19', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 城市', '19', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 城市', '19', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 课程机构', '20', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 课程机构', '20', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 课程机构', '20', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 课程机构', '20', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 教师', '21', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 教师', '21', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 教师', '21', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 教师', '21', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 用户咨询', '22', 'add_useask');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 用户咨询', '22', 'change_useask');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 用户咨询', '22', 'delete_useask');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 用户咨询', '22', 'view_useask');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 用户消息', '23', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 用户消息', '23', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 用户消息', '23', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 用户消息', '23', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 用户收藏', '24', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 用户收藏', '24', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 用户收藏', '24', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 用户收藏', '24', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 课程评论', '25', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 课程评论', '25', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 课程评论', '25', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 课程评论', '25', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 用户课程', '26', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 用户课程', '26', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 用户课程', '26', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 用户课程', '26', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('105', 'Can view 用户咨询', '22', 'view_userask');
INSERT INTO `auth_permission` VALUES ('106', 'Can add 用户咨询', '22', 'add_userask');
INSERT INTO `auth_permission` VALUES ('107', 'Can change 用户咨询', '22', 'change_userask');
INSERT INTO `auth_permission` VALUES ('108', 'Can delete 用户咨询', '22', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('109', 'Can add captcha store', '27', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('110', 'Can change captcha store', '27', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete captcha store', '27', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('112', 'Can view captcha store', '27', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('113', 'ZBCM', 'zbcm', '1d6938a6ffeed69cd4e095efc413298d431d5185', '2020-11-08 16:37:40.581386');

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_course_org_id_6a10e205_fk_organizat` (`course_org_id`),
  KEY `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES ('1', 'python', 'Python是一种跨平台的计算机程序设计语言。 是一个高层次的结合了解释性、编译性、互动性和面向对象的脚本语言。最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越多被用于独立的、大型项目的开发。', 'Python的设计目标之一是让代码具备高度的可阅读性。它设计时尽量使用其它语言经常使用的标点符号和英文单字，让代码看起来整洁美观。它不像其他的静态语言如C、Pascal那样需要重复书写声明语句，也不像它们的语法那样经常有特殊情况和意外。\r\nPython开发者有意让违反了缩进规则的程序不能通过编译，以此来强制程序员养成良好的编程习惯。并且Python语言利用缩进表示语句块的开始和退出（Off-side规则），而非使用花括号或者某种关键字。增加缩进表示语句块的开始，而减少缩进则表示语句块的退出。缩进成为了语法的一部分。', 'gj', '1000', '906', '980', 'courses/2020/11/python_48o5ztb.jpg', '135', '2020-11-09 08:55:00.000000', '1', 'python', '', null, '', '');
INSERT INTO `course_course` VALUES ('2', 'Java', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征', 'Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程  。\r\nJava具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点 。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等', 'zj', '900', '853', '90', 'courses/2020/11/java.jpg', '51', '2020-11-09 08:59:00.000000', '8', 'java', '', null, '', '');
INSERT INTO `course_course` VALUES ('3', 'c语言', 'C语言是一门面向过程的、抽象化的通用程序设计语言，广泛应用于底层开发', 'C语言能以简易的方式编译、处理低级存储器。C语言是仅产生少量的机器语言以及不需要任何运行环境支持便能运行的高效率程序设计语言。尽管C语言提供了许多低级处理的功能，但仍然保持着跨平台的特性，以一个标准规格写出的C语言程序可在包括类似嵌入式处理器以及超级计算机等作业平台的许多计算机平台上进行编译。', 'cj', '800', '500', '60', 'courses/2020/11/C_RJteTSY.jpg', '9', '2020-11-09 09:01:00.000000', '7', 'c', '', null, '', '');
INSERT INTO `course_course` VALUES ('4', 'C++', 'C++不仅拥有计算机高效运行的实用性特征，同时还致力于提高大规模程序的编程质量与程序设计语言的问题描述能力。', 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。C++擅长面向对象程序设计的同时，还可以进行基于过程的程序设计，因而C++就适应的问题规模而论，大小由之。', 'gj', '850', '504', '70', 'courses/2020/11/C_G1MNhby.jpg', '50', '2020-11-09 09:02:00.000000', '1', 'c++', '', null, '', '');

-- ----------------------------
-- Table structure for course_courseresourse
-- ----------------------------
DROP TABLE IF EXISTS `course_courseresourse`;
CREATE TABLE `course_courseresourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_courseresourse_course_id_e2da8922_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_courseresourse_course_id_e2da8922_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_courseresourse
-- ----------------------------
INSERT INTO `course_courseresourse` VALUES ('1', '课件资料', 'course/2020/11/41-通过style对象获取和设置行内样式.md', '2020-11-12 10:08:00.000000', '1');
INSERT INTO `course_courseresourse` VALUES ('2', '后端页面', 'course/2020/11/index_Tq97XME.html', '2020-11-12 10:10:00.000000', '1');

-- ----------------------------
-- Table structure for course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES ('1', '第一章 基础', '2020-11-11 20:53:00.000000', '1');
INSERT INTO `course_lesson` VALUES ('2', '第二章 数据类型', '2020-11-11 20:53:00.000000', '1');
INSERT INTO `course_lesson` VALUES ('3', '第三章 函数', '2020-11-11 20:53:00.000000', '1');
INSERT INTO `course_lesson` VALUES ('4', '类的介绍', '2020-11-11 20:54:00.000000', '1');
INSERT INTO `course_lesson` VALUES ('5', '第五章 模块', '2020-11-12 09:36:00.000000', '1');
INSERT INTO `course_lesson` VALUES ('6', '第六章 socket网络编程', '2020-11-12 09:36:00.000000', '1');

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_video_lesson_id_0731e8a9_fk_course_lesson_id` (`lesson_id`),
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES ('1', '1.1 hello world', '2020-11-12 09:37:00.000000', '1', 'https://www.liaoxuefeng.com/wiki/1016959663602400/1016959735620448', '0');
INSERT INTO `course_video` VALUES ('2', '1.2 if else', '2020-11-12 09:38:00.000000', '1', 'https://www.liaoxuefeng.com/wiki/1016959663602400/1016959735620448', '0');
INSERT INTO `course_video` VALUES ('3', '1.3 while', '2020-11-12 09:38:00.000000', '1', 'https://www.liaoxuefeng.com/wiki/1016959663602400/1016959735620448', '0');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('27', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('16', 'course', 'course');
INSERT INTO `django_content_type` VALUES ('18', 'course', 'courseresourse');
INSERT INTO `django_content_type` VALUES ('15', 'course', 'lesson');
INSERT INTO `django_content_type` VALUES ('17', 'course', 'video');
INSERT INTO `django_content_type` VALUES ('25', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('22', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('26', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('24', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('23', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('19', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('20', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('21', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('13', 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES ('14', 'reversion', 'version');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('12', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-02 12:34:11.128883');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-11-02 12:34:11.927281');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-11-02 12:34:13.351010');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-11-02 12:34:16.417769');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-11-02 12:34:16.457606');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-11-02 12:34:16.513126');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-11-02 12:34:16.544007');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-11-02 12:34:16.581906');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-11-02 12:34:16.894075');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-11-02 12:34:16.934993');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-11-02 12:34:16.987819');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-11-02 12:34:17.527376');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-11-02 12:34:17.580245');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-11-02 12:34:18.835242');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-11-02 12:34:23.935346');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-11-02 12:34:26.211313');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-02 12:34:26.255151');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2020-11-02 12:34:27.266503');
INSERT INTO `django_migrations` VALUES ('19', 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-11-03 02:37:59.900062');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0001_initial', '2020-11-03 02:38:03.104294');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0002_log', '2020-11-03 02:38:06.380365');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0003_auto_20160715_0100', '2020-11-03 02:38:09.993065');
INSERT INTO `django_migrations` VALUES ('23', 'users', '0002_auto_20201103_1651', '2020-11-03 16:52:11.878738');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0003_auto_20201103_1727', '2020-11-03 17:27:11.685275');
INSERT INTO `django_migrations` VALUES ('25', 'course', '0001_initial', '2020-11-04 21:09:49.188952');
INSERT INTO `django_migrations` VALUES ('26', 'organization', '0001_initial', '2020-11-04 21:09:51.814405');
INSERT INTO `django_migrations` VALUES ('27', 'operation', '0001_initial', '2020-11-05 08:24:05.606015');
INSERT INTO `django_migrations` VALUES ('28', 'operation', '0002_auto_20201105_0857', '2020-11-05 08:57:41.388771');
INSERT INTO `django_migrations` VALUES ('29', 'captcha', '0001_initial', '2020-11-05 19:44:07.345679');
INSERT INTO `django_migrations` VALUES ('30', 'organization', '0002_courseorg_category', '2020-11-06 20:29:24.714240');
INSERT INTO `django_migrations` VALUES ('31', 'organization', '0003_auto_20201108_0840', '2020-11-08 08:40:37.035156');
INSERT INTO `django_migrations` VALUES ('32', 'course', '0002_course_course_org', '2020-11-08 19:59:45.351122');
INSERT INTO `django_migrations` VALUES ('33', 'organization', '0004_teacher_image', '2020-11-08 20:35:09.150991');
INSERT INTO `django_migrations` VALUES ('34', 'course', '0003_auto_20201109_0854', '2020-11-09 08:54:57.503524');
INSERT INTO `django_migrations` VALUES ('35', 'course', '0004_auto_20201111_0958', '2020-11-11 09:58:54.652956');
INSERT INTO `django_migrations` VALUES ('36', 'course', '0005_course_category', '2020-11-11 20:30:01.278179');
INSERT INTO `django_migrations` VALUES ('37', 'course', '0006_course_tag', '2020-11-11 21:08:40.478051');
INSERT INTO `django_migrations` VALUES ('38', 'course', '0007_video_url', '2020-11-12 09:32:31.906525');
INSERT INTO `django_migrations` VALUES ('39', 'course', '0008_video_learn_times', '2020-11-12 09:47:22.432407');
INSERT INTO `django_migrations` VALUES ('40', 'course', '0009_course_teacher', '2020-11-12 10:33:56.790007');
INSERT INTO `django_migrations` VALUES ('41', 'course', '0010_auto_20201112_1035', '2020-11-12 10:35:25.242566');
INSERT INTO `django_migrations` VALUES ('42', 'organization', '0005_teacher_teacher_age', '2020-11-12 14:57:42.317558');
INSERT INTO `django_migrations` VALUES ('43', 'users', '0004_auto_20201112_1723', '2020-11-12 17:23:40.157158');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0wr48akrm99wl9tni794w1ne5e0o5go1', 'ZTU5MTM4MTQ0NTdjMmI2NWNmZmQ0ZGI0MWZmZjQ2MDZiZTg4ZjQ3MDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUwMWQxMGZhYmZhOGQ5OGQyOWYwYjI5ZDQ4Y2RhNWVlNTZiNDZlYzgifQ==', '2020-11-22 10:49:21.175167');
INSERT INTO `django_session` VALUES ('1e020uov0om3l76ss3k90hj4djz6dh35', 'N2I2ZTk3ODhlMTdkOTExNmJmMzRkZjc2NTExMWJiMTlkNjQ5YTAwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdfQ==', '2020-11-23 15:32:25.157312');
INSERT INTO `django_session` VALUES ('3yqjnvxvr6rotpw01vzydl4uvh4r2fzv', 'MjA0Nzg2ZGU2ODlkYjQ1MzRlM2U3MzBiZjkyYzFkNWRkNGM0MzcxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2020-11-19 09:06:59.551686');
INSERT INTO `django_session` VALUES ('9fgqqgi1t7nyl575gkiggosel4gts66p', 'ZWRjYmNiYzQ0ZWMzZDNlNzUxOGFhOGJjY2Y4NWM4N2ZjOWFmZWNkMDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNzdhZjMzMjM3MjRhMGM4ZGY3MDRiZTAzMjAyMjEzYTU1MzVlNDMzIn0=', '2020-11-22 16:32:30.958298');
INSERT INTO `django_session` VALUES ('9staccmkjbtdz37jrt5hxr0r79jz4c1p', 'YjA3NDk0YzM4ZmY5NDhjZGM4YzRjYzU3OGYzYmM4N2Y3N2Q1ZDNhMTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjVjMzkzZTc2NDY5MGY3MzgyNzRkNjc0Yjc3NDNkMDk4MGQ0MzJiMDQifQ==', '2020-11-20 14:55:13.054346');
INSERT INTO `django_session` VALUES ('bj6tfetkbe1bzulbwr1eqd16ia6aafg1', 'OTYyN2Q3MTgxMTM0ZThiY2VjMzM3YzQ3ZGU3MzVkYjExNDcxMzhhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19', '2020-11-22 08:36:07.352151');
INSERT INTO `django_session` VALUES ('kcuqk9pknpeu2pwe2f3ofje4acxf7flg', 'MjA0Nzg2ZGU2ODlkYjQ1MzRlM2U3MzBiZjkyYzFkNWRkNGM0MzcxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2020-11-26 20:45:20.573254');
INSERT INTO `django_session` VALUES ('mbkwykboes0wwkpgu7g7g6jzdj5lj8lu', 'OTYyN2Q3MTgxMTM0ZThiY2VjMzM3YzQ3ZGU3MzVkYjExNDcxMzhhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19', '2020-11-21 21:42:14.364251');
INSERT INTO `django_session` VALUES ('ox2mqdmdsm1yfux43fdpd7p073h6basb', 'ZTU5MTM4MTQ0NTdjMmI2NWNmZmQ0ZGI0MWZmZjQ2MDZiZTg4ZjQ3MDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUwMWQxMGZhYmZhOGQ5OGQyOWYwYjI5ZDQ4Y2RhNWVlNTZiNDZlYzgifQ==', '2020-11-22 10:41:01.635176');
INSERT INTO `django_session` VALUES ('qevb1je199rqrubz9050mvrvfupfzfhs', 'ZTU5MTM4MTQ0NTdjMmI2NWNmZmQ0ZGI0MWZmZjQ2MDZiZTg4ZjQ3MDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUwMWQxMGZhYmZhOGQ5OGQyOWYwYjI5ZDQ4Y2RhNWVlNTZiNDZlYzgifQ==', '2020-11-22 10:38:48.889994');
INSERT INTO `django_session` VALUES ('te5g2jk95vmbx4bar0rkqhej6asv4noz', 'MzIxYjNhNjYxZTc0OTc2MzVmNjRlMmZhYmNlY2YwZjM3ZmRmMDM1MDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQxZDIwMjlkYmUyODI3YWQ0MDgzM2U4YWJkOTU4M2YzZDFiYmVjIn0=', '2020-11-26 20:57:51.433490');
INSERT INTO `django_session` VALUES ('z9m7sq2j1qbgj62iji63p42qe8a5uojw', 'MzIxYjNhNjYxZTc0OTc2MzVmNjRlMmZhYmNlY2YwZjM3ZmRmMDM1MDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQxZDIwMjlkYmUyODI3YWQ0MDgzM2U4YWJkOTU4M2YzZDFiYmVjIn0=', '2020-11-22 16:34:23.050843');
INSERT INTO `django_session` VALUES ('zp6djzav66mz3z7cv1edx7e33doz249y', 'N2I2ZTk3ODhlMTdkOTExNmJmMzRkZjc2NTExMWJiMTlkNjQ5YTAwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1ZmI4NDdjYWYyYmQxODJkZWVjNjUwMWE5ZDY5Y2JkN2Q5Zjg0ZDQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJ0ZWFjaGVyIl0sIiJdfQ==', '2020-11-23 09:07:41.159839');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', '很好！！', '2020-11-12 19:35:00.000000', '1', '10');
INSERT INTO `operation_coursecomments` VALUES ('2', '很好！！', '2020-11-12 19:36:00.000000', '1', '2');

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', '哈哈', '15935561222', 'python', '2020-11-08 19:42:02.067589');
INSERT INTO `operation_userask` VALUES ('2', '111', '15935561223', '11', '2020-11-12 20:56:30.809365');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2020-11-12 19:35:00.000000', '1', '10');
INSERT INTO `operation_usercourse` VALUES ('2', '2020-11-12 19:36:00.000000', '1', '2');
INSERT INTO `operation_usercourse` VALUES ('3', '2020-11-12 20:42:00.000000', '2', '10');
INSERT INTO `operation_usercourse` VALUES ('4', '2020-11-12 20:42:00.000000', '3', '2');
INSERT INTO `operation_usercourse` VALUES ('5', '2020-11-12 20:42:00.000000', '4', '2');

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('12', '1', '2', '2020-11-12 19:22:52.624757', '10');
INSERT INTO `operation_userfavorite` VALUES ('13', '9', '2', '2020-11-12 20:56:58.415405', '10');

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '悉尼', '悉尼（Sydney），位于澳大利亚的东南沿岸，是澳大利亚新南威尔士州的首府，也是澳大利亚面积最大、人口最多的城市。城市中心坐标为南纬33°51\'、东经151°12′。大悉尼都会区面积约12368.193平方千米，悉尼市区面积约1687平方千米，人口约503万（2016年），大悉尼都会区由悉尼市区和33个郊区组成。', '2020-11-06 20:19:00.000000');
INSERT INTO `organization_citydict` VALUES ('2', '孟买', '孟买，英文名称Mumbai, 1995年以前称Bombay, 是印度西部滨海城市，印度第一大港口，棉纺织业中心，马哈拉施特拉邦首府，孟买大区是印度整个国家人口第二密集的地区，2016年的人口统计显示，该地区人口大约2130万（仅次于人口2500万的印度首都新德里）。孟买也是印度最富裕的城市，这里的百万富翁和千万富翁冠绝印度所有城市，重要的贸易中心和港口城市。', '2020-11-06 20:20:00.000000');
INSERT INTO `organization_citydict` VALUES ('3', '普吉岛', '普吉岛位于印度洋安达曼海东南部，离泰国首都曼谷867公里，是泰国境内唯一受封为省级地位的岛屿。有深远的历史和文化，被誉为安达曼海的明珠，500多年前是锡矿基地，泰国主要的旅游胜地，人口175万（2004年）。位于北纬7°45′-8°15′和东经98°15′-98°40′之间。普吉岛周围有39个小岛，都归属普吉镇行政管理，涵盖570平方公里。普吉岛有70%为山区，除市区外，岛上到处都是绿树成荫的小山', '2020-11-06 20:20:00.000000');
INSERT INTO `organization_citydict` VALUES ('4', '迈阿密', '迈阿密（Miami）是美国佛罗里达州第二大城市，位于佛罗里达半岛比斯坎湾。迈阿密还是南佛罗里达州都市圈中最大的城市，这个都市圈由迈阿密-戴德县、布劳沃德县和棕榈滩县组成，人口超过559万人，是美国人口最为稠密的城市之一，美国东南部最大的都市圈，也是全美第四大都市圈。', '2020-11-06 20:21:00.000000');
INSERT INTO `organization_citydict` VALUES ('5', '里约热内卢', '里约热内卢（葡萄牙语：Rio de Janeiro，意即“一月的河”），简称里约(Rio)，曾经是巴西首都（1763-1960年），位于巴西东南部沿海地区，东南濒临大西洋，海岸线长636公里。里约热内卢主要属于热带草原气候，终年高温，气温年、日较差都小，季节分配比较均匀。市境内的里约热内卢港是世界三大天然良港之一，里约热内卢基督像是该市的标志，也是世界新七大奇迹之一', '2020-11-06 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('6', '拉斯维加斯', '拉斯维加斯（Las Vegas） 是美国内华达州最大的城市，克拉克县的县治，也是座享有极高国际声誉的城市。 拉斯维加斯建市于1905年5月15日，因位于内华达州的沙漠边缘、边境，所以拉斯维加斯全年高温。 拉斯维加斯位居世界四大赌城之一，是一座以赌博业为中心的旅游、购物、度假的世界知名度假城市，拥有“世界娱乐之都”和“结婚之都”的美称。每年来拉斯维加斯旅游的3890万旅客中，来购物和享受美食的占了大', '2020-11-06 20:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('7', '芝加哥', '芝加哥（Chicago），位于美国密歇根湖的南部，是美国第三大城市，也是世界的国际金融中心之一。 [1-2]  芝加哥地处北美大陆的中心地带，城市中心坐标为北纬41°39′、西经87°34′，是美国最大的商业中心区和最大的期货市场之一，其都市区新增的企业数一直位居美国第一位，被评为美国发展最均衡的经济体。此外，芝加哥还拥有很多的高楼大厦，被誉为“摩天大楼的故乡”。截止至2018年7月，芝加哥人口约', '2020-11-06 20:23:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '新东方10', '新东方一直致力于阐扬一种朝气蓬勃、奋发向上的精神，一种从绝望中义无反顾地寻找希望的精神。当世界上的一切都成为如烟往事，唯一能够珍藏心中的是我们在今天的奋斗中所得到的精神启事。在将来的岁月里，我们的心灵将指引我们，使我们能够潇洒地对待生活中的成功与失败，并在成功与失败时做出更奋发的努力，取得最终的辉煌。', '3', '2', 'org/202011/d53f8794a4c27d1eee779dc618d5ad6eddc4385a.jfif', '北京市房山区', '2020-11-07 19:21:00.000000', '1', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('2', '新东方9', '德语培训，新东方德语培训涵盖了德语初级、中级、高级、德语800学时、大学德语四级、德语专业四级、德语DSH考试、德语德福考试、德语VIP辅导、全外教德语口语和德国留学直通车等课程和服务，课程体系完整、课程服务完备。\r\n培训教材\r\n德语培训采用的教材是由新东方教育科技集团从德国原版引进《标准德语教程》、《德福完全教程》和新东方独家内部资料。\r\n教师团队\r\n雄厚的德语师资力量是新东方德语优质服务和良好品牌形象的核心要素，他们当中既有资深的、有多年住外经历的老外交官，有旅德多载的德国通，更有众多的留德归国的博士、硕士。新东方的基础德语培训课程素以强调扎实基本功、课堂内容严密精要、教师授课富有激情并充满对学生的人文关怀而著称。', '2', '1', 'org/202011/d000baa1cd11728bbd4d7529c8fcc3cec3fd2c5d.jfif', '北京市房山区', '2020-11-07 19:25:00.000000', '2', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('3', '新东方8', '法语培训，课程体系\r\n新东方法语培训涵盖了法语初级、中级、高级、法语500学时、法语TEF/TCF考试、大学法语四级、法语二外考研班、法语专业四级、法语VIP辅导、全外教法语口语和法国留学直通车各级别的课程和服务，课程体系完整、课程服务完备。\r\n培训教材\r\n法语培训采用的是法语培训界最经典的教材《简明法语教材》（该教材是各大外院二外考研的指定书籍）、《走遍法国》和新东方独家内部资料。\r\n教师团队\r\n新东方法语教师的招聘与选拔更是本着优中选精、出乎其类、拔乎其萃的原则，法语教学团队之中既有留法多年的神经语言学博士，又有深谙教学之道、精通中国文化的法籍专家，95%的教师都具有法国留学和生活背景，对中法语言和文化的深刻解读使得新东方的法语培训深受广大学员的认可。', '2', '2', 'org/202011/902397dda144ad34f8dc7e8cd0a20cf431ad855e.jfif', '北京市房山区', '2020-11-07 19:26:00.000000', '3', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('4', '新东方7', '日语培训，课程体系，新东方日语培训涵盖了日语四级（N5,初级上）、三级（N4,初级下）、二级（N3,N2,中级上、下）基础、二级（N3,N2,中级）强化、二级（N3,N2,中级）考前冲刺，一级（N1,高级）基础、一级（N1,高级）强化、一级（N1,高级）考前冲刺辅导、日语全外教听说、日语VIP辅导、商务日语、日语专业四级、日语二外考研、日语J-TEST考试强化、日语BJT考试强化、日本武藏野大学预科班和日本留学直通车、日语考试保过+就业定向班等各类课程和服务，日语培训课程体系完整、课程服务完备。\r\n培训教材\r\n新东方日语培训采用的是日语培训界最经典的教材——《标准日本语》，以及《大家的日本语》和新东方独家内部资料等教材。\r\n教师团队\r\n日语教学团队中既有毕业于日本一流学府、教授日本人日语语法的教育心理学博士，又有深谙中文、课堂趣味横生、教学立竿见影的日籍教学专家；既有多位留学归国精英，又有来自高校的教学中坚。对日本文化的深入认知与对日本语的独到解析，铸就了新东方日语培训在业界的卓越声誉。', '1', '1', 'org/202011/6a63f6246b600c33facc27c31a4c510fd9f9a100.jfif', '北京市房山区', '2020-11-07 19:28:00.000000', '4', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('5', '新东方6', '韩语培训，课程体系，新东方韩语培训涵盖了韩语初、中、高各级，韩语Topik考试（初、中、高）各级，新东方——汉阳大学预科，韩国留学直通车，韩语全外教听说，韩语VIP辅导等各类课程和服务，韩语培训课程体系完整、课程服务完备。\r\n培训教材\r\n韩语培训使用优秀原版引进教材，韩国庆熙大学主编的《新标准韩国语》，业界能够使用此教材进行培训的教学机构寥寥无几。\r\n教师团队\r\n由资深外教、留韩海归、韩语教学专家组成的团队倾力相助学员建立牢固系统的韩语知识体系、提升语言实际运用能力及韩语能力考试技能、帮助学员深入了解韩国文化及留学概况。', '5', '5', 'org/202011/3b292df5e0fe9925716e905b34a85edf8db1715f.jfif', '北京市房山区', '2020-11-07 19:29:00.000000', '5', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('6', '新东方5', '西班牙语，课程体系，新东方西班牙语培训涵盖了西语初、中、高各级，西语DELE考试，西班牙语专业四级，西班牙留学直通车，西班牙语全外教听说，西班牙语VIP辅导等各类课程和服务，西班牙语语培训课程体系完整、课程服务完备。\r\n教师团队\r\n新东方的每位西班牙语教师都是从成百上千位应聘教师中精挑细选而来的，各位中教除了具备丰富的教学经验外，都有西班牙留学经历或南美诸国的工作背景。在中教上课的间隙，新东方西班牙语培训还配备了来自西班牙和南美洲国家的外教。通过中教+外教原汁原味的口语听力强化训练，在新东方西班牙语的课堂上，学生既可以学习到来自西班牙本土的地道的西班牙语，也可以领略众多南美洲不同国家，不同风格的西班牙语和风土人情，进而足不出户，就可周游西语列国，把西语的精髓尽收囊中！\r\n培训教材\r\n新东方的西班牙语课程采用《西班牙语速成》作为中教语法教材，《西班牙语速成》是一本随语言发展而与时俱进的、更为实用、更为灵活的现代化经典教材。同时采用《走遍西班牙》及《Viaja al espa&ntilde;ol》作为外教教材，在口语、听力以及实用性上使广大学员得极大的收获和提高。', '3', '3', 'org/202011/3bf33a87e950352a5594dc035343fbf2b3118bc0.jfif', '北京市房山区', '2020-11-07 19:30:00.000000', '6', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('7', '新东方4', '意大利语，新东方意大利语培训涵盖了意大利语初、中、高各级，意大利语A2考试，意大利留学直通车，意大利语发音速成班，意大利语语法过关班，意大利语兴趣入门班，意大利外教口语加强班，以及诸多意大利语VIP课程等，培训体系完整、课程服务完备。\r\n教师团队\r\n新东方的意大利语教师均经过多次面试，通过学校、部门的重重筛选，从众多应聘者中最后脱颖而出，可谓百里挑一。其中不乏意大利语界德高望重、著作丰硕的教授，有着几十年海外意大利语教学经验的资深教师，全国重点高校毕业并具有意大利留学经历、年轻有为的硕士学历教师，以及多年生活在意大利、有着丰富翻译经验的海归教师等等。新东方的每一位意大利语教师都以其独特的教学风格，及权威的理论基础活跃在新东方意大利语的各类培训课堂上，吸引着一批又一批的学员每年从全国各地奔赴他们的课堂。', '0', '0', 'org/202011/b3fb43166d224f4a4d638a1809f790529922d1c7.jfif', '北京市房山区', '2020-11-07 19:31:00.000000', '7', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('8', '新东方3', '新东方美加留学直通车\r\n定义\r\n美加留学直通车是新东方北美项目部SSAT、TOEFL、SAT、GRE、GMAT一线名师，携手新东方资深留学专家为学员提供培训、申请一站式留学服务。包括高中生留学直通车、本科留学直通车、研究生留学直通车。\r\n项目内容\r\n课程内容：\r\n1．SSAT/ TOEFL/GRE/GMAT考试的全方位优质培训及辅导；\r\n2． 提供文书写作、填写申请表及签证辅导等全套顶级专业服务。\r\n课程特色：\r\n1． 全程提供课程咨询、留学咨询和择校咨询；\r\n2． 根据学员的自身情况帮助选择合适的美加高中、本科和研究生院校\r\n3． 为学员提供社会实践和社团建设方面的指导和规划。\r\n4． 报班学员赠送超值大礼包。\r\n5． 助教全程跟进', '8', '7', 'org/202011/a8ec8a13632762d062cc061aa0ec08fa503dc6a1.jfif', '北京市房山区', '2020-11-07 19:31:00.000000', '1', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('9', '新东方2', '愿景\r\n成为中国优秀的、令人尊敬的、有文化价值的教育机构。\r\n使命\r\n为提升学生终身竞争力，塑造学生公民素质，赋予学生全球眼光而努力！\r\n核心价值观\r\n诚信负责 真情关爱 好学精进 志高行远\r\n企业文化\r\n坦诚 尊重 协作 创新\r\n教学理念\r\n让学生在新东方课堂里获得快乐的成长体验！\r\n教学要素\r\n精熟授课 欢乐课堂 励志教育\r\n老师行为准则\r\n备课充分 讲解精准 热情快乐 励志向上 言行得体 互相尊重 关心过程 尊重结果\r\n员工行为准则\r\n平等相待 团结互助 积极阳光 谦虚自律 坦诚沟通 勤奋工作 热诚服务 高效执行\r\n经营八字方针\r\n打动人心 超越期待\r\n校训\r\n追求卓越，挑战极限，从绝望中寻找希望，人生终将辉煌！', '10', '9', 'org/202011/8718367adab44aed8044d24ebb1c8701a18bfb16_nt0jmo3.jfif', '北京市房山区', '2020-11-07 19:32:00.000000', '2', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('10', '新东方1', '新东方，全名北京新东方教育科技（集团）有限公司，总部位于中国北京市海淀区中关村，是综合性教育集团，同时也是教育培训集团。公司业务包括外语培训、中小学基础教育、学前教育、在线教育、出国咨询、图书出版等各个领域。\r\n除新东方外，旗下还有优能中学教育、泡泡少儿教育、前途出国咨询、迅程在线教育、大愚文化出版、满天星亲子教育、同文高考复读等子品牌。公司于2006年在美国纽约证券交易所上市，是中国大陆第一家在美国上市的教育机构。2012年7月18日，新东方因调整VIE结构遭SEC调查股价暴跌。2016年2月1日， [1]  新东方教育集团发布公告，宣布腾讯将向迅程（即新东方在线）投资3.2亿人民币（5000万美元），并宣布新东方在线即将在国内IPO。这项投资预计于2016年第一季度完成，完成后迅程仍由新东方控股。\r\n2019年12月，新东方入选2019中国品牌强国盛典榜样100品牌。', '0', '0', 'org/202011/a8014c086e061d95c0f04e9171f40ad163d9cae1.jfif', '北京市房山区', '2020-11-07 19:33:00.000000', '1', 'pxjg', '0', '0');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', '王哈哈', '1', '新东方10', '稳当', '8', '1', '2020-11-09 08:38:00.000000', '1', 'teacher/2020/11/hh.jpg', '25');
INSERT INTO `organization_teacher` VALUES ('2', '吴亦凡', '2', '新东方3', '。。。。', '10', '10', '2020-11-09 09:05:00.000000', '8', 'teacher/2020/11/wyf.jpg', '25');
INSERT INTO `organization_teacher` VALUES ('3', '张艺兴', '3', '新东方3', '有点东西', '20', '10', '2020-11-09 09:05:00.000000', '8', 'teacher/2020/11/zyx.jpg', '25');
INSERT INTO `organization_teacher` VALUES ('4', '易烊千玺', '1', '新东方10', '还行吧', '25', '15', '2020-11-09 09:07:00.000000', '1', 'teacher/2020/11/yyqx_3cpusnH.jpg', '25');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_users_userprofile_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slideshow` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `sequence` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('1', 'pOtYhNsUM4zYwiol', '1528821158@qq.com', 'register', '2020-11-06 11:19:21.124435');
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'rRBZiKro7HbgVaxK', '1528821158@qq.com', 'forget', '2020-11-06 11:43:24.451969');
INSERT INTO `users_emailverifyrecord` VALUES ('3', 'zxRDKud51eBIRV4z', '1528821158@qq.com', 'forget', '2020-11-06 14:14:25.384305');
INSERT INTO `users_emailverifyrecord` VALUES ('4', 'TB6aEb1HcLDRhwTW', '1528821158@qq.com', 'register', '2020-11-06 14:30:01.586514');
INSERT INTO `users_emailverifyrecord` VALUES ('5', 'gHcD8Z5upbko0VFr', '1528821158@qq.com', 'forget', '2020-11-06 14:31:01.969816');
INSERT INTO `users_emailverifyrecord` VALUES ('6', 'sNldqokWIIydpbmG', '1528821158@qq.com', 'forget', '2020-11-06 14:32:22.793566');
INSERT INTO `users_emailverifyrecord` VALUES ('7', '113yrrgVzoMS489C', '1528821158@qq.com', 'forget', '2020-11-06 14:38:47.223201');
INSERT INTO `users_emailverifyrecord` VALUES ('8', 'YPwbV3A6GquKdX40', '1528821158@qq.com', 'forget', '2020-11-06 14:41:40.250334');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'KJGpwlYgtyAZ6nxB', '1528821158@qq.com', 'register', '2020-11-08 08:19:41.070910');
INSERT INTO `users_emailverifyrecord` VALUES ('10', '0Q2zChc77cOsxV1K', '1528821158@qq.com', 'forget', '2020-11-08 08:21:57.662850');
INSERT INTO `users_emailverifyrecord` VALUES ('11', '7I2M9dSakCs77vfd', '1528821158@qq.com', 'register', '2020-11-08 10:57:21.045406');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'am9cGjbQWUmmXgHt', 'bp@163.com', 'register', '2020-11-08 16:04:05.405956');
INSERT INTO `users_emailverifyrecord` VALUES ('13', 'vkBDDmeZZAIbwLqm', '1528821158@qq.com', 'register', '2020-11-08 16:05:49.666359');
INSERT INTO `users_emailverifyrecord` VALUES ('14', 'rwfVSXUK3Y841hDp', '1528821158@qq.com', 'forget', '2020-11-08 16:06:57.594823');
INSERT INTO `users_emailverifyrecord` VALUES ('15', 'TfEG9I3kbYUFvvKF', '1528821158@qq.com', 'register', '2020-11-08 16:31:39.363042');
INSERT INTO `users_emailverifyrecord` VALUES ('16', 'jbPd1bD1EPsvjI6P', '1528821158@qq.com', 'forget', '2020-11-08 16:33:31.511813');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` longtext NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `head_portrait` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$TwClTb09Kvct$Nucy+zbF+JnOIpwbCyQDNuJbY7buqgksFpscVtncKKM=', '2020-11-12 19:35:11.160901', '1', 'admin', '', '', 'snsd152@163.com', '1', '1', '2020-11-03 10:47:00.000000', '哈哈', null, 'male', '<p>北京市房山区</p>', '15935561222', 'image/202011/头像1.jpg', 'image/202011/头像2.jpg');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$150000$qN6SRtkGYxmr$fCjx8509fSJzw0U7N0ReWrqgag/Nx68HwU1j1nFcs4k=', null, '0', '李小龙', '', '', '', '0', '1', '2020-11-03 10:50:00.000000', '我太难了', null, 'male', '<p>北京市朝阳区</p>', '15935561223', 'image/202011/头像4_uKwkHM6.jpg', 'image/202011/头像4_yMe5PSp.jpg');
INSERT INTO `users_userprofile` VALUES ('10', 'pbkdf2_sha256$150000$k0avIcbrqYhO$s5I9eBJbEF76ofNcB8cg6ZYt9cg0foENUnFt6qQBanQ=', '2020-11-12 20:57:51.331354', '0', '1528821158@qq.com', '', '', '1528821158@qq.com', '0', '1', '2020-11-08 16:31:00.000000', '', null, 'female', '<p>北京市</p>', '15935561227', 'image/202011/头像1_N9G2Xah.jpg', 'image/202011/头像1_6OdVzkY.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-11-03 10:50:38.590371', '127.0.0.1', '2', '李小龙', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-11-03 16:25:49.339015', '127.0.0.1', '1', 'admin', 'change', '修改 last_login，nick_name，adress 和 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-11-03 17:30:15.295182', '127.0.0.1', '1', 'admin', 'change', '修改 gender，address 和 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-11-03 18:55:51.614239', '127.0.0.1', '1', 'admin', 'change', '修改 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-11-03 18:56:26.251769', '127.0.0.1', '2', '李小龙', 'change', '修改 nick_name，gender，address 和 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-11-03 19:05:18.509244', '127.0.0.1', '1', 'admin', 'change', '修改 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-11-03 19:09:43.149257', '127.0.0.1', '1', 'admin', 'change', '修改 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-11-03 19:13:54.647263', '127.0.0.1', '2', '李小龙', 'change', '修改 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-11-06 20:19:42.834433', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-11-06 20:20:11.174172', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-11-06 20:21:16.202863', '127.0.0.1', '3', 'CityDict object (3)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-11-06 20:22:08.358503', '127.0.0.1', '4', 'CityDict object (4)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-11-06 20:22:46.726275', '127.0.0.1', '5', 'CityDict object (5)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-11-06 20:23:16.347170', '127.0.0.1', '6', 'CityDict object (6)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-11-06 20:23:46.230426', '127.0.0.1', '7', 'CityDict object (7)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-11-07 19:25:23.670807', '127.0.0.1', '1', 'CourseOrg object (1)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-11-07 19:26:33.686651', '127.0.0.1', '2', 'CourseOrg object (2)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-11-07 19:27:46.887018', '127.0.0.1', '3', 'CourseOrg object (3)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-11-07 19:27:58.093595', '127.0.0.1', '2', 'CourseOrg object (2)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-11-07 19:28:59.463516', '127.0.0.1', '4', 'CourseOrg object (4)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-11-07 19:29:57.735238', '127.0.0.1', '5', 'CourseOrg object (5)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-11-07 19:30:54.762523', '127.0.0.1', '6', 'CourseOrg object (6)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2020-11-07 19:31:47.909357', '127.0.0.1', '7', 'CourseOrg object (7)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2020-11-07 19:32:30.479743', '127.0.0.1', '8', 'CourseOrg object (8)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2020-11-07 19:33:24.571952', '127.0.0.1', '9', 'CourseOrg object (9)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2020-11-07 19:33:59.567364', '127.0.0.1', '10', 'CourseOrg object (10)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2020-11-09 08:42:28.677124', '127.0.0.1', '1', '[新东方10]的教师： 哈哈', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2020-11-09 08:59:30.525639', '127.0.0.1', '1', 'python', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2020-11-09 09:01:15.201203', '127.0.0.1', '2', 'Java', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2020-11-09 09:02:30.736417', '127.0.0.1', '3', 'c语言', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2020-11-09 09:04:22.915595', '127.0.0.1', '4', 'C++', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2020-11-09 09:05:15.209169', '127.0.0.1', '1', '[新东方10]的教师： 哈哈', 'change', '修改 work_company 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2020-11-09 09:05:49.034980', '127.0.0.1', '2', '[新东方2]的教师： 吴亦凡', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2020-11-09 09:06:59.289117', '127.0.0.1', '3', '[新东方3]的教师： 张艺兴', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2020-11-09 09:07:40.915494', '127.0.0.1', '4', '[新东方4]的教师： 易烊千玺', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2020-11-11 09:24:23.748437', '127.0.0.1', '4', '[新东方10]的教师： 易烊千玺', 'change', '修改 org 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2020-11-11 09:30:19.127300', '127.0.0.1', '4', '[新东方10]的教师： 易烊千玺', 'change', '修改 work_company 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2020-11-11 09:30:47.173764', '127.0.0.1', '3', '[新东方3]的教师： 张艺兴', 'change', '修改 work_company 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2020-11-11 09:31:04.766270', '127.0.0.1', '2', '[新东方3]的教师： 吴亦凡', 'change', '修改 org，work_company 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2020-11-11 09:31:19.236486', '127.0.0.1', '1', '[新东方10]的教师： 王哈哈', 'change', '修改 name，work_company 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2020-11-11 10:13:27.326043', '127.0.0.1', '4', 'C++', 'change', '修改 image 和 course_org', '16', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2020-11-11 10:13:40.220938', '127.0.0.1', '1', 'python', 'change', '修改 image 和 course_org', '16', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2020-11-11 10:14:14.766928', '127.0.0.1', '1', 'python', 'change', '修改 learn_times，students 和 image', '16', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2020-11-11 20:43:53.460147', '127.0.0.1', '4', 'C++', 'change', '修改 students，image 和 category', '16', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2020-11-11 20:44:04.632350', '127.0.0.1', '3', 'c语言', 'change', '修改 students，image 和 category', '16', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2020-11-11 20:44:33.000239', '127.0.0.1', '2', 'Java', 'change', '修改 learn_times，students，image 和 category', '16', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2020-11-11 20:44:50.319742', '127.0.0.1', '1', 'python', 'change', '修改 fav_nums，image 和 category', '16', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2020-11-11 20:52:30.665625', '127.0.0.1', '1', 'python', 'change', '修改 degree 和 image', '16', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2020-11-11 20:52:44.067390', '127.0.0.1', '3', 'c语言', 'change', '修改 degree 和 image', '16', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2020-11-11 20:53:35.666283', '127.0.0.1', '1', '<<python>> 课程的章节 >> 600', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2020-11-11 20:53:46.450854', '127.0.0.1', '2', '<<Java>> 课程的章节 >> 450', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2020-11-11 20:54:00.404655', '127.0.0.1', '3', '<<c语言>> 课程的章节 >> 350', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2020-11-11 20:54:16.594942', '127.0.0.1', '4', '<<C++>> 课程的章节 >> 300', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2020-11-12 09:33:21.997611', '127.0.0.1', '1', '<<python>> 课程的章节 >> 第一章 基础', 'change', '修改 name', '15', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2020-11-12 09:36:07.505476', '127.0.0.1', '2', '<<python>> 课程的章节 >> 第二章 数据类型', 'change', '修改 course 和 name', '15', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2020-11-12 09:36:18.893756', '127.0.0.1', '3', '<<python>> 课程的章节 >> 第三章 函数', 'change', '修改 course 和 name', '15', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2020-11-12 09:36:30.083557', '127.0.0.1', '4', '<<python>> 课程的章节 >> 类的介绍', 'change', '修改 course 和 name', '15', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2020-11-12 09:36:39.464429', '127.0.0.1', '5', '<<python>> 课程的章节 >> 第五章 模块', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2020-11-12 09:36:59.277420', '127.0.0.1', '6', '<<python>> 课程的章节 >> 第六章 socket网络编程', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2020-11-12 09:38:13.501999', '127.0.0.1', '1', '1.1 hello world', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2020-11-12 09:38:34.326081', '127.0.0.1', '2', '1.2 if else', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2020-11-12 09:38:47.556277', '127.0.0.1', '3', '1.3 while', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2020-11-12 10:10:00.012625', '127.0.0.1', '1', 'CourseResourse object (1)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2020-11-12 10:11:53.103973', '127.0.0.1', '2', 'CourseResourse object (2)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2020-11-12 10:12:18.071523', '127.0.0.1', '1', 'CourseResourse object (1)', 'change', '修改 download', '18', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2020-11-12 16:11:48.516772', '127.0.0.1', '1', 'admin', 'change', '修改 last_login，address 和 head_portrait', '8', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2020-11-12 19:35:39.759788', '127.0.0.1', '1', 'UserCourse object (1)', 'create', '已添加。', '26', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2020-11-12 19:36:01.132460', '127.0.0.1', '1', 'CourseComments object (1)', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2020-11-12 19:36:09.987478', '127.0.0.1', '2', 'CourseComments object (2)', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2020-11-12 19:36:26.020496', '127.0.0.1', '2', 'UserCourse object (2)', 'create', '已添加。', '26', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2020-11-12 20:42:08.648871', '127.0.0.1', '3', 'UserCourse object (3)', 'create', '已添加。', '26', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2020-11-12 20:42:14.325452', '127.0.0.1', '4', 'UserCourse object (4)', 'create', '已添加。', '26', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2020-11-12 20:42:20.594019', '127.0.0.1', '5', 'UserCourse object (5)', 'create', '已添加。', '26', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2020-11-12 20:44:33.176343', '127.0.0.1', '2', '李小龙', 'change', '修改 head_portrait 和 image', '8', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2020-11-12 20:45:20.241975', '127.0.0.1', '10', '1528821158@qq.com', 'change', '修改 last_login，address，mobile，head_portrait 和 image', '8', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
