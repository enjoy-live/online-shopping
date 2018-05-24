/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : localhost
 Source Database       : db_hzpxs

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : utf-8

 Date: 05/24/2018 21:10:38 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
--  Records of `admin`
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1014', 'a', 'a', '2018-05-16 19:34:02', '2018-05-16 19:34:06', '0');
COMMIT;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL COMMENT '类别名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=utf8 COMMENT='商品类别';

-- ----------------------------
--  Records of `category`
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1014', '补水保湿', '2018-05-16 16:32:04', '2018-05-16 16:31:54', '0'), ('1015', '皮肤紧致', '2018-05-16 16:32:18', '2018-05-16 16:32:03', '0'), ('1016', '防紫外线', '2018-05-16 16:32:35', '2018-05-16 16:32:38', '0');
COMMIT;

-- ----------------------------
--  Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(60) DEFAULT NULL COMMENT '留言标题',
  `content` tinytext COMMENT '留言内容',
  `user_id` int(11) DEFAULT NULL COMMENT '留言用户ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`),
  KEY `feedback_key_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
--  Table structure for `good_rank`
-- ----------------------------
DROP TABLE IF EXISTS `good_rank`;
CREATE TABLE `good_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `good_name` varchar(80) DEFAULT NULL COMMENT '商品名称',
  `good_image_url` varchar(255) DEFAULT NULL COMMENT '商品图片地址',
  `good_price` decimal(10,3) DEFAULT NULL COMMENT '商品市场价格',
  `good_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `sale_amount` int(11) DEFAULT NULL COMMENT '商品销售量',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`),
  KEY `good_rank_key_good_id` (`good_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='销量排行表';

-- ----------------------------
--  Records of `good_rank`
-- ----------------------------
BEGIN;
INSERT INTO `good_rank` VALUES ('1', '葡萄籽抗皱美白补水', '/upload/1427129969988.jpg', '20.000', '7', '4', '2018-05-24 12:01:06', '2018-05-24 12:01:06', '0'), ('2', '粹润白洁面套装', '/upload/1427129746528.jpg', '20.000', '2', '3', '2018-05-24 01:14:02', '2018-05-24 13:14:02', '0'), ('3', '润白皙滢泽霜50g', '/upload/1427129829504.jpg', '20.000', '4', '1', '2018-05-24 01:14:02', '2018-05-24 13:14:02', '0'), ('4', '感护肤套装4件套', '/upload/1427129920709.jpg', '20.000', '6', '2', '2018-05-24 01:20:36', '2018-05-24 13:20:36', '0');
COMMIT;

-- ----------------------------
--  Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(80) DEFAULT NULL COMMENT '商品名称',
  `remark` text COMMENT '商品描述',
  `image_url` varchar(255) DEFAULT NULL COMMENT '商品图片地址',
  `price` decimal(10,3) DEFAULT NULL COMMENT '商品市场价格',
  `special_offer` decimal(10,3) DEFAULT NULL COMMENT '促销特价',
  `category_id` int(11) DEFAULT NULL COMMENT '类别ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`),
  KEY `goods_key_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10117 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
--  Records of `goods`
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('10110', '滋养润肤水150ml', '<ul>\\r\\n    <li title=\\\"御泥坊 玫瑰滋养矿物润肤水\\\">产品名称：御泥坊 玫瑰滋养矿物润肤水</li>\\r\\n    <li title=\\\"&nbsp;其它化妆水/爽肤水\\\">化妆品品类:&nbsp;其它化妆水/爽肤水</li>\\r\\n    <li title=\\\"&nbsp;正常规格\\\">规格类型:&nbsp;正常规格</li>\\r\\n    <li title=\\\"&nbsp;150ml\\\">化妆品净含量:&nbsp;150ml</li>\\r\\n    <li title=\\\"&nbsp;补水&nbsp;保湿&nbsp;滋润&nbsp;柔肤\\\">功效:&nbsp;补水&nbsp;保湿&nbsp;滋润&nbsp;柔肤</li>\\r\\n    <li title=\\\"&nbsp;中性及干性肤质\\\">适合肤质:&nbsp;中性及干性肤质</li>\\r\\n    <li id=\\\"J_attrBrandName\\\" title=\\\"&nbsp;御泥坊\\\">品牌:&nbsp;御泥坊</li>\\r\\n    <li title=\\\"&nbsp;玫瑰滋养矿物润肤水\\\">化妆水/爽肤水单品:&nbsp;玫瑰滋养矿物润肤水</li>\\r\\n</ul>\'', '/upload/1427129706823.jpg', '90.000', '66.000', '1', '2018-05-16 16:35:57', '2018-05-16 16:34:10', '0'), ('10111', '粹润白洁面套装', '<ul>\\r\\n    <li title=\\\"&nbsp;单支&nbsp;双支&nbsp;三支\\\">颜色分类:&nbsp;单支&nbsp;双支&nbsp;三支</li>\\r\\n    <li title=\\\"&nbsp;美白&nbsp;保湿&nbsp;抗氧化&nbsp;提亮肤色\\\">功效:&nbsp;美白&nbsp;保湿&nbsp;抗氧化&nbsp;提亮肤色</li>\\r\\n    <li title=\\\"&nbsp;正常规格\\\">规格类型:&nbsp;正常规格</li>\\r\\n    <li id=\\\"J_attrBrandName\\\" title=\\\"&nbsp;Ponds/旁氏\\\">品牌:&nbsp;Ponds/旁氏</li>\\r\\n    <li title=\\\"&nbsp;米粹润白洁面套装\\\">面部护理套装:&nbsp;米粹润白洁面套装</li>\\r\\n    <li title=\\\"&nbsp;中国\\\">产地:&nbsp;中国</li>\\r\\n</ul>', '/upload/1427129746528.jpg', '126.000', '80.000', '1', '2018-05-16 16:39:05', '2018-05-16 16:39:09', '0'), ('10112', '玫琳凯1号保湿爽肤水', '<ul>\\r\\n    <li title=\\\"Marykay/玫琳凯 经典护肤保湿爽肤水\\\">产品名称：Marykay/玫琳凯 经典护肤...</li>\\r\\n    <li title=\\\"&nbsp;2013年\\\">上市时间:&nbsp;2013年</li>\\r\\n    <li title=\\\"&nbsp;爽肤水\\\">化妆品品类:&nbsp;爽肤水</li>\\r\\n    <li title=\\\"&nbsp;正常规格\\\">规格类型:&nbsp;正常规格</li>\\r\\n    <li title=\\\"&nbsp;100ml\\\">化妆品净含量:&nbsp;100ml</li>\\r\\n    <li title=\\\"&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;滋润&nbsp;清洁毛孔&nbsp;舒缓肌肤&nbsp;细致毛孔&nbsp;舒缓清爽肌肤\\\">功效:&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;滋润&nbsp;清洁毛孔&nbsp;舒缓肌肤&nbsp;细致毛孔&nbsp;舒缓清爽肌肤</li>\\r\\n    <li title=\\\"&nbsp;干性肤质\\\">适合肤质:&nbsp;干性肤质</li>\\r\\n    <li id=\\\"J_attrBrandName\\\" title=\\\"&nbsp;Marykay/玫琳凯\\\">品牌:&nbsp;Marykay/玫琳凯</li>\\r\\n</ul>', '/upload/1427129793811.jpg', '60.000', '46.000', '1', '2018-05-16 16:40:35', '2018-05-16 16:40:01', '0'), ('10113', '润白皙滢泽霜50g', '<ul>\\r\\n    <li title=\\\"Ponds/旁氏 亮采净白粉润白皙滢泽霜\\\">产品名称：Ponds/旁氏 亮采净白粉润...</li>\\r\\n    <li title=\\\"&nbsp;面霜\\\">乳液/面霜品类:&nbsp;面霜</li>\\r\\n    <li title=\\\"&nbsp;正常规格\\\">规格类型:&nbsp;正常规格</li>\\r\\n    <li title=\\\"&nbsp;提亮肤色&nbsp;美白&nbsp;补水&nbsp;保湿\\\">功效:&nbsp;提亮肤色&nbsp;美白&nbsp;补水&nbsp;保湿</li>\\r\\n    <li title=\\\"&nbsp;任何肤质\\\">适合肤质:&nbsp;任何肤质</li>\\r\\n    <li title=\\\"&nbsp;50g/mL\\\">化妆品净含量:&nbsp;50g/mL</li>\\r\\n    <li id=\\\"J_attrBrandName\\\" title=\\\"&nbsp;Ponds/旁氏\\\">品牌:&nbsp;Ponds/旁氏</li>\\r\\n</ul>', '/upload/1427129829504.jpg', '80.000', '59.000', '1', '2018-05-16 16:41:51', '2018-05-16 16:41:39', '0'), ('10114', '欧莱雅光学嫩肤套装', '<ul>\\r\\n    <li title=\\\" 2015年\\\">上市时间: 2015年</li>\\r\\n    <li title=\\\" 否\\\">是否为特殊用途化妆品: 否</li>\\r\\n    <li title=\\\" 美白 补水 保湿 抗敏感 任何肤质\\\">功效: 美白 补水 保湿 抗敏感 任何肤质</li>\\r\\n    <li title=\\\" 正常规格\\\">规格类型: 正常规格</li>\\r\\n    <li title=\\\" L＇oreal/欧莱雅\\\">品牌: L＇oreal/欧莱雅</li>\\r\\n    <li title=\\\" 其他/other\\\">欧莱雅单品: 其他/other</li>\\r\\n</ul>', '/upload/1427129878330.jpg', '99.000', '72.000', '3', '2018-05-16 16:43:13', '2018-05-16 16:43:16', '0'), ('10115', '感护肤套装4件套', '<ul>\\r\\n    <li title=\\\"&nbsp;美白&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;提亮肤色&nbsp;滋润&nbsp;舒缓肌肤\\\">功效:&nbsp;美白&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;提亮肤色&nbsp;滋润&nbsp;舒缓肌肤</li>\\r\\n    <li title=\\\"&nbsp;正常规格\\\">规格类型:&nbsp;正常规格</li>\\r\\n    <li id=\\\"J_attrBrandName\\\" title=\\\"&nbsp;SUNSSHEN/圣蜜莱雅\\\">品牌:&nbsp;SUNSSHEN/圣蜜莱雅</li>\\r\\n    <li title=\\\"&nbsp;水透白矿泉补水生肌四件套装\\\">面部护理套装:&nbsp;水透白矿泉补水生肌四件套装</li>\\r\\n    <li title=\\\"&nbsp;任何肤质\\\">适合肤质:&nbsp;任何肤质</li>\\r\\n    <li title=\\\"&nbsp;中国\\\">产地:&nbsp;中国</li>\\r\\n    <li title=\\\"&nbsp;3年\\\">保质期:&nbsp;3年 <!-- 健字号相关--></li>\\r\\n</ul>', '/upload/1427129920709.jpg', '50.000', '30.000', '2', '2018-05-16 16:44:25', '2018-05-16 16:44:28', '0'), ('10116', '葡萄籽抗皱美白补水', '<ul>\\r\\n    <li title=\\\" 美白 补水 保湿 控油 抗皱\\\">功效: 美白 补水 保湿 控油 抗皱</li>\\r\\n    <li title=\\\" 正常规格\\\">规格类型: 正常规格</li>\\r\\n    <li title=\\\" L＇oreal/欧莱雅\\\">品牌: L＇oreal/欧莱雅</li>\\r\\n    <li title=\\\" 其他/other\\\">欧莱雅单品: 其他/other</li>\\r\\n    <li title=\\\" 任何肤质\\\">适合肤质: 任何肤质</li>\\r\\n</ul>', '/upload/1427129969988.jpg', '20.000', '20.000', '2', '2018-05-16 16:45:26', '2018-05-16 16:45:29', '0');
COMMIT;

-- ----------------------------
--  Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(1) DEFAULT '0' COMMENT '订单状态,0:未支付,1:支付成功,2:过期,3:已发货,4:已签收',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址--省市区',
  `address_info` varchar(255) DEFAULT NULL COMMENT '收货地址--详细地址(街道小区单元)',
  `total` decimal(10,3) DEFAULT NULL COMMENT '订单金额',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`),
  KEY `order_info_key_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2100 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
--  Table structure for `order_item`
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`),
  KEY `order_item_key_user_id` (`user_id`) USING BTREE,
  KEY `order_item_key_order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
--  Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(88) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_admin`
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
COMMIT;

