/*
 Navicat Premium Data Transfer

 Source Server         : sqx
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 11/07/2020 22:02:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `username` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderimgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderprice` int(10) NULL DEFAULT NULL,
  `ordernum` int(10) NULL DEFAULT NULL,
  `sign` int(255) NULL DEFAULT NULL,
  `ordername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buytime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '3a413a233404d13f48c09e073a545797.jpg', 67, 1, 0, '小鞋子', NULL, NULL, '20200617200615');
INSERT INTO `orders` VALUES ('1', 'O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', 788, 1, 0, '男装', NULL, NULL, '20200617200617');
INSERT INTO `orders` VALUES ('1', 'O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', 34, 1, 0, '女装嗯哼', NULL, NULL, '20200617200618');
INSERT INTO `orders` VALUES ('1', 'O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', 50, 1, 0, '男装上衣', NULL, NULL, '20200617200620');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `imgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proabout` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 54345);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 7);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('sp1.png', '护肤水', '不干', 45);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '小鞋子', '123', 67);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '123455', '123445', 6);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '34', 788);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '34', 788);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 7);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装上衣', '你值得拥有', 50);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '34', 34);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01aYrr4z1JED0nLjgGZ_!!0-saturn_solar.jpg_240x240xz.jpg', '好看黄色连衣裙', '好看的', 34);
INSERT INTO `product` VALUES ('TB1.cUBQFXXXXXsXXXXYXGcGpXX_M2.SS2_220x220.jpg', '女装上衣', '好看不不错过', 23);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 5435);
INSERT INTO `product` VALUES ('O1CN01aYrr4z1JED0nLjgGZ_!!0-saturn_solar.jpg_240x240xz.jpg', '好看黄色连衣裙', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01Uh0wMM1CjAWqlq9pm_!!0-saturn_solar.jpg_220x220.jpg', '好看上衣淡黄色', '佛了', 56345);
INSERT INTO `product` VALUES ('O1CN01MNSijj1Y22mm3EPFK_!!0-saturn_solar.jpg_240x240xz.jpg', '起名字好难啊', '佛了', 56);
INSERT INTO `product` VALUES ('O1CN01Xi3yGR1Vwt5ruO1mU_!!0-saturn_solar.jpg_240x240xz.jpg', '这个名字贼帅', '哦豁┭┮﹏┭┮', 6664);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 435);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 435);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装上衣', '你值得拥有', 50);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('sp1.png', '护肤水', '不干', 45);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '小鞋子', '123', 67);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '123455', '123445', 6);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 788);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 788);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装上衣', '你值得拥有', 50);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '34', 34);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01aYrr4z1JED0nLjgGZ_!!0-saturn_solar.jpg_240x240xz.jpg', '好看黄色连衣裙', '好看的', 34);
INSERT INTO `product` VALUES ('TB1.cUBQFXXXXXsXXXXYXGcGpXX_M2.SS2_220x220.jpg', '女装上衣', '好看不不错过', 23);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 54);
INSERT INTO `product` VALUES ('O1CN01aYrr4z1JED0nLjgGZ_!!0-saturn_solar.jpg_240x240xz.jpg', '好看黄色连衣裙', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01Uh0wMM1CjAWqlq9pm_!!0-saturn_solar.jpg_220x220.jpg', '好看上衣淡黄色', '佛了', 5635);
INSERT INTO `product` VALUES ('O1CN01MNSijj1Y22mm3EPFK_!!0-saturn_solar.jpg_240x240xz.jpg', '起名字好难啊', '佛了', 56);
INSERT INTO `product` VALUES ('O1CN01Xi3yGR1Vwt5ruO1mU_!!0-saturn_solar.jpg_240x240xz.jpg', '这个名字贼帅', '哦豁┭┮﹏┭┮', 666);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 54);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01K0Fy8t1G0ylurCBme_!!0-saturn_solar.jpg_220x220.jpg', '来了那女装', '那也确实好看', 54);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装上衣', '你值得拥有', 50);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('sp1.png', '护肤水', '不干', 45);
INSERT INTO `product` VALUES ('O1CN01cuVUmN1D64KjzU29Y_!!0-saturn_solar.jpg_240x240xz.jpg', '女装嗯哼', '好看的', 34);
INSERT INTO `product` VALUES ('O1CN01FwN9xA1JbZGmxJZqN_!!0-saturn_solar.jpg_240x240xz.jpg', '男装', '那确实好看', 788);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '小鞋子', '123', 67);
INSERT INTO `product` VALUES ('3a413a233404d13f48c09e073a545797.jpg', '123455', '123445', 12312);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 788);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 788);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('O1CN013mExxO1lSER8l41GH_!!0-item_pic.jpg_240x240xz.jpg', '女装呀', '345', 34);
INSERT INTO `product` VALUES ('O1CN01doZRLs2HwWJj39UhN_!!0-saturn_solar.jpg_240x240xz.jpg', '好看那还是', '啥', 132);
INSERT INTO `product` VALUES ('666.jpg', '123', '123', 16);
INSERT INTO `product` VALUES ('666.jpg', '裙子', '666', 666);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('777', '777', '777');
INSERT INTO `user` VALUES ('666', '666', '666');
INSERT INTO `user` VALUES ('666', '666', '666');

SET FOREIGN_KEY_CHECKS = 1;
