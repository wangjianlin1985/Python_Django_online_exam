/*
Navicat MySQL Data Transfer

Source Server         : mysql5.6
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-07-03 00:12:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
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
-- Table structure for `auth_group_permissions`
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
-- Table structure for `auth_permission`
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 成绩', '7', 'add_grade');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 成绩', '7', 'change_grade');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 成绩', '7', 'delete_grade');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 成绩', '7', 'view_grade');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 试卷', '8', 'add_paper');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 试卷', '8', 'change_paper');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 试卷', '8', 'delete_paper');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 试卷', '8', 'view_paper');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 单项选择题库', '9', 'add_question');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 单项选择题库', '9', 'change_question');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 单项选择题库', '9', 'delete_question');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 单项选择题库', '9', 'view_question');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 学生', '10', 'add_student');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 学生', '10', 'change_student');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 学生', '10', 'delete_student');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 学生', '10', 'view_student');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 教师', '11', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 教师', '11', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 教师', '11', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 教师', '11', 'view_teacher');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$180000$8JxS3ayvkexK$/+3CGKlUioZEAfE9Y+s/mybe2KKG9droXADHzde3FKU=', '2020-07-02 15:50:11.822453', '1', 'admin', '', '', 'test@163.com', '1', '1', '2020-07-02 14:19:44.049895');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-07-02 14:24:01.942909', 'STU001', 'STU001', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-07-02 14:24:45.581695', 'TH001', '王大山', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-07-02 14:27:12.451384', '1', '<计算机基础:请问计算机是用的多少进制？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-07-02 14:28:30.907082', '2', '<计算机基础:c语言退出当前循环关键字是什么？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-07-02 14:34:00.717316', '3', '<高等数学:2的3次方等于多少？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-07-02 14:35:08.037972', '1', '计算机科学与技术', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-07-02 14:48:34.517825', '4', '<计算机基础:下面哪个是后端开发技术？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-07-02 14:50:54.006353', '5', '<计算机基础:下面那个配件是计算机的心脏？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-07-02 14:52:32.263352', '6', '<计算机基础:人工智能开发一般用什么开发语言？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-07-02 14:52:59.395985', '1', '计算机科学与技术', '2', '[{\"changed\": {\"fields\": [\"Pid\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-07-02 14:53:57.040567', '2', '计算机科学与技术', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-07-02 14:55:15.112295', '7', '<高等数学:2的3次方比3的2次方大小>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2020-07-02 14:57:52.480876', '8', '<高等数学:1+1/2+1/4+1/8+......=多少？>', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2020-07-02 15:44:48.237046', 'STU002', 'STU002', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2020-07-02 15:45:59.842762', 'TH002', '王大海', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2020-07-02 15:50:21.877808', '2', '计算机科学与技术', '2', '[{\"changed\": {\"fields\": [\"Pid\"]}}]', '8', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'student', 'grade');
INSERT INTO `django_content_type` VALUES ('8', 'student', 'paper');
INSERT INTO `django_content_type` VALUES ('9', 'student', 'question');
INSERT INTO `django_content_type` VALUES ('10', 'student', 'student');
INSERT INTO `django_content_type` VALUES ('11', 'student', 'teacher');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-07-02 14:17:56.623582');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-07-02 14:17:56.964487');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-07-02 14:17:57.609705');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-07-02 14:17:57.761107');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2020-07-02 14:17:57.778152');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2020-07-02 14:17:57.936573');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2020-07-02 14:17:57.998739');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2020-07-02 14:17:58.079454');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2020-07-02 14:17:58.095997');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2020-07-02 14:17:58.171699');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2020-07-02 14:17:58.179219');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2020-07-02 14:17:58.200275');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2020-07-02 14:17:58.281778');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2020-07-02 14:17:58.368007');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2020-07-02 14:17:58.458749');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2020-07-02 14:17:58.478300');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2020-07-02 14:17:58.526930');
INSERT INTO `django_migrations` VALUES ('18', 'student', '0001_initial', '2020-07-02 14:17:59.014193');
INSERT INTO `django_migrations` VALUES ('19', 'student', '0002_auto_20190609_1126', '2020-07-02 14:17:59.185647');
INSERT INTO `django_migrations` VALUES ('20', 'student', '0003_auto_20190609_1128', '2020-07-02 14:17:59.200686');
INSERT INTO `django_migrations` VALUES ('21', 'student', '0004_auto_20190609_1134', '2020-07-02 14:17:59.291428');
INSERT INTO `django_migrations` VALUES ('22', 'student', '0005_auto_20190609_1914', '2020-07-02 14:17:59.304963');
INSERT INTO `django_migrations` VALUES ('23', 'student', '0006_auto_20200702_2217', '2020-07-02 14:17:59.321006');

-- ----------------------------
-- Table structure for `django_session`
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

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL,
  `sid_id` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grade_sid_id_7de9086e_fk_student_id` (`sid_id`),
  CONSTRAINT `grade_sid_id_7de9086e_fk_student_id` FOREIGN KEY (`sid_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '80', 'STU001', '计算机基础');
INSERT INTO `grade` VALUES ('2', '60', 'STU001', '高等数学');
INSERT INTO `grade` VALUES ('3', '100', 'STU002', '计算机基础');
INSERT INTO `grade` VALUES ('4', '60', 'STU002', '高等数学');

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) NOT NULL,
  `major` varchar(20) NOT NULL,
  `examtime` datetime(6) NOT NULL,
  `tid_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paper_tid_id_ddacd8df_fk_teacher_id` (`tid_id`),
  CONSTRAINT `paper_tid_id_ddacd8df_fk_teacher_id` FOREIGN KEY (`tid_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '计算机基础', '计算机科学与技术', '2020-07-02 14:40:00.000000', 'TH001');
INSERT INTO `paper` VALUES ('2', '高等数学', '计算机科学与技术', '2020-07-05 06:00:00.000000', 'TH001');

-- ----------------------------
-- Table structure for `paper_pid`
-- ----------------------------
DROP TABLE IF EXISTS `paper_pid`;
CREATE TABLE `paper_pid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paper_pid_paper_id_question_id_566d3fd0_uniq` (`paper_id`,`question_id`),
  KEY `paper_pid_question_id_066d7dbd_fk_question_id` (`question_id`),
  CONSTRAINT `paper_pid_paper_id_56658225_fk_paper_id` FOREIGN KEY (`paper_id`) REFERENCES `paper` (`id`),
  CONSTRAINT `paper_pid_question_id_066d7dbd_fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_pid
-- ----------------------------
INSERT INTO `paper_pid` VALUES ('1', '1', '1');
INSERT INTO `paper_pid` VALUES ('2', '1', '2');
INSERT INTO `paper_pid` VALUES ('3', '1', '4');
INSERT INTO `paper_pid` VALUES ('4', '1', '5');
INSERT INTO `paper_pid` VALUES ('5', '1', '6');
INSERT INTO `paper_pid` VALUES ('6', '2', '3');
INSERT INTO `paper_pid` VALUES ('8', '2', '7');
INSERT INTO `paper_pid` VALUES ('7', '2', '8');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `optionA` varchar(30) NOT NULL,
  `optionB` varchar(30) NOT NULL,
  `optionC` varchar(30) NOT NULL,
  `optionD` varchar(30) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `level` varchar(10) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '计算机基础', '请问计算机是用的多少进制？', '二进制', '8进制', '16进制', '十进制', 'A', '1', '20');
INSERT INTO `question` VALUES ('2', '计算机基础', 'c语言退出当前循环关键字是什么？', 'else', 'if', 'while', 'continue', 'D', '1', '20');
INSERT INTO `question` VALUES ('3', '高等数学', '2的3次方等于多少？', '6', '8', '10', '12', 'B', '2', '20');
INSERT INTO `question` VALUES ('4', '计算机基础', '下面哪个是后端开发技术？', 'css', 'html', 'javascript', 'java', 'D', '2', '20');
INSERT INTO `question` VALUES ('5', '计算机基础', '下面那个配件是计算机的心脏？', '键盘', '显示器', 'cpu', 'DDR内存', 'C', '2', '20');
INSERT INTO `question` VALUES ('6', '计算机基础', '人工智能开发一般用什么开发语言？', 'Java语言', 'C语言', 'Python语言', 'GO语言', 'C', '2', '20');
INSERT INTO `question` VALUES ('7', '高等数学', '2的3次方比3的2次方大小', '前者大', '一样大', '后者大', '不确定', 'C', '1', '20');
INSERT INTO `question` VALUES ('8', '高等数学', '1+1/2+1/4+1/8+......=多少？', '3', '2', '4', '5', 'B', '3', '20');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `major` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `birth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('STU001', '张小琴', '女', '计算机与通信学院', '计算机科学与技术', '111', 'xiaoqin@163.com', '2020-04-16');
INSERT INTO `student` VALUES ('STU002', '李明涛', '男', '计算机与通信学院', '计算机科学与技术', '111', 'mingtao@126.com', '2003-11-21');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('TH001', '王大山', '男', '计算机与通信学院', 'dashan@163.com', '000000', '1990-04-16');
INSERT INTO `teacher` VALUES ('TH002', '王大海', '男', '计算机与通信学院', 'dahai@163.com', '000000', '1992-11-05');