-- ----------------------------
--  Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(88) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_catelog`
-- ----------------------------
BEGIN;
INSERT INTO `t_catelog` VALUES ('1', '补水保湿', 'no'), ('2', '皮肤紧致', 'no'), ('3', '防紫外线', 'no');
COMMIT;

-- ----------------------------
--  Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(88) DEFAULT NULL,
  `goods_miaoshu` varchar(5000) DEFAULT NULL,
  `goods_pic` varchar(50) DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_tejia` int(11) DEFAULT NULL,
  `goods_isnottejia` varchar(50) DEFAULT NULL,
  `goods_isnottuijian` varchar(50) DEFAULT NULL,
  `goods_catelog_id` int(11) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_goods`
-- ----------------------------
BEGIN;
INSERT INTO `t_goods` VALUES ('1', '滋养润肤水150ml', '<ul>\r\n    <li title=\"御泥坊 玫瑰滋养矿物润肤水\">产品名称：御泥坊 玫瑰滋养矿物润肤水</li>\r\n    <li title=\"&nbsp;其它化妆水/爽肤水\">化妆品品类:&nbsp;其它化妆水/爽肤水</li>\r\n    <li title=\"&nbsp;正常规格\">规格类型:&nbsp;正常规格</li>\r\n    <li title=\"&nbsp;150ml\">化妆品净含量:&nbsp;150ml</li>\r\n    <li title=\"&nbsp;补水&nbsp;保湿&nbsp;滋润&nbsp;柔肤\">功效:&nbsp;补水&nbsp;保湿&nbsp;滋润&nbsp;柔肤</li>\r\n    <li title=\"&nbsp;中性及干性肤质\">适合肤质:&nbsp;中性及干性肤质</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;御泥坊\">品牌:&nbsp;御泥坊</li>\r\n    <li title=\"&nbsp;玫瑰滋养矿物润肤水\">化妆水/爽肤水单品:&nbsp;玫瑰滋养矿物润肤水</li>\r\n</ul>', '/upload/1427129706823.jpg', '20', '20', 'no', null, '1', 'no'), ('2', '粹润白洁面套装', '<ul>\r\n    <li title=\"&nbsp;单支&nbsp;双支&nbsp;三支\">颜色分类:&nbsp;单支&nbsp;双支&nbsp;三支</li>\r\n    <li title=\"&nbsp;美白&nbsp;保湿&nbsp;抗氧化&nbsp;提亮肤色\">功效:&nbsp;美白&nbsp;保湿&nbsp;抗氧化&nbsp;提亮肤色</li>\r\n    <li title=\"&nbsp;正常规格\">规格类型:&nbsp;正常规格</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;Ponds/旁氏\">品牌:&nbsp;Ponds/旁氏</li>\r\n    <li title=\"&nbsp;米粹润白洁面套装\">面部护理套装:&nbsp;米粹润白洁面套装</li>\r\n    <li title=\"&nbsp;中国\">产地:&nbsp;中国</li>\r\n</ul>', '/upload/1427129746528.jpg', '20', '20', 'no', null, '1', 'no'), ('3', '玫琳凯1号保湿爽肤水', '<ul>\r\n    <li title=\"Marykay/玫琳凯 经典护肤保湿爽肤水\">产品名称：Marykay/玫琳凯 经典护肤...</li>\r\n    <li title=\"&nbsp;2013年\">上市时间:&nbsp;2013年</li>\r\n    <li title=\"&nbsp;爽肤水\">化妆品品类:&nbsp;爽肤水</li>\r\n    <li title=\"&nbsp;正常规格\">规格类型:&nbsp;正常规格</li>\r\n    <li title=\"&nbsp;100ml\">化妆品净含量:&nbsp;100ml</li>\r\n    <li title=\"&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;滋润&nbsp;清洁毛孔&nbsp;舒缓肌肤&nbsp;细致毛孔&nbsp;舒缓清爽肌肤\">功效:&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;滋润&nbsp;清洁毛孔&nbsp;舒缓肌肤&nbsp;细致毛孔&nbsp;舒缓清爽肌肤</li>\r\n    <li title=\"&nbsp;干性肤质\">适合肤质:&nbsp;干性肤质</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;Marykay/玫琳凯\">品牌:&nbsp;Marykay/玫琳凯</li>\r\n</ul>', '/upload/1427129793811.jpg', '20', '20', 'no', null, '1', 'no'), ('4', '润白皙滢泽霜50g', '<ul>\r\n    <li title=\"Ponds/旁氏 亮采净白粉润白皙滢泽霜\">产品名称：Ponds/旁氏 亮采净白粉润...</li>\r\n    <li title=\"&nbsp;面霜\">乳液/面霜品类:&nbsp;面霜</li>\r\n    <li title=\"&nbsp;正常规格\">规格类型:&nbsp;正常规格</li>\r\n    <li title=\"&nbsp;提亮肤色&nbsp;美白&nbsp;补水&nbsp;保湿\">功效:&nbsp;提亮肤色&nbsp;美白&nbsp;补水&nbsp;保湿</li>\r\n    <li title=\"&nbsp;任何肤质\">适合肤质:&nbsp;任何肤质</li>\r\n    <li title=\"&nbsp;50g/mL\">化妆品净含量:&nbsp;50g/mL</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;Ponds/旁氏\">品牌:&nbsp;Ponds/旁氏</li>\r\n</ul>', '/upload/1427129829504.jpg', '20', '20', 'no', null, '1', 'no'), ('5', '欧莱雅光学嫩肤套装', '<ul>\r\n    <li title=\" 2015年\">上市时间: 2015年</li>\r\n    <li title=\" 否\">是否为特殊用途化妆品: 否</li>\r\n    <li title=\" 美白 补水 保湿 抗敏感 任何肤质\">功效: 美白 补水 保湿 抗敏感 任何肤质</li>\r\n    <li title=\" 正常规格\">规格类型: 正常规格</li>\r\n    <li title=\" L＇oreal/欧莱雅\">品牌: L＇oreal/欧莱雅</li>\r\n    <li title=\" 其他/other\">欧莱雅单品: 其他/other</li>\r\n</ul>', '/upload/1427129878330.jpg', '20', '20', 'no', null, '1', 'no'), ('6', '感护肤套装4件套', '<ul>\r\n    <li title=\"&nbsp;美白&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;提亮肤色&nbsp;滋润&nbsp;舒缓肌肤\">功效:&nbsp;美白&nbsp;补水&nbsp;保湿&nbsp;收缩毛孔&nbsp;提亮肤色&nbsp;滋润&nbsp;舒缓肌肤</li>\r\n    <li title=\"&nbsp;正常规格\">规格类型:&nbsp;正常规格</li>\r\n    <li id=\"J_attrBrandName\" title=\"&nbsp;SUNSSHEN/圣蜜莱雅\">品牌:&nbsp;SUNSSHEN/圣蜜莱雅</li>\r\n    <li title=\"&nbsp;水透白矿泉补水生肌四件套装\">面部护理套装:&nbsp;水透白矿泉补水生肌四件套装</li>\r\n    <li title=\"&nbsp;任何肤质\">适合肤质:&nbsp;任何肤质</li>\r\n    <li title=\"&nbsp;中国\">产地:&nbsp;中国</li>\r\n    <li title=\"&nbsp;3年\">保质期:&nbsp;3年 <!-- 健字号相关--></li>\r\n</ul>', '/upload/1427129920709.jpg', '20', '20', 'no', null, '2', 'no'), ('7', '葡萄籽抗皱美白补水', '<ul>\r\n    <li title=\" 美白 补水 保湿 控油 抗皱\">功效: 美白 补水 保湿 控油 抗皱</li>\r\n    <li title=\" 正常规格\">规格类型: 正常规格</li>\r\n    <li title=\" L＇oreal/欧莱雅\">品牌: L＇oreal/欧莱雅</li>\r\n    <li title=\" 其他/other\">欧莱雅单品: 其他/other</li>\r\n    <li title=\" 任何肤质\">适合肤质: 任何肤质</li>\r\n</ul>', '/upload/1427129969988.jpg', '20', '20', 'no', null, '2', 'no');
COMMIT;

-- ----------------------------
--  Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(88) DEFAULT NULL,
  `liuyan_content` varchar(5000) DEFAULT NULL,
  `liuyan_date` varchar(50) DEFAULT NULL,
  `liuyan_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_liuyan`
-- ----------------------------
BEGIN;
INSERT INTO `t_liuyan` VALUES ('1', '1', '请输入内容111111111111', '2015-03-27 17:44:25', 'liusan'), ('2', 'dfdf', '<img alt=\"\" src=\"http://localhost:8888/fdxx/fckeditor/editor/images/smiley/msn/wink_smile.gif\" />请输入内容', '2015-03-27 17:49:34', 'liusan'), ('3', 'ddddddddddd', '<img alt=\"\" src=\"http://localhost:8888/dcxt/fckeditor/editor/images/smiley/msn/angel_smile.gif\" />请输入内容', '2015-03-27 8:14:22', 'liusan');
COMMIT;

-- ----------------------------
--  Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(88) DEFAULT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `order_zhuangtai` varchar(50) DEFAULT NULL,
  `order_songhuodizhi` varchar(50) DEFAULT NULL,
  `order_fukuangfangshi` varchar(50) DEFAULT NULL,
  `order_jine` int(11) DEFAULT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_order`
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES ('1', '20180524120106', '2018-05-24 12:01:06', '未受理', '', '货到付款', '40', '3'), ('2', '20180524011402', '2018-05-24 01:14:02', '未受理', '', '货到付款', '80', '3'), ('3', '20180524011512', '2018-05-24 01:15:12', '未受理', '', '货到付款', '40', '3'), ('4', '20180524012036', '2018-05-24 01:20:36', '未受理', '', '货到付款', '40', '4');
COMMIT;

