/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 18/02/2025 22:53:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (11, 'zhangsan', '123', '张三', 'http://localhost:9090/files/1701536213360-lADPJxDj4t1_7lTNAZvNAbg_440_411.jpg', 'USER', '188822254', 'zhangsan@163.com');
INSERT INTO `user` VALUES (13, 'lisi', '123', '李四', 'http://localhost:9090/files/1701664284612-lADPJwnI5ZPy7n3NAqnNArI_690_681.jpg', 'USER', '123', '333');
INSERT INTO `user` VALUES (14, 'das', '123', '354', 'http://localhost:9090/files/1701666786800-d4.jpg', 'USER', '45645', '45645');
INSERT INTO `user` VALUES (15, 'lifanghui', '123', 'lifanghui', 'http://localhost:9090/files/1708931916497-lALPKGJl4gMpbjjNAorNArw_700_650.png', 'USER', NULL, NULL);
INSERT INTO `user` VALUES (16, 'zhanghongbo', '123', 'zhanghongbo', NULL, 'USER', NULL, NULL);
INSERT INTO `user` VALUES (17, 'wangshihan', '123', 'wangshihan', 'http://localhost:9090/files/1709211599317-lADPJwnI5ZP3NlHNBCbNBDg_1080_1062.jpg', 'USER', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
