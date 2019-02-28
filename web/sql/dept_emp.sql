/*
Navicat MySQL Data Transfer

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-02-28 14:09:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` varchar(40) NOT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('', '', null);
INSERT INTO `department` VALUES ('009', '研发部', null);
INSERT INTO `department` VALUES ('010', '研发部', null);
INSERT INTO `department` VALUES ('011', '研发部', null);
INSERT INTO `department` VALUES ('012', '研发部', null);
INSERT INTO `department` VALUES ('013', '研发部', null);
INSERT INTO `department` VALUES ('014', '测试部', null);
INSERT INTO `department` VALUES ('015', '产品部', null);
INSERT INTO `department` VALUES ('016', '产品部', null);
INSERT INTO `department` VALUES ('017', '产品部', null);
INSERT INTO `department` VALUES ('018', '运维部', null);
INSERT INTO `department` VALUES ('019', '研发部', null);
INSERT INTO `department` VALUES ('020', '项目管理部', null);
INSERT INTO `department` VALUES ('021', '项目管理部', null);
INSERT INTO `department` VALUES ('022', '董事局', null);

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(5) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(40) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `id_code` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `major` varchar(40) DEFAULT NULL,
  `graduate_school` varchar(40) DEFAULT NULL,
  `education_form` varchar(40) DEFAULT NULL,
  `department_id` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_Reference_30` (`department_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('21', '张三', '1', null, null, null, null, '本科', '学士', null, '清华大学', '全日制', '009', 'zhangsan@qq.com', 'java工程师');
INSERT INTO `employee` VALUES ('22', '李四', '0', null, null, null, null, '本科', '学士', null, '北京大学', '全日制', '010', 'lisi@qq.com', 'java工程师');
INSERT INTO `employee` VALUES ('23', '王五', '1', null, null, null, null, '本科', '学士', null, '清华大学', '全日制', '011', 'wangwu@qq.com', 'java工程师');
INSERT INTO `employee` VALUES ('24', '赵六', '0', null, null, null, null, '本科', null, null, '北京大学', '全日制', '012', 'zhaoliu@qq.com', 'java工程师');