-- ----------------------------
--  Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_orderitem`
-- ----------------------------
BEGIN;
INSERT INTO `t_orderitem` VALUES ('1', '1', '7', '2'), ('2', '2', '2', '3'), ('3', '2', '4', '1'), ('4', '3', '7', '2'), ('5', '4', '6', '2');
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(88) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_age` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '0', '刘三', '男', '20', '北京路', '13888888888', 'liusan@yahoo.cn', 'no'), ('2', 'wanggan', '000000', '0', '王刚', '男', '20', '北京路', '13888854666', 'wanggan@yahoo.cn', 'no'), ('3', 'admin', '123456', '0', '?', '?', '20', '??', '158', '90234@qq.com', 'no'), ('4', 'xwz', '123456', '0', '谢文真', '男', '20', '杭州神州', '158888888', '908098098@qq.com', 'no');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `password` varchar(80) DEFAULT NULL COMMENT '登录密码',
  `type` int(1) DEFAULT NULL COMMENT '用户类型,0:普通会员,1:黄金会员,2:砖石会员',
  `id_card` varchar(30) DEFAULT NULL COMMENT '身份证',
  `real_name` varchar(12) DEFAULT NULL COMMENT '真实姓名',
  `sex` char(6) DEFAULT NULL COMMENT '性别',
  `age` char(3) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(13) DEFAULT NULL COMMENT '用户手机号码',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识,0:未删除,1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22000 DEFAULT CHARSET=utf8 COMMENT='用户表';

SET FOREIGN_KEY_CHECKS = 1;
