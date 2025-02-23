/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.10.15 - 8.0.36
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : 192.168.10.15:3306
 Source Schema         : 20250220_manager

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 23/02/2025 18:03:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (2, 13, '苏轼', '浙江省临海市紫阳东路88号', '18841223677');
INSERT INTO `address` VALUES (5, 11, 'zhangsan', '浙江省台州市临海市紫阳东街28号', '18841328977');
INSERT INTO `address` VALUES (6, 11, '张三', '辽宁省大连市甘井子区软件园路八号', '13841791247');
INSERT INTO `address` VALUES (7, 13, '李方会', '辽宁省鞍山市高新区千山中路57号', '18365437921');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13843625263', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (3, '不吃香菜', '123', 'xiangcai', 'http://localhost:9090/files/1701514688019-lADPM5Hilog06oXNA6zNA6w_940_940.jpg', 'BUSINESS', '45312319864', 'xiangcai@163.com', '一个不吃香菜的人！', '审核不通过');
INSERT INTO `business` VALUES (4, 'huangjiaqi', '123456', 'huangjiaqi', 'http://localhost:9090/files/1701522120941-mmexport1652614353520.jpg', 'BUSINESS', '13624174365', 'joycewong@163.com', 'ddddddddddddddd', '审核中');
INSERT INTO `business` VALUES (5, 'lifanghui', '123456', 'lifanghui', 'http://localhost:9090/files/1701522086941-Assassin\'s Creed® Unity2023-9-20-19-7-11.jpg', 'BUSINESS', '15141765254', 'sdfsf@163.com', 'sdfsdfsdafsdafdsafsafgb', '审核通过');
INSERT INTO `business` VALUES (6, 'yingshi', '123', '萤石', 'http://localhost:9090/files/1701588360350-yingshi.png', 'BUSINESS', '156454123', 'yingshi@163.com', '智能家居摄像头', '审核通过');
INSERT INTO `business` VALUES (9, 'ouruibo', '123', 'ouruibo', 'http://localhost:9090/files/1708357036806-ouruibo.jpg', 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (10, 'huawei', '123', 'huawei', 'http://localhost:9090/files/1708358370799-屏幕截图 2024-02-19 235917.png', 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (11, 'hamankadun', '123', 'hamankadun', 'http://localhost:9090/files/1708404107835-屏幕截图 2024-02-20 124135.png', 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (13, 'MARSHALL', '123', 'MARSHALL', 'http://localhost:9090/files/1711882277692-M.png', 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (14, 'ecovacs', '123', 'ecovacs', 'http://localhost:9090/files/1712649479826-ecovacs.png', 'BUSINESS', '15140765321', NULL, '智能机器人专卖店', '审核通过');
INSERT INTO `business` VALUES (15, 'xiaomi', '123', 'xiaomi', 'http://localhost:9090/files/1712651963796-xiaomi.png', 'BUSINESS', NULL, NULL, NULL, '审核通过');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品主图',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (3, '萤石BM1室内全无线婴儿宠物看护电池摄像机', 'http://localhost:9090/files/1701588812696-1.jpg', '<p><br/></p><p><img src=\"http://localhost:9090/files/1701592527777-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1701592517213-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1701603126536-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1701666709421-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 599.00, '个', 0, 20, 6);
INSERT INTO `goods` VALUES (4, '萤石CB2室内全无线粘贴式电池摄像机', 'http://localhost:9090/files/1708156873759-1.jpg', '<p><img src=\"http://localhost:9090/files/1708156897582-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708156905403-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708156911958-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708156918367-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708156924056-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1200.00, '个', 0, 20, 6);
INSERT INTO `goods` VALUES (5, '欧瑞伯智能门锁 V5', 'http://localhost:9090/files/1708357050802-1.jpg', '<p><img src=\"http://localhost:9090/files/1708357275977-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708357280977-2 .jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708357285428-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708357290445-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708357295448-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2499.00, '个', 0, 19, 9);
INSERT INTO `goods` VALUES (6, '华为智能手环8', 'http://localhost:9090/files/1708358279486-1.jpg', '<p><img src=\"http://localhost:9090/files/1708358303797-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708358307914-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708358313210-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708358318131-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708358321861-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 459.00, '个', 0, 16, 10);
INSERT INTO `goods` VALUES (7, '华为WATCH FIT 2手表', 'http://localhost:9090/files/1708402284882-屏幕截图 2024-02-20 120714.png', '<p><img src=\"http://localhost:9090/files/1708402326932-屏幕截图 2024-02-20 120714.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402331278-屏幕截图 2024-02-20 120731.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402337058-屏幕截图 2024-02-20 120805.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402342011-屏幕截图 2024-02-20 120845.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402345550-屏幕截图 2024-02-20 120903.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402350274-屏幕截图 2024-02-20 120923.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 599.00, '个', 0, 16, 10);
INSERT INTO `goods` VALUES (9, '3D光影智能窗帘', 'http://localhost:9090/files/1708402890731-屏幕截图 2024-02-20 121746.png', '<p><img src=\"http://localhost:9090/files/1708402925498-屏幕截图 2024-02-20 121746.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402934205-屏幕截图 2024-02-20 121803.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402938864-屏幕截图 2024-02-20 121823.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402942206-屏幕截图 2024-02-20 121842.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708402946348-屏幕截图 2024-02-20 121939.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1189.00, '件', 0, 13, 9);
INSERT INTO `goods` VALUES (10, 'DB28超静音智能窗帘电机', 'http://localhost:9090/files/1708403125763-屏幕截图 2024-02-20 122256.png', '<p><img src=\"http://localhost:9090/files/1708403146622-屏幕截图 2024-02-20 122256.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403150345-屏幕截图 2024-02-20 122330.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403155856-屏幕截图 2024-02-20 122346.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403159589-屏幕截图 2024-02-20 122402.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403164189-屏幕截图 2024-02-20 122444.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2299.00, '个', 0, 13, 9);
INSERT INTO `goods` VALUES (11, '欧瑞伯苍穹 Pro 拟自然光灯', 'http://localhost:9090/files/1708403553394-屏幕截图 2024-02-20 122733.png', '<p><img src=\"http://localhost:9090/files/1708403478739-屏幕截图 2024-02-20 122821.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403482789-屏幕截图 2024-02-20 122841.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403487790-屏幕截图 2024-02-20 122855.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403493657-屏幕截图 2024-02-20 122915.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403497175-屏幕截图 2024-02-20 122937.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 999.00, '个', 0, 15, 9);
INSERT INTO `goods` VALUES (12, '精灵智能开关（网关版）', 'http://localhost:9090/files/1708403779905-屏幕截图 2024-02-20 123332.png', '<p><img src=\"http://localhost:9090/files/1708403805877-屏幕截图 2024-02-20 123429.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403809091-屏幕截图 2024-02-20 123453.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403812801-屏幕截图 2024-02-20 123506.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708403816171-屏幕截图 2024-02-20 123535.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 399.00, '个', 0, 14, 9);
INSERT INTO `goods` VALUES (13, '哈曼卡顿Soundsticks4水晶4代蓝牙音箱', 'http://localhost:9090/files/1708404254866-屏幕截图 2024-02-20 123943.png', '<p><img src=\"http://localhost:9090/files/1708404147437-1-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708404152152-2-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708404208588-4-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708404212543-7-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1708404217721-9-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2799.00, '个', 0, 12, 11);
INSERT INTO `goods` VALUES (15, 'STANMORE III 音箱3代无线蓝牙摇滚家用重低音音响', 'http://localhost:9090/files/1711882536018-DE9F99AC-67FA-456b-BDAE-95519222B924.jpg', '<p><img src=\"http://localhost:9090/files/1711882367836-lQLPJxnztO6SXJXNBivNBdKwqhtbsT3YyicF9qWADGL2AA_1490_1579.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882378079-lQLPJx-Y5NyoFJXNBojNBcewog0vdlCihnQF9qW8RaciAA_1479_1672.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882387516-lQLPKdWeryyaRJXNBpDNBcKwDv3wa_CBetsF9qXQ0XFKAA_1474_1680.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882393566-lQLPKdmjUnsqhvXNBM_NBdCwsDQpH_v8KuIF9qYE4RpPAA_1488_1231.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882407748-lQLPKIWkrei3vnXNBX_NBcewEBzL-EbylhEF9qYTS2FAAA_1479_1407.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882411822-lQLPKceWLgZSWZXNBdPNBcWwDzP-RQ52LkcF9qWU4bSwAA_1477_1491.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882416042-lQLPJwLAtOkdmPXNA-7NBcmwwqFc60mjyVwF9qYhTeCKAA_1481_1006.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2399.00, '个', 0, 12, 13);
INSERT INTO `goods` VALUES (16, 'EMBERTON II 音箱便携式2代无线蓝牙家用户外防尘防水小音响', 'http://localhost:9090/files/1711882778866-lQLPJx_GXlUqaTXNBAfNBU2wnOvSrv6kD9EF9qfKwv2xAA_1357_1031.png', '<p><img src=\"http://localhost:9090/files/1711882787621-lQLPJxU5K2l8-PXNBMvNBcGwGOJORq9s1CAF9qgliC0XAA_1473_1227.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882793874-lQLPJyBOyxeqMnXNBXHNBcmwqrukkKMgG38F9qgzCzCuAA_1481_1393.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882799130-lQLPJxyc6zRUfnXNBhDNBcawWoKBSqcET44F9qhDcRHvAA_1478_1552.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882802850-lQLPJyKd9wUnLHXNBorNBciw-47RPOmg6aMF9qhZjXiTAA_1480_1674.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711882807138-lQLPKdL1eOcYOPXNBnvNBcmwcQyJnO9tU2QF9qhwwb6BAA_1481_1659.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1399.00, '个', 0, 12, 13);
INSERT INTO `goods` VALUES (17, 'WOBURN II BLUETOOTH音箱2代无线蓝牙摇滚家用', 'http://localhost:9090/files/1711883166663-C5D89393-B8AD-443e-AC36-9F216640F505.png', '<p><img src=\"http://localhost:9090/files/1711883172310-lQLPJwNACSKioLXNBEXNBb6wh1LFWhRxhtAF9qmV3qBDAA_1470_1093.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883177419-lQLPKeaH4PiFB5XNBA7NBdCwEwjIE2KemH4F9qmz2qrTAA_1488_1038.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883181679-lQLPJyGNHdGUohXNBBnNBcewzGCWH0qhZPsF9qnB1L2uAA_1479_1049.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883186190-lQLPJyBPs8W-0rXNBi7NBd6wsdNIXP_UorAF9ql8YRLFAA_1502_1582.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883189374-lQLPJxNhJFF6cpXNBpfNBcewJd7rSmHUAqkF9qndYT0PAA_1479_1687.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2799.00, '个', 0, 12, 13);
INSERT INTO `goods` VALUES (18, 'T1C智能人体移动传感器', 'http://localhost:9090/files/1711883633419-lQLPKH137q_71RXNAafNAeCw9EQxcs2kCCwF9qtaf6KrAA_480_423.png', '<p><img src=\"http://localhost:9090/files/1711883652623-lQLPJxI9Ma9XAhXNBXfNCQawbNPsYxe9pIYF9qtr9h_DAA_2310_1399.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883658836-lQLPKIQ3-OV7DhXNBV3NCPKw4maftEwe_gUF9qt8eMaoAA_2290_1373.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883662317-lQLPJwC6S37zd5XNBX_NCS6wunl2yEi45g8F9quLGzTuAA_2350_1407.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883669077-lQLPKIVS0ySbllXNBQTNCq2wa2JO4xNXwygF9qukCjKxAA_2733_1284.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883672967-lQLPJwnkynMc7tXNA9XNCpuwxdI65GlFoV4F9quvvq5pAA_2715_981.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883680368-lQLPJwe5_7EcWNXNBkfNCrKwOO113hApv8gF9qvAtZmpAA_2738_1607.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 158.00, '件', 0, 18, 6);
INSERT INTO `goods` VALUES (19, '萤石旗舰款C6WI系列室内云台摄像机（400800万）', 'http://localhost:9090/files/1711883725679-1.jpg', '<p><img src=\"http://localhost:9090/files/1711883749382-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883753041-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883757643-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883772367-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711883778068-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 899.00, '件', 0, 20, 6);
INSERT INTO `goods` VALUES (20, 'SW21C智能墙壁开关（触控版）', 'http://localhost:9090/files/1711884413453-lQLPJwev_qY5QPXNAbPNAc2wxucoAQiBHx4F9q4YxRGfAA_461_435.png', '<p><img src=\"http://localhost:9090/files/1711884424780-lQLPKcxh_2KUujXNBjHNCymwA4GPbOdmIl4F9q46G0HUAA_2857_1585.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884428676-lQLPJxsoBp0wazXNBKfNCNqwtZYhPpaJulMF9q5UeTIDAA_2266_1191.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884433862-lQLPKHamnLsQP7XNBlHNCSyw0i9X_2_Qw84F9q5wwEHPAA_2348_1617.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884441340-lQLPJx5swr97OLXNBmvNCSGwIpOZPX2V3D4F9q6AbUeoAA_2337_1643.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884448984-lQLPKeE8uz2C-3XNBnzNB6ywCVueYsTrtn0F9q6dbKeyAA_1964_1660.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884453631-lQLPJwpbBmhDmXXNBOzNCPywuDrnmQJb3V8F9q6ymF5rAA_2300_1260.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884457000-lQLPJv-6ueMNM3XNBjzNCQOwzmX7z92kndEF9q7CqUPbAA_2307_1596.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 299.00, '件', 0, 18, 6);
INSERT INTO `goods` VALUES (21, 'EZVIZ除甲醛新风机', 'http://localhost:9090/files/1711884754195-lQLPJwIKzq7XKfXNBPXNBKOwUVh_07rhKwUF9q-JKN6FAA_1187_1269.png', '<p><img src=\"http://localhost:9090/files/1711884775608-lQLPJwGTqgXGCTXNBj_NCiKwSclJx9rdjmQF9q_GpJtZAA_2594_1599.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884780767-lQLPJyDXN68zcrXNBl3NCCCw3YSDIuOhmBIF9rAhPzBjAA_2080_1629.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884794827-lQLPKdV7NrmWHDXNBinNCM6w553_J4jKd00F9rAABWSnAA_2254_1577.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884799026-lQLPKHblXhLxprXNBeXNCuCwz9TCOIj8ZWoF9rAOBD16AA_2784_1509.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884803745-lQLPKHynqGtXoTXNBb3NCjWwCKJGzqxzE34F9q_XPkdEAA_2613_1469.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711884817795-lQLPKIUbWJHHqbXNBbTNCuuwAG1yvTuioh0F9q_kDVWMAA_2795_1460.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5998.00, '件', 0, 11, 6);
INSERT INTO `goods` VALUES (22, '萤石爆款CP3pro智能门铃 续航增强版', 'http://localhost:9090/files/1711885210496-1.jpg', '<p><img src=\"http://localhost:9090/files/1711885224107-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885228176-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885232146-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885235531-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885238941-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 759.00, '件', 0, 19, 6);
INSERT INTO `goods` VALUES (23, '萤石旗舰系列-DL30V北斗星推拉式指纹视频锁', 'http://localhost:9090/files/1711885262180-1.jpg', '<p><img src=\"http://localhost:9090/files/1711885275032-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885279455-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885283382-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885287574-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885292520-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1299.00, '件', 0, 19, 6);
INSERT INTO `goods` VALUES (24, '萤石时尚系列-萤石 Y3000FVX 极光人脸视频锁双摄版', 'http://localhost:9090/files/1711885313520-1.jpg', '<p><img src=\"http://localhost:9090/files/1711885326295-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885331186-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885334374-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885338282-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885341407-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711885344944-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1599.00, '件', 0, 19, 6);
INSERT INTO `goods` VALUES (25, '华为智能门锁', 'http://localhost:9090/files/1712648494110-lQLPKIKWg47GUCnNAyPNAr6wS59JdSt1kBsGAg_AH5d3AA_702_803.png', '<p><img src=\"http://localhost:9090/files/1712648518343-lQLPJxvd7JoZSinNBhHNCv-wum4bcORqBB4GAg7FxbGWAA_2815_1553.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648521971-lQLPJxvd7JoZSinNBhHNCv-wum4bcORqBB4GAg7FxbGWAA_2815_1553.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648526068-lQLPJx1AoKwk8wnNBfHNCr-wVuCY7LRv4Y4GAhADJUXJAA_2751_1521.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648541557-lQLPJwJBYLHE36nNBf3NCcuwCaCNi7qdCdgGAg8T83URAA_2507_1533.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648548118-lQLPKHeJ_GecTenNBmPNCfOwpErmclOjSYEGAg8mm0VrAA_2547_1635.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1399.00, '个', 0, 19, 10);
INSERT INTO `goods` VALUES (26, '华为智能门锁 SE', 'http://localhost:9090/files/1712648576705-lQLPJwrrontIEknNBTfNBEmwLYeH80ZMwdgGAhBmkvcAAA_1097_1335.png', '<p><img src=\"http://localhost:9090/files/1712648597143-lQLPJxr7dfFONEnNBfXNCjawiD2ZaqycFC0GAhB5-6lcAA_2614_1525.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648606782-lQLPKdszf_i_kMnNBjTNCdOwl4M6o6-bla4GAhCPNdvPAA_2515_1588.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648612073-lQLPJx53rMuBbInNBTrNCqyw_o3snmZv0HgGAhC0szeFAA_2732_1338.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648615771-lQLPJxe10NJ-NYnNBj_NC1awKGVljy4xS0QGAhDJWIXZAA_2902_1599.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1599.00, '个', 0, 19, 10);
INSERT INTO `goods` VALUES (27, '华为智能门锁 Pro', 'http://localhost:9090/files/1712648677881-lQLPJxo0R_lRVknNBeDNBGCwV_NNExF6-CMGAhEPV_O1AA_1120_1504.png', '<p><img src=\"http://localhost:9090/files/1712648704261-lQLPJxF_HAbXJ8nNBZfNC3CwjOCqmMArFTYGAhEof47LAA_2928_1431.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648707836-lQLPJwenzy0oQsnNBc7NCs6w7anfnrO99RMGAhFQBKJ8AA_2766_1486.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648712338-lQLPJwKkgy2DEUnNBj3NCuOwigrA4k2hAkMGAhEyZ4kiAA_2787_1597.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648717527-lQLPJxBS-e5L54nNBiXNCv-wdG9rQagsw5YGAhFwMpNOAA_2815_1573.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648721191-lQLPKIGg82dT-0nNBTjNCLSwXYm_sUTP1fkGAhFch0D9AA_2228_1336.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1799.00, '个', 0, 19, 10);
INSERT INTO `goods` VALUES (28, '全自动可视猫眼智能门锁 P20', 'http://localhost:9090/files/1712648783227-lQLPJwCwSjg8fOnNAjzNAs-wVZ1Fnq6HbRwGAg64asBLAA_719_572.png', '<p><img src=\"http://localhost:9090/files/1712648814993-lQLPKcXz0BKYDCnNBSDNC3ew4rS20RMzbP4GAg73QaddAA_2935_1312.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648819709-lQLPJxy4NApNdCnNBc3NCpOwBR9dfe0TQQoGAg8Gk9dBAA_2707_1485.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648825069-lQLPJxvd7JoZSinNBhHNCv-wum4bcORqBB4GAg7FxbGWAA_2815_1553.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648829707-lQLPKHeJ_GecTenNBmPNCfOwpErmclOjSYEGAg8mm0VrAA_2547_1635.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648837685-lQLPJwJBYLHE36nNBf3NCcuwCaCNi7qdCdgGAg8T83URAA_2507_1533.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712648841487-lQLPJxGrrLtDUKnNBQXNCriw7PodvpUkrSAGAg7rGt8iAA_2744_1285.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1679.00, '个', 0, 19, 9);
INSERT INTO `goods` VALUES (29, '地宝 DEEBOT X2', 'http://localhost:9090/files/1712650836801-28118908-B236-4815-B4D9-612CBAA39C14.png', '<p><img src=\"http://localhost:9090/files/1712650859566-lQLPJv_X1HmeeOnNBaLNB9Sw2YUpurl2G84GAhXiazMOAA_2004_1442.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712650863224-lQLPJwlULlvrESnNBkDNCcKwoV1UMWDZmEMGAhYxRqwwAA_2498_1600.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712650867481-lQLPJwn_KpswkanNBeHNCDOw0W4VBNTLZtcGAhYWwfpHAA_2099_1505.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712650883681-lQLPJxisSgjUfenNBcHNB-iwWNRKV0RNmaQGAhX9QvVMAA_2024_1473.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712650890346-lQLPKHL-vgcCBCnNBlbNCCmwBGQOlNLlAYUGAhZNNirKAA_2089_1622.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 4699.00, '个', 0, 11, 14);
INSERT INTO `goods` VALUES (30, '巨目2K智能摄像机 S1', 'http://localhost:9090/files/1712651336783-lQLPJwGKkZwvmPnNBPXNBTOwyrgjF6aFXNoGAhvsGyA6AA_1331_1269.png', '<p><img src=\"http://localhost:9090/files/1712651392216-lQLPJwK2s6hFwvnNBmPNCcKw9mfU1_dBh3IGAhv8LzbeAA_2498_1635.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651395935-lQLPJxlYLu6QsvnNBnbNCjywT09bPp62OUsGAhwPvp8XAA_2620_1654.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651400237-lQLPJxwnl-KWpLnNBlfNBuywZHqa0rRTR6EGAhwug3vbAA_1772_1623.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651404439-lQLPKdBVWwySOTnNBYfNCj2wg2hZlqMW2ocGAhxJz34zAA_2621_1415.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651409379-lQLPKHrX0MOxMDnNBnLNC1KwUOE86tyhjHgGAhwhipf_AA_2898_1650.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 729.00, '个', 0, 20, 9);
INSERT INTO `goods` VALUES (31, '智能云台摄像机', 'http://localhost:9090/files/1712651716545-lQLPJw1i0voLv7nNAvrNAnmwH6Vx8-HeG2QGAh0TPmD2AA_633_762.png', '<p><img src=\"http://localhost:9090/files/1712651739634-lQLPJyG9Uave8DnNBfTNBhOw_HOAWIMmpQEGAh0tbzB8AA_1555_1524.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651743712-lQLPJxLp_3x4DbnNBkXNCKuwIzNpAJrubJYGAh0lHOznAA_2219_1605.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651746946-lQLPJx_92Sj17bnNBmLNCc2wHaCeX2jMeWoGAh075B0iAA_2509_1634.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712651750365-lQLPKGQjPB8chvnNBg3NBr2wp9ko2HbYy2wGAh1K8u27AA_1725_1549.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 429.00, '个', 0, 20, 9);
INSERT INTO `goods` VALUES (32, '小米智能摄像机 云台版2K', 'http://localhost:9090/files/1712652205849-360A34C4-3159-4774-8AD2-B208D2194EEB.png', '<p><img src=\"http://localhost:9090/files/1712652220516-c73de8db031f49b0340336b325d4a0d7.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712652223911-3899847c647488c9ca7a6f45861b6045.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712652227769-e27b508920429ef280c63e0d49eb00d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 179.00, '个', 0, 20, 15);
INSERT INTO `goods` VALUES (33, '小米智能摄像机 标准版2K', 'http://localhost:9090/files/1712652370969-lQLPKcczC4SRlVnNA7XNA2Gw94C1Nw6w1GMGAiA9HNVcAA_865_949.png', '<p><img src=\"http://localhost:9090/files/1712652382846-f293ee5e25f7360b5aded6132f718cd6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712652387070-8687c1d813e710756c719707f2820d14.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712652391764-4b0c53a03cd164674985610e840ab023.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 129.00, '个', 0, 20, 15);
INSERT INTO `goods` VALUES (34, '小米智能摄像机3 Pro 云台版', 'http://localhost:9090/files/1712659569113-19EEDA59-1290-4e40-BF83-B1747E997ADD.png', '<p><img src=\"http://localhost:9090/files/1712659582629-7e6c3936f01421965daff2cd2990f550.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712659587675-043f6dec0b2a3ebbbfc494849c10e107.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712659591609-02485f9cd90f64ebec84fd3ecadb6392.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712659595531-0fab533eba2b009643fc4fbd577c649e.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712659599339-7e24ab32d71f0c8c11a4860885f2a384.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 329.00, '个', 0, 20, 15);
INSERT INTO `goods` VALUES (35, '小米手环8 Pro 原神定制版', 'http://localhost:9090/files/1712659979295-0B7E032F-4FED-4811-8E42-E54F03A6ACBE.png', '', 549.00, '个', 0, 16, 15);
INSERT INTO `goods` VALUES (36, 'Redmi Watch 4', 'http://localhost:9090/files/1712660032984-B4EA0E7B-8FDF-439b-852F-ACA20BCD72B2.png', '', 449.00, '个', 0, 16, 15);
INSERT INTO `goods` VALUES (37, '门窗传感器', 'http://localhost:9090/files/1712660821873-lQLPJwhl5KmmNynNAj_NAtywAcvsIh9IAAYGAkAwpWXTAA_732_575.png', '<p><img src=\"http://localhost:9090/files/1712660845191-lQLPKG8UepEqySnNBNTNBwewTflNEDU0I5MGAkBIv4HUAA_1799_1236.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712660848934-lQLPJwPIdd-Es6nNBBXNB-uwwjQO_uZ5--EGAkBTvLTjAA_2027_1045.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712660851876-lQLPKGiV7DOwumnNBKbNB3awZGk5NdjcBecGAkBet8eZAA_1910_1190.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 499.00, '个', 0, 18, 9);
INSERT INTO `goods` VALUES (38, '智能魔镜M1', 'http://localhost:9090/files/1712661805702-lQLPJwDdw8g_qgnNAivNAfew3ChdG0R0lrAGAkQ__eadAA_503_555.png', '<p><img src=\"http://localhost:9090/files/1712661837247-lQLPJxS6v_xC6gnNBI7NC9Owbrj2wMBOS6MGAkRPTKtVAA_3027_1166.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712661841109-lQLPKGK3b_gkpwnNBp_NCJmw1lNkJOMhXKUGAkRpXFdqAA_2201_1695.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1299.00, '个', 0, 18, 9);
INSERT INTO `goods` VALUES (39, '智能无极色温灯', 'http://localhost:9090/files/1712662101448-CEAAC22E-C104-40ac-9710-0F6A49DCCB9B.png', '<p><img src=\"http://localhost:9090/files/1712662138713-lQLPJwjmIde2z-nNBpjNCRiwekGGnfA4j1sGAkVjEdqnAA_2328_1688.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662142250-lQLPJyCrj6dZiGnNBhTNC3uwxy8qYZoCLE0GAkVUjEvKAA_2939_1556.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662193348-B36B7AB3-72CF-45c3-8022-CBE15A2BF5CE.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 499.00, '个', 0, 15, 9);
INSERT INTO `goods` VALUES (40, '戴妃智能开关', 'http://localhost:9090/files/1712662421465-lQLPJxfJ0xnV6OnNAbfNAp6wztOBMulnw2cGAkZF-e68AA_670_439.png', '<p><img src=\"http://localhost:9090/files/1712662448611-lQLPJx4BcLVslOnNBSTNB8-weQlwjbpobUYGAkZW3jtpAA_1999_1316.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662453297-lQLPKINnssWK4WnNBTXNCTOwVzzEyepVwd4GAkZkSiIyAA_2355_1333.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662456294-lQLPKG1p7QsO1enNBgTNCL6wnA4HBEGsxVsGAkZulplUAA_2238_1540.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 299.00, '个', 0, 14, 9);
INSERT INTO `goods` VALUES (41, '巴赫智能开关', 'http://localhost:9090/files/1712662566106-lQLPKHr7STh2G2nNAfXNAoSw_06yGoNqGMgGAkcczaAzAA_644_501.png', '<p><img src=\"http://localhost:9090/files/1712662585411-lQLPJwvPAiI8RWnNBIrNCXKwiaBeUHvrw-IGAkcsouC6AA_2418_1162.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662590798-lQLPJxKP9TcqZanNBUfNCECwFssLdiOJmcoGAkdDMAXOAA_2112_1351.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1712662594545-lQLPJxZ3fipATynNBFjNCTuwlkSxtQYVz6sGAkdNz6aAAA_2363_1112.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 499.00, '个', 0, 14, 9);
INSERT INTO `goods` VALUES (42, '猫咪', 'http://localhost:9090/files/1740293464374-9a82f0817ba242ac48244edc92e70378.jpeg', '<p>猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪猫咪</p>', 100000.00, '元', 0, 20, 15);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (5, '今天系统正式上线', '今天系统正式上线', '2023-12-04', 'admin');
INSERT INTO `notice` VALUES (6, '部分功能完成', '部分功能完成', '2023-12-04', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `address_id` int NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (11, '生态与其他', '这是生态与其他', 'http://localhost:9090/files/1701505173167-生态与其他.png');
INSERT INTO `type` VALUES (12, '智能音箱', '这是智能音箱', 'http://localhost:9090/files/1701505192517-智能音箱.png');
INSERT INTO `type` VALUES (13, '智能窗帘', '这是智能窗帘', 'http://localhost:9090/files/1701505213431-智能窗帘.png');
INSERT INTO `type` VALUES (14, '智能开关', '这是智能开关', 'http://localhost:9090/files/1701505230513-智能开关.png');
INSERT INTO `type` VALUES (15, '智能照明', '这是智能照明', 'http://localhost:9090/files/1701505252023-智能照明.png');
INSERT INTO `type` VALUES (16, '智能穿戴', '这是智能穿戴', 'http://localhost:9090/files/1701505273403-智能穿戴.png');
INSERT INTO `type` VALUES (18, '传感控制器', '这是传感控制器', 'http://localhost:9090/files/1701505319732-传感控制器.png');
INSERT INTO `type` VALUES (19, '智能入户门锁', '这是智能入户门锁', 'http://localhost:9090/files/1701505338822-智能入户门锁.png');
INSERT INTO `type` VALUES (20, '智能摄像头', '这是智能摄像头', 'http://localhost:9090/files/1701505358829-智能摄像头.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

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
