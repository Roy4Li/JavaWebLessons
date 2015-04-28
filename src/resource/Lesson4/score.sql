/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : course

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2015-04-27 11:57:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `class` varchar(32) DEFAULT NULL,
  `English` int(11) DEFAULT NULL,
  `chinese` int(11) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `math` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '李大', '三年级三班', '59', '15', '2015-04-13', '58');
INSERT INTO `score` VALUES ('2', '李二', '三年级三班', '81', '56', '2015-04-13', '60');
INSERT INTO `score` VALUES ('3', '李三', '三年级三班', '82', '78', '2015-04-13', '71');
INSERT INTO `score` VALUES ('4', '李四', '三年级二班', '83', '93', '2015-04-13', '20');
INSERT INTO `score` VALUES ('5', '李五', '三年级二班', '84', '61', '2015-04-13', '98');
INSERT INTO `score` VALUES ('6', '李六', '三年级二班', '85', '20', '2015-04-13', '60');
INSERT INTO `score` VALUES ('7', '李七', '三年级二班', '86', '40', '2015-04-13', '81');
INSERT INTO `score` VALUES ('8', '李八', '三年级二班', '87', '90', '2015-04-13', '83');
INSERT INTO `score` VALUES ('9', '李九', '三年级二班', '88', '31', '2015-04-13', '83');
INSERT INTO `score` VALUES ('10', '李十', '三年级二班', '89', '11', '2015-04-13', '73');
INSERT INTO `score` VALUES ('11', '李十一', '三年级一班', '90', '66', '2015-04-13', '82');
INSERT INTO `score` VALUES ('12', '李十二', '三年级一班', '91', '77', '2015-04-13', '43');
INSERT INTO `score` VALUES ('13', '李十三', '三年级一班', '92', '88', '2015-04-13', '23');
INSERT INTO `score` VALUES ('14', '李十四', '三年级一班', '93', '30', '2015-04-13', '20');
