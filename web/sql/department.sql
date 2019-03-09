/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50605
Source Host           : localhost:3306
Source Database       : testweb

Target Server Type    : MYSQL
Target Server Version : 50605
File Encoding         : 65001

Date: 2019-03-09 23:57:05
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
INSERT INTO `department` VALUES ('010', '研发部', null);
INSERT INTO `department` VALUES ('011', '研发部', null);
INSERT INTO `department` VALUES ('012', '研发部', null);
INSERT INTO `department` VALUES ('013', '研发部', null);
INSERT INTO `department` VALUES ('014', '测试部', null);
INSERT INTO `department` VALUES ('015', '产品部', null);
INSERT INTO `department` VALUES ('016', '产品部', null);
INSERT INTO `department` VALUES ('018', '运维部', null);
INSERT INTO `department` VALUES ('019', '研发部', null);
INSERT INTO `department` VALUES ('022', '董事局', null);
INSERT INTO `department` VALUES ('023', '横店影视', null);
INSERT INTO `department` VALUES ('024', '技术部', null);
INSERT INTO `department` VALUES ('025', '项目部', null);
INSERT INTO `department` VALUES ('026', '文化部', null);
INSERT INTO `department` VALUES ('027', '财务部', null);
INSERT INTO `department` VALUES ('028', '财务部', null);
INSERT INTO `department` VALUES ('029', '销售部', null);
INSERT INTO `department` VALUES ('030', '研发部', null);
INSERT INTO `department` VALUES ('031', '研发部', null);
INSERT INTO `department` VALUES ('032', '财务部', null);
INSERT INTO `department` VALUES ('033', '项目部', null);
INSERT INTO `department` VALUES ('034', '项目部2', null);
INSERT INTO `department` VALUES ('035', '测试部', null);
INSERT INTO `department` VALUES ('036', '研发部', null);
INSERT INTO `department` VALUES ('037', '工程部', null);
INSERT INTO `department` VALUES ('038', '销售部', null);
INSERT INTO `department` VALUES ('039', '人力资源部', null);
INSERT INTO `department` VALUES ('040', '集成部', null);
INSERT INTO `department` VALUES ('041', '行政部', null);
INSERT INTO `department` VALUES ('042', '电力部', null);
INSERT INTO `department` VALUES ('043', '运维部', null);
INSERT INTO `department` VALUES ('044', '游戏部', null);
INSERT INTO `department` VALUES ('045', '研发部', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` varchar(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CRATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'admin', '038bdaf98f2037b31f1e75b5b4c9b26e', '5', 'mrbird@hotmail.com', '13455533222', '1', '2017-12-27 15:47:19', '2018-03-21 09:05:12', '2018-04-02 17:29:32', '0', 'green', 'default.jpg', '我是作者。');
INSERT INTO `user` VALUES ('6', 'zhangsan', '271dad09d1a71f27b7aeaa27306d5e24', '6', 'tester@qq.com', '13888888888', '0', '2017-12-27 17:35:14', '2018-03-27 09:21:08', '2018-01-23 09:17:27', '1', 'teal', 'default.jpg', null);
INSERT INTO `user` VALUES ('8', 'lisi', '8c702ae443795331c91cfab48f3f3833', '7', 'lisi@163.com', '13799999999', '1', '2019-03-09 17:55:52', '2019-03-09 17:55:58', null, null, null, null, null);
