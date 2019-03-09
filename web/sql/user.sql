/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50605
Source Host           : localhost:3306
Source Database       : mrbird

Target Server Type    : MYSQL
Target Server Version : 50605
File Encoding         : 65001

Date: 2019-03-09 14:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
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
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('4', 'MrBird', '42ee25d1e43e9f57119a00d0a39e5250', '5', 'mrbird@hotmail.com', '13455533222', '1', '2017-12-27 15:47:19', '2018-03-21 09:05:12', '2018-04-02 17:29:32', '0', 'green', 'default.jpg', '我是作者。');
INSERT INTO `t_user` VALUES ('6', 'tester', '243e29429b340192700677d48c09d992', '6', 'tester@qq.com', '13888888888', '1', '2017-12-27 17:35:14', '2018-03-27 09:21:08', '2018-01-23 09:17:27', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('23', 'scott', 'ac3af72d9f95161a502fd326865c2f15', '6', 'scott@qq.com', '15134627380', '1', '2017-12-29 16:16:39', '2018-03-29 16:18:36', '2018-03-20 17:59:04', '0', 'blue-grey', 'default.jpg', '我是scott，嗯嗯');
INSERT INTO `t_user` VALUES ('24', 'smith', '228208eafc74e48c44619cc543fc0efe', '3', 'smith@qq.com', '13364754932', '1', '2017-12-29 16:21:31', '2018-02-27 08:48:16', '2018-02-27 08:48:27', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('25', 'allen', '83baac97928a113986054efacaeec1d2', '3', 'allen@qq.com', '13427374857', '0', '2017-12-29 16:21:54', '2018-01-17 11:28:16', null, '1', 'indigo', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('26', 'martin', 'b26c9edca9a61016bca1f6fb042e679e', '4', 'martin@qq.com', '15562736678', '1', '2017-12-29 16:22:24', '2018-01-25 09:23:15', '2018-01-25 17:24:50', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('27', 'ford', '0448f0dcfd856b0e831842072b532141', '6', 'ford@qq.com', '15599998373', '0', '2017-12-29 16:22:52', '2018-03-13 11:19:56', '2018-03-08 16:31:59', '0', 'cyan', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('91', '系统监控员', '7c28d1cd33414ac15832f7be92668b7a', '6', 'xtjk@qq.com', '18088736652', '1', '2018-01-09 15:52:56', null, '2018-01-09 15:53:12', '0', 'cyan', 'default.jpg', null);
