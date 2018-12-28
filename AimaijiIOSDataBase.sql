/*
 Navicat MySQL Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : AimaijiIOSDataBase

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 28/12/2018 12:15:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `iteminfo`;
CREATE TABLE `iteminfo` (
  `itemname` varchar(255) NOT NULL,
  `itemimageurl` varchar(255) NOT NULL,
  `itemdetail` text NOT NULL,
  `itemprice` int(11) NOT NULL,
  `itembrand` varchar(255) NOT NULL DEFAULT '其他品牌',
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iteminfo
-- ----------------------------
BEGIN;
INSERT INTO `iteminfo` VALUES ('iPhone 8', '/Image/ItemInfo_Image/iphone8.png', 'iPhone 8是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布的年度旗舰手机。\r\n2017年9月13日，2017苹果秋季新品发布会发布了iPhone 8，支持无线充电，分为64GB、256GB两个版本，699美元起售。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5837元起 [2]  ，4月10日起接受在线订购。iPhone 8是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布的年度旗舰手机。\r\n2017年9月13日，2017苹果秋季新品发布会发布了iPhone 8，支持无线充电，分为64GB、256GB两个版本，699美元起售。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5837元起 [2]  ，4月10日起接受在线订购。iPhone 8是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布的年度旗舰手机。\r\n2017年9月13日，2017苹果秋季新品发布会发布了iPhone 8，支持无线充电，分为64GB、256GB两个版本，699美元起售。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5837元起 [2]  ，4月10日起接受在线订购。iPhone 8是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布的年度旗舰手机。\r\n2017年9月13日，2017苹果秋季新品发布会发布了iPhone 8，支持无线充电，分为64GB、256GB两个版本，699美元起售。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5837元起 [2]  ，4月10日起接受在线订购。1iPhone 8是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布的年度旗舰手机。\r\n2017年9月13日，2017苹果秋季新品发布会发布了iPhone 8，支持无线充电，分为64GB、256GB两个版本，699美元起售。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5837元起 [2]  ，4月10日起接受在线订购。', 6630, '苹果');
INSERT INTO `iteminfo` VALUES ('iPhone 8 Plus', '/Image/ItemInfo_Image/iphone8plus.jpg', 'iPhone 8 Plus是Apple（苹果公司）第11代手机，北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院举行苹果新品发布会上发布。\r\niPhone 8 Plus改用了玻璃面设计，支持无线充电，拥有苹果最新的A11处理器，内存为64GB、256GB两个版本，中国大陆起售价为6688元。 [1]  2018年4月9日，Apple宣布推出红色特别版iPhone 8以及iPhone 8Plus，售价5888元起，4月10日起接受在线订购 [2]  。', 7220, '苹果');
INSERT INTO `iteminfo` VALUES ('iPhone X', '/Image/ItemInfo_Image/Item2.jpg', 'iPhone X是美国Apple（苹果公司）于北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院会上发布的新机型。其中“X”是罗马数字“10”的意思，代表着苹果向iPhone问世十周年致敬。\r\niPhone X属于高端版机型，采用全新设计，搭载色彩锐利的OLED屏幕，配备升级后的相机，使用3D面部识别（Face ID）传感器解锁手机，支持AirPower(空中能量)无线充电。分为64GB、256GB两个版本，中国大陆起售价8316人民币  ，美国起售价999美元，2017年10月27日预售，11月3号正式开卖。', 9999, '苹果');
INSERT INTO `iteminfo` VALUES ('Samsung Note 8', '/Image/ItemInfo_Image/note8.jpg', '三星Galaxy Note 8是三星在2017年8月23日发布的一款旗舰手机，同时，该款手机也是三星发布的首款双摄像头智能手机。三星Galaxy Note 8 [1]  采用6.3英寸的Quad HD+ Super AMOLED全视曲面屏，以6GB+64GB内存组合起步。\r\n2018年1月，部分Galaxy Note 8用户发现，电量耗尽后，手机无法开机。此后，三星承认了这一问题，并称只有有限的手机受到影响。 [2] \r\n2018年2月，三星Galaxy S8和S8+推送了安卓8.0更新。三星Note 8沿用了三星S8的全视曲面屏设计ID，颜色上有黑、蓝、金、灰四种颜色可选。 [4] \r\n屏幕来看，三星Note 8采用了一块6.3英寸的Quad HD+ Super AMOLED全视曲面屏，分辨率达到了2960*1440像素，18.5:9的比例，辅以第五代大猩猩玻璃。 [4] \r\n整机三围上，Note 8的三围为162.5 x 74.8 x 8.6毫米，重量195g，拥有IP68的防水级别，同时S Pen也支持IP68的防水等级；具体数据上，本次S Pen的笔尖为0.7mm，其有着5.8mm的宽度以及108mm的长度，压感级别达到了4096。', 7388, '三星');
INSERT INTO `iteminfo` VALUES ('Samsung S9', '/Image/ItemInfo_Image/Samsungs9.jpg', '三星 Galaxy S9采用10纳米制程工艺八核处理器（骁龙845和三星Exynos 9810），采用4GB RAM+64GB ROM的存储搭配。 [3-4] \r\n屏幕方面采用了一块6.2英寸QHD+Super AMOLED显示屏；后置双1200万像素摄像头，支持光学防抖、相位对焦、2倍光学对焦；前置800万像素摄像头；3600mAh容量电池，支持Quick Charge 2.0快充和无线充电，IP68防尘防水。\r\n屏幕：5.8英寸/ 6.2英寸（直角）Super AMOLED 18.5：9显示屏；核心：高通骁龙845移动平台/三星Exynos 9810移动平台；\r\n运存：4GB / 6GB；存储：64GB /128GB /256GB（支持最高400GB内存卡扩展）；前置：800万像素（F/1.7）；后置：1200万像素（Galaxy S9，F/1.5光圈，OIS防抖）/ 1200万（Galaxy S9+，「可变式光圈」F/1.5、F/2.4，OIS防抖）+1200万（F/2.4）像素；电池：3000mAh / 3500mAh，支持无线充电；系统：Android 8.0 Oreo；其他：IP68 /虹膜识别/面部识别/指纹识别。', 6699, '三星');
INSERT INTO `iteminfo` VALUES ('小米 8', '/Image/ItemInfo_Image/XIAOMI8.jpg', '小米8 [1]  是小米公司8周年旗舰手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。 [2] \r\n小米8是全球首款实现L1+L5双频GPS手机，通过双频组合能有效解决单频手机定位偏差的问题，提高定位的准确度，内置3400mAh电池，支持最新的QC4+快充技术。 [3] \r\n小米8是安卓首款实现3D结构光技术人脸识别的智能手机，其解锁安全性也达到了人脸解锁领先水平。 [3] \r\n2018年5月31日下午，小米在深圳举办了年度旗舰发布会，正式发布小米8，售价2699元起。 [4]', 2699, '小米');
INSERT INTO `iteminfo` VALUES ('小米MIX 2S', '/Image/ItemInfo_Image/XIAOMIMIX2S.jpg', '小米MIX 2S取消了全陶瓷的版本，机身采用玻璃前面板+金属中框+陶瓷背壳的设计，整体的机身依旧采用18:9的全面屏，保留了正常的听筒设计，前置镜头依旧在整机的右下角。新机边框进一步变窄，后置摄像头改为了双摄，黑色版摄像头边框采用18K金镶嵌，白色版没有；小米MIX 2S屏占比方面将达到95%。 [3-5] \r\n小米MIX 2S搭载5.99英寸FHD分辨率的全面屏 [6]  ，指纹为后置设计，配色是黑色与白色的组合。 [6] ', 3299, '小米');
INSERT INTO `iteminfo` VALUES ('红米6 Pro', '/Image/ItemInfo_Image/REDMI.jpg', '红米6Pro是小米即将在6月25日发布的手机，也属于小米手机系列，红米6Pro的屏幕纵横比确认为19:9，同时在海报中，我们还能得到“AI”“625”“4000”三个关键点，暗示新机支持AI、搭载骁龙625处理器，电池容量4000mAh。红米6 Pro就是此前被工信部曝光的那款带有刘海屏的未发布小米手机，工信部网站显示，该机三围尺寸是149.33×71.68×8.75mm，重量178g。新机配备5.84英寸屏幕，分辨率为2280x1080，纵横比为19:9，运行内存有2GB、3GB、4GB版本，内置存储有16GB、32GB、64GB可选，后置双摄像头主摄为1200万像素，前置摄像头为500万像素。', 1299, '小米');
COMMIT;

-- ----------------------------
-- Table structure for typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `typeinfo`;
CREATE TABLE `typeinfo` (
  `typename` varchar(255) NOT NULL,
  `typeimage` varchar(255) DEFAULT NULL,
  `typeinst` text,
  PRIMARY KEY (`typename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of typeinfo
-- ----------------------------
BEGIN;
INSERT INTO `typeinfo` VALUES ('vivo', '/Image/UserPhoto/photo1.jpg', NULL);
INSERT INTO `typeinfo` VALUES ('三星', '/Image/ItemType/Samsung.jpg', NULL);
INSERT INTO `typeinfo` VALUES ('其他品牌', '/Image/UserPhoto/photo1.jpg', NULL);
INSERT INTO `typeinfo` VALUES ('华为', '/Image/ItemType/HUAWEI.jpg', NULL);
INSERT INTO `typeinfo` VALUES ('小米', '/Image/ItemType/MI.jpg', NULL);
INSERT INTO `typeinfo` VALUES ('苹果', '/Image/ItemType/Apple.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for usercart
-- ----------------------------
DROP TABLE IF EXISTS `usercart`;
CREATE TABLE `usercart` (
  `itemname` varchar(255) NOT NULL,
  `itemimageurl` varchar(255) NOT NULL,
  `itemprice` int(11) NOT NULL,
  `itemowner` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercart
-- ----------------------------
BEGIN;
INSERT INTO `usercart` VALUES ('iPhone', '/Image/ItemInfo_Image/Item2.jpg', 9999, 'lixingyu');
INSERT INTO `usercart` VALUES ('iPhone X', '/Image/ItemInfo_Image/Item2.jpg', 9999, 'lixingyu');
COMMIT;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userphotourl` varchar(255) DEFAULT '/Image/UserPhoto/default.png',
  `selfinst` text,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
BEGIN;
INSERT INTO `userinfo` VALUES ('aimaijiFirstuser', '8645', '/Image/UserPhoto/default.png', '这是aimaiji网站的第一个用户，他似乎很喜欢网站作者给他的头像，这个头像后来被用作未修改头像用户的默认头像......');
INSERT INTO `userinfo` VALUES ('aimaijiSecondUser', '8645', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('aimaijiThirdUser', '8645', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('Assad', '11111', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('lixingyu', '8645', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('mofashaonvXX', '86456343', '/Image/UserPhoto/photo1.jpg', '我从美德中汲取力量，保护我的同伴，痛击我的敌人。\r\n\r\n正义的火焰，将焚烧一切敌手！\r\n\r\n勇气的圣盾，能抵御一切进攻！\r\n\r\n决心的守护，将使我精神百倍，安然归来！\r\n\r\n战场上，我能够使用单手剑、巨锤、巨剑、钉锤、节仗、法杖、聚能器、火炬、盾牌；\r\n\r\n深海下，我能够使用长矛和三叉戟。\r\n\r\n除此之外，强大的灵魂武器更是一切对手的梦魇，\r\n\r\n然而这些 ，都不是作为一名守护者的重要的因素，\r\n\r\n守护者真正的力量，来自强大的内心以及无私的牺牲。\r\n\r\n每一名真正的守护者，都是杰出的战术大师和无私的防御者，\r\n\r\n每一名真正的守护者，都知晓什么时候牺牲自己的防御，帮助盟友取得胜利。\r\n\r\n我是F91，这是我的激战2故事，我在激战2等你！');
INSERT INTO `userinfo` VALUES ('qqqqq', '11111', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('sunyifeng', '25zai', '/Image/UserPhoto/default.png', '我从美德中汲取力量，保护我的同伴，痛击我的敌人。\r\n\r\n正义的火焰，将焚烧一切敌手！\r\n\r\n勇气的圣盾，能抵御一切进攻！\r\n\r\n决心的守护，将使我精神百倍，安然归来！\r\n\r\n战场上，我能够使用单手剑、巨锤、巨剑、钉锤、节仗、法杖、聚能器、火炬、盾牌；\r\n\r\n深海下，我能够使用长矛和三叉戟。\r\n\r\n除此之外，强大的灵魂武器更是一切对手的梦魇，\r\n\r\n然而这些 ，都不是作为一名守护者的重要的因素，\r\n\r\n守护者真正的力量，来自强大的内心以及无私的牺牲。\r\n\r\n每一名真正的守护者，都是杰出的战术大师和无私的防御者，\r\n\r\n每一名真正的守护者，都知晓什么时候牺牲自己的防御，帮助盟友取得胜利。\r\n\r\n我是F91，这是我的激战2故事，我在激战2等你！');
INSERT INTO `userinfo` VALUES ('testuser', '123456', '/Image/UserPhoto/default.png', '该用户还没有个人介绍.....');
INSERT INTO `userinfo` VALUES ('user1111', '1234567', '/Image/UserPhoto/default.png', '该用户还没有个人介绍......');
INSERT INTO `userinfo` VALUES ('呵呵呵', '22', '/Image/UserPhoto/default.png', '该用户还没有个人介绍.....');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
