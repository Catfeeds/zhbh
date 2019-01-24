/*
Navicat MySQL Data Transfer

Source Server         : baohua
Source Server Version : 50723
Source Host           : 106.14.223.32:3306
Source Database       : zhbh

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-19 16:44:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cgchuli`
-- ----------------------------
DROP TABLE IF EXISTS `cgchuli`;
CREATE TABLE `cgchuli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shangbaoid` int(11) DEFAULT NULL,
  `chuliren` varchar(255) DEFAULT NULL COMMENT '处理人',
  `chulitime` date DEFAULT NULL COMMENT '处理时间',
  `chulimiaoshu` varchar(255) DEFAULT NULL COMMENT '处理描述',
  `sheheren` varchar(255) DEFAULT NULL COMMENT '审核人',
  `shehetime` date DEFAULT NULL COMMENT '审核时间',
  `shehemiaoshu` varchar(255) DEFAULT NULL COMMENT '审核描述',
  `photo1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgchuli
-- ----------------------------
INSERT INTO `cgchuli` VALUES ('1', '1', '1', '2018-10-25', '1', '1', '2018-10-25', '1', '1');
INSERT INTO `cgchuli` VALUES ('2', '4', '1', '2018-10-25', null, null, null, null, null);
INSERT INTO `cgchuli` VALUES ('13', null, null, '2018-11-17', null, null, null, null, null);
INSERT INTO `cgchuli` VALUES ('14', '15', 'admin', '2018-11-17', '处理完成', null, null, null, '1542435114071.jpg');
INSERT INTO `cgchuli` VALUES ('15', '12', '1', '2018-11-17', '1', null, null, null, '1');
INSERT INTO `cgchuli` VALUES ('16', '16', 'admin', '2018-11-17', '已经处理好了', null, null, null, '1542435893972.jpg,1542435894064.jpg');

-- ----------------------------
-- Table structure for `cginformation`
-- ----------------------------
DROP TABLE IF EXISTS `cginformation`;
CREATE TABLE `cginformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类别',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2550) DEFAULT NULL COMMENT '内容',
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `attachment_source` char(10) DEFAULT NULL COMMENT '图片关联',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL COMMENT '创建id',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cginformation
-- ----------------------------
INSERT INTO `cginformation` VALUES ('20', '2', '智慧城管系统正式上线', '<p>智慧城管系统正式上线！！！</p><p><br/></p>', '1542594663982.png', '01', '宝华镇', '17712659161', '2018-11-19', 'A');
INSERT INTO `cginformation` VALUES ('21', '1', '111111', '<p>11111111111111113333333333</p>', '1542608426926.png', '01', null, '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `cglog`
-- ----------------------------
DROP TABLE IF EXISTS `cglog`;
CREATE TABLE `cglog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submittime` date DEFAULT NULL COMMENT '提交时间',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '内容',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cglog
-- ----------------------------
INSERT INTO `cglog` VALUES ('1', '2018-11-03', '标题修改', '内容修改', '用户租户修改', '1', '2018-11-02', 'D');
INSERT INTO `cglog` VALUES ('2', '2018-11-05', '123', '123', '宝华镇', '17712659161', '2018-11-05', 'D');
INSERT INTO `cglog` VALUES ('3', '2018-11-05', '123', null, '宝华镇', '17712659161', '2018-11-05', 'A');
INSERT INTO `cglog` VALUES ('4', null, '2213434哈哈', null, null, '17712659161', '2018-11-07', 'D');
INSERT INTO `cglog` VALUES ('5', '2018-11-13', '周三', '<table style=\"margin: 0px auto;\" border=\"1px\"><tbody><tr class=\"firstRow\"><td width=\"210\" valign=\"middle\" colspan=\"2\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\"><span style=\"font-size: 24px;\">中队</span></td><td width=\"210\" valign=\"middle\" colspan=\"2\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\">张三</td><td width=\"210\" valign=\"middle\" align=\"center\" colspan=\"2\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\"><span style=\"font-size: 24px;\">填 表 人</span></td><td width=\"210\" valign=\"middle\" align=\"center\" colspan=\"2\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\">李四</td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">工作人员<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\">李三</td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">请假人员<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\">李三</td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">1.巡查路线:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\">无</td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">2.巡查时间:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><br/></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">3.巡查对象:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><span style=\"text-align: -webkit-center;\">无</span></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">4.巡查问题情况:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><br/></p><p><span style=\"text-align: -webkit-center;\">无</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">5.巡查处理情况:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><span style=\"text-align: -webkit-center;\">无</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">6.其他工作:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr></tbody></table>', '宝华镇', '17712659161', '2018-11-13', 'D');
INSERT INTO `cglog` VALUES ('6', '2018-11-19', '121212121', '<table style=\"margin: 0px auto;\" border=\"1px\"><tbody><tr class=\"firstRow\"><td width=\"210\" valign=\"middle\" colspan=\"2\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\" align=\"center\"><span style=\"font-size: 24px;\">中队</span></td><td width=\"210\" valign=\"middle\" colspan=\"2\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\">12122</td><td width=\"210\" valign=\"middle\" align=\"center\" colspan=\"2\" style=\"word-break: break-all; border-width: 1px; border-style: solid;\"><span style=\"font-size: 24px;\">填 表 人</span></td><td width=\"210\" valign=\"middle\" align=\"center\" colspan=\"2\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\">1121212</td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">工作人员<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><br/></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">请假人员<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid;\" colspan=\"2\"><br/></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">1.巡查路线:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid;\" colspan=\"6\"><br/></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">2.巡查时间:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid;\" colspan=\"6\"><br/></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">3.巡查对象:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid;\" colspan=\"6\"><br/></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">4.巡查问题情况:<br/></span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">5.巡查处理情况:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr><tr><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"2\"><span style=\"font-size: 24px;\">6.其他工作:</span></td><td valign=\"middle\" align=\"center\" style=\"border-width: 1px; border-style: solid; word-break: break-all;\" colspan=\"6\"><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></td></tr></tbody></table>', '宝华镇', '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `cgshangbao`
-- ----------------------------
DROP TABLE IF EXISTS `cgshangbao`;
CREATE TABLE `cgshangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Categories` varchar(255) DEFAULT NULL COMMENT '类别',
  `smallcategories` varchar(255) DEFAULT NULL COMMENT '小类别',
  `submittime` date DEFAULT NULL COMMENT '提交时间',
  `dizhi1` varchar(255) DEFAULT NULL COMMENT '地址1',
  `dizhi2` varchar(255) DEFAULT NULL COMMENT '地址2',
  `people` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `miaoshu` varchar(255) DEFAULT NULL COMMENT '描述',
  `isdeleted` varchar(255) DEFAULT NULL,
  `lianren` varchar(50) DEFAULT NULL COMMENT '立案人',
  `liantime` date DEFAULT NULL COMMENT '立案时间',
  `paifaren` varchar(50) DEFAULT NULL,
  `paifatime` date DEFAULT NULL,
  `quality` varchar(1) DEFAULT NULL COMMENT '问题状态',
  `endtime` date DEFAULT NULL COMMENT '结束时间',
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgshangbao
-- ----------------------------
INSERT INTO `cgshangbao` VALUES ('7', null, null, null, null, null, null, null, null, null, '2', null, null, '123', '2018-11-19', null, null, null, null, null, '17712659161', '2018-11-15', 'A');
INSERT INTO `cgshangbao` VALUES ('8', null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '17712659161', '2018-11-15', 'A');
INSERT INTO `cgshangbao` VALUES ('9', '事件', '暴露垃圾', '2018-11-15', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', '邓华', '13643837762', '1542267569214.jpg', '垃圾堆放', '2', 'admin', '2018-11-19', '123', '2018-11-19', null, null, '31.281484', '120.544192', '宝华镇', '17712659161', '2018-11-15', 'A');
INSERT INTO `cgshangbao` VALUES ('10', '事件', '违法乱建', '2018-11-15', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', '邓华', '13643837762', '1542270539862.jpg', '违法建筑，占用马路', '0', null, null, null, null, null, null, '31.281469', '120.54423', '宝华镇', '17712659161', '2018-11-15', 'A');
INSERT INTO `cgshangbao` VALUES ('11', '事件', '暴露垃圾', '2018-11-15', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '1542270652095.jpg,1542270652190.jpg', '垃圾堆放', '0', null, null, null, null, null, null, '31.281469', '120.54423', '宝华镇', '17712659161', '2018-11-15', 'A');
INSERT INTO `cgshangbao` VALUES ('12', '事件', '违法乱建', '2018-11-16', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '', '违章建筑', '0', null, null, null, null, null, null, '31.281368', '120.54418', '宝华镇', '17712659161', '2018-11-16', 'A');
INSERT INTO `cgshangbao` VALUES ('15', '事件', '施工废弃料', '2018-11-17', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '1542420441097.jpg', '17号问题上报', null, '韩二魔', '2018-11-17', 'admin', '2018-11-17', null, null, '31.2814', '120.544175', '宝华镇', '17712659161', '2018-11-17', 'A');
INSERT INTO `cgshangbao` VALUES ('16', '事件', '违法乱建', '2018-11-17', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '1542420573928.jpg,1542420586436.jpg', '图片上传', '0', '韩二魔', '2018-11-17', 'admin', '2018-11-17', null, null, '31.2815', '120.54424', '宝华镇', '17712659161', '2018-11-17', 'A');
INSERT INTO `cgshangbao` VALUES ('18', null, null, '2018-11-17', null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, '宝华镇', '17712659161', '2018-11-17', 'A');

-- ----------------------------
-- Table structure for `cgsource`
-- ----------------------------
DROP TABLE IF EXISTS `cgsource`;
CREATE TABLE `cgsource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgsource
-- ----------------------------
INSERT INTO `cgsource` VALUES ('1', '01', '1', '附件图片地址', '01', '2018-10-29', 'D');
INSERT INTO `cgsource` VALUES ('2', '01', '2', null, '01', '2018-11-02', 'D');

-- ----------------------------
-- Table structure for `cguser`
-- ----------------------------
DROP TABLE IF EXISTS `cguser`;
CREATE TABLE `cguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `username` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `address` varchar(255) DEFAULT NULL COMMENT '地区',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL COMMENT '创建id',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cguser
-- ----------------------------
INSERT INTO `cguser` VALUES ('4', '姓名修改', '登录账号修改', '密码修改', '联系电话修改', '部门修改', '职位修改', '地区修改', '用户租户修改', '1', '2018-10-29', 'D');
INSERT INTO `cguser` VALUES ('5', '243214543', '5234534', '123456', '2532453', '3453253434', '342534', '123456789', null, '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('6', '45634645', '56654', '123456', '543656', '3656', '46456334', '5656', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('7', '464323', '54324523', '123456', '4534', '4352343', '45325', '3425324', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('8', '243214543', '5234534', '123456', '2532453', '3453253434', '342534', '11111111111111', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('9', '34432', '432423', '123456', '432432', '432423', '42343', '4234', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('10', '2312312', '3213123', '123456', '1232', '213', '213122', '3123', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('11', '111', '23', '123456', '3212', '1321', '32', '3123', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('12', '42432', '43243', '123456', '243234', '2343', '43243', '4324', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('13', '112', '3212', '123456', '44352344', '454', '34', '435', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('14', '45', '543', '123456', '546', '67', '676', '34', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('15', '5432', '435', '123456', '543', '3245', '435', '25', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('16', '234556', '754', '123456', '567', '325', '1243', '534', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('17', '45434', '4354', '123456', '35', '5435', '34', '5345', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('18', '234', '324', '123456', '656', '77', '6567', '657', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('19', '11', '1', '123456', '1', '1', '1', '1', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('20', '2', '2', '123456', '2', '2', '2', '2', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('21', '11', '1', '123456', '11', '1', '1', '1', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('22', '2', '22', '123456', '2', '2', '2', '2', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('23', '3', '3', '123456', '4', '5', '6', '7', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('24', '8', '9', '123456', '5', '3', '2', '5', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('25', '8', '8', '123456', '8', '8', '8', '8', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('26', '99', '9', '123456', '9', '9', '9', '9', '宝华镇', '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('27', '341534', '888', '123456', '3245', '34534', '5324', '53453', null, '1', '2018-11-01', 'D');
INSERT INTO `cguser` VALUES ('28', '341534', '888', '123456', '3245', '34534', '5324', '53453', null, '1', '2018-11-01', 'A');
INSERT INTO `cguser` VALUES ('29', '123', null, '123456', null, null, null, null, '宝华镇', '17712659161', '2018-11-05', 'A');
INSERT INTO `cguser` VALUES ('30', 'admin', 'admin', '123456', '12345678909', '', '', '', '宝华镇', '17712659161', '2018-11-17', 'A');
INSERT INTO `cguser` VALUES ('31', '张三', 'zhangsan', '1234567', '18976524526', '城管部门', '副主任', '宝华镇宝华村', null, '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `countryside_build`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_build`;
CREATE TABLE `countryside_build` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people` varchar(50) DEFAULT NULL COMMENT '申请人',
  `countryside` varchar(50) DEFAULT NULL COMMENT '自然村',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '建房地址',
  `registered_residence` varchar(255) DEFAULT NULL COMMENT '户口所在地',
  `scale` varchar(255) DEFAULT NULL COMMENT '建房规模',
  `reason` varchar(255) DEFAULT NULL COMMENT '申请建房理由',
  `publicity` varchar(255) DEFAULT NULL COMMENT '公示情况',
  `village_committee` varchar(255) DEFAULT NULL COMMENT '村委会初核意见',
  `homeland_view` varchar(255) DEFAULT NULL COMMENT '国土所意见',
  `supervise_view` varchar(255) DEFAULT NULL COMMENT '监管所规划意见',
  `law_view` varchar(255) DEFAULT NULL COMMENT '执法队意见',
  `government_view` varchar(255) DEFAULT NULL COMMENT '镇政府审核意见',
  `attachment_source` char(10) DEFAULT NULL COMMENT '图片关联',
  `card` varchar(255) DEFAULT NULL COMMENT '身份证复印件上传',
  `residence_booklet` varchar(255) DEFAULT NULL COMMENT '户口簿复印件上传',
  `state` varchar(10) DEFAULT NULL COMMENT '状态',
  `x` varchar(255) DEFAULT NULL COMMENT 'X',
  `y` varchar(255) DEFAULT NULL COMMENT 'Y',
  `inspect_explain` varchar(255) DEFAULT NULL COMMENT '验收情况说明',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_build
-- ----------------------------
INSERT INTO `countryside_build` VALUES ('2', '1111', '保护村', null, null, null, '1', null, null, null, null, null, null, null, '01', null, null, '01', null, null, null, null, null, '2018-10-31', 'D');
INSERT INTO `countryside_build` VALUES ('3', '1111', '宝华村', '', '', '', '1', '', '', '', '', '', '', '', '01', '', '', '01', null, null, null, null, null, '2018-10-31', 'D');
INSERT INTO `countryside_build` VALUES ('4', '11', '宝华村', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '01', 'C:\\fakepath\\定位.png', 'C:\\fakepath\\定位.png', '02', null, null, '备注', null, null, '2018-11-01', 'A');
INSERT INTO `countryside_build` VALUES ('5', '11', '宝华村', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '01', '', '', '01', null, null, null, null, null, '2018-11-01', 'D');
INSERT INTO `countryside_build` VALUES ('6', '1', '宝华村', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '01', '', '', '01', null, null, null, null, null, '2018-11-02', 'D');
INSERT INTO `countryside_build` VALUES ('7', '2', '宝华村', '', '2', '', '1', '2', '', '2', '', '2', '', '2', '01', '', '', '01', null, null, null, null, null, '2018-11-02', 'A');
INSERT INTO `countryside_build` VALUES ('8', '1', '宝华村', '', '2', '', '1', '22', '', '2', '', '', '', '', '01', 'C:\\fakepath\\常规.png', 'C:\\fakepath\\专项1.png', '01', null, null, null, null, null, '2018-11-02', 'D');
INSERT INTO `countryside_build` VALUES ('9', '申请人', '自然村', '联系电话', '建房地址', '户口所在地', '建房规模', '申请建房理由', '公示情况', '1', '1', '1', '1', '1', '01', '身份证复印件上传', '户口簿复印件上传', null, 'x', 'y', '111', '宝华镇', '17712659161', '2018-11-05', 'A');
INSERT INTO `countryside_build` VALUES ('10', '', '宝华村', '', '', '', '1', '', '', '', '', '', '', '', '01', '', '', null, null, null, null, '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_build` VALUES ('11', '111', '宝华村', '111', '111', '111', '1', '111', '111', '111', '111', '111', '111', '111', '01', 'C:\\fakepath\\denglu-bg.png', 'C:\\fakepath\\denglu-bg.png', null, null, null, null, '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_build` VALUES ('12', '', '宝华村', '', '', '', '1', '', '', '', '', '', '', '', '01', '', '', '01', null, null, null, '宝华镇', '17712659161', '2018-11-07', 'D');
INSERT INTO `countryside_build` VALUES ('13', '', '宝华村', '', '', '', '1', '', '', '', '', '', '', '', '01', '', '', '01', null, null, null, '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_build` VALUES ('14', 'test', '宝华村', '17712', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '01', 'C:\\fakepath\\01.课后回顾.avi', 'C:\\fakepath\\发票类型.png', null, null, null, null, '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_build` VALUES ('15', '11', '宝华村', '11', '', '', '3', '11', '11', '11', '11', '11', '11', '11', '01', 'C:\\fakepath\\图片1.png', '', '01', null, null, '', '宝华镇', '17712659161', '2018-11-15', 'A');

-- ----------------------------
-- Table structure for `countryside_chuli`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_chuli`;
CREATE TABLE `countryside_chuli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shangbaoid` int(11) DEFAULT NULL COMMENT '上报id',
  `chuliren` varchar(50) DEFAULT NULL COMMENT '处理人',
  `chulitime` date DEFAULT NULL COMMENT '处理时间',
  `chulimiaoshu` varchar(255) DEFAULT NULL COMMENT '处理描述',
  `shenheren` varchar(50) DEFAULT NULL COMMENT '审核人',
  `shenhetime` date DEFAULT NULL COMMENT '审核时间',
  `shenhemiaoshu` varchar(255) DEFAULT NULL COMMENT '审核描述',
  `attachment_source` char(10) DEFAULT NULL,
  `createId` varchar(50) DEFAULT NULL COMMENT '创建id',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_chuli
-- ----------------------------
INSERT INTO `countryside_chuli` VALUES ('3', '5', '处理人', '2018-11-01', '处理描述', '123', '2018-11-09', '123', '04', '1', '2018-11-01', 'A');
INSERT INTO `countryside_chuli` VALUES ('4', '6', '沈世杰_处理人', '2018-11-14', '处理描述', '', '2018-11-12', '', null, null, null, 'A');

-- ----------------------------
-- Table structure for `countryside_meeting`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_meeting`;
CREATE TABLE `countryside_meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容概述',
  `address` varchar(255) DEFAULT NULL COMMENT '会议地址',
  `meetingTime` datetime DEFAULT NULL COMMENT '会议时间',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL COMMENT '创建id',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_meeting
-- ----------------------------
INSERT INTO `countryside_meeting` VALUES ('1', '标题修改', '内容修改', null, null, '用户租户修改', '1', '2018-10-30', 'D');
INSERT INTO `countryside_meeting` VALUES ('2', '标题1', '内容111111111112222222222222222', '会议室', '2018-11-05 10:00:00', '宝华镇', '1', '2018-11-05', 'A');
INSERT INTO `countryside_meeting` VALUES ('3', '标题2', '内容111111111111111111111111111111111', '会议室', '2018-11-14 09:37:12', '宝华镇', '1', '2018-11-14', 'A');
INSERT INTO `countryside_meeting` VALUES ('4', '标题3', '内容222222222222222222222222222222222222222222222222222222222222222222222222222222', '阅览室', '2018-11-14 09:38:50', '宝华镇', '1', '2018-11-14', 'A');
INSERT INTO `countryside_meeting` VALUES ('5', '标题4', '内容4444444444444', '阅览室', '2018-11-14 09:39:17', '宝华镇', '1', '2018-11-14', 'A');
INSERT INTO `countryside_meeting` VALUES ('6', '123', '123', '123', '2018-11-11 00:00:00', '宝华镇', '17712659161', '2018-11-14', 'D');
INSERT INTO `countryside_meeting` VALUES ('7', '111', '111', '111', '2018-11-11 00:00:00', '宝华镇', '17712659161', '2018-11-14', 'D');
INSERT INTO `countryside_meeting` VALUES ('8', '1111', '1111', '1111', '2018-11-11 00:00:00', '宝华镇', '17712659161', '2018-11-14', 'D');

-- ----------------------------
-- Table structure for `countryside_news`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_news`;
CREATE TABLE `countryside_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_news
-- ----------------------------
INSERT INTO `countryside_news` VALUES ('2', '02', '标题修改', '内容修改', '附件地址修改', '句容市', null, '2018-10-25', 'A');
INSERT INTO `countryside_news` VALUES ('3', '02', '1', '1', '', '宝华镇', null, '2018-11-02', 'D');
INSERT INTO `countryside_news` VALUES ('4', '02', '2', '2', '', '宝华镇', null, '2018-11-02', 'D');
INSERT INTO `countryside_news` VALUES ('5', '02', '1', '1', '', '宝华镇', null, '2018-11-02', 'D');
INSERT INTO `countryside_news` VALUES ('6', '02', '', '', '', null, null, '2018-11-02', 'A');
INSERT INTO `countryside_news` VALUES ('7', '02', '888', '888', '1541147587652.png', '宝华镇', null, '2018-11-02', 'A');
INSERT INTO `countryside_news` VALUES ('8', '02', '1', '1', '1541147876754.png', '宝华镇', null, '2018-11-02', 'A');
INSERT INTO `countryside_news` VALUES ('9', '02', '99', '88', '1541147956687.png', '宝华镇', null, '2018-11-02', 'A');
INSERT INTO `countryside_news` VALUES ('10', '02', '1', '1', '', '宝华镇', '17712659161', '2018-11-07', 'D');
INSERT INTO `countryside_news` VALUES ('11', '02', 'a', '', '', '宝华镇', '17712659161', '2018-11-07', 'D');
INSERT INTO `countryside_news` VALUES ('12', '02', 'b', '', '', '宝华镇', '17712659161', '2018-11-07', 'D');
INSERT INTO `countryside_news` VALUES ('13', '02', '1', '1', '1541560729258.jpg', '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_news` VALUES ('14', '02', 'aa1', '', '', '宝华镇', '17712659161', '2018-11-07', 'A');
INSERT INTO `countryside_news` VALUES ('15', '02', '124', '124', '1541645391445.jpg', '宝华镇', '17712659161', '2018-11-07', 'D');
INSERT INTO `countryside_news` VALUES ('16', '02', '11', '11', '', '宝华镇', '17712659161', '2018-11-08', 'D');
INSERT INTO `countryside_news` VALUES ('17', '02', '22', '22', '', '宝华镇', '17712659161', '2018-11-08', 'D');
INSERT INTO `countryside_news` VALUES ('18', '02', '33', '33', '', '宝华镇', '17712659161', '2018-11-08', 'D');
INSERT INTO `countryside_news` VALUES ('19', '02', '1', '', '1542251264116.exe', '宝华镇', '17712659161', '2018-11-15', 'D');
INSERT INTO `countryside_news` VALUES ('20', '02', '测试', '<p>测试1111</p>', null, '宝华镇', '17712659161', '2018-11-18', 'A');

-- ----------------------------
-- Table structure for `countryside_problem`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_problem`;
CREATE TABLE `countryside_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(10) DEFAULT NULL COMMENT '状态',
  `title` varchar(255) DEFAULT NULL COMMENT '问题标题',
  `content` varchar(255) DEFAULT NULL COMMENT '问题内容',
  `attachment_source` char(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '问题类型',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `shangbaoren` varchar(50) DEFAULT NULL COMMENT '上报人',
  `shangbaotime` date DEFAULT NULL COMMENT '上报时间',
  `lianren` varchar(50) DEFAULT NULL COMMENT '立案人',
  `liantime` date DEFAULT NULL COMMENT '立案时间',
  `paifaren` varchar(50) DEFAULT NULL COMMENT '派发人',
  `paifatime` date DEFAULT NULL COMMENT '派发时间',
  `endtime` date DEFAULT NULL COMMENT '结束时间',
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL COMMENT '创建id',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `delflag` varchar(1) DEFAULT 'A' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_problem
-- ----------------------------
INSERT INTO `countryside_problem` VALUES ('4', '01', '标题修改', '内容修改', '03', '2', '地址修改', '上报人修改', '2018-11-01', '11', '2018-11-01', null, '2018-11-01', null, '', '', '宝华镇', '1', '2018-11-01', 'A');
INSERT INTO `countryside_problem` VALUES ('5', '03', '222', '222', '03', '3', '222', '222', '2018-11-01', '222', '2018-11-11', '222', '2018-11-11', '2018-12-12', '2', '2', '宝华镇', '17712659161', '2018-11-05', 'A');
INSERT INTO `countryside_problem` VALUES ('6', '01', 'testpro', 'pro', '03', '1', '111', 'admin', '2018-11-08', null, '2018-11-12', 'admin', '2018-11-12', null, '12', '12', '宝华镇', '17712659161', '2018-11-08', 'A');
INSERT INTO `countryside_problem` VALUES ('7', '04', '11', '11', '03', '1', '11', '11', '2018-11-11', 'admin', null, null, null, null, null, null, '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `countryside_problem` VALUES ('9', '00', '扬尘问题', '扬尘问题', '03', '1', '中国江苏省苏州市虎丘区珠江路东', 'admin', '2018-11-19', null, null, null, null, null, '31.281505', '120.544174', '宝华镇', '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `countryside_shangbao`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_shangbao`;
CREATE TABLE `countryside_shangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_shangbao
-- ----------------------------

-- ----------------------------
-- Table structure for `countryside_source`
-- ----------------------------
DROP TABLE IF EXISTS `countryside_source`;
CREATE TABLE `countryside_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryside_source
-- ----------------------------
INSERT INTO `countryside_source` VALUES ('1', '01', '1', '上传图片地址', '01', '2018-10-24', 'D');
INSERT INTO `countryside_source` VALUES ('2', '02', '1', '关联图片位置', '01', '2018-10-25', 'A');
INSERT INTO `countryside_source` VALUES ('3', '02', '2', '图片地址', '01', '2018-10-25', 'A');
INSERT INTO `countryside_source` VALUES ('4', '01', '2', null, '01', '2018-10-31', 'D');
INSERT INTO `countryside_source` VALUES ('5', '03', '3', '图片地址', '01', '2018-11-01', 'A');
INSERT INTO `countryside_source` VALUES ('6', '03', '4', '图片地址', '01', '2018-11-01', 'D');
INSERT INTO `countryside_source` VALUES ('7', '04', '3', '图片地址', '01', '2018-11-01', 'A');
INSERT INTO `countryside_source` VALUES ('8', '02', '7', null, '01', '2018-11-02', 'A');
INSERT INTO `countryside_source` VALUES ('9', '02', '8', null, '01', '2018-11-02', 'A');
INSERT INTO `countryside_source` VALUES ('10', '02', '9', null, '01', '2018-11-02', 'A');
INSERT INTO `countryside_source` VALUES ('11', '01', '9', '上传图片地址', '01', '2018-11-05', 'A');
INSERT INTO `countryside_source` VALUES ('12', '03', '5', '图片地址', '01', '2018-11-05', 'A');
INSERT INTO `countryside_source` VALUES ('13', '02', '10', null, '01', '2018-11-07', 'D');
INSERT INTO `countryside_source` VALUES ('14', '02', '11', null, '01', '2018-11-07', 'D');
INSERT INTO `countryside_source` VALUES ('15', '02', '12', null, '01', '2018-11-07', 'D');
INSERT INTO `countryside_source` VALUES ('16', '02', '13', null, '01', '2018-11-07', 'A');
INSERT INTO `countryside_source` VALUES ('17', '02', '14', null, '01', '2018-11-07', 'A');
INSERT INTO `countryside_source` VALUES ('18', '02', '15', null, '01', '2018-11-07', 'D');
INSERT INTO `countryside_source` VALUES ('19', '02', '16', null, '01', '2018-11-08', 'D');
INSERT INTO `countryside_source` VALUES ('20', '02', '17', null, '01', '2018-11-08', 'D');
INSERT INTO `countryside_source` VALUES ('21', '02', '18', null, '01', '2018-11-08', 'D');
INSERT INTO `countryside_source` VALUES ('22', '02', '19', null, '01', '2018-11-15', 'D');
INSERT INTO `countryside_source` VALUES ('23', '02', '20', null, '01', '2018-11-18', 'A');
INSERT INTO `countryside_source` VALUES ('24', '03', '8', '1542591109129.jpg', '01', '2018-11-19', 'A');
INSERT INTO `countryside_source` VALUES ('25', '03', '8', '1542591109201.jpg', '01', '2018-11-19', 'A');
INSERT INTO `countryside_source` VALUES ('26', '03', '9', '1542592185669.jpg', '01', '2018-11-19', 'A');
INSERT INTO `countryside_source` VALUES ('27', '03', '9', '1542592185716.jpg', '01', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `govmgt_org_structure`
-- ----------------------------
DROP TABLE IF EXISTS `govmgt_org_structure`;
CREATE TABLE `govmgt_org_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(8) DEFAULT NULL COMMENT '用户名称',
  `phone_number` varchar(16) DEFAULT NULL COMMENT '联系电话',
  `user_level` char(1) DEFAULT NULL COMMENT '级别',
  `user_position` varchar(16) DEFAULT NULL COMMENT '职位',
  `dep_name` varchar(16) DEFAULT NULL COMMENT '部门',
  `delflag` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `superior_id` int(11) DEFAULT NULL COMMENT '父id',
  `superior_user_name` char(8) DEFAULT NULL COMMENT '父用户名',
  `superior_dep_name` varchar(16) DEFAULT NULL COMMENT '父部门名',
  `user_sex` char(1) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govmgt_org_structure
-- ----------------------------
INSERT INTO `govmgt_org_structure` VALUES ('1', '杨世祥', '13705291005', '1', '副书记', '副书记', 'A', '2018-10-16 09:35:24', '0', null, null, '男');
INSERT INTO `govmgt_org_structure` VALUES ('2', '糜静娟', '13952961160', '2', '主任', '为人民服务中心', 'A', '2018-10-16 09:38:14', '1', '杨世祥', null, '女');
INSERT INTO `govmgt_org_structure` VALUES ('3', '董爱梅', '13861376986', '3', '主任', '人社', 'A', '2018-10-16 09:43:02', '2', '糜静娟', '为人民服务中心', '女');
INSERT INTO `govmgt_org_structure` VALUES ('4', '徐圆', '15162956169', '3', '工作人员', '计生', 'A', '2018-10-17 09:25:10', '2', '糜静娟', '为人民服务中心', '女');
INSERT INTO `govmgt_org_structure` VALUES ('5', '朱瑞', '15720751726', '3', '工作人员', '民政', 'A', '2018-10-17 09:27:38', '2', '糜静娟', '为人民服务中心', '女');
INSERT INTO `govmgt_org_structure` VALUES ('6', '吴世玲', '15262943728', '3', '工作人员', '农服', 'A', '2018-10-17 09:29:32', '2', '糜静娟', '为人民服务中心', '女');
INSERT INTO `govmgt_org_structure` VALUES ('7', '张远华', '13625260031', '3', '工作人员', '村镇', 'A', '2018-10-17 09:30:59', '2', '糜静娟', '为人民服务中心', '男');
INSERT INTO `govmgt_org_structure` VALUES ('8', '金鑫', '15152924193', '3', '工作人员', '司法', 'A', '2018-10-17 09:32:08', '2', '糜静娟', '为人民服务中心', '男');
INSERT INTO `govmgt_org_structure` VALUES ('9', '巫君', '13400056966', '3', '工作人员', '信访', 'A', '2018-10-17 09:33:52', '2', '糜静娟', '为人民服务中心', '女');
INSERT INTO `govmgt_org_structure` VALUES ('10', '陈叶', '18805297979', '3', '工作人员', '全科综合', 'A', '2018-10-17 09:34:47', '2', '糜静娟', '为人民服务中心', '女');

-- ----------------------------
-- Table structure for `govmgt_problem`
-- ----------------------------
DROP TABLE IF EXISTS `govmgt_problem`;
CREATE TABLE `govmgt_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `problem_description` varchar(20000) DEFAULT NULL COMMENT '问题描述',
  `attachment_source` char(2) DEFAULT NULL COMMENT '问题关联资源',
  `create_name` char(8) DEFAULT NULL COMMENT '报送人',
  `create_time` datetime DEFAULT NULL COMMENT '报送时间',
  `delflag` char(1) DEFAULT NULL,
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govmgt_problem
-- ----------------------------
INSERT INTO `govmgt_problem` VALUES ('1', null, '登录页面存在问题', '02', 'admin', '2018-09-29 11:13:25', 'D', null, null);
INSERT INTO `govmgt_problem` VALUES ('2', null, '路由器坏了', '02', 'admin', '2018-09-30 11:14:23', 'D', null, null);
INSERT INTO `govmgt_problem` VALUES ('3', null, null, '02', null, null, 'D', null, null);
INSERT INTO `govmgt_problem` VALUES ('4', null, 'a12345', '02', null, '2018-10-17 13:55:48', 'D', null, null);
INSERT INTO `govmgt_problem` VALUES ('5', null, '365756767', '02', '165746', '2018-10-17 14:09:06', 'D', null, null);
INSERT INTO `govmgt_problem` VALUES ('6', null, '11', '02', '11', '2018-11-15 09:14:01', 'D', '宝华镇', '17712659161');
INSERT INTO `govmgt_problem` VALUES ('7', '问题标题修改', '问题内容修改', '02', null, '2018-11-19 10:34:39', 'D', '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `govmgt_source`
-- ----------------------------
DROP TABLE IF EXISTS `govmgt_source`;
CREATE TABLE `govmgt_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(2) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `file_type` char(4) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_url` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govmgt_source
-- ----------------------------
INSERT INTO `govmgt_source` VALUES ('1', '02', '1', null, null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('2', '02', '1', null, null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('3', '02', '2', null, null, null, null, 'A', null);
INSERT INTO `govmgt_source` VALUES ('4', '02', '2', null, null, null, null, 'A', null);
INSERT INTO `govmgt_source` VALUES ('5', '02', '3', 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('6', '02', '3', 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('7', '02', null, 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('8', '02', null, 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('9', '02', '3', 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('10', '02', '3', 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('11', '01', '1', 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('12', '01', '1', 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('13', '01', '2', 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('14', '01', '2', 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('15', '01', '7', 'docx', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('16', '01', '7', 'xls', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('17', '01', '3', 'd11', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('18', '01', '3', '222', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('19', '01', '7', 'd11', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('20', '01', '7', '222', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('21', '01', '7', 'd121', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('22', '01', '7', '332', null, null, null, 'D', null);
INSERT INTO `govmgt_source` VALUES ('23', '01', '7', '1111', null, null, null, 'A', null);
INSERT INTO `govmgt_source` VALUES ('24', '01', '7', '2222', null, null, null, 'A', null);
INSERT INTO `govmgt_source` VALUES ('25', '01', '8', null, null, null, '2018-10-15 15:05:20', 'D', null);
INSERT INTO `govmgt_source` VALUES ('26', '01', '8', null, null, null, '2018-10-15 15:05:21', 'D', null);
INSERT INTO `govmgt_source` VALUES ('27', '01', '8', null, null, null, '2018-10-15 15:10:12', 'D', null);
INSERT INTO `govmgt_source` VALUES ('28', '01', '8', null, null, null, '2018-10-15 15:10:12', 'D', null);
INSERT INTO `govmgt_source` VALUES ('29', '02', '4', null, null, null, '2018-10-17 13:55:48', 'A', null);
INSERT INTO `govmgt_source` VALUES ('30', '02', '4', null, null, null, '2018-10-17 13:55:48', 'A', null);
INSERT INTO `govmgt_source` VALUES ('31', '01', '8', null, null, null, '2018-11-07 10:59:28', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('32', '01', '8', null, null, null, '2018-11-07 10:59:28', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('33', '01', '8', null, null, null, '2018-11-07 11:00:06', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('34', '01', '8', null, null, null, '2018-11-07 11:00:06', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('35', '01', '35', null, null, null, '2018-11-16 15:12:36', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('36', '01', '35', null, null, null, '2018-11-16 15:12:36', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('37', '01', null, null, null, null, '2018-11-16 15:14:27', 'A', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('38', '01', null, null, null, null, '2018-11-16 15:14:27', 'A', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('39', '01', '35', null, null, null, '2018-11-16 15:15:57', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('40', '01', '35', null, null, null, '2018-11-16 15:15:57', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('41', '01', '35', null, null, null, '2018-11-16 15:16:22', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('42', '01', '35', null, null, null, '2018-11-16 15:16:23', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('43', '01', '35', null, null, null, '2018-11-17 14:10:29', 'A', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('44', '02', '7', null, '图片名', '图片位置', '2018-11-19 10:11:14', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('45', '02', null, null, '图片名修改', '图片位置修改', '2018-11-19 10:31:40', 'A', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('46', '02', '7', null, '图片名修改', '图片位置修改', '2018-11-19 10:32:36', 'D', '宝华镇');
INSERT INTO `govmgt_source` VALUES ('47', '02', '7', null, '图片名修改', '图片位置修改', '2018-11-19 10:35:40', 'D', '宝华镇');

-- ----------------------------
-- Table structure for `govmgt_user`
-- ----------------------------
DROP TABLE IF EXISTS `govmgt_user`;
CREATE TABLE `govmgt_user` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_name` char(8) DEFAULT NULL COMMENT '姓名',
  `user_sex` char(1) DEFAULT NULL COMMENT '性别',
  `tel_number` varchar(16) DEFAULT NULL COMMENT '手机号',
  `user_level` char(1) DEFAULT NULL COMMENT '层级',
  `user_postition` varchar(16) DEFAULT NULL COMMENT '职位',
  `dep_name` varchar(16) DEFAULT NULL COMMENT '部门',
  `create_name` char(8) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL COMMENT '密码',
  `user_number` varchar(32) DEFAULT NULL COMMENT '编号',
  `superior_id` int(11) DEFAULT NULL COMMENT '父id',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govmgt_user
-- ----------------------------
INSERT INTO `govmgt_user` VALUES ('1', 'wj232141', '男', '17712659161', null, '程序员', '开发部', null, '2018-09-29 10:52:17', 'A', null, null, null, null, null);
INSERT INTO `govmgt_user` VALUES ('2', 'wjp', '男', '13505127248', '2', 'swm', 'abc', 'admin', '2018-09-30 10:53:49', 'A', '123456', null, null, null, null);
INSERT INTO `govmgt_user` VALUES ('3', 'abc', '女', null, null, null, null, null, null, 'A', null, null, null, null, null);
INSERT INTO `govmgt_user` VALUES ('4', '杨世祥', '男', '13705291005', '1', '副书记', '副书记', null, '2018-10-17 10:07:04', 'A', '123456', 'ZWU20181013101926', '0', null, null);
INSERT INTO `govmgt_user` VALUES ('5', '糜静娟', '女', '13952961160', '2', '主任', '为人民服务中心', null, '2018-10-17 10:12:04', 'A', '123456', 'ZWU20181014101926', '4', null, null);
INSERT INTO `govmgt_user` VALUES ('6', '董爱梅', '女', '13861376986', '3', '主任', '人社', null, '2018-10-17 10:13:26', 'A', '123456', 'ZWU20181015101926', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('7', '徐圆', '女', '15162956169', '3', '工作人员', '计生', null, '2018-10-17 10:14:59', 'A', '123456', 'ZWU20181016101926', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('8', '朱瑞', '女', '15720751726', '3', '工作人员', '民政', null, '2018-10-17 10:16:10', 'A', '123456', 'ZWU20181017101926', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('9', '吴世玲', '女', '15262943728', '3', '工作人员', '农服', null, '2018-10-17 10:18:06', 'A', '123456', 'ZWU20181017101901', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('10', '张远华', '男', '13625260031', '3', '工作人员', '村镇', null, '2018-10-17 10:18:51', 'A', '123456', 'ZWU20181017101902', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('11', '金鑫', '男', '15152924193', '3', '工作人员', '司法', null, '2018-10-17 10:19:35', 'A', '123456', 'ZWU20181017101903', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('12', '巫君', '女', '13400056966', '3', '工作人员', '信访', null, '2018-10-17 10:20:11', 'A', '123456', 'ZWU20181017101904', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('13', '陈叶', '女', '18805297979', '3', '工作人员', '全科综合', null, '2018-10-17 10:20:44', 'A', '123456', 'ZWU20181017101905', '5', null, null);
INSERT INTO `govmgt_user` VALUES ('14', '哈哈哈', '男', '123244315', null, '哈哈哈', '阿九阿九急啊', null, '2018-10-17 14:03:47', 'A', '123456', null, null, null, null);
INSERT INTO `govmgt_user` VALUES ('15', '111', '男', null, null, '111', '111', null, '2018-10-17 16:19:50', 'A', '123456', null, null, null, null);
INSERT INTO `govmgt_user` VALUES ('16', '343123', '女', '3124312', null, '4133', '4', null, '2018-11-07 14:51:37', 'A', '123456', 'ZWU2018117145136', null, '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `govmgt_work`
-- ----------------------------
DROP TABLE IF EXISTS `govmgt_work`;
CREATE TABLE `govmgt_work` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `work_type` char(1) DEFAULT NULL COMMENT '工作类型',
  `work_content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `work_enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `attachment_source` char(2) DEFAULT NULL COMMENT '关联资源',
  `work_title` varchar(64) DEFAULT NULL COMMENT '工作标题',
  `create_time` datetime DEFAULT NULL,
  `create_name` char(8) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `work_number` varchar(32) DEFAULT NULL COMMENT '编号',
  `work_state` char(2) DEFAULT NULL COMMENT '状态',
  `dep_name` varchar(16) DEFAULT NULL COMMENT '部门',
  `work_policy_type` char(2) DEFAULT NULL COMMENT '工作中的政策类型',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govmgt_work
-- ----------------------------
INSERT INTO `govmgt_work` VALUES ('1', '1', '工作日志1', null, '01', '请问', '2018-09-29 11:38:25', null, 'D', 'ZW20181013101926', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('2', '1', '工作日志2', null, '01', '你好', '2018-09-30 11:38:44', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('3', '1', 'adddd', null, null, null, null, null, 'D', 'ZW20181015101926', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('4', '2', '风采展现2', null, '01', '你好', '2018-09-30 11:39:48', null, 'D', 'ZW20181013101911', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('5', '3', '政策信息1', null, '01', '请问', '2018-09-29 11:40:23', null, 'D', 'ZW20181016101912', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('6', '3', '政策信息2', null, '01', '你好', '2018-09-30 11:40:47', null, 'A', 'ZW20181016101913', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('7', '1', 'wj123', null, '01', null, null, null, 'A', 'ZW20181016101915', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('8', '1', 'abc111', null, '01', 'test', null, null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('9', null, null, null, '01', 'test123', '2018-10-16 10:19:27', null, 'A', 'ZW20181016101956', null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('10', '1', '<p>啊是</p>', null, '01', '啊', '2018-10-16 13:30:49', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('11', '1', '111', null, '01', '1111', '2018-10-16 13:45:20', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('12', '1', '222', null, '01', '222', '2018-10-16 13:45:31', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('13', '1', '333', null, '01', '333', '2018-10-16 13:50:53', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('14', '1', '444', null, '01', '4444', '2018-10-16 13:52:40', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('15', '1', '555', null, '01', '555', '2018-10-16 13:52:49', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('16', '1', '666', null, '01', '666', '2018-10-16 13:53:11', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('17', '2', '111111111111111', null, '01', '111111111111222', '2018-10-17 10:27:30', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('18', '1', '啊哈哈哈哈哈', null, '01', '哈哈哈哈嘿嘿', '2018-10-17 13:37:09', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('19', '3', '翡翡翡翡翡翡翡覅欸发', null, '01', '韩非韩非111', '2018-10-17 13:40:35', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('20', '1', '', null, '01', '', '2018-10-17 14:15:54', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('21', '1', '', null, '01', '', '2018-10-17 14:16:19', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('22', '1', '', null, '01', '', '2018-10-17 14:17:12', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('23', '1', '', null, '01', '', '2018-10-17 14:17:32', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('24', '1', '', null, '01', '', '2018-10-17 14:17:51', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('25', '1', '', null, '01', '', '2018-10-17 14:19:22', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('26', '1', '', null, '01', '', '2018-10-17 14:20:23', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('27', '1', '', null, '01', '', '2018-10-17 14:21:15', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('28', '1', '', null, '01', '', '2018-10-17 14:21:31', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('29', '1', '<table class=\"MsoTableGrid\" border=\"1\" cellspacing=\"0\" align=\"center\" style=\"width:744pt;border:none;\">\n	<tbody>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">部门</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"395\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\" colspan=\"3\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<u><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;2222222222</span></u>\n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">第一部分 &nbsp;上月工作完成情况233333333333</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span>\n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">常规工作</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;5555555555</span>\n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">专项工作</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;444444444444</span>\n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">第二部分</span></b><b><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;&nbsp;&nbsp;下月工作计划</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span> \n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666</span>\n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span> \n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">(注：工作计划应明确工作内容、要求及完成时间）</span><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n		</tr>\n	</tbody>\n</table>', null, '01', '111111111', '2018-10-17 14:45:49', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('30', '1', '<table class=\"MsoTableGrid\" border=\"1\" cellspacing=\"0\" align=\"center\" style=\"width:744pt;border:none;\">\n	<tbody>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">部门</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"395\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\" colspan=\"3\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<u><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;1342哈哈哈哈</span></u>\n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">第一部分 &nbsp;上月工作完成情况321412</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">常规工作</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;21423</span> \n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">专项工作</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n			<td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;42134</span> \n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<b><span style=\"font-family:仿宋;font-size:14pt;\">第二部分</span></b><b><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;&nbsp;&nbsp;下月工作计划</span></b><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n		</tr>\n		<tr>\n			<td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\">\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;1234123423412</span> \n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span> \n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-indent:14.0000pt;text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span> \n				</p>\n				<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\n					<span style=\"font-family:仿宋;font-size:14pt;\">(注：工作计划应明确工作内容、要求及完成时间）</span><span style=\"font-family:仿宋;font-size:14pt;\"></span> \n				</p>\n			</td>\n		</tr>\n	</tbody>\n</table>', null, '01', '243241321哈哈哈哈', null, null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('31', '2', '8467875867', null, '01', '5656754746', '2018-11-07 14:09:14', null, 'A', 'ZW201811714913', null, null, null, '宝华镇', '17712659161');
INSERT INTO `govmgt_work` VALUES ('32', '1', '<table class=\"MsoTableGrid\" border=\"1\" align=\"center\" style=\"width: 744pt; border: none;\"><tbody><tr class=\"firstRow\"><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">部门</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"395\" valign=\"center\" style=\"border: 1pt solid windowtext; word-break: break-all;\" colspan=\"3\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"text-decoration:underline;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;32141234123</span></span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">第一部分 &nbsp;上月工作完成情况</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr><tr><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">常规工作</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border: 1pt solid windowtext; word-break: break-all;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;3243241231</span></p></td></tr><tr><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">专项工作</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border: 1pt solid windowtext; word-break: break-all;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;42341423</span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">第二部分</span></strong><strong><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;&nbsp;&nbsp;下月工作计划</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">(注：工作计划应明确工作内容、要求及完成时间）</span><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr></tbody></table>', null, '01', '242134123hahah', '2018-11-07 15:36:02', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('33', '1', '<table class=\"MsoTableGrid\" border=\"1\" align=\"center\" style=\"width: 744pt; border: none;\"><tbody><tr class=\"firstRow\"><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">部门</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"395\" valign=\"center\" style=\"border: 1pt solid windowtext; word-break: break-all;\" colspan=\"3\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"text-decoration:underline;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;官匹</span></span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">第一部分 &nbsp;上月工作完成情况</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr><tr><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">常规工作</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p></td></tr><tr><td width=\"101\" valign=\"center\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:center;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">专项工作</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td><td width=\"890\" valign=\"top\" colspan=\"3\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;\"><strong><span style=\"font-family:仿宋;font-size:14pt;\">第二部分</span></strong><strong><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;&nbsp;&nbsp;下月工作计划</span></strong><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr><tr><td width=\"992\" valign=\"top\" colspan=\"4\" style=\"border:1.0000pt solid windowtext;\"><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:14.0000pt;\"><span style=\"font-family:仿宋;font-size:14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify;\"><span style=\"font-family:仿宋;font-size:14pt;\">(注：工作计划应明确工作内容、要求及完成时间）</span><span style=\"font-family:仿宋;font-size:14pt;\"></span></p></td></tr></tbody></table>', null, '01', '韩菲', '2018-11-15 09:04:57', null, 'D', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('34', '2', '', null, '01', '韩菲', '2018-11-15 09:10:15', null, 'D', 'ZW2018111591014', null, null, null, '宝华镇', '17712659161');
INSERT INTO `govmgt_work` VALUES ('35', '2', '123', '123', '01', '123', '2018-11-17 14:01:26', null, 'A', null, null, null, null, '宝华镇', '17712659161');
INSERT INTO `govmgt_work` VALUES ('36', '3', '<p>测试测试测试测试测试111111</p>', null, '01', '测试', '2018-11-17 21:40:01', null, 'A', null, null, null, null, null, null);
INSERT INTO `govmgt_work` VALUES ('37', '2', '<p>测试测试测试测试测试22222</p>', null, '01', '测试', '2018-11-17 21:57:56', null, 'A', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hidden_danger`
-- ----------------------------
DROP TABLE IF EXISTS `hidden_danger`;
CREATE TABLE `hidden_danger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL COMMENT '图片',
  `address` varchar(255) DEFAULT NULL COMMENT '位置',
  `remarks` varchar(255) DEFAULT NULL COMMENT '描述',
  `name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `number` varchar(255) DEFAULT NULL COMMENT '企业编码',
  `people` varchar(50) DEFAULT NULL COMMENT '发现人',
  `department` varchar(50) DEFAULT NULL COMMENT '移交部门',
  `assign` varchar(50) DEFAULT NULL COMMENT '指派人',
  `completeDate` date DEFAULT NULL COMMENT '移交计划完成日期',
  `solve` varchar(255) DEFAULT NULL COMMENT '整改措施',
  `state` varchar(10) DEFAULT '01' COMMENT '状态',
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hidden_danger
-- ----------------------------
INSERT INTO `hidden_danger` VALUES ('3', '02', '111111111111', null, '111111', '111111111111', 'admin', '安全部', null, null, null, '01', null, null, null, null, '2018-10-18', '0');
INSERT INTO `hidden_danger` VALUES ('4', '02', '22222222222', '222222222', '22222222222', '22222222', 'admin', '安全部', null, null, null, '03', null, null, null, null, '2018-10-18', '0');
INSERT INTO `hidden_danger` VALUES ('5', '02', '123', null, null, null, 'admin', '安全部', null, null, null, '02', null, null, '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `hidden_danger` VALUES ('6', '02', '位置', '描述', '移交test', '企业编码', 'admin', '移交部门', null, '2018-11-21', '123', '04', 'x', 'y', '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `hidden_danger` VALUES ('7', '02', '隐患位置修改', '隐患描述修改', '移交test', '企业编号修改', 'admin', '移交部门', '指派人', '2018-11-12', '解决描述', '04', '坐标x修改', '坐标y修改', '用户租户修改', '17712659161', '2018-11-06', '0');
INSERT INTO `hidden_danger` VALUES ('8', '02', '', '', 'test1', '11', 'admin', null, null, null, null, '01', null, null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `hidden_danger` VALUES ('9', '02', '122', '122', 'aaa222', '11222', 'admin', '222', null, null, null, '01', null, null, null, '17712659161', '2018-11-09', '1');

-- ----------------------------
-- Table structure for `hwchuli`
-- ----------------------------
DROP TABLE IF EXISTS `hwchuli`;
CREATE TABLE `hwchuli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shangbaoid` int(11) DEFAULT NULL,
  `chuliren` varchar(255) DEFAULT NULL COMMENT '处理人',
  `chulitime` date DEFAULT NULL COMMENT '处理时间',
  `chulimiaoshu` varchar(255) DEFAULT NULL COMMENT '处理描述',
  `sheheren` varchar(255) DEFAULT NULL COMMENT '审核人',
  `shehetime` date DEFAULT NULL COMMENT '审核时间',
  `shehemiaoshu` varchar(255) DEFAULT NULL COMMENT '审核描述',
  `photo1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwchuli
-- ----------------------------
INSERT INTO `hwchuli` VALUES ('2', '1', 'admin', '2018-11-17', '处理好了', null, null, null, '1542437510992.jpg,1542437511039.jpg');

-- ----------------------------
-- Table structure for `hwinformation`
-- ----------------------------
DROP TABLE IF EXISTS `hwinformation`;
CREATE TABLE `hwinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类别',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `attachment_source` char(10) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL,
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwinformation
-- ----------------------------
INSERT INTO `hwinformation` VALUES ('1', null, '标题修改', '内容修改', '附件地址修改', '01', '用户租户修改', '1', '2018-11-02', 'D');
INSERT INTO `hwinformation` VALUES ('2', null, '标题315443553754', '内容24534167686786786', '附件地址', '01', null, '1', '2018-11-02', 'A');
INSERT INTO `hwinformation` VALUES ('3', null, '345314535', '324524645', '', '01', '宝华镇', '17712659161', '2018-11-06', 'D');
INSERT INTO `hwinformation` VALUES ('4', null, '657647546', '7686748', '', '01', '宝华镇', '17712659161', '2018-11-06', 'D');
INSERT INTO `hwinformation` VALUES ('5', '1', '2421135134534', '啊啊啊', '', '01', null, '17712659161', '2018-11-06', 'A');
INSERT INTO `hwinformation` VALUES ('6', '1', '啊', '啊啊啊', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('7', '1', '啊啊啊', '啊啊啊啊啊啊', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('8', '1', '111', '222', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('9', '1', '外网', '事实上', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('10', '1', '我问问', '事实上', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('11', '1', '我问问', '事实上', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('12', '1', '222', '333', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('13', '1', '外网', '我问问', '', '01', '宝华镇', '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('14', '1', '222333', '<p>22</p>', '', '01', null, '17712659161', '2018-11-13', 'A');
INSERT INTO `hwinformation` VALUES ('15', '1', '4564365', '<p>436456435</p>', '1542430250448.jpg', '01', '宝华镇', '17712659161', '2018-11-17', 'D');
INSERT INTO `hwinformation` VALUES ('16', '1', '智慧环卫系统正式上线！！！', '<p>智慧环卫系统正式上线！！！@@@</p>', '1542612995957.png', '01', null, '17712659161', '2018-11-19', 'D');
INSERT INTO `hwinformation` VALUES ('17', '2', '111111111', '<p>1111111111111111111132222222</p>', '1542613164365.png', '01', null, '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `hwshangbao`
-- ----------------------------
DROP TABLE IF EXISTS `hwshangbao`;
CREATE TABLE `hwshangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Categories` varchar(255) DEFAULT NULL COMMENT '类别',
  `smallcategories` varchar(255) DEFAULT NULL COMMENT '小类别',
  `submittime` datetime DEFAULT NULL COMMENT '提交时间',
  `dizhi1` varchar(255) DEFAULT NULL COMMENT '地址1',
  `dizhi2` varchar(255) DEFAULT NULL COMMENT '地址2',
  `people` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `miaoshu` varchar(255) DEFAULT NULL COMMENT '描述',
  `isdeleted` varchar(255) DEFAULT NULL,
  `lianren` varchar(50) DEFAULT NULL COMMENT '立案人',
  `liantime` datetime DEFAULT NULL COMMENT '立案时间',
  `paifaren` varchar(50) DEFAULT NULL,
  `paifatime` datetime DEFAULT NULL,
  `quality` varchar(1) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwshangbao
-- ----------------------------
INSERT INTO `hwshangbao` VALUES ('1', '类别', '小类别', '2018-10-25 16:20:40', '地址1', '地址2', 'admin', '电话', '上传图片', '描述', '2', '', '2018-10-25 16:22:05', 'admin', '2018-10-25 16:22:33', null, '2018-10-25 08:00:00', '坐标x', '坐标y', '宝华镇', '17712659161', null, 'A');
INSERT INTO `hwshangbao` VALUES ('2', '软件', '硬件', '2018-10-26 12:46:41', '222', '23431543', '2345324', null, ',,', null, '4', 'admin', null, null, null, null, null, null, null, '宝华镇', '17712659161', null, 'A');
INSERT INTO `hwshangbao` VALUES ('3', '道路', '路面垃圾', '2018-11-15 16:25:15', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', '邓华', '13643837762', '1542270310117.jpg', '路面垃圾未清扫', '1', 'admin', '2018-11-17 12:44:03', null, null, null, null, '31.281344', '120.544198', '宝华镇', '17712659161', '2018-11-15', 'A');
INSERT INTO `hwshangbao` VALUES ('4', '道路', '路面垃圾', '2018-11-16 17:37:17', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '', '环卫上报', '1', 'admin', '2018-11-19 15:42:00', null, null, null, null, '31.281347', '120.54421', '宝华镇', '17712659161', '2018-11-16', 'A');
INSERT INTO `hwshangbao` VALUES ('5', '道路', '路面垃圾', '2018-11-17 10:28:21', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '1542421700325.jpg,1542421700507.jpg', '环卫问题上报', '1', 'admin', '2018-11-19 15:49:25', null, null, null, null, '31.281375', '120.544177', '宝华镇', '17712659161', '2018-11-17', 'A');
INSERT INTO `hwshangbao` VALUES ('6', '道路', '路面垃圾', '2018-11-19 14:34:51', '中国江苏省苏州市虎丘区珠江路东', '中国江苏省苏州市虎丘区珠江路东', 'admin', '13643837762', '1542609291351.jpg', '环卫问题', '1', 'admin', '2018-11-19 14:35:13', null, null, null, null, '31.281482', '120.544268', '宝华镇', '17712659161', '2018-11-19', 'A');

-- ----------------------------
-- Table structure for `hwsource`
-- ----------------------------
DROP TABLE IF EXISTS `hwsource`;
CREATE TABLE `hwsource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwsource
-- ----------------------------
INSERT INTO `hwsource` VALUES ('1', '01', '1', '附件图片地址', '01', '2018-11-02', 'D');
INSERT INTO `hwsource` VALUES ('2', '01', '2', null, '01', '2018-11-02', 'A');

-- ----------------------------
-- Table structure for `hwuser`
-- ----------------------------
DROP TABLE IF EXISTS `hwuser`;
CREATE TABLE `hwuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL,
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `delflag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hwuser
-- ----------------------------
INSERT INTO `hwuser` VALUES ('1', 'admin', 'admin', '123456', '78678', '6758', '678', '6578', null, '17712659161', '2018-11-07', 'A');
INSERT INTO `hwuser` VALUES ('2', '张', '22', '123456', '2222', '等等', '等等', '到底', '宝华镇', '17712659161', '2018-11-13', 'A');

-- ----------------------------
-- Table structure for `inspection_record`
-- ----------------------------
DROP TABLE IF EXISTS `inspection_record`;
CREATE TABLE `inspection_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL COMMENT '巡检点编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `address` varchar(255) DEFAULT NULL COMMENT '位置',
  `department` char(10) DEFAULT NULL COMMENT '所属部门',
  `people` varchar(50) DEFAULT NULL COMMENT '负责人',
  `attachment_source` char(10) DEFAULT NULL COMMENT '图片关联',
  `x` varchar(255) DEFAULT NULL COMMENT 'X',
  `y` varchar(255) DEFAULT NULL COMMENT 'Y',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inspection_record
-- ----------------------------
INSERT INTO `inspection_record` VALUES ('20', '22222', '22222', null, '222222', '222222', '01', '22', '22', null, null, '2018-10-18', '0');
INSERT INTO `inspection_record` VALUES ('21', '123', null, null, null, null, '01', null, null, '宝华镇', '17712659161', '2018-11-05', '1');
INSERT INTO `inspection_record` VALUES ('22', '111111', 'test111', null, 'bb11', 'aa111', '01', '10111', '1111', null, '17712659161', '2018-11-08', '0');
INSERT INTO `inspection_record` VALUES ('23', '', 'a', null, '', '', '01', '', '', '宝华镇', '17712659161', '2018-11-08', '1');
INSERT INTO `inspection_record` VALUES ('24', '', 'b', null, '', '', '01', '', '', '宝华镇', '17712659161', '2018-11-08', '1');

-- ----------------------------
-- Table structure for `keypro_dep`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_dep`;
CREATE TABLE `keypro_dep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `dep_leader` char(8) DEFAULT '' COMMENT '单位负责人',
  `phone_number` varchar(16) DEFAULT NULL COMMENT '联系方式',
  `dep_address` varchar(32) DEFAULT NULL COMMENT '单位地址',
  `work_content` varchar(800) DEFAULT NULL COMMENT '工作内容',
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_dep
-- ----------------------------
INSERT INTO `keypro_dep` VALUES ('1', '工程规划部', '彭文', '13815162305', '宝华镇开发区广电大楼三楼', '管理项目的选址', '2018-10-16 16:06:56', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('2', '开发部', '小王', '17712659161', '镇江句容', '搬砖', '2018-10-16 16:07:40', 'A', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('3', '市场部', 'ssj132', '13505127248', '123', '141', '2018-10-17 11:30:10', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('4', '5464356', '643564', '435645', '5466', '54646', '2018-10-29 10:25:38', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('5', '432', '432', '432', '432', '342', '2018-11-07 16:53:27', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('6', '彭文', null, null, null, null, '2018-10-16 16:06:56', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('7', '小王', null, null, null, null, '2018-10-16 16:07:40', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('8', 'ssj132', null, null, null, null, '2018-10-18 11:30:10', 'A', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('9', '643564', null, null, null, null, '2018-10-29 10:25:38', 'D', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('10', '开发部', '小王', '17712659161', '镇江句容', '搬砖', '2018-10-16 16:07:40', 'A', '宝华镇', '17712659161');
INSERT INTO `keypro_dep` VALUES ('11', 'ssj132', '', '', '', '', '2018-10-18 11:30:10', 'A', '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `keypro_info_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_info_delivery`;
CREATE TABLE `keypro_info_delivery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info_title` varchar(32) DEFAULT NULL COMMENT '信息标题',
  `info_des` varchar(20000) DEFAULT NULL COMMENT '信息描述',
  `info_pic_type` char(1) DEFAULT NULL COMMENT '信息图片类型',
  `attachment_source` char(2) DEFAULT NULL COMMENT '关联图片资源类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `create_name` char(8) DEFAULT NULL COMMENT '创建者',
  `create_id` varchar(16) DEFAULT NULL COMMENT '创建id',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_info_delivery
-- ----------------------------
INSERT INTO `keypro_info_delivery` VALUES ('1', '信息发布test', '这是信息发布', '1', null, null, null, 'D', null, null, null);
INSERT INTO `keypro_info_delivery` VALUES ('2', '信息发布test2', '这是信息发布', '2', null, null, null, 'D', null, null, null);
INSERT INTO `keypro_info_delivery` VALUES ('3', 'test', null, null, null, null, null, 'A', null, null, null);
INSERT INTO `keypro_info_delivery` VALUES ('4', 'wj666', null, '1', null, null, null, 'D', null, null, null);
INSERT INTO `keypro_info_delivery` VALUES ('5', '111', '222', '1', null, '2018-11-09 13:54:39', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('6', '341', '2341', '1', null, '2018-11-09 14:25:55', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('7', '341123411', '2341234', '1', null, '2018-11-09 14:26:03', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('8', '3124', '21342', '1', null, '2018-11-09 14:26:11', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('9', '34', '3242', '1', null, '2018-11-09 14:30:14', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('10', '324', '234', '1', null, '2018-11-09 14:30:22', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('11', '3243', '24', '1', null, '2018-11-09 14:30:29', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('12', '3', '23', '1', null, '2018-11-09 15:00:13', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('13', '14', '21323', '1', null, '2018-11-09 15:00:21', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('14', '21321', '3', '1', null, '2018-11-09 15:00:28', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('15', '123', '312', '1', null, '2018-11-09 15:00:35', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('16', '去2', '231', '1', null, '2018-11-09 15:00:56', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('17', '213', '123', '1', null, '2018-11-09 15:01:02', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('18', '123', '123', '1', null, '2018-11-09 15:01:10', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('19', '1232', '1312', '1', null, '2018-11-09 15:01:26', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('20', '111', '111', '1', null, '2018-11-12 09:23:31', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('21', '111', '111', '1', null, '2018-11-12 09:38:17', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('22', '2223', '222', '1', null, '2018-11-12 09:39:38', null, 'A', null, null, null);
INSERT INTO `keypro_info_delivery` VALUES ('23', '333', '333', '1', null, '2018-11-12 10:23:10', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('24', '444', '444', '1', null, '2018-11-12 10:23:32', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('25', '555', '555', '1', null, '2018-11-12 10:23:53', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('26', '666', '666', '1', null, '2018-11-12 10:57:08', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('27', '777', '777', '1', null, '2018-11-12 10:57:33', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('28', '888', '888', '1', null, '2018-11-12 10:58:00', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('29', '999', '999', '1', null, '2018-11-12 10:58:28', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('30', '110', '110', '1', null, '2018-11-12 14:19:26', null, 'D', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('31', '110', '110', '1', null, '2018-11-12 14:56:17', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('32', '123', '123', '2', null, '2018-11-13 09:14:01', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('33', '56357', '657', '1', null, '2018-11-13 10:40:54', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('34', '546867', '657867', '1', null, '2018-11-13 10:41:03', null, 'A', null, '17712659161', '宝华镇');
INSERT INTO `keypro_info_delivery` VALUES ('35', 'test111', '111', '1', null, '2018-11-13 14:14:18', null, 'A', null, '17712659161', '宝华镇');

-- ----------------------------
-- Table structure for `keypro_information`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_information`;
CREATE TABLE `keypro_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_company_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `information_site_leader` varchar(16) DEFAULT NULL COMMENT '现场负责人',
  `information_phone_number` varchar(16) DEFAULT NULL COMMENT '联系方式',
  `information_type` char(2) DEFAULT NULL COMMENT '信息类型',
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `create_name` varchar(16) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL COMMENT '项目主表来源id',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_information
-- ----------------------------
INSERT INTO `keypro_information` VALUES ('1', '设计公司', '张三', '123', '01', '2018-10-16 17:16:17', 'A', null, '1', null);
INSERT INTO `keypro_information` VALUES ('2', '勘察公司', '李四', '456', '02', '2018-10-16 17:16:44', 'A', null, '1', null);
INSERT INTO `keypro_information` VALUES ('3', '建设公司', '王二', '123', '03', '2018-10-16 17:16:53', 'A', null, '1', null);
INSERT INTO `keypro_information` VALUES ('4', '施工公司', '周五', '123', '04', '2018-10-16 17:17:03', 'A', null, '1', null);
INSERT INTO `keypro_information` VALUES ('5', '监理公司', '郑一', '123', '05', '2018-10-16 17:17:12', 'A', null, '1', null);
INSERT INTO `keypro_information` VALUES ('6', null, 'aa', null, '01', null, null, null, '4', null);
INSERT INTO `keypro_information` VALUES ('7', null, 'bb', null, '02', null, null, null, '4', null);
INSERT INTO `keypro_information` VALUES ('8', null, 'cc', null, '03', null, null, null, '4', null);
INSERT INTO `keypro_information` VALUES ('9', null, 'dd', null, '04', null, null, null, '4', null);
INSERT INTO `keypro_information` VALUES ('10', null, 'ee', null, '01', null, null, null, '4', null);
INSERT INTO `keypro_information` VALUES ('11', '1111111111', '1111111111', '11111', '01', null, 'D', null, '5', '宝华镇');
INSERT INTO `keypro_information` VALUES ('12', '111111', '11111111', '111111111', '02', null, 'D', null, '5', '宝华镇');
INSERT INTO `keypro_information` VALUES ('13', '111111111', '11111111', '1111111111', '03', null, 'D', null, '5', '宝华镇');
INSERT INTO `keypro_information` VALUES ('14', '1111', '111111', '111111111', '04', null, 'D', null, '5', '宝华镇');
INSERT INTO `keypro_information` VALUES ('15', '11111111111', '111111111111', '1111111111', '05', null, 'D', null, '5', '宝华镇');
INSERT INTO `keypro_information` VALUES ('16', '11', '11', '11', '01', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('17', '11', '11', '11', '02', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('18', '11', '11', '11', '03', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('19', '11', '11', '11', '04', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('20', '11', '11', '11', '05', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('21', '', '', '', '01', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('22', '', '', '', '02', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('23', '', '', '', '03', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('24', '', '', '', '04', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('25', '', '', '', '05', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('26', '', '', '', '01', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('27', '', '', '', '02', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('28', '', '', '', '03', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('29', '', '', '', '04', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('30', '', '', '', '05', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('31', '1188', '11888', '118', '01', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('32', '1188', '1188', '1188', '02', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('33', '1188', '1188', '1188', '03', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('34', '1188', '1188', '1188', '04', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('35', '1188', '1188', '1188', '05', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('36', '1122', '1122', '1122', '01', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('37', '1122', '1122', '1122', '02', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('38', '1122', '1122', '1122', '03', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('39', '1122', '112', '11222', '04', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('40', '1122', '1122', '1122', '05', null, 'D', null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('41', null, 'aa', null, '01', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('42', null, 'bb', null, '02', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('43', null, 'cc', null, '03', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('44', null, 'dd', null, '04', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('45', null, 'ee', null, '05', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('46', null, 'aaaa', null, '01', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('47', null, 'bb111', null, '02', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('48', null, 'c11c', null, '03', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('49', null, 'dd11', null, '04', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('50', null, 'ee11', null, '05', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('51', null, 'a222', null, '01', null, 'D', null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('52', null, 'b2221', null, '02', null, 'D', null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('53', null, 'c222', null, '03', null, 'D', null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('54', null, 'd2222', null, '04', null, 'D', null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('55', null, 'e222', null, '05', null, 'D', null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('56', null, 'a333', null, '01', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('57', null, 'b3333', null, '02', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('58', null, 'c3333', null, '03', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('59', null, 'd333', null, '04', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('60', null, 'e3333', null, '05', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('61', '1122', '1122', '1122', '01', null, null, null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('62', '1122', '1122', '1122', '02', null, null, null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('63', '1122', '1122', '1122', '03', null, null, null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('64', '1122', '1122', '1122', '04', null, null, null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('65', '1122', '1122', '1122', '05', null, null, null, '6', '宝华镇');
INSERT INTO `keypro_information` VALUES ('66', null, 'a4444', null, '01', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('67', null, 'b344', null, '02', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('68', null, 'c3333', null, '03', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('69', null, 'd3443', null, '04', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('70', null, 'e3333', null, '05', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('71', null, 'a666', null, '01', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('72', null, 'b666', null, '02', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('73', null, 'c666', null, '03', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('74', null, 'd3443', null, '04', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('75', null, 'e3333', null, '05', null, 'D', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('76', null, 'aa', null, '01', null, 'D', null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('77', null, 'bb', null, '02', null, 'D', null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('78', null, 'cc', null, '03', null, 'D', null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('79', null, 'dd', null, '04', null, 'D', null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('80', null, 'ee', null, '05', null, 'D', null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('81', null, 'aa1111', null, '01', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('82', null, 'bb1111', null, '02', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('83', null, 'cc1111', null, '03', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('84', null, 'dd111', null, '04', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('85', null, 'ee111111', null, '05', null, null, null, null, '宝华镇');
INSERT INTO `keypro_information` VALUES ('86', null, 'aa1111', null, '01', null, null, null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('87', null, 'bb1111', null, '02', null, null, null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('88', null, 'cc1111', null, '03', null, null, null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('89', null, 'dd111', null, '04', null, null, null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('90', null, 'ee111111', null, '05', null, null, null, '8', '宝华镇');
INSERT INTO `keypro_information` VALUES ('91', '345', '54', '2345', '01', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('92', '324', '345', '3245', '02', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('93', '34', '252', '342', '03', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('94', '2345', '3245', '3425', '04', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('95', '3245', '2345', '3425', '05', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('96', '345', '54', '2345', '01', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('97', '324', '345', '3245', '02', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('98', '34', '252', '342', '03', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('99', '2345', '3245', '3425', '04', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('100', '3245', '2345', '3425哈哈哈哈', '05', null, 'D', null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('101', null, 'a23333', null, '01', null, 'A', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('102', null, 'b233333', null, '02', null, 'A', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('103', null, 'c233336', null, '03', null, 'A', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('104', null, 'd233333', null, '04', null, 'A', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('105', null, 'e3333', null, '05', null, 'A', null, '7', '宝华镇');
INSERT INTO `keypro_information` VALUES ('106', '345', '54', '2345', '01', null, null, null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('107', '324', '345', '3245', '02', null, null, null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('108', '34', '252', '342', '03', null, null, null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('109', '2345', '3245', '3425', '04', null, null, null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('110', '3245', '2345', '3425哈哈', '05', null, null, null, '9', '宝华镇');
INSERT INTO `keypro_information` VALUES ('111', '532', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('112', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('113', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('114', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('115', '4545', '45', '43', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('116', '532', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('117', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('118', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('119', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('120', '4545', '45', '43哈哈', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('121', '532', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('122', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('123', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('124', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('125', '4545', '45', '43', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('126', '532哈哈', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('127', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('128', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('129', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('130', '4545', '45', '43', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('131', '532哈哈哈', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('132', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('133', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('134', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('135', '4545', '45', '43', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('136', '532呀哈哈', '53425', '4534', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('137', '34', '3425324', '245', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('138', '543', '5', '5342', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('139', '435', '434', '53', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('140', '4545', '45', '43', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('141', '532', '53425哈哈哈哈', '4534', '01', null, null, null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('142', '34', '3425324', '245', '02', null, null, null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('143', '543', '5', '5342', '03', null, null, null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('144', '435', '434', '53', '04', null, null, null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('145', '4545', '45', '43', '05', null, null, null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('146', '234', '14', '2314', '01', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('147', '1234', '1123', '2134', '02', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('148', '2134', '124', '23141', '03', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('149', '234', '1344', '2134', '04', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('150', '21', '324', '2341', '05', null, 'D', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('151', '234', '14', '2314', '01', null, 'A', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('152', '1234', '1123', '2134', '02', null, 'A', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('153', '2134', '124', '23141', '03', null, 'A', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('154', '234', '1344', '2134', '04', null, 'A', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('155', '21', '324', '2341哈哈哈', '05', null, 'A', null, '10', '宝华镇');
INSERT INTO `keypro_information` VALUES ('156', '123', '张三', null, '01', null, 'A', null, '11', '宝华镇');
INSERT INTO `keypro_information` VALUES ('157', '456', '李四', null, '02', null, 'A', null, '11', '宝华镇');
INSERT INTO `keypro_information` VALUES ('158', '123', '王二', null, '03', null, 'A', null, '11', '宝华镇');
INSERT INTO `keypro_information` VALUES ('159', '123', '周五', null, '04', null, 'A', null, '11', '宝华镇');
INSERT INTO `keypro_information` VALUES ('160', '123', '郑一', null, '05', null, 'A', null, '11', '宝华镇');
INSERT INTO `keypro_information` VALUES ('161', '', 'a23333', null, '01', null, 'A', null, '12', '宝华镇');
INSERT INTO `keypro_information` VALUES ('162', '', 'b233333', null, '02', null, 'A', null, '12', '宝华镇');
INSERT INTO `keypro_information` VALUES ('163', '', 'c233336', null, '03', null, 'A', null, '12', '宝华镇');
INSERT INTO `keypro_information` VALUES ('164', '', 'd233333', null, '04', null, 'A', null, '12', '宝华镇');
INSERT INTO `keypro_information` VALUES ('165', '', 'e3333', null, '05', null, 'A', null, '12', '宝华镇');
INSERT INTO `keypro_information` VALUES ('166', '', '', null, '01', null, 'A', null, '13', '宝华镇');
INSERT INTO `keypro_information` VALUES ('167', '', '', null, '02', null, 'A', null, '13', '宝华镇');
INSERT INTO `keypro_information` VALUES ('168', '', '', null, '03', null, 'A', null, '13', '宝华镇');
INSERT INTO `keypro_information` VALUES ('169', '', '', null, '04', null, 'A', null, '13', '宝华镇');
INSERT INTO `keypro_information` VALUES ('170', '', '', null, '05', null, 'A', null, '13', '宝华镇');
INSERT INTO `keypro_information` VALUES ('171', '2314', '14', null, '01', null, 'A', null, '14', '宝华镇');
INSERT INTO `keypro_information` VALUES ('172', '2134', '1123', null, '02', null, 'A', null, '14', '宝华镇');
INSERT INTO `keypro_information` VALUES ('173', '23141', '124', null, '03', null, 'A', null, '14', '宝华镇');
INSERT INTO `keypro_information` VALUES ('174', '2134', '1344', null, '04', null, 'A', null, '14', '宝华镇');
INSERT INTO `keypro_information` VALUES ('175', '2341哈哈哈', '324', null, '05', null, 'A', null, '14', '宝华镇');
INSERT INTO `keypro_information` VALUES ('176', '123', '张三', null, '01', null, 'A', null, '15', '宝华镇');
INSERT INTO `keypro_information` VALUES ('177', '456', '李四', null, '02', null, 'A', null, '15', '宝华镇');
INSERT INTO `keypro_information` VALUES ('178', '123', '王二', null, '03', null, 'A', null, '15', '宝华镇');
INSERT INTO `keypro_information` VALUES ('179', '123', '周五', null, '04', null, 'A', null, '15', '宝华镇');
INSERT INTO `keypro_information` VALUES ('180', '123', '郑一', null, '05', null, 'A', null, '15', '宝华镇');
INSERT INTO `keypro_information` VALUES ('181', '', 'a23333', null, '01', null, 'A', null, '16', '宝华镇');
INSERT INTO `keypro_information` VALUES ('182', '', 'b233333', null, '02', null, 'A', null, '16', '宝华镇');
INSERT INTO `keypro_information` VALUES ('183', '', 'c233336', null, '03', null, 'A', null, '16', '宝华镇');
INSERT INTO `keypro_information` VALUES ('184', '', 'd233333', null, '04', null, 'A', null, '16', '宝华镇');
INSERT INTO `keypro_information` VALUES ('185', '', 'e3333', null, '05', null, 'A', null, '16', '宝华镇');
INSERT INTO `keypro_information` VALUES ('186', '', '', null, '01', null, 'A', null, '17', '宝华镇');
INSERT INTO `keypro_information` VALUES ('187', '', '', null, '02', null, 'A', null, '17', '宝华镇');
INSERT INTO `keypro_information` VALUES ('188', '', '', null, '03', null, 'A', null, '17', '宝华镇');
INSERT INTO `keypro_information` VALUES ('189', '', '', null, '04', null, 'A', null, '17', '宝华镇');
INSERT INTO `keypro_information` VALUES ('190', '', '', null, '05', null, 'A', null, '17', '宝华镇');
INSERT INTO `keypro_information` VALUES ('191', '2314', '14', null, '01', null, 'A', null, '18', '宝华镇');
INSERT INTO `keypro_information` VALUES ('192', '2134', '1123', null, '02', null, 'A', null, '18', '宝华镇');
INSERT INTO `keypro_information` VALUES ('193', '23141', '124', null, '03', null, 'A', null, '18', '宝华镇');
INSERT INTO `keypro_information` VALUES ('194', '2134', '1344', null, '04', null, 'A', null, '18', '宝华镇');
INSERT INTO `keypro_information` VALUES ('195', '2341哈哈哈', '324', null, '05', null, 'A', null, '18', '宝华镇');
INSERT INTO `keypro_information` VALUES ('196', '1', '1', null, '01', null, 'A', null, '19', '宝华镇');
INSERT INTO `keypro_information` VALUES ('197', '1', '1', null, '02', null, 'A', null, '19', '宝华镇');
INSERT INTO `keypro_information` VALUES ('198', '1', '1', null, '03', null, 'A', null, '19', '宝华镇');
INSERT INTO `keypro_information` VALUES ('199', '1', '1', null, '04', null, 'A', null, '19', '宝华镇');
INSERT INTO `keypro_information` VALUES ('200', '1', '1', null, '05', null, 'A', null, '19', '宝华镇');

-- ----------------------------
-- Table structure for `keypro_pro`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_pro`;
CREATE TABLE `keypro_pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keypro_pro_name` varchar(32) DEFAULT NULL COMMENT '项目名称',
  `keypro_build_space` varchar(32) DEFAULT NULL COMMENT '建设地点',
  `keypro_build_scale` varchar(16) DEFAULT NULL COMMENT '建设规模',
  `keypro_pro_investment` double(16,4) DEFAULT NULL COMMENT '总投资',
  `create_time` date DEFAULT NULL COMMENT '开工日期',
  `keypro_pro_finish_time` date DEFAULT NULL COMMENT '竣工日期',
  `keypro_pro_overdue_time` varchar(16) DEFAULT '' COMMENT '工期',
  `delflag` char(1) DEFAULT NULL,
  `attachment_source` char(2) DEFAULT NULL COMMENT '图片资源',
  `has_five_information` char(1) DEFAULT '' COMMENT '是否有五方信息',
  `keypro_pro_title` varchar(16) DEFAULT NULL COMMENT '项目标题',
  `keypro_pro_content` varchar(20000) DEFAULT NULL COMMENT '项目内容',
  `keypro_pro_enclosure` varchar(16) DEFAULT NULL COMMENT '项目附件',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL,
  `keypro_pro_x` varchar(255) DEFAULT NULL COMMENT '建设地址地理位置经度',
  `keypro_pro_y` varchar(255) DEFAULT NULL COMMENT '建设地址地理位置纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_pro
-- ----------------------------
INSERT INTO `keypro_pro` VALUES ('1', '铁路建设', '哈哈', '333', '5345.0000', '2018-10-16', '2018-11-16', '23', 'A', '01', '0', '', null, null, '宝华镇', '17712659161', '1', '1');
INSERT INTO `keypro_pro` VALUES ('2', '查水表工程', null, null, null, '2018-10-16', null, null, 'D', '01', '0', null, null, null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('3', '查水表工程', null, null, null, '2018-10-16', null, null, 'D', '01', '0', null, null, null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('4', '查水表工程', null, null, null, '2018-10-16', null, null, 'D', '01', '0', null, null, null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('5', '111111', '111', '1111', '1111.0000', '2018-10-29', '2018-10-29', '111', 'D', '01', '0', '1111', '1111111', null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('6', '1', '2', '3', '4.0000', '2018-11-08', '2018-11-16', '5', 'D', '01', '0', '6', '7', null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('7', '查水表工23333333', null, null, null, null, null, null, 'A', '01', '0', null, null, null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('8', '查水表工程111111', null, null, null, null, null, null, 'D', '01', '0', null, null, null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('9', '34524', '342', '345', '5345.0000', '2018-11-08', '2018-11-09', '345', 'A', '01', '0', '435342', '3425', null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('10', '4425哈哈', '4325哈哈哈', '4353', '425.0000', '2018-11-08', '2018-11-30', '432', 'A', '01', '0', '324', '43532', null, null, null, null, null);
INSERT INTO `keypro_pro` VALUES ('11', '铁路建设', '哈哈', '333', '5345.0000', '2018-10-16', '2018-11-16', '23', 'A', null, '0', null, null, null, '宝华镇', '17712659161', '1', '1');
INSERT INTO `keypro_pro` VALUES ('12', '查水表工23333333', '', '', null, null, null, '', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('13', '34524', '342', '345', '5345.0000', '2018-11-08', '2018-11-09', '345', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('14', '4425哈哈', '4325哈哈哈', '4353', '425.0000', '2018-11-08', '2018-11-30', '432', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('15', '铁路建设', '哈哈', '333', '5345.0000', '2018-10-16', '2018-11-16', '23', 'A', null, '0', null, null, null, '宝华镇', '17712659161', '1', '1');
INSERT INTO `keypro_pro` VALUES ('16', '查水表工23333333', '', '', null, null, null, '', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('17', '34524', '342', '345', '5345.0000', '2018-11-08', '2018-11-09', '345', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('18', '4425哈哈', '4325哈哈哈', '4353', '425.0000', '2018-11-08', '2018-11-30', '432', 'A', null, '0', null, null, null, '', '', '', '');
INSERT INTO `keypro_pro` VALUES ('19', 'hh', 'hh', 'h', '10000.2300', null, null, '1', 'A', null, '1', null, null, null, '宝华镇', '17712659161', '1', '1');

-- ----------------------------
-- Table structure for `keypro_problem`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_problem`;
CREATE TABLE `keypro_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keypro_problem_title` varchar(32) DEFAULT NULL COMMENT '问题标题',
  `keypro_problem_content` varchar(20000) DEFAULT NULL COMMENT '问题内容',
  `keypro_problem_type` varchar(16) DEFAULT NULL COMMENT '问题类别',
  `keypro_problem_address` varchar(64) DEFAULT NULL COMMENT '地址',
  `keypro_problem_report_person` varchar(16) DEFAULT NULL COMMENT '上报人',
  `keypro_problem_report_time` date DEFAULT NULL COMMENT '上报时间',
  `attachment_source` char(2) DEFAULT NULL COMMENT '关联资源',
  `delflag` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `process_state` char(2) DEFAULT NULL COMMENT '问题处理状态',
  `create_id` varchar(16) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `lianren` varchar(16) DEFAULT NULL COMMENT '立案人',
  `liantime` date DEFAULT NULL COMMENT '立案时间',
  `paifaren` varchar(16) DEFAULT NULL COMMENT '派发人',
  `paifadep` varchar(16) DEFAULT NULL COMMENT '派发部门',
  `paifatime` date DEFAULT NULL COMMENT '派发时间',
  `endtime` date DEFAULT NULL COMMENT '结束时间',
  `x` varchar(255) DEFAULT NULL COMMENT '经度',
  `y` varchar(255) DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_problem
-- ----------------------------
INSERT INTO `keypro_problem` VALUES ('1', 'testPro', 'acde', '软件', '江苏省镇江市句容市', '张三', '2018-10-15', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('2', 'testPro2', 'qqcde', '硬件', '江苏省苏州市工业园区', '李四', '2018-10-14', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('3', 'wj', null, null, null, null, '2018-10-15', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('4', 'wjpacd', null, null, null, null, null, '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('5', 'test456', '我不是一个问题', '软件', null, null, null, '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('6', '5763754', '2346574567', '35646357', '43562545', '5646537536', '2018-10-29', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('7', 'bbb', 'aaa', null, null, null, '2018-10-29', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('8', '1', '1', '1', '1', '1', '2018-10-31', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('9', 'testprocess', null, null, null, null, null, '02', 'D', '宝华镇', '1', null, '2018-10-31 13:47:36', null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('10', 'process', null, null, null, 'aaa', '2018-10-31', '02', 'D', '宝华镇', '1', null, '2018-10-31 13:54:43', 'bb', '2018-10-31', '派发人', '派发部门', '2018-10-31', '2018-10-30', null, null);
INSERT INTO `keypro_problem` VALUES ('11', '312342', '321421', '3241', '12341', '1324', '2018-11-09', '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('12', '56435', '5436456', '54634', '5436', '456456', '2018-11-09', '02', 'D', '宝华镇', '1', '17712659161', '2018-11-08 10:20:59', null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('13', 'test222', '我问题', '软件', null, null, null, '02', 'D', '宝华镇', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `keypro_problem` VALUES ('14', 'testProcess', '测试流程demo', '软件', null, null, null, '02', 'A', '宝华镇', '4', '17712659161', '2018-11-19 11:25:20', null, null, 'ssj', '开发部', '2018-11-19', null, null, null);

-- ----------------------------
-- Table structure for `keypro_problem_chuli`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_problem_chuli`;
CREATE TABLE `keypro_problem_chuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shangbaoid` int(11) DEFAULT NULL COMMENT '上报问题的id',
  `chuliren` varchar(16) DEFAULT NULL COMMENT '处理人',
  `chulitime` date DEFAULT NULL COMMENT '处理时间',
  `chulidep` varchar(16) DEFAULT NULL COMMENT '处理部门',
  `chulimiaoshu` varchar(255) DEFAULT NULL COMMENT '处理描述',
  `sheheren` varchar(16) DEFAULT NULL COMMENT '审核人',
  `shehetime` date DEFAULT NULL COMMENT '审核时间',
  `shehemiaoshu` varchar(255) DEFAULT NULL COMMENT '审核描述',
  `photo1` varchar(255) DEFAULT NULL COMMENT '照片',
  `attachment_source` char(2) DEFAULT NULL COMMENT '关联图片资源',
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(16) DEFAULT NULL COMMENT '创建id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_problem_chuli
-- ----------------------------
INSERT INTO `keypro_problem_chuli` VALUES ('1', '10', null, null, null, null, '审核人', '2018-10-31', '审核描述', null, null, 'A', null, null);
INSERT INTO `keypro_problem_chuli` VALUES ('2', '99', 'a', '2018-11-01', 'aaa', '6666', 'aa', '2018-11-01', '审核描述', null, null, 'A', null, null);
INSERT INTO `keypro_problem_chuli` VALUES ('3', '111', 'b', '2018-11-01', 'b', '666', 'bb', '2018-11-01', '审核描述', null, null, 'A', null, null);
INSERT INTO `keypro_problem_chuli` VALUES ('4', '14', 'wj', '2018-11-19', '测试部', '测试流程处理状态', 'hf', '2018-11-19', '审核流程处理状态', null, null, 'A', null, null);

-- ----------------------------
-- Table structure for `keypro_source`
-- ----------------------------
DROP TABLE IF EXISTS `keypro_source`;
CREATE TABLE `keypro_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(2) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `file_type` char(4) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_url` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keypro_source
-- ----------------------------
INSERT INTO `keypro_source` VALUES ('1', '02', '1', 'doc', null, null, null, 'A', null);
INSERT INTO `keypro_source` VALUES ('2', '02', '1', 'xls', null, null, null, 'A', null);
INSERT INTO `keypro_source` VALUES ('3', '02', '2', 'docx', null, null, null, 'A', null);
INSERT INTO `keypro_source` VALUES ('4', '02', '2', 'xlsx', null, null, null, 'A', null);
INSERT INTO `keypro_source` VALUES ('5', '02', '3', null, 'wja', null, null, 'D', null);
INSERT INTO `keypro_source` VALUES ('6', '02', '3', null, 'wja', null, null, 'D', null);
INSERT INTO `keypro_source` VALUES ('7', '02', '4', null, 'wjb', null, '2018-10-15 09:23:35', 'A', null);
INSERT INTO `keypro_source` VALUES ('8', '02', '4', null, 'wjc', null, '2018-10-15 09:23:35', 'A', null);
INSERT INTO `keypro_source` VALUES ('9', '02', '4', null, 'wjb111', null, '2018-10-15 09:36:09', 'A', null);
INSERT INTO `keypro_source` VALUES ('10', '02', '4', null, 'wjc111', null, '2018-10-15 09:36:09', 'A', null);
INSERT INTO `keypro_source` VALUES ('11', '02', '5', null, null, null, '2018-10-16 16:56:36', 'D', null);
INSERT INTO `keypro_source` VALUES ('12', '02', '5', null, null, null, '2018-10-16 16:56:36', 'D', null);
INSERT INTO `keypro_source` VALUES ('13', '02', null, null, null, null, '2018-10-16 16:58:08', 'A', null);
INSERT INTO `keypro_source` VALUES ('14', '02', null, null, null, null, '2018-10-16 16:58:08', 'A', null);
INSERT INTO `keypro_source` VALUES ('15', '02', '5', null, null, null, '2018-10-16 16:58:45', 'D', null);
INSERT INTO `keypro_source` VALUES ('16', '02', '5', null, null, null, '2018-10-16 16:58:45', 'D', null);
INSERT INTO `keypro_source` VALUES ('17', '02', '5', null, null, null, '2018-10-16 16:59:03', 'A', null);
INSERT INTO `keypro_source` VALUES ('18', '02', '5', null, null, null, '2018-10-16 16:59:03', 'A', null);
INSERT INTO `keypro_source` VALUES ('19', '01', '1', 'jpg', 'asd', null, '2018-10-16 17:15:56', 'A', null);
INSERT INTO `keypro_source` VALUES ('20', '01', '2', null, null, null, '2018-10-16 17:41:29', 'D', null);
INSERT INTO `keypro_source` VALUES ('21', '01', '2', null, null, null, '2018-10-16 17:41:29', 'D', null);
INSERT INTO `keypro_source` VALUES ('22', '01', '3', null, null, null, '2018-10-16 17:43:37', 'D', null);
INSERT INTO `keypro_source` VALUES ('23', '01', '3', null, null, null, '2018-10-16 17:43:39', 'D', null);
INSERT INTO `keypro_source` VALUES ('24', '01', '4', null, null, null, '2018-10-16 17:47:13', 'A', null);
INSERT INTO `keypro_source` VALUES ('25', '01', '4', null, null, null, '2018-10-16 17:47:13', 'A', null);
INSERT INTO `keypro_source` VALUES ('26', '03', '1', null, '整改前', null, null, 'D', null);
INSERT INTO `keypro_source` VALUES ('27', '04', '1', null, '整改后', null, null, 'D', null);
INSERT INTO `keypro_source` VALUES ('28', '03', '2', null, '整改前1', null, null, 'D', null);
INSERT INTO `keypro_source` VALUES ('29', '03', '4', null, '整改前', null, '2018-10-26 16:54:08', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('30', '03', '4', null, '整改前1', null, '2018-10-26 16:54:08', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('31', '04', '4', null, '整改后', null, '2018-10-26 16:54:08', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('32', '04', '4', null, '整改后1', null, '2018-10-26 16:54:09', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('33', '03', '4', null, null, null, '2018-10-26 16:56:19', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('34', '03', '4', null, null, null, '2018-10-26 16:56:19', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('35', '04', '4', null, null, null, '2018-10-26 16:56:20', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('36', '04', '4', null, null, null, '2018-10-26 16:56:20', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('37', '02', '7', null, null, null, '2018-10-29 14:53:07', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('38', '02', '7', null, null, null, '2018-10-29 14:53:07', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('39', '01', '5', null, null, null, '2018-10-29 16:03:54', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('40', '01', '5', null, null, null, '2018-10-29 16:03:54', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('41', '02', '9', null, null, null, '2018-10-31 13:47:40', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('42', '02', '9', null, null, null, '2018-10-31 13:47:40', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('43', '02', '10', null, null, null, '2018-10-31 13:54:46', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('44', '02', '10', null, null, null, '2018-10-31 13:54:46', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('45', '02', '11', null, null, null, '2018-10-31 17:11:57', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('46', '02', '11', null, null, null, '2018-10-31 17:11:57', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('47', '01', '6', null, null, null, '2018-11-08 09:27:00', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('48', '01', '6', null, null, null, '2018-11-08 09:27:00', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('49', '01', null, null, null, null, '2018-11-08 09:47:05', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('50', '01', null, null, null, null, '2018-11-08 09:47:05', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('51', '01', '6', null, null, null, '2018-11-08 09:49:19', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('52', '01', '6', null, null, null, '2018-11-08 09:49:19', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('53', '01', '6', null, null, null, '2018-11-08 09:51:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('54', '01', '6', null, null, null, '2018-11-08 09:51:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('55', '01', '6', null, null, null, '2018-11-08 09:57:02', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('56', '01', '6', null, null, null, '2018-11-08 09:57:02', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('57', '01', '6', null, null, null, '2018-11-08 10:00:48', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('58', '01', '6', null, null, null, '2018-11-08 10:00:48', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('59', '01', '7', null, null, null, '2018-11-08 10:05:16', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('60', '01', '7', null, null, null, '2018-11-08 10:05:16', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('61', '01', null, null, null, null, '2018-11-08 10:06:32', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('62', '01', null, null, null, null, '2018-11-08 10:06:32', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('63', '01', null, null, null, null, '2018-11-08 10:15:03', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('64', '01', null, null, null, null, '2018-11-08 10:15:03', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('65', '01', '7', null, null, null, '2018-11-08 10:17:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('66', '01', '7', null, null, null, '2018-11-08 10:17:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('67', '02', '13', null, null, null, '2018-11-08 10:30:04', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('68', '02', '13', null, null, null, '2018-11-08 10:30:05', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('69', '02', '13', null, null, null, '2018-11-08 10:36:38', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('70', '02', '13', null, null, null, '2018-11-08 10:36:38', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('71', '01', '6', null, null, null, '2018-11-08 16:56:44', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('72', '01', '6', null, null, null, '2018-11-08 16:56:44', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('73', '01', '7', null, null, null, '2018-11-08 17:04:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('74', '01', '7', null, null, null, '2018-11-08 17:04:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('75', '01', '7', null, null, null, '2018-11-08 17:10:20', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('76', '01', '7', null, null, null, '2018-11-08 17:10:20', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('77', '01', '8', null, null, null, '2018-11-08 17:15:44', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('78', '01', '8', null, null, null, '2018-11-08 17:15:44', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('79', '01', null, null, null, null, '2018-11-08 17:16:26', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('80', '01', null, null, null, null, '2018-11-08 17:16:26', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('81', '01', '8', null, null, null, '2018-11-08 17:17:50', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('82', '01', '8', null, null, null, '2018-11-08 17:17:50', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('83', '01', '9', null, null, null, '2018-11-08 17:21:24', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('84', '01', '9', null, null, null, '2018-11-08 17:21:24', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('85', '01', '9', null, null, null, '2018-11-08 17:21:37', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('86', '01', '9', null, null, null, '2018-11-08 17:21:37', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('87', '01', '7', null, null, null, '2018-11-08 17:24:25', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('88', '01', '7', null, null, null, '2018-11-08 17:24:25', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('89', '01', '9', null, null, null, '2018-11-08 17:25:27', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('90', '01', '9', null, null, null, '2018-11-08 17:25:27', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('91', '01', '10', null, null, null, '2018-11-08 17:26:12', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('92', '01', '10', null, null, null, '2018-11-08 17:26:12', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('93', '01', '10', null, null, null, '2018-11-08 17:26:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('94', '01', '10', null, null, null, '2018-11-08 17:26:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('95', '01', '10', null, null, null, '2018-11-08 17:27:06', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('96', '01', '10', null, null, null, '2018-11-08 17:27:07', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('97', '01', '10', null, null, null, '2018-11-08 17:27:30', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('98', '01', '10', null, null, null, '2018-11-08 17:27:31', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('99', '01', '10', null, null, null, '2018-11-08 17:41:45', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('100', '01', '10', null, null, null, '2018-11-08 17:41:45', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('101', '01', '10', null, null, null, '2018-11-08 17:42:16', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('102', '01', '10', null, null, null, '2018-11-08 17:42:16', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('103', '01', '10', null, null, null, '2018-11-08 17:42:50', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('104', '01', '10', null, null, null, '2018-11-08 17:42:50', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('105', '01', '10', null, null, null, '2018-11-09 13:47:15', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('106', '01', '10', null, null, null, '2018-11-09 13:47:15', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('107', '01', '10', null, null, null, '2018-11-09 13:47:25', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('108', '01', '10', null, null, null, '2018-11-09 13:47:25', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('109', '03', '5', null, null, '333', '2018-11-09 13:54:39', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('110', '03', '5', null, null, null, '2018-11-09 13:54:39', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('111', '04', '5', null, null, '333', '2018-11-09 13:54:39', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('112', '04', '5', null, null, null, '2018-11-09 13:54:39', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('113', '03', '6', null, null, '2134', '2018-11-09 14:25:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('114', '03', '6', null, null, null, '2018-11-09 14:25:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('115', '04', '6', null, null, '2134', '2018-11-09 14:25:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('116', '04', '6', null, null, null, '2018-11-09 14:25:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('117', '03', '7', null, null, '21342134', '2018-11-09 14:26:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('118', '03', '7', null, null, null, '2018-11-09 14:26:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('119', '04', '7', null, null, '21342134', '2018-11-09 14:26:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('120', '04', '7', null, null, null, '2018-11-09 14:26:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('121', '03', '8', null, null, '134', '2018-11-09 14:26:11', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('122', '03', '8', null, null, null, '2018-11-09 14:26:11', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('123', '04', '8', null, null, '134', '2018-11-09 14:26:11', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('124', '04', '8', null, null, null, '2018-11-09 14:26:11', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('125', '03', '9', null, null, '324', '2018-11-09 14:30:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('126', '03', '9', null, null, null, '2018-11-09 14:30:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('127', '04', '9', null, null, '324', '2018-11-09 14:30:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('128', '04', '9', null, null, null, '2018-11-09 14:30:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('129', '03', '10', null, null, '324', '2018-11-09 14:30:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('130', '03', '10', null, null, null, '2018-11-09 14:30:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('131', '04', '10', null, null, '324', '2018-11-09 14:30:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('132', '04', '10', null, null, null, '2018-11-09 14:30:22', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('133', '03', '11', null, null, '234', '2018-11-09 14:30:29', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('134', '03', '11', null, null, null, '2018-11-09 14:30:29', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('135', '04', '11', null, null, '234', '2018-11-09 14:30:29', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('136', '04', '11', null, null, null, '2018-11-09 14:30:29', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('137', '03', '12', null, null, '132', '2018-11-09 15:00:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('138', '03', '12', null, null, null, '2018-11-09 15:00:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('139', '04', '12', null, null, '132', '2018-11-09 15:00:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('140', '04', '12', null, null, null, '2018-11-09 15:00:14', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('141', '03', '13', null, null, '3124', '2018-11-09 15:00:21', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('142', '03', '13', null, null, null, '2018-11-09 15:00:21', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('143', '04', '13', null, null, '3124', '2018-11-09 15:00:21', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('144', '04', '13', null, null, null, '2018-11-09 15:00:21', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('145', '03', '14', null, null, '1234', '2018-11-09 15:00:28', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('146', '03', '14', null, null, null, '2018-11-09 15:00:28', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('147', '04', '14', null, null, '1234', '2018-11-09 15:00:28', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('148', '04', '14', null, null, null, '2018-11-09 15:00:28', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('149', '03', '15', null, null, '412', '2018-11-09 15:00:35', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('150', '03', '15', null, null, null, '2018-11-09 15:00:35', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('151', '04', '15', null, null, '412', '2018-11-09 15:00:35', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('152', '04', '15', null, null, null, '2018-11-09 15:00:35', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('153', '03', '16', null, null, '2', '2018-11-09 15:00:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('154', '03', '16', null, null, null, '2018-11-09 15:00:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('155', '04', '16', null, null, '2', '2018-11-09 15:00:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('156', '04', '16', null, null, null, '2018-11-09 15:00:56', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('157', '03', '17', null, null, '213', '2018-11-09 15:01:02', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('158', '03', '17', null, null, null, '2018-11-09 15:01:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('159', '04', '17', null, null, '213', '2018-11-09 15:01:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('160', '04', '17', null, null, null, '2018-11-09 15:01:03', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('161', '03', '18', null, null, '123', '2018-11-09 15:01:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('162', '03', '18', null, null, null, '2018-11-09 15:01:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('163', '04', '18', null, null, '123', '2018-11-09 15:01:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('164', '04', '18', null, null, null, '2018-11-09 15:01:10', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('165', '03', '19', null, null, '3', '2018-11-09 15:01:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('166', '03', '19', null, null, null, '2018-11-09 15:01:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('167', '04', '19', null, null, '3', '2018-11-09 15:01:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('168', '04', '19', null, null, null, '2018-11-09 15:01:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('169', '03', '1', null, null, '341324', '2018-11-09 16:44:09', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('170', '03', '1', null, null, null, '2018-11-09 16:44:09', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('171', '04', '1', null, null, '2341234', '2018-11-09 16:44:09', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('172', '04', '1', null, null, null, '2018-11-09 16:44:09', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('173', '03', '20', null, null, '1541985801904.jpg', '2018-11-12 09:23:32', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('174', '03', '20', null, null, null, '2018-11-12 09:23:32', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('175', '04', '20', null, null, '1541985801904.jpg', '2018-11-12 09:23:32', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('176', '04', '20', null, null, null, '2018-11-12 09:23:32', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('177', '03', '21', null, null, '1541986688630.jpg', '2018-11-12 09:38:17', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('178', '04', '21', null, null, '1541986688630.jpg', '2018-11-12 09:38:17', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('179', '03', '22', null, null, '1541986769682.jpg', '2018-11-12 09:39:38', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('180', '04', '22', null, null, '1541986769682.jpg', '2018-11-12 09:39:38', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('181', '03', '23', null, null, '1541989382180.jpg', '2018-11-12 10:23:10', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('182', '04', '23', null, null, '1541989382180.jpg', '2018-11-12 10:23:10', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('183', '03', '24', null, null, '1541989403193.jpg', '2018-11-12 10:23:33', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('184', '04', '24', null, null, '1541989403193.jpg', '2018-11-12 10:23:33', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('185', '03', '25', null, null, '1541989425522.jpg', '2018-11-12 10:23:53', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('186', '04', '25', null, null, '1541989425522.jpg', '2018-11-12 10:23:53', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('187', '03', '26', null, null, '1541991417124.jpg', '2018-11-12 10:57:08', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('188', '04', '26', null, null, '1541991417124.jpg', '2018-11-12 10:57:08', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('189', '03', '27', null, null, '1541991444115.jpg', '2018-11-12 10:57:33', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('190', '04', '27', null, null, '1541991444115.jpg', '2018-11-12 10:57:33', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('191', '03', '28', null, null, '1541991468535.jpg', '2018-11-12 10:58:00', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('192', '04', '28', null, null, '1541991468535.jpg', '2018-11-12 10:58:00', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('193', '03', '29', null, null, '1541991500283.png', '2018-11-12 10:58:28', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('194', '04', '29', null, null, '1541991500283.png', '2018-11-12 10:58:28', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('195', '03', '30', null, null, '1542003558654.jpg', '2018-11-12 14:19:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('196', '04', '30', null, null, '1542003558654.jpg', '2018-11-12 14:19:26', 'D', '宝华镇');
INSERT INTO `keypro_source` VALUES ('197', '03', '31', null, null, '1542005769984.jpg', '2018-11-12 14:56:17', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('198', '04', '31', null, null, '1542005769984.jpg', '2018-11-12 14:56:17', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('199', '03', '32', null, null, '1542071633648.jpg', '2018-11-13 09:14:01', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('200', '04', '32', null, null, '1542071633648.jpg', '2018-11-13 09:14:01', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('201', '03', '33', null, null, '', '2018-11-13 10:40:54', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('202', '04', '33', null, null, '', '2018-11-13 10:40:54', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('203', '03', '34', null, null, '', '2018-11-13 10:41:03', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('204', '04', '34', null, null, '', '2018-11-13 10:41:03', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('205', '03', '35', null, null, '1542089547621.png', '2018-11-13 14:14:18', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('206', '04', '35', null, null, '1542089547621.png', '2018-11-13 14:14:18', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('207', '03', '22', null, null, '1541986769682.jpg', '2018-11-19 10:03:39', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('208', '04', '22', null, null, '1541986769682.jpg', '2018-11-19 10:03:40', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('209', '02', '14', null, null, null, '2018-11-19 11:25:20', 'A', '宝华镇');
INSERT INTO `keypro_source` VALUES ('210', '02', '14', null, null, null, '2018-11-19 11:25:20', 'A', '宝华镇');

-- ----------------------------
-- Table structure for `login_user_test`
-- ----------------------------
DROP TABLE IF EXISTS `login_user_test`;
CREATE TABLE `login_user_test` (
  `id` bigint(11) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `login_id` varchar(16) DEFAULT NULL,
  `type` char(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `yhzh` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_user_test
-- ----------------------------
INSERT INTO `login_user_test` VALUES ('1', 'wj', '17712659161', null, '2018-10-30 16:46:00', 'admin', '123456', '宝华镇');
INSERT INTO `login_user_test` VALUES ('2', 'admin', 'admin', null, '2018-10-30 16:47:22', 'admin', '1234', '宝华镇');

-- ----------------------------
-- Table structure for `pioneer_jf`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_jf`;
CREATE TABLE `pioneer_jf` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `dy_id` varchar(32) DEFAULT NULL COMMENT '党员id',
  `zf` int(11) DEFAULT NULL COMMENT '总分',
  `fz1` int(11) DEFAULT NULL,
  `fz2` int(11) DEFAULT NULL,
  `fz3` int(11) DEFAULT NULL,
  `fz4` int(11) DEFAULT NULL,
  `fz5` int(11) DEFAULT NULL,
  `fz6` int(11) DEFAULT NULL,
  `fz7` int(11) DEFAULT NULL,
  `fz8` int(11) DEFAULT NULL,
  `dfr` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `jd` char(1) DEFAULT NULL,
  `nd` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_jf
-- ----------------------------

-- ----------------------------
-- Table structure for `pioneer_lddy`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_lddy`;
CREATE TABLE `pioneer_lddy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `xm` varchar(16) DEFAULT NULL COMMENT '姓名',
  `xb` char(1) DEFAULT NULL COMMENT '性别',
  `sr` varchar(16) DEFAULT NULL COMMENT '生日',
  `rdsh` varchar(16) DEFAULT NULL COMMENT '入党时间',
  `xl` varchar(8) DEFAULT NULL COMMENT '学历',
  `zy` varchar(32) DEFAULT NULL COMMENT '职业',
  `jzxq` varchar(64) DEFAULT NULL COMMENT '居住小区',
  `lxdh` varchar(16) DEFAULT NULL COMMENT '联系方式',
  `ahtc` varchar(128) DEFAULT NULL COMMENT '爱好特长',
  `zzgxszd` varchar(32) DEFAULT NULL COMMENT '组织关系所在地',
  `cjhdszzb` varchar(32) DEFAULT NULL COMMENT '参加组织活动所在支部',
  `qt` varchar(128) DEFAULT NULL COMMENT '其他需说明的事项',
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_lddy
-- ----------------------------

-- ----------------------------
-- Table structure for `pioneer_org`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_org`;
CREATE TABLE `pioneer_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_number` varchar(32) DEFAULT NULL COMMENT '编号',
  `party_committee` varchar(16) DEFAULT NULL COMMENT '党委',
  `org_name` varchar(32) DEFAULT NULL COMMENT '党组织名称',
  `org_level` varchar(16) DEFAULT NULL COMMENT '党组织建制(层级)',
  `org_nature` varchar(32) DEFAULT NULL COMMENT '党组织性质',
  `branch_secretary` varchar(16) DEFAULT NULL COMMENT '支部书记',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `yhzh` varchar(16) DEFAULT NULL COMMENT '用户租户',
  `superior_id` int(11) DEFAULT NULL COMMENT '父id',
  `leader_sex` char(1) DEFAULT NULL COMMENT '负责人性别',
  `leader_phone` varchar(16) DEFAULT NULL COMMENT '负责人电话',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_org
-- ----------------------------
INSERT INTO `pioneer_org` VALUES ('1', null, '宝华镇', '宝华镇党委', '一级党委', '机关', '孙卫军', '2018-10-25 11:11:45', 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('2', null, '宝华镇', '新城社区党委', '二级党委', '建制村', '林  松', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('3', null, '宝华镇', '宝华镇新经济组织联合党委', '二级党委', '建制村', null, null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('4', null, '宝华镇', '栗庄村党总支', '党总支', '建制村', '姚祖东', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('5', null, '宝华镇', '栗庄村老年党支部', '二级党支部', '建制村', '王大顺', null, 'A', '宝华镇', '4', null, null, null);
INSERT INTO `pioneer_org` VALUES ('6', null, '宝华镇', '句容市成安混凝土有限公司党支部', '二级党支部', '非公有经济控制企业', '窦富华', null, 'A', '宝华镇', '4', null, null, null);
INSERT INTO `pioneer_org` VALUES ('7', null, '宝华镇', '栗庄村党支部', '二级党支部', '建制村', '张士顺', null, 'A', '宝华镇', '4', null, null, null);
INSERT INTO `pioneer_org` VALUES ('8', null, '宝华镇', '栗庄新经济组织联合党支部', '二级党支部', '建制村', '苏安清', null, 'A', '宝华镇', '4', null, null, null);
INSERT INTO `pioneer_org` VALUES ('9', null, '宝华镇', '句容金伟箔业有限公司党支部', '二级党支部', '非公有经济控制企业', '谭  伟', null, 'A', '宝华镇', '4', null, null, null);
INSERT INTO `pioneer_org` VALUES ('10', null, '宝华镇', '仓头村党总支', '党总支', '建制村', '赵贤财', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('11', null, '宝华镇', '仓头村农业党支部', '二级党支部', '建制村', '赵贤财', null, 'A', '宝华镇', '10', null, null, null);
INSERT INTO `pioneer_org` VALUES ('12', null, '宝华镇', '仓头村工业党支部', '二级党支部', '建制村', '翁锡武', null, 'A', '宝华镇', '10', null, null, null);
INSERT INTO `pioneer_org` VALUES ('13', null, '宝华镇', '仓头村新经济组织联合党支部', '二级党支部', '建制村', '姚克林', null, 'A', '宝华镇', '10', null, null, null);
INSERT INTO `pioneer_org` VALUES ('14', null, '宝华镇', '铜山村党总支', '党总支', '建制村', '宋永权', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('15', null, '宝华镇', '铜山村农业党支部', '二级党支部', '建制村', '戴义标', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('16', null, '宝华镇', '铜山村工业党支部', '二级党支部', '建制村', '张德荣', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('17', null, '宝华镇', '句容市宝华碳素制品有限公司党支部', '二级党支部', '非公有经济控制企业', '林  松', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('18', null, '宝华镇', '铜山新经济组织联合党支部', '二级党支部', '建制村', '张宗华', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('19', null, '宝华镇', '镇江林泰汽车附件有限公司党支部', '二级党支部', '非公有经济控制企业', '徐  林', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('20', null, '宝华镇', '句容市宝华铜山石粉厂党支部', '二级党支部', '非公有经济控制企业', '龚万珍', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('21', null, '宝华镇', '勇诚水产党支部', '二级党支部', '新经济组织', '钱  勇', null, 'A', '宝华镇', '14', null, null, null);
INSERT INTO `pioneer_org` VALUES ('22', null, '宝华镇', '栏江村党总支', '党总支', '建制村', '田兴林', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('23', null, '宝华镇', '栏江村农业党支部', '二级党支部', '建制村', '王大燕', null, 'A', '宝华镇', '22', null, null, null);
INSERT INTO `pioneer_org` VALUES ('24', null, '宝华镇', '栏江村工业党支部', '二级党支部', '建制村', '朱成宝', null, 'A', '宝华镇', '22', null, null, null);
INSERT INTO `pioneer_org` VALUES ('25', null, '宝华镇', '栏江村新经济组织联合党支部', '二级党支部', '建制村', '田兴林', null, 'A', '宝华镇', '22', null, null, null);
INSERT INTO `pioneer_org` VALUES ('26', null, '宝华镇', '宝华村党总支', '党总支', '建制村', '王心荣', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('27', null, '宝华镇', '宝华村党支部', '二级党支部', '建制村', '王良海', null, 'A', '宝华镇', '26', null, null, null);
INSERT INTO `pioneer_org` VALUES ('28', null, '宝华镇', '宝华村新型建材联合党支部', '二级党支部', '非公有经济控制企业', '曹长年', null, 'A', '宝华镇', '26', null, null, null);
INSERT INTO `pioneer_org` VALUES ('29', null, '宝华镇', '宝华村新经济组织联合党支部', '二级党支部', '建制村', '唐明果', null, 'A', '宝华镇', '26', null, null, null);
INSERT INTO `pioneer_org` VALUES ('30', null, '宝华镇', '句容市金卓农业科技园有限公司党支部', '二级党支部', '非公有经济控制企业', '魏邦秋', null, 'A', '宝华镇', '26', null, null, null);
INSERT INTO `pioneer_org` VALUES ('31', null, '宝华镇', '句容市宝华兴龙石子加工厂党支部', '二级党支部', '非公有经济控制企业', '王兴龙', null, 'A', '宝华镇', '26', null, null, null);
INSERT INTO `pioneer_org` VALUES ('32', null, '宝华镇', '凤坛村党总支', '党总支', '建制村', '曹当亮', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('33', null, '宝华镇', '凤坛村农业党支部', '二级党支部', '建制村', '陆志亮', null, 'A', '宝华镇', '32', null, null, null);
INSERT INTO `pioneer_org` VALUES ('34', null, '宝华镇', '凤坛村工业党支部', '二级党支部', '建制村', '曹当亮', null, 'A', '宝华镇', '32', null, null, null);
INSERT INTO `pioneer_org` VALUES ('35', null, '宝华镇', '凤坛村新经济组织联合党支部', '二级党支部', '建制村', '王  铜', null, 'A', '宝华镇', '32', null, null, null);
INSERT INTO `pioneer_org` VALUES ('36', null, '宝华镇', '和平村党总支', '党总支', '建制村', '成庆尧', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('37', null, '宝华镇', '和平村党支部', '二级党支部', '建制村', '戴家宝', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('38', null, '宝华镇', '和平个体工商户联合党支部', '二级党支部', '非公有经济控制企业', '高立忠', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('39', null, '宝华镇', '和平村新经济组织联合党支部', '二级党支部', '建制村', '王致福', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('40', null, '宝华镇', '和平印刷厂党支部', '二级党支部', '非公有经济控制企业', '张朝亮', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('41', null, '宝华镇', '唐邦电子有限公司党支部', '二级党支部', '非公有经济控制企业', '王  波', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('42', null, '宝华镇', '和平预制厂党支部', '二级党支部', '非公有经济控制企业', '夏远国', null, 'A', '宝华镇', '36', null, null, null);
INSERT INTO `pioneer_org` VALUES ('43', null, '宝华镇', '宝华花园社区党总支', '党总支', '社区', '陈宗荣', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('44', null, '宝华镇', '鲍亭社区党支部', '二级党支部', '社区', '陈宗荣', null, 'A', '宝华镇', '43', null, null, null);
INSERT INTO `pioneer_org` VALUES ('45', null, '宝华镇', '鸿堰社区党支部', '二级党支部', '社区', '吴慎虎', null, 'A', '宝华镇', '43', null, null, null);
INSERT INTO `pioneer_org` VALUES ('46', null, '宝华镇', '华山村党总支', '党总支', '建制村', '陶贤庚', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('47', null, '宝华镇', '华山村党支部', '二级党支部', '建制村', '杨昌林', null, 'A', '宝华镇', '46', null, null, null);
INSERT INTO `pioneer_org` VALUES ('48', null, '宝华镇', '华山村西谢党支部', '二级党支部', '建制村', '秦小明', null, 'A', '宝华镇', '46', null, null, null);
INSERT INTO `pioneer_org` VALUES ('49', null, '宝华镇', '华山村胄王党支部', '二级党支部', '建制村', '石文华', null, 'A', '宝华镇', '46', null, null, null);
INSERT INTO `pioneer_org` VALUES ('50', null, '宝华镇', '华山村仁青苗木合作社', '二级党支部', '新经济组织', '石文华', null, 'A', '宝华镇', '46', null, null, null);
INSERT INTO `pioneer_org` VALUES ('51', null, '宝华镇', '华山村新经济联合组织党支部', '二级党支部', '建制村', '吴和平', null, 'A', '宝华镇', '46', null, null, null);
INSERT INTO `pioneer_org` VALUES ('52', null, '宝华镇', '宝华新城社区党支部', '一级党支部', '社区', '林  松', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('53', null, '宝华镇', '宝华花园社区服务中心党支部', '一级党支部', '机关', '郭  洁', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('54', null, '宝华镇', '机关党支部', '一级党支部', '机关', '杨世祥', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('55', null, '宝华镇', '宝华新城建设发展有限公司党支部', '一级党支部', '机关', '王福香', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('56', null, '宝华镇', '农村经济服务中心党支部', '一级党支部', '事业单位', '耿  超', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('57', null, '宝华镇', '农业服务中心党支部', '一级党支部', '事业单位', '包伟力', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('58', null, '宝华镇', '国土所党支部', '一级党支部', '事业单位', '殷洪斌', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('59', null, '宝华镇', '宝华中队党支部', '一级党支部', '事业单位', '徐厚琦', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('60', null, '宝华镇', '建管所党支部', '一级党支部', '事业单位', '张传轶', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('61', null, '宝华镇', '宝华中学党支部', '一级党支部', '事业单位', '李良胜', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('62', null, '宝华镇', '中心校党支部', '一级党支部', '事业单位', '沈俊涛', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('63', null, '宝华镇', '水利站党支部', '一级党支部', '事业单位', '梅达松', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('64', null, '宝华镇', '派出所党支部', '一级党支部', '事业单位', '杨国正', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('65', null, '宝华镇', '市场监管局党支部', '一级党支部', '事业单位', '姜浩林', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('66', null, '宝华镇', '供销社党支部', '一级党支部', '事业单位', '朱立功', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('67', null, '宝华镇', '新城管委会自来水公司党支部', '一级党支部', '事业单位', '沈  阳', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('68', null, '宝华镇', '老干部党支部', '一级党支部', '事业单位', '叶志友', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('69', null, '宝华镇', '卫生院党支部', '一级党支部', '事业单位', '孙利中', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('70', null, '宝华镇', '宝玉兰制衣有限公司党支部', '一级党支部', '非公有经济控制企业', '张文斌', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('71', null, '宝华镇', '容宝建设公司党支部', '一级党支部', '非公有经济控制企业', '陈宏武', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('72', null, '宝华镇', '天晟药业党支部', '一级党支部', '非公有经济控制企业', '季  浩', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('73', null, '宝华镇', '先锋化工党支部', '一级党支部', '非公有经济控制企业', '戴礼高', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('74', null, '宝华镇', '唐邦机电党支部', '一级党支部', '非公有经济控制企业', '高  辉', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('75', null, '宝华镇', '宝亚刹车党支部', '一级党支部', '非公有经济控制企业', '顾贵义', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('76', null, '宝华镇', '江苏可一文化艺术产业园有限公司党支部', '一级党支部', '非公有经济控制企业', '高  峰', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('77', null, '宝华镇', '江苏锦隆宝华山生态旅游度假投资发展有限公司党支部', '一级党支部', '非公有经济控制企业', '张翠红', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('78', null, '宝华镇', '江苏宝阳建设工程有限公司党支部', '一级党支部', '非公有经济控制企业', '姚  伟', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('79', null, '宝华镇', '美亚金属制品有限公司党支部', '一级党支部', '非公有经济控制企业', '陈  标', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('80', null, '宝华镇', '句容宝华投资控股集团有限公司党支部', '一级党支部', '非公有经济控制企业', '赵  强', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('81', null, '宝华镇', '句容宝华山庄餐饮休闲有限公司党支部', '一级党支部', '非公有经济控制企业', '吴忠根', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('82', null, '宝华镇', '句容吉龙金箔有限公司党支部', '一级党支部', '非公有经济控制企业', '谢骏骋', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('83', null, '宝华镇', '江苏旭华圣洛迪建材有限公司党支部', '一级党支部', '非公有经济控制企业', null, null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('84', null, '宝华镇', '江苏金基特钢有限公司党支部', '一级党支部', '非公有经济控制企业', '张俊来', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('85', null, '宝华镇', '江苏金沃机械有限公司党支部', '一级党支部', '非公有经济控制企业', '范刚华', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('86', null, '宝华镇', '万城创业园党支部', '一级党支部', '非公有经济控制企业', '顾石明', null, 'A', '宝华镇', '0', null, null, null);
INSERT INTO `pioneer_org` VALUES ('87', null, null, 'test', null, null, null, null, 'A', null, null, null, null, null);
INSERT INTO `pioneer_org` VALUES ('88', null, 'test2221', '测试组织接口', null, null, null, null, 'A', null, null, null, null, null);
INSERT INTO `pioneer_org` VALUES ('89', 'XFO20181025144014', 'tes111', '测试组织接口', null, null, null, '2018-10-25 14:40:15', 'A', '宝华镇', null, null, null, null);

-- ----------------------------
-- Table structure for `pioneer_source`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_source`;
CREATE TABLE `pioneer_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(2) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `file_type` char(4) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_url` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_source
-- ----------------------------
INSERT INTO `pioneer_source` VALUES ('1', '01', '1', 'doc', 'a', null, null, 'A', '宝华镇');
INSERT INTO `pioneer_source` VALUES ('2', '01', '6', 'xls', null, null, '2018-10-26 09:54:09', 'D', '宝华镇');
INSERT INTO `pioneer_source` VALUES ('3', '01', '6', 'doc', null, null, '2018-10-26 09:54:09', 'D', '宝华镇');
INSERT INTO `pioneer_source` VALUES ('4', '01', '6', 'xls', null, null, '2018-10-26 09:57:24', 'D', '宝华镇');
INSERT INTO `pioneer_source` VALUES ('5', '01', '6', 'doc', null, null, '2018-10-26 09:57:24', 'D', '宝华镇');

-- ----------------------------
-- Table structure for `pioneer_user`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_user`;
CREATE TABLE `pioneer_user` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(32) DEFAULT NULL COMMENT '编号',
  `user_name` varchar(8) DEFAULT NULL COMMENT '姓名',
  `identity_number` varchar(32) DEFAULT NULL COMMENT '身份证',
  `user_sex` char(1) DEFAULT NULL COMMENT '性别',
  `user_nation` varchar(16) DEFAULT NULL COMMENT '民族',
  `birth_date` date DEFAULT NULL COMMENT '出生日期',
  `academic_qualification` varchar(16) DEFAULT NULL COMMENT '学历',
  `user_class` varchar(16) DEFAULT NULL COMMENT '人员类别',
  `party_org` varchar(32) DEFAULT NULL COMMENT '所在党组织',
  `join_party_time` date DEFAULT NULL COMMENT '入党时间',
  `full_member_time` date DEFAULT NULL COMMENT '转正时间',
  `user_job` varchar(16) DEFAULT NULL COMMENT '工作岗位',
  `user_address` varchar(32) DEFAULT NULL COMMENT '家庭地址',
  `phone_number` varchar(16) DEFAULT NULL COMMENT '联系电话',
  `fixed_telephone` varchar(16) DEFAULT NULL COMMENT '固定电话',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_user
-- ----------------------------
INSERT INTO `pioneer_user` VALUES ('1', 'XFU2018102417111', 'wj', '321281199508206495', '男', '汉族', '1995-08-20', '本科', '正式党员', '个体党支部', '1973-08-01', '1973-08-01', '其他', '句容', '17712659161', '83680341', '宝华镇', '2018-10-24 17:16:00', 'A', null);
INSERT INTO `pioneer_user` VALUES ('2', 'XFU2018102417222', 'aa', null, null, null, null, null, null, '个体党支部', null, null, null, null, null, null, '宝华镇', '2018-10-24 17:16:23', 'A', null);
INSERT INTO `pioneer_user` VALUES ('3', 'XFU2018102417333', 'bb', null, null, null, '1984-09-22', null, null, '老干部党支部', null, null, null, null, null, null, '宝华镇', '2018-10-24 17:16:59', 'D', null);
INSERT INTO `pioneer_user` VALUES ('4', 'XFU2018102417444', 'cc', null, null, null, '1985-07-13', null, null, null, null, null, null, null, null, null, null, null, 'D', null);
INSERT INTO `pioneer_user` VALUES ('5', 'XFU2018102417324', 'zzsbzz', '', null, '', '1997-08-02', '', '', '', null, null, '', '', '', '', null, '2018-10-24 17:32:42', 'D', null);
INSERT INTO `pioneer_user` VALUES ('6', 'XFU2018102417324', 'zzsb', '', null, '', '1997-08-02', '', '', '', null, null, '', '', '', '', null, '2018-10-24 17:34:04', 'D', null);
INSERT INTO `pioneer_user` VALUES ('7', 'XFU2018102417324', 'asdasd', '', null, '', '1997-08-02', '', '', '', null, null, '', '', '', '', null, null, 'A', null);
INSERT INTO `pioneer_user` VALUES ('8', 'XFU2018102417324', 'asdasd', '', null, '', '1997-08-02', '', '', '', null, null, '', '', '', '', null, null, 'A', null);
INSERT INTO `pioneer_user` VALUES ('9', 'XFU2018111164454', '22', '33', '女', '23', '2018-11-02', '32', '23', '32', '2018-11-10', '2018-11-17', '12', '312', '234', '34', '宝华镇', '2018-11-01 16:44:54', 'D', null);
INSERT INTO `pioneer_user` VALUES ('10', 'XFU20181024173555', 'test', '6435634', null, '', '1983-10-25', '', '', '', null, null, '', '', '', '', null, null, 'A', null);
INSERT INTO `pioneer_user` VALUES ('11', 'XFU201811118121', 'a1111', null, null, null, null, null, null, null, null, null, null, null, null, null, '宝华镇', '2018-11-01 18:12:01', 'A', '17712659161');
INSERT INTO `pioneer_user` VALUES ('12', null, 'b222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', null);
INSERT INTO `pioneer_user` VALUES ('13', 'XFU20181119161617', '', '', '', '', null, '', '', '', null, null, '', '', '', '', '宝华镇', '2018-11-19 16:16:18', 'A', '17712659161');
INSERT INTO `pioneer_user` VALUES ('14', 'XFU20181119161932', '', '', '', '', null, '', '', '', null, null, '', '', '', '', '宝华镇', '2018-11-19 16:19:33', 'A', '17712659161');

-- ----------------------------
-- Table structure for `pioneer_volunteer_activity`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_volunteer_activity`;
CREATE TABLE `pioneer_volunteer_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_title` varchar(32) DEFAULT NULL COMMENT '活动标题',
  `create_time` datetime DEFAULT NULL COMMENT '开始时间',
  `activity_content` varchar(20000) DEFAULT NULL COMMENT '活动内容',
  `attachment_source` char(2) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `activity_address` varchar(32) DEFAULT NULL COMMENT '活动地址',
  `total_number` int(11) DEFAULT NULL COMMENT '活动人数',
  `during_time` varchar(8) DEFAULT NULL COMMENT '历时',
  `finish_time` datetime DEFAULT NULL COMMENT '截至时间',
  `yhzh` varchar(32) DEFAULT NULL,
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_volunteer_activity
-- ----------------------------
INSERT INTO `pioneer_volunteer_activity` VALUES ('1', 'test1', null, null, null, 'D', null, null, null, null, '宝华镇', null);
INSERT INTO `pioneer_volunteer_activity` VALUES ('2', 'acd1111', '2018-11-11 08:00:00', '345323', null, 'A', '424', '32414', '21', '2018-11-11 08:00:00', null, null);
INSERT INTO `pioneer_volunteer_activity` VALUES ('3', '243421', '2018-11-02 08:00:00', '3241', null, 'A', '213434252345234', '341241', '321', '2018-11-17 08:00:00', null, null);

-- ----------------------------
-- Table structure for `pioneer_volunteer_feeling`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_volunteer_feeling`;
CREATE TABLE `pioneer_volunteer_feeling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_title` varchar(32) DEFAULT NULL COMMENT '活动标题',
  `attachment_source` char(2) DEFAULT NULL COMMENT '关联图片资源',
  `volunteer_feeling` varchar(2000) DEFAULT NULL COMMENT '志愿者感受',
  `service_feeling` varchar(2000) DEFAULT NULL COMMENT '被服务者感受',
  `delflag` char(1) DEFAULT NULL COMMENT '删除标志',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `activity_id` bigint(20) DEFAULT NULL COMMENT '志愿者活动id',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_volunteer_feeling
-- ----------------------------
INSERT INTO `pioneer_volunteer_feeling` VALUES ('1', 'test1', '01', '支援者活动使我快乐', '志愿者活动让我快乐', 'A', null, '宝华镇', '1', null);
INSERT INTO `pioneer_volunteer_feeling` VALUES ('2', 'acd1111', '01', null, null, 'D', '2018-10-26 09:44:15', '宝华镇', '2', null);
INSERT INTO `pioneer_volunteer_feeling` VALUES ('3', 'acd1111', '01', null, null, 'D', '2018-10-26 09:46:18', '宝华镇', '2', null);
INSERT INTO `pioneer_volunteer_feeling` VALUES ('4', 'acd1111', '01', null, null, 'D', '2018-10-26 09:49:48', '宝华镇', '2', null);
INSERT INTO `pioneer_volunteer_feeling` VALUES ('5', 'acd1111', '01', null, null, 'D', '2018-10-26 09:50:44', '宝华镇', '2', null);
INSERT INTO `pioneer_volunteer_feeling` VALUES ('6', 'acd1111', '01', null, '学习使我快乐', 'D', null, null, '2', null);

-- ----------------------------
-- Table structure for `pioneer_volunteer_user`
-- ----------------------------
DROP TABLE IF EXISTS `pioneer_volunteer_user`;
CREATE TABLE `pioneer_volunteer_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `volunteer_name` varchar(8) DEFAULT NULL COMMENT '志愿者姓名',
  `volunteer_content` varchar(20000) DEFAULT NULL COMMENT '志愿者信息内容',
  `activity_id` bigint(20) DEFAULT NULL COMMENT '活动id',
  `create_time` datetime DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `volunteer_state` char(1) DEFAULT NULL COMMENT '志愿者通过状态',
  `volunteer_sex` char(1) DEFAULT NULL COMMENT '志愿者性别',
  `volunteer_age` varchar(4) DEFAULT NULL COMMENT '志愿者年龄',
  `yhzh` varchar(32) DEFAULT NULL,
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pioneer_volunteer_user
-- ----------------------------
INSERT INTO `pioneer_volunteer_user` VALUES ('1', 'wj', null, '1', null, 'D', 'B', '男', '24', '宝华镇', null);
INSERT INTO `pioneer_volunteer_user` VALUES ('2', 'zhangs11', '', '2', null, 'D', 'D', null, '12', null, null);
INSERT INTO `pioneer_volunteer_user` VALUES ('3', 'aa', '', '1', null, 'D', 'D', null, '23', null, null);
INSERT INTO `pioneer_volunteer_user` VALUES ('4', '韩二魔', null, '1', '2018-11-02 15:05:38', 'A', 'D', '男', '11', '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `pwork_build`
-- ----------------------------
DROP TABLE IF EXISTS `pwork_build`;
CREATE TABLE `pwork_build` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwork_title` varchar(255) DEFAULT NULL COMMENT '党建标题',
  `delflag` char(1) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `create_time` datetime DEFAULT NULL,
  `pwork_type` char(1) DEFAULT NULL COMMENT '党建类型',
  `pwork_origin` varchar(16) DEFAULT NULL COMMENT '来源',
  `pwork_number` varchar(16) DEFAULT NULL COMMENT '编号',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pwork_build
-- ----------------------------
INSERT INTO `pwork_build` VALUES ('1', '案例1', 'D', 'a.docx', '2018-10-08 17:04:22', '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('2', '案例2', 'D', 'b.docx', '2018-10-09 17:05:21', '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('3', '规章1', 'D', 'aa.docx', null, '2', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('4', '调研1', 'A', 'aaa.docx', null, '3', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('5', '通知1', 'A', 'aaaa.docx', null, '4', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('6', 'test111', 'A', null, '2018-10-08 17:57:27', null, null, null, null, null);
INSERT INTO `pwork_build` VALUES ('7', 'test111', 'A', null, '2018-10-08 17:59:05', null, null, null, null, null);
INSERT INTO `pwork_build` VALUES ('8', null, 'A', '1231', '2018-10-08 17:59:59', null, null, null, null, null);
INSERT INTO `pwork_build` VALUES ('9', 'mcccmm', 'D', null, null, '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('10', 't123', 'A', null, '2018-10-09 16:15:50', '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('11', 'mmmmm', 'A', null, '2018-10-09 16:19:14', '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('12', null, 'A', null, '2018-10-17 15:23:03', null, null, null, null, null);
INSERT INTO `pwork_build` VALUES ('13', '哈哈哈哈', 'A', '', '2018-10-17 15:26:40', '1', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('14', '222', 'A', '', '2018-10-17 15:41:12', '3', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('15', '333', 'A', '', '2018-10-17 15:41:20', '2', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('16', '11111111111111', 'A', '1539765408299.jpg', '2018-10-17 16:36:51', '4', null, null, null, null);
INSERT INTO `pwork_build` VALUES ('17', 'a12345', 'D', null, '2018-10-23 15:42:21', '4', null, 'PW20181023154221', '宝华镇', null);
INSERT INTO `pwork_build` VALUES ('18', '11122312323', 'A', '', '2018-11-02 16:52:47', '1', null, 'PW2018112165246', '宝华镇', '17712659161');
INSERT INTO `pwork_build` VALUES ('19', '34532453245324', 'A', '1541148986173.jpg', '2018-11-02 16:56:30', '1', null, 'PW2018112165629', '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `pwork_user`
-- ----------------------------
DROP TABLE IF EXISTS `pwork_user`;
CREATE TABLE `pwork_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(16) DEFAULT NULL COMMENT '部门',
  `user_name` char(8) DEFAULT NULL COMMENT '姓名',
  `user_sex` char(1) DEFAULT NULL COMMENT '性别',
  `user_age` char(3) DEFAULT NULL COMMENT '年龄',
  `user_position` varchar(16) DEFAULT NULL COMMENT '职务',
  `user_industry` varchar(16) DEFAULT NULL COMMENT '身份（行业）',
  `remark` varchar(16) DEFAULT NULL COMMENT '备注',
  `delflag` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `user_number` varchar(16) DEFAULT NULL COMMENT '编号',
  `user_phone_number` varchar(16) DEFAULT NULL COMMENT '手机号',
  `yhzh` varchar(32) DEFAULT NULL COMMENT '用户租户',
  `create_id` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pwork_user
-- ----------------------------
INSERT INTO `pwork_user` VALUES ('1', null, 'wj', '男', null, null, null, null, 'D', '2018-10-08 09:37:55', '123456', null, null, null, null);
INSERT INTO `pwork_user` VALUES ('2', null, 'abcd', '男', null, null, null, null, 'A', '2018-10-09 09:38:02', null, null, null, null, null);
INSERT INTO `pwork_user` VALUES ('3', null, 'test', '男', null, null, null, null, 'A', '2018-10-08 16:55:11', '123456', null, null, null, null);
INSERT INTO `pwork_user` VALUES ('4', null, 'wj', null, null, null, null, null, null, '2018-10-08 00:00:00', null, null, null, null, null);
INSERT INTO `pwork_user` VALUES ('5', null, 'abcd', null, null, null, null, null, null, '2018-10-09 00:00:00', '', null, null, null, null);
INSERT INTO `pwork_user` VALUES ('6', '11', '111', '男', '11', '4352345', '11', '11', 'A', null, null, null, '', null, null);
INSERT INTO `pwork_user` VALUES ('7', '11', '222', '女', '11', null, '11', '11', 'A', '2018-10-17 16:24:56', '123456', null, null, null, null);
INSERT INTO `pwork_user` VALUES ('8', null, null, null, null, null, null, null, 'A', '2018-11-02 17:42:28', '123456', null, null, '宝华镇', '17712659161');
INSERT INTO `pwork_user` VALUES ('9', null, null, null, null, null, null, null, 'A', '2018-11-02 17:43:14', '123456', null, null, '宝华镇', '17712659161');
INSERT INTO `pwork_user` VALUES ('10', null, null, null, null, null, null, null, 'A', '2018-11-02 17:43:40', '123456', null, null, '宝华镇', '17712659161');
INSERT INTO `pwork_user` VALUES ('11', null, null, null, null, null, null, null, 'A', '2018-11-02 17:48:17', '123456', null, null, '宝华镇', null);
INSERT INTO `pwork_user` VALUES ('12', null, null, null, '20', null, null, null, 'A', '2018-11-02 17:48:41', '123456', null, null, '宝华镇', null);
INSERT INTO `pwork_user` VALUES ('13', null, null, null, null, '程序员', null, null, 'A', '2018-11-02 17:49:22', '123456', null, null, '宝华镇', null);
INSERT INTO `pwork_user` VALUES ('14', null, '哈哈', null, null, null, null, null, 'A', '2018-10-08 16:55:11', '123456', null, null, null, null);
INSERT INTO `pwork_user` VALUES ('15', null, null, null, null, '苦逼程序员', null, null, 'A', '2018-11-02 17:52:27', '123456', null, null, '宝华镇', '17712659161');
INSERT INTO `pwork_user` VALUES ('16', '', '3143', '', '', '234132', '', '', 'A', '2018-11-02 17:50:37', '123456', null, '1421342', '宝华镇', '17712659161');
INSERT INTO `pwork_user` VALUES ('17', '', '', '', '', '', '', '', 'A', '2018-11-13 18:31:51', '123456', null, '', '宝华镇', '17712659161');

-- ----------------------------
-- Table structure for `security_inf`
-- ----------------------------
DROP TABLE IF EXISTS `security_inf`;
CREATE TABLE `security_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标记 0,1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_inf
-- ----------------------------
INSERT INTO `security_inf` VALUES ('1', '353422', '34532452', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_inf` VALUES ('2', '465345634', '426456436', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_inf` VALUES ('3', '342452345', '214315345', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_inf` VALUES ('4', '15436456324545647654', '3456456546786787598767545', null, null, '2018-11-05', '1');
INSERT INTO `security_inf` VALUES ('5', '653756', '75367', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('6', '436457', '5637', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('7', '4326345', '363', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('8', '568467875', '9780980', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('9', '879586753', '45678980', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('10', '6558795', '6754324', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('11', '6537653', '733645', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('12', '45765764', '468768578', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('13', '7686756543', '3425678', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('14', '1111', '', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('15', '32143542632', '', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('16', '4567890', '', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('17', '43653421', '45676689', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('18', '43653421', '45676689', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('19', '123', '222', null, null, '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('20', '123', '123', '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `security_inf` VALUES ('21', 'test1', '222', null, '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('22', 'test222', 'ab', null, '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('23', 'test222', '222', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('24', 'test333', '333', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('25', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('26', 'b1', '2222', null, '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('27', 'b', '123', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_inf` VALUES ('28', 'dd', '222', null, '17712659161', '2018-11-07', '0');
INSERT INTO `security_inf` VALUES ('29', '11', '', '宝华镇', '17712659161', '2018-11-15', '1');

-- ----------------------------
-- Table structure for `security_law`
-- ----------------------------
DROP TABLE IF EXISTS `security_law`;
CREATE TABLE `security_law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_law
-- ----------------------------
INSERT INTO `security_law` VALUES ('1', '345145134', null, '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_law` VALUES ('2', '346457653', null, '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_law` VALUES ('3', '123', '123', '宝华镇', '17712659161', '2018-11-05', '1');
INSERT INTO `security_law` VALUES ('4', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('5', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('6', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('7', 'v', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('8', 'v', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('9', 'v', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('10', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('11', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('12', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('13', 'a', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('14', 'test222', '222', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('15', 'aaaa', '1', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('16', 'ad', '1', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('17', 'ad', '1', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('18', 'a', '123', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('19', 'b234', '23', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('20', 'b234', '23', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('21', 'ddd', '1234', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('22', 'ddd', '1234', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('23', 'ddd', '1234', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('24', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('25', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('26', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('27', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('28', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('29', 'v', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('30', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('31', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('32', 'c', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('33', 'c', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('34', 'c', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('35', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('36', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('37', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('38', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('39', 'a', '111', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('40', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('41', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('42', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('43', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('44', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('45', 'c', '111', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('46', 'c', '111', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('47', 'c', '222', null, '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('48', 'a', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('49', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('50', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('51', 'test11', '222', null, '17712659161', '2018-11-07', '1');
INSERT INTO `security_law` VALUES ('52', 'test22', '222', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('53', 'test333', '333', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_law` VALUES ('54', 'law', '333', '宝华镇', '17712659161', '2018-11-07', '0');

-- ----------------------------
-- Table structure for `security_source`
-- ----------------------------
DROP TABLE IF EXISTS `security_source`;
CREATE TABLE `security_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_source` char(10) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT '01' COMMENT '类型',
  `createTime` date DEFAULT NULL,
  `isdeleted` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_source
-- ----------------------------
INSERT INTO `security_source` VALUES ('1', '02', '5', null, '01', '2018-11-05', '1');
INSERT INTO `security_source` VALUES ('2', '01', '21', null, '01', '2018-11-05', '1');
INSERT INTO `security_source` VALUES ('3', '02', '6', '发现隐患图片位置', '01', '2018-11-05', '1');
INSERT INTO `security_source` VALUES ('4', '02', '7', '图片位置', '01', '2018-11-06', '1');
INSERT INTO `security_source` VALUES ('7', '02', '7', '解决图片位置', '02', '2018-11-06', '1');
INSERT INTO `security_source` VALUES ('8', '02', '6', '整改图片', '02', '2018-11-13', '0');

-- ----------------------------
-- Table structure for `security_train`
-- ----------------------------
DROP TABLE IF EXISTS `security_train`;
CREATE TABLE `security_train` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `enclosure` varchar(255) DEFAULT NULL COMMENT '附件',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标记 0,1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_train
-- ----------------------------
INSERT INTO `security_train` VALUES ('1', '54654653755768759879', 'a', null, null, '2018-11-05', '1');
INSERT INTO `security_train` VALUES ('2', '56346', 'a', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_train` VALUES ('3', '4645757', 'a', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_train` VALUES ('4', '5756864864', 'a', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_train` VALUES ('5', '455555624', 'a', '宝华镇', null, '2018-11-05', '1');
INSERT INTO `security_train` VALUES ('6', '3454265', 'a', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('7', '456575647', 'a', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('8', '898765453', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('9', '7965645342', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('10', '54645555563', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('11', '5746867858567', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('12', '7897676545', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('13', '78967646', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('14', '345336465534', null, '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('15', '658567978654', '22', '宝华镇', null, '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('16', '123', '123', '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('17', '4546256', null, null, '17712659161', '2018-11-05', '0');
INSERT INTO `security_train` VALUES ('18', 'a', null, null, '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('19', 'b', null, '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('20', 'test', null, '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('21', 'test', null, '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_train` VALUES ('22', 'test111', '111', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('23', 'aaa', '111', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('24', 'vbb', '222', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('25', 'vbb', '222', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('26', 'aaa', null, '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('27', 'aaa', null, '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('28', 'aaa', '222', null, '17712659161', '2018-11-07', '1');
INSERT INTO `security_train` VALUES ('29', 'aaa', '111', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('30', 'bbb', '11', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('31', 'aaa', '111', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `security_train` VALUES ('32', 'a', '222', null, '17712659161', '2018-11-07', '1');
INSERT INTO `security_train` VALUES ('33', 'b', '1', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `security_train` VALUES ('34', 'edu', '333', '宝华镇', '17712659161', '2018-11-07', '0');

-- ----------------------------
-- Table structure for `security_user`
-- ----------------------------
DROP TABLE IF EXISTS `security_user`;
CREATE TABLE `security_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `postition` varchar(50) DEFAULT NULL COMMENT '职位',
  `department` varchar(10) DEFAULT NULL COMMENT '部门',
  `number` varchar(50) DEFAULT NULL COMMENT '账号',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createTime` date DEFAULT NULL,
  `isdeleted` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user
-- ----------------------------
INSERT INTO `security_user` VALUES ('1', 'admin', '1', '123', '管理员', '安全部', 'admin', null, '2018-10-17', '0');

-- ----------------------------
-- Table structure for `test01`
-- ----------------------------
DROP TABLE IF EXISTS `test01`;
CREATE TABLE `test01` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `name` char(20) DEFAULT NULL COMMENT '编号',
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test01
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user` char(16) NOT NULL,
  `pwd` char(16) DEFAULT NULL,
  `name` char(16) DEFAULT NULL,
  `jobno` char(16) DEFAULT NULL,
  `transactionid` char(16) DEFAULT NULL,
  `versionno` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updateby` char(16) DEFAULT NULL,
  `createby` char(16) DEFAULT NULL,
  `isdeleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('admin', 'admin', 'admin', '00001', '0', '0', null, null, 'admin', 'admin', '0');
INSERT INTO `userinfo` VALUES ('test', 'test', 'test', '00002', '0', '0', null, null, 'admin', 'admin', '0');

-- ----------------------------
-- Table structure for `UserInformation`
-- ----------------------------
DROP TABLE IF EXISTS `UserInformation`;
CREATE TABLE `UserInformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户信息编号',
  `UILoginName` char(200) DEFAULT NULL COMMENT '登录名',
  `UINickname` char(200) DEFAULT NULL COMMENT '昵称',
  `UIRealName` char(200) DEFAULT NULL COMMENT '真实姓名',
  `UIHeadPortrait` char(200) DEFAULT NULL COMMENT '头像',
  `UISubordinateDepartment` char(200) DEFAULT NULL COMMENT '所属部门',
  `UIBooth` char(200) DEFAULT NULL COMMENT '电话',
  `UIPhoto` char(200) DEFAULT NULL COMMENT '照片',
  `UICustomerType` char(200) DEFAULT NULL COMMENT '用户类型',
  `UIUserLevel` char(200) DEFAULT NULL COMMENT '用户级别',
  `UIBackwardness` char(200) DEFAULT NULL COMMENT '状态',
  `UICode` char(200) DEFAULT NULL COMMENT '密码',
  `VersionNo` int(11) DEFAULT NULL COMMENT '数据锁',
  `TransactionID` char(200) DEFAULT NULL COMMENT '事务同步机制',
  `CreateBy` char(200) DEFAULT NULL COMMENT '创建人',
  `CreateOn` datetime DEFAULT NULL COMMENT '创建时间',
  `UpdateBy` char(200) DEFAULT NULL COMMENT '更新人',
  `UpdateOn` datetime DEFAULT NULL COMMENT '更新时间',
  `DataLevel` char(200) DEFAULT NULL COMMENT '数据级别',
  `IsDeleted` int(11) DEFAULT NULL COMMENT '是否删除',
  `ord` int(11) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息';

-- ----------------------------
-- Records of UserInformation
-- ----------------------------

-- ----------------------------
-- Table structure for `vil`
-- ----------------------------
DROP TABLE IF EXISTS `vil`;
CREATE TABLE `vil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vil_province` char(8) DEFAULT NULL COMMENT '省',
  `vil_city` char(8) DEFAULT NULL COMMENT '市',
  `vil_area` char(8) DEFAULT NULL COMMENT '区',
  `vil_street` varchar(16) DEFAULT NULL COMMENT '街道',
  `vil_community` varchar(16) DEFAULT NULL COMMENT '社区',
  `vil_greed` varchar(16) DEFAULT NULL COMMENT '网格',
  `vil_road` varchar(16) DEFAULT NULL COMMENT '路',
  `vil_door_number` varchar(16) DEFAULT NULL COMMENT '门牌号',
  `vil_floor` varchar(16) DEFAULT NULL COMMENT '楼层类型',
  `vil_ground` char(1) DEFAULT NULL COMMENT '是否地上',
  `delflag` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vil
-- ----------------------------

-- ----------------------------
-- Table structure for `workshop_adm`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_adm`;
CREATE TABLE `workshop_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '厂区名称',
  `people` varchar(50) DEFAULT NULL COMMENT '责任人',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workshop_adm
-- ----------------------------
INSERT INTO `workshop_adm` VALUES ('2', '12345', '12345', '12345', '宝华镇', '17712659161', '2018-10-18', '0');
INSERT INTO `workshop_adm` VALUES ('3', '1111', '1111', '1111', '宝华镇', '17712659161', '2018-10-18', '1');
INSERT INTO `workshop_adm` VALUES ('4', '123', '123', '123', '宝华镇', '17712659161', '2018-11-05', '1');
INSERT INTO `workshop_adm` VALUES ('5', 'aa', '222', '333', '宝华镇', '17712659161', '2018-11-08', '1');
INSERT INTO `workshop_adm` VALUES ('6', 'test', 'wj', '1771265', '宝华镇', '17712659161', '2018-11-08', '0');

-- ----------------------------
-- Table structure for `workshop_ent`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_ent`;
CREATE TABLE `workshop_ent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `survey` varchar(255) DEFAULT NULL COMMENT '企业概况',
  `photo1` varchar(255) DEFAULT NULL COMMENT '平面图及危险源分布',
  `photo2` varchar(255) DEFAULT NULL COMMENT '操作规程',
  `photo3` varchar(255) DEFAULT NULL COMMENT '安全组织构图',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workshop_ent
-- ----------------------------
INSERT INTO `workshop_ent` VALUES ('2', '12345', '12345', '1539848933863.jpg', '1539848940186.jpg', '1539848960467.jpg', null, null, '2018-10-18', '0');
INSERT INTO `workshop_ent` VALUES ('3', '123', '123', '1', '2', '3', '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `workshop_ent` VALUES ('4', 'a', '', '', '', '', '宝华镇', '17712659161', '2018-11-07', '1');
INSERT INTO `workshop_ent` VALUES ('5', 'test111222', '222', '1541656447498.png', '1541656454884.png', '1541656460880.png', '宝华镇', '17712659161', '2018-11-08', '0');

-- ----------------------------
-- Table structure for `workshop_equ`
-- ----------------------------
DROP TABLE IF EXISTS `workshop_equ`;
CREATE TABLE `workshop_equ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '器材名称',
  `number` varchar(255) DEFAULT NULL COMMENT '器材编号',
  `address` varchar(255) DEFAULT NULL COMMENT '器材位置',
  `productionDate` date DEFAULT NULL COMMENT '出厂日期',
  `scrapDate` date DEFAULT NULL COMMENT '报废日期',
  `inspectDate` date DEFAULT NULL COMMENT '到检日期',
  `yhzh` varchar(255) DEFAULT NULL COMMENT '用户租户',
  `createId` varchar(50) DEFAULT NULL,
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workshop_equ
-- ----------------------------
INSERT INTO `workshop_equ` VALUES ('3', '987', '97', '987', '2018-10-18', '2018-10-19', '2018-10-20', null, null, '2018-10-18', '0');
INSERT INTO `workshop_equ` VALUES ('4', '123', '123', '123', '2018-11-04', null, null, '宝华镇', '17712659161', '2018-11-05', '0');
INSERT INTO `workshop_equ` VALUES ('5', 'ts', '1', '1', '2018-11-07', '2018-11-07', '2018-11-07', '宝华镇', '17712659161', '2018-11-07', '0');
INSERT INTO `workshop_equ` VALUES ('6', 'a', '1', '1', '2018-11-08', '2018-11-08', '2018-11-08', '宝华镇', '17712659161', '2018-11-08', '0');
INSERT INTO `workshop_equ` VALUES ('7', 'test111', '22', '33', null, null, null, '宝华镇', '17712659161', '2018-11-08', '1');
