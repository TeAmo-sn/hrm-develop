/*
 Navicat Premium Data Transfer

 Source Server         : Z
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : reagentdb

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 28/02/2021 20:04:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for reagent_admin
-- ----------------------------
DROP TABLE IF EXISTS `reagent_admin`;
CREATE TABLE `reagent_admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_admin
-- ----------------------------
INSERT INTO `reagent_admin` VALUES (8, 'test11111', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', '', 'test@qq.com', '测试账号', '111111', '2018-09-29 13:55:30', '2018-09-29 13:55:39', 1);
INSERT INTO `reagent_admin` VALUES (9, 'admin', '$2a$10$oPur9/vFF0u/SzpVQ1KUNeKf5vfUHee44xvYziwoM1VPh6l7FX4MC', '', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', 1);
INSERT INTO `reagent_admin` VALUES (10, 'macro', '$2a$10$Bx4jZPR7GhEpIQfefDQtVeS58GfT5n6mxs/b4nLLK65eMFa16topa', 'string', 'macro@qq.com', 'macro', 'macro专用', '2019-10-06 15:53:51', '2020-02-03 14:55:55', 1);

-- ----------------------------
-- Table structure for reagent_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `reagent_admin_login_log`;
CREATE TABLE `reagent_admin_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 484 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_admin_login_log
-- ----------------------------
INSERT INTO `reagent_admin_login_log` VALUES (237, 3, '2018-12-23 14:27:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (238, 3, '2019-04-07 16:04:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (239, 3, '2019-04-08 21:47:52', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (240, 3, '2019-04-08 21:48:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (241, 3, '2019-04-18 22:18:40', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (242, 3, '2019-04-20 12:45:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (243, 3, '2019-05-19 14:52:12', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (244, 3, '2019-05-25 15:00:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (245, 3, '2019-06-19 20:11:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (246, 3, '2019-06-30 10:33:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (247, 3, '2019-06-30 10:34:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (248, 3, '2019-06-30 10:35:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (249, 3, '2019-07-27 17:11:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (250, 3, '2019-07-27 17:13:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (251, 3, '2019-07-27 17:15:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (252, 3, '2019-07-27 17:17:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (253, 3, '2019-07-27 17:18:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (254, 3, '2019-07-27 21:21:52', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (255, 3, '2019-07-27 21:34:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (256, 3, '2019-07-27 21:35:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (257, 3, '2019-07-27 21:35:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (258, 3, '2019-07-27 21:40:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (259, 3, '2019-08-18 16:00:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (260, 3, '2019-08-18 16:01:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (261, 3, '2019-08-18 16:47:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (262, 3, '2019-10-06 15:54:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (263, 3, '2019-10-06 16:03:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (264, 3, '2019-10-06 16:04:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (265, 3, '2019-10-06 16:06:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (266, 3, '2019-10-06 16:14:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (267, 1, '2019-10-06 16:15:09', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (268, 1, '2019-10-06 16:16:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (269, 3, '2019-10-06 16:16:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (270, 3, '2019-10-06 16:16:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (271, 3, '2019-10-07 15:20:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (272, 3, '2019-10-07 15:40:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (273, 3, '2019-10-07 16:34:15', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (274, 3, '2019-10-09 21:19:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (275, 4, '2019-10-09 21:30:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (276, 4, '2019-10-09 21:31:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (277, 4, '2019-10-09 21:32:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (278, 4, '2019-10-09 21:33:27', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (279, 4, '2019-10-09 21:33:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (280, 3, '2019-10-20 16:02:53', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (281, 3, '2019-10-23 21:20:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (282, 3, '2019-10-27 21:41:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (283, 3, '2019-11-09 16:44:57', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (284, 3, '2019-11-09 16:46:56', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (285, 3, '2019-11-09 16:49:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (286, 3, '2019-11-23 14:17:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (287, 6, '2019-11-23 14:52:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (288, 3, '2019-11-23 15:07:24', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (289, 3, '2019-11-30 21:25:30', '192.168.3.185', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (290, 3, '2019-11-30 21:27:54', '192.168.3.185', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (291, 3, '2019-12-28 15:23:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (292, 3, '2020-01-01 15:21:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (293, 3, '2020-01-04 16:00:54', '192.168.3.185', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (294, 3, '2020-02-01 15:05:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (295, 3, '2020-02-01 15:36:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (296, 3, '2020-02-01 15:36:36', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (297, 3, '2020-02-01 15:37:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (298, 3, '2020-02-01 15:37:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (299, 3, '2020-02-01 15:38:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (300, 3, '2020-02-01 15:38:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (301, 3, '2020-02-01 15:39:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (302, 3, '2020-02-01 15:41:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (303, 3, '2020-02-01 15:43:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (304, 3, '2020-02-01 15:44:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (305, 3, '2020-02-01 15:45:10', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (306, 3, '2020-02-01 15:46:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (307, 3, '2020-02-01 15:48:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (308, 3, '2020-02-01 16:00:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (309, 3, '2020-02-01 16:07:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (310, 3, '2020-02-01 16:08:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (311, 3, '2020-02-02 15:28:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (312, 3, '2020-02-02 15:44:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (313, 3, '2020-02-02 15:45:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (314, 3, '2020-02-02 15:52:32', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (315, 3, '2020-02-02 15:53:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (316, 3, '2020-02-02 15:54:36', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (317, 3, '2020-02-02 16:01:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (318, 3, '2020-02-02 16:05:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (319, 3, '2020-02-02 16:06:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (320, 3, '2020-02-02 16:17:26', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (321, 3, '2020-02-02 16:18:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (322, 3, '2020-02-02 16:19:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (323, 3, '2020-02-02 16:19:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (324, 3, '2020-02-02 16:22:27', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (325, 3, '2020-02-02 16:23:30', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (326, 3, '2020-02-02 16:23:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (327, 3, '2020-02-02 16:24:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (328, 3, '2020-02-02 16:25:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (329, 3, '2020-02-02 16:26:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (330, 3, '2020-02-02 16:26:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (331, 3, '2020-02-02 16:27:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (332, 3, '2020-02-02 16:31:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (333, 3, '2020-02-02 16:31:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (334, 3, '2020-02-02 16:31:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (335, 3, '2020-02-02 16:31:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (336, 3, '2020-02-02 16:33:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (337, 3, '2020-02-02 16:33:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (338, 3, '2020-02-02 16:34:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (339, 3, '2020-02-02 16:38:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (340, 3, '2020-02-02 16:39:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (341, 3, '2020-02-02 16:42:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (342, 3, '2020-02-02 16:46:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (343, 3, '2020-02-02 16:50:23', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (344, 3, '2020-02-02 16:51:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (345, 3, '2020-02-02 16:51:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (346, 3, '2020-02-02 16:52:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (347, 3, '2020-02-02 17:01:05', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (348, 3, '2020-02-03 10:43:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (349, 3, '2020-02-03 10:45:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (350, 3, '2020-02-03 10:46:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (351, 3, '2020-02-03 10:54:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (352, 3, '2020-02-03 14:24:47', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (353, 3, '2020-02-03 14:25:38', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (354, 5, '2020-02-03 15:22:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (355, 5, '2020-02-03 15:23:00', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (356, 5, '2020-02-03 15:24:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (357, 3, '2020-02-03 15:24:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (358, 5, '2020-02-03 15:27:18', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (359, 3, '2020-02-03 15:27:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (360, 3, '2020-02-03 15:29:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (361, 5, '2020-02-03 15:33:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (362, 3, '2020-02-03 15:33:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (363, 1, '2020-02-03 15:34:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (364, 3, '2020-02-03 15:34:47', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (365, 3, '2020-02-04 14:14:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (366, 3, '2020-02-05 10:33:35', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (367, 3, '2020-02-05 10:36:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (368, 3, '2020-02-05 16:34:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (369, 4, '2020-02-05 16:58:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (370, 3, '2020-02-05 16:59:03', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (371, 3, '2020-02-06 10:25:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (372, 3, '2020-02-07 14:34:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (373, 3, '2020-02-07 14:36:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (374, 1, '2020-02-07 14:43:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (375, 3, '2020-02-07 15:18:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (376, 3, '2020-02-07 15:20:07', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (377, 3, '2020-02-07 15:22:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (378, 3, '2020-02-07 15:22:28', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (379, 3, '2020-02-07 15:55:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (380, 3, '2020-02-07 15:56:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (381, 3, '2020-02-07 15:58:49', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (382, 6, '2020-02-07 16:16:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (383, 7, '2020-02-07 16:16:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (384, 3, '2020-02-07 16:18:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (385, 7, '2020-02-07 16:20:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (386, 3, '2020-02-07 16:20:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (387, 3, '2020-02-07 16:32:31', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (388, 3, '2020-02-07 19:32:34', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (389, 3, '2020-02-07 19:32:48', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (390, 3, '2020-02-07 19:33:01', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (391, 3, '2020-02-07 19:33:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (392, 3, '2020-02-07 19:33:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (393, 3, '2020-02-07 19:35:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (394, 3, '2020-02-07 19:37:10', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (395, 3, '2020-02-07 19:37:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (396, 3, '2020-02-07 19:37:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (397, 3, '2020-02-07 19:45:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (398, 3, '2020-02-07 19:47:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (399, 3, '2020-02-07 20:02:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (400, 6, '2020-02-07 20:10:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (401, 6, '2020-02-07 20:11:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (402, 6, '2020-02-07 20:13:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (403, 6, '2020-02-07 20:17:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (404, 3, '2020-02-07 20:17:44', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (405, 6, '2020-02-07 20:18:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (406, 3, '2020-02-10 10:28:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (407, 3, '2020-02-10 10:45:15', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (408, 3, '2020-02-10 10:57:46', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (409, 3, '2020-02-10 10:59:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (410, 3, '2020-02-10 11:04:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (411, 3, '2020-02-10 11:05:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (412, 3, '2020-02-10 11:06:45', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (413, 3, '2020-02-10 11:07:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (414, 3, '2020-02-10 11:08:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (415, 3, '2020-02-10 11:10:02', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (416, 6, '2020-02-10 14:25:17', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (417, 6, '2020-02-10 14:29:14', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (418, 3, '2020-02-10 16:09:16', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (419, 3, '2020-02-20 14:39:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (420, 8, '2020-02-20 17:14:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (421, 8, '2020-02-20 17:17:04', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (422, 8, '2020-02-20 17:17:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (423, 8, '2020-02-21 10:26:56', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (424, 8, '2020-02-21 10:28:54', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (425, 8, '2020-02-21 10:32:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (426, 8, '2020-02-21 10:33:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (427, 8, '2020-02-21 10:35:58', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (428, 8, '2020-02-21 10:36:49', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (429, 3, '2020-02-21 11:10:11', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (430, 3, '2020-02-25 16:11:13', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (431, 3, '2020-02-25 16:46:29', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (432, 3, '2020-12-06 15:57:54', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (433, 3, '2020-12-06 15:58:07', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (434, 3, '2020-12-06 15:58:11', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (435, 3, '2020-12-06 15:59:17', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (436, 3, '2020-12-06 16:00:07', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (437, 3, '2020-12-06 16:01:09', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (438, 3, '2020-12-06 16:04:32', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (439, 3, '2020-12-06 16:04:43', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (440, 3, '2020-12-06 16:06:29', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (441, 3, '2020-12-06 16:08:03', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (442, 3, '2020-12-06 16:10:42', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (443, 3, '2020-12-06 16:11:11', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (444, 3, '2020-12-06 16:11:35', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (445, 3, '2020-12-06 16:11:55', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (446, 3, '2020-12-06 16:12:59', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (447, 3, '2020-12-06 16:13:26', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (448, 3, '2020-12-06 16:14:38', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (449, 3, '2020-12-06 16:18:08', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (450, 3, '2020-12-06 16:18:54', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (451, 3, '2020-12-06 16:50:38', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (452, 3, '2020-12-06 19:07:57', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (453, 3, '2020-12-06 19:11:59', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (454, 3, '2020-12-06 19:49:26', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (455, 3, '2020-12-06 19:52:05', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (456, 3, '2020-12-06 20:02:28', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (457, 3, '2020-12-06 20:03:08', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (458, 3, '2020-12-06 20:03:23', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (459, 3, '2020-12-06 20:15:07', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (460, 3, '2020-12-06 20:20:18', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (461, 3, '2020-12-06 20:22:49', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (462, 3, '2020-12-06 20:27:44', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (463, 3, '2020-12-06 20:44:46', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (464, 3, '2020-12-06 20:53:16', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (465, 3, '2020-12-06 20:55:14', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (466, 3, '2020-12-06 20:55:44', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (467, 3, '2020-12-06 20:58:48', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (468, 3, '2020-12-06 21:05:28', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (469, 3, '2020-12-06 21:07:36', '192.168.3.19', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (470, 3, '2021-01-10 22:39:46', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (471, 3, '2021-01-12 20:28:44', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (472, 3, '2021-01-18 22:01:53', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (473, 9, '2021-01-24 20:13:23', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (474, 9, '2021-01-24 20:33:30', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (475, 9, '2021-01-24 20:51:20', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (476, 9, '2021-01-24 22:36:44', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (477, 9, '2021-02-07 09:14:45', '192.168.3.21', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (478, 9, '2021-02-21 09:38:30', '127.0.0.1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (479, 9, '2021-02-21 09:44:15', '127.0.0.1', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (480, 9, '2021-02-21 12:51:39', '192.168.0.110', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (481, 9, '2021-02-25 16:19:18', '192.168.0.110', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (482, 9, '2021-02-28 18:47:15', '10.160.163.237', NULL, NULL);
INSERT INTO `reagent_admin_login_log` VALUES (483, 9, '2021-02-28 19:40:09', '10.160.163.237', NULL, NULL);

-- ----------------------------
-- Table structure for reagent_admin_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_admin_permission_relation`;
CREATE TABLE `reagent_admin_permission_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和权限关系表(除角色中定义的权限以外的加减权限)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_admin_permission_relation
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_admin_role_relation`;
CREATE TABLE `reagent_admin_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_admin_role_relation
-- ----------------------------
INSERT INTO `reagent_admin_role_relation` VALUES (31, 9, 1);

-- ----------------------------
-- Table structure for reagent_base_info
-- ----------------------------
DROP TABLE IF EXISTS `reagent_base_info`;
CREATE TABLE `reagent_base_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试剂耗材编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试剂名称',
  `unit` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `specification` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `manufacturer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `registration_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册证号',
  `supplier_id` bigint(20) NULL DEFAULT NULL COMMENT '供货商 ID',
  `supplier_short_name` bigint(20) NULL DEFAULT NULL COMMENT '供货商名',
  `stock_type` bigint(20) NULL DEFAULT NULL COMMENT '储存温度: 常温，冷藏，冷冻',
  `experation_limit` int(11) NULL DEFAULT NULL COMMENT '过期预警时间阈值',
  `stock_limit` int(11) NULL DEFAULT NULL COMMENT '低库存预警阈值',
  `use_day_limit` int(11) NULL DEFAULT NULL COMMENT '开启有效期限',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试剂基础情报' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_base_info
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_branch
-- ----------------------------
DROP TABLE IF EXISTS `reagent_branch`;
CREATE TABLE `reagent_branch`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室号',
  `branch_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室名',
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `head` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '从这五个非空',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_branch
-- ----------------------------
INSERT INTO `reagent_branch` VALUES (1, '11111', '内科', '110', 'admin', '2021-02-25 22:05:42', '1', '2021-02-25 22:05:54', '1', 0, NULL, NULL);
INSERT INTO `reagent_branch` VALUES (2, '234', '消化科', '120110', 'admin', '2021-02-25 22:09:57', '1', '2021-02-25 22:10:16', '1', 0, NULL, NULL);
INSERT INTO `reagent_branch` VALUES (4, '555', '心电科', '987', 'admin', '2021-02-25 22:51:23', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for reagent_growth_change_history
-- ----------------------------
DROP TABLE IF EXISTS `reagent_growth_change_history`;
CREATE TABLE `reagent_growth_change_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `change_type` int(1) NULL DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) NULL DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成长值变化历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_growth_change_history
-- ----------------------------
INSERT INTO `reagent_growth_change_history` VALUES (2, 1, '2018-08-29 17:16:35', 0, 1000, 'test', '测试使用', 1);

-- ----------------------------
-- Table structure for reagent_in_bill
-- ----------------------------
DROP TABLE IF EXISTS `reagent_in_bill`;
CREATE TABLE `reagent_in_bill`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入库单编号',
  `bill_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入库单种类：1 预入库单， 2 入库单',
  `suppiler_id` bigint(20) NOT NULL COMMENT '供货商ID',
  `suppiler_short_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '供货商名',
  `bill_date` date NOT NULL COMMENT '单据日期（业务发生的日期，不一定等于单据创建时间，根据单据不同，在此单为入库日期）',
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '单据状态：0-草稿，1-已入库 ',
  `bill_creator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '制单人',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材入库申请单（接收单）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_in_bill
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_in_detail
-- ----------------------------
DROP TABLE IF EXISTS `reagent_in_detail`;
CREATE TABLE `reagent_in_detail`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `in_bill_id` bigint(20) NOT NULL COMMENT '入库单ID',
  `reagent_id` bigint(20) NOT NULL COMMENT '试剂ID',
  `reagent_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试剂名称',
  `reagent_unit` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `reagent_specification` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `price` bigint(20) NULL DEFAULT NULL COMMENT '价格',
  `quantity` bigint(20) NULL DEFAULT NULL COMMENT '数量',
  `total` bigint(20) NULL DEFAULT NULL COMMENT '金额',
  `batch_no` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '批号',
  `expire_date` date NOT NULL COMMENT '保质期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材入库申请单详细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_in_detail
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_in_detail_item
-- ----------------------------
DROP TABLE IF EXISTS `reagent_in_detail_item`;
CREATE TABLE `reagent_in_detail_item`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `in_detail_id` bigint(20) NOT NULL COMMENT '入库单详细ID',
  `qr_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '二维码',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材入库申请单个体' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_in_detail_item
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_integration_change_history
-- ----------------------------
DROP TABLE IF EXISTS `reagent_integration_change_history`;
CREATE TABLE `reagent_integration_change_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `change_type` int(1) NULL DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) NULL DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分变化历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_integration_change_history
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_integration_consume_setting
-- ----------------------------
DROP TABLE IF EXISTS `reagent_integration_consume_setting`;
CREATE TABLE `reagent_integration_consume_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int(11) NULL DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int(11) NULL DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int(11) NULL DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int(1) NULL DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分消费设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_integration_consume_setting
-- ----------------------------
INSERT INTO `reagent_integration_consume_setting` VALUES (2, 100, 50, 100, 1);

-- ----------------------------
-- Table structure for reagent_member
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member`;
CREATE TABLE `reagent_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint(20) NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `status` int(1) NULL DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` int(1) NULL DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) NULL DEFAULT NULL COMMENT '积分',
  `growth` int(11) NULL DEFAULT NULL COMMENT '成长值',
  `luckey_count` int(11) NULL DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int(11) NULL DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE,
  UNIQUE INDEX `idx_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member
-- ----------------------------
INSERT INTO `reagent_member` VALUES (10, 4, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windir', '18061581849', 1, '2018-08-02 10:35:44', NULL, 1, '2009-06-01', '上海', '学生', 'test', NULL, 5000, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (11, 4, 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', 1, '2018-08-03 16:46:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (12, 4, 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', 1, '2018-11-12 14:12:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (13, 4, 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', 1, '2018-11-12 14:12:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (14, 4, 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', 1, '2018-11-12 14:13:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (15, 4, 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', 1, '2018-11-12 14:21:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (16, 4, 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', 1, '2018-11-12 14:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `reagent_member` VALUES (17, 4, 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', 1, '2018-11-12 14:22:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for reagent_member_level
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_level`;
CREATE TABLE `reagent_member_level`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `growth_point` int(11) NULL DEFAULT NULL,
  `default_status` int(1) NULL DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) NULL DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int(1) NULL DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int(1) NULL DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int(1) NULL DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int(1) NULL DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int(1) NULL DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int(1) NULL DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_level
-- ----------------------------
INSERT INTO `reagent_member_level` VALUES (5, '黄金会员', 1000, 0, 199.00, 5, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `reagent_member_level` VALUES (6, '白金会员', 5000, 0, 99.00, 10, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `reagent_member_level` VALUES (7, '钻石会员', 15000, 0, 69.00, 15, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `reagent_member_level` VALUES (8, '普通会员', 1, 1, 199.00, 20, 1, 1, 1, 1, 0, 0, NULL);

-- ----------------------------
-- Table structure for reagent_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_login_log`;
CREATE TABLE `reagent_member_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_type` int(1) NULL DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员登录记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_member_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_member_tag_relation`;
CREATE TABLE `reagent_member_member_tag_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和标签关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_member_tag_relation
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_product_category_relation`;
CREATE TABLE `reagent_member_product_category_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `product_category_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员与产品分类关系表（用户喜欢的分类）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_product_category_relation
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_receive_address`;
CREATE TABLE `reagent_member_receive_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default_status` int(1) NULL DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_receive_address
-- ----------------------------
INSERT INTO `reagent_member_receive_address` VALUES (5, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `reagent_member_receive_address` VALUES (6, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '福田区', '清水河街道');
INSERT INTO `reagent_member_receive_address` VALUES (7, 1, '大梨', '18033441849', 1, '518000', '广东省', '深圳市', '福田区', '东晓街道');

-- ----------------------------
-- Table structure for reagent_member_rule_setting
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_rule_setting`;
CREATE TABLE `reagent_member_rule_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int(11) NULL DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) NULL DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) NULL DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分成长规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_rule_setting
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_statistics_info`;
CREATE TABLE `reagent_member_statistics_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `consume_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int(11) NULL DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int(11) NULL DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) NULL DEFAULT NULL COMMENT '登录次数',
  `attend_count` int(11) NULL DEFAULT NULL COMMENT '关注数量',
  `fans_count` int(11) NULL DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int(11) NULL DEFAULT NULL,
  `collect_subject_count` int(11) NULL DEFAULT NULL,
  `collect_topic_count` int(11) NULL DEFAULT NULL,
  `collect_comment_count` int(11) NULL DEFAULT NULL,
  `invite_friend_count` int(11) NULL DEFAULT NULL,
  `recent_order_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员统计信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_statistics_info
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_tag
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_tag`;
CREATE TABLE `reagent_member_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finish_order_count` int(11) NULL DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_tag
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_member_task
-- ----------------------------
DROP TABLE IF EXISTS `reagent_member_task`;
CREATE TABLE `reagent_member_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `growth` int(11) NULL DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int(11) NULL DEFAULT NULL COMMENT '赠送积分',
  `type` int(1) NULL DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_member_task
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_menu
-- ----------------------------
DROP TABLE IF EXISTS `reagent_menu`;
CREATE TABLE `reagent_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `level` int(4) NULL DEFAULT NULL COMMENT '菜单级数',
  `sort` int(4) NULL DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端图标',
  `hidden` int(1) NULL DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_menu
-- ----------------------------
INSERT INTO `reagent_menu` VALUES (1, 0, '2020-02-02 14:50:36', '入库', 0, 0, 'ims', 'product', 0);
INSERT INTO `reagent_menu` VALUES (2, 1, '2020-02-02 14:51:50', '入库列表', 1, 0, 'incident', 'product-list', 0);
INSERT INTO `reagent_menu` VALUES (3, 0, '2020-02-07 16:29:13', '系统管理', 0, 0, 'ums', 'ums', 0);
INSERT INTO `reagent_menu` VALUES (4, 21, '2020-02-07 16:29:51', '用户列表', 1, 0, 'admin', 'ums-admin', 0);
INSERT INTO `reagent_menu` VALUES (5, 21, '2020-02-07 16:30:13', '角色列表', 1, 0, 'role', 'ums-role', 0);
INSERT INTO `reagent_menu` VALUES (6, 21, '2020-02-07 16:30:53', '菜单列表', 1, 0, 'menu', 'ums-menu', 0);
INSERT INTO `reagent_menu` VALUES (7, 21, '2020-02-07 16:31:13', '资源列表', 1, 0, 'resource', 'ums-resource', 0);
INSERT INTO `reagent_menu` VALUES (8, 21, '2021-02-25 17:37:05', '科室列表', 1, 0, 'branch', 'ums-branch', 0);
INSERT INTO `reagent_menu` VALUES (9, 21, '2021-02-28 19:40:42', '供应商列表', 1, 0, 'supplier', 'ums-supplier', 0);
INSERT INTO `reagent_menu` VALUES (28, 1, '2020-02-02 14:52:44', '添加事件', 1, 0, 'addIncident', 'product-add', 0);
INSERT INTO `reagent_menu` VALUES (29, 1, '2020-02-02 14:53:51', '事件分类', 1, 0, 'productCate', 'product-cate', 0);

-- ----------------------------
-- Table structure for reagent_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `reagent_operation_log`;
CREATE TABLE `reagent_operation_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `function` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能区分',
  `opera_log` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '操作用户ID',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_order
-- ----------------------------
DROP TABLE IF EXISTS `reagent_order`;
CREATE TABLE `reagent_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `order_day` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '下单日',
  `supplier_id` bigint(16) NULL DEFAULT NULL COMMENT '供货商ID',
  `supplier_short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货商名',
  `reagent_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂编号',
  `reagent_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试剂名',
  `number` bigint(20) NULL DEFAULT NULL COMMENT '订货数量',
  `unit` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订货单位',
  `price` bigint(20) NULL DEFAULT NULL COMMENT '价格',
  `describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_order
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_out_bill
-- ----------------------------
DROP TABLE IF EXISTS `reagent_out_bill`;
CREATE TABLE `reagent_out_bill`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出库单编号',
  `bill_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出库单种类：1 出库申请单， 2 中心库出库单，2 2级库出库单，',
  `bill_date` date NOT NULL COMMENT '单据日期（业务发生的日期，不一定等于单据创建时间，根据单据不同，在此单为做成日期）',
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '单据状态：0-草稿，1-已完结 ',
  `bill_creator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '制单人',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `branch_id` bigint(20) NOT NULL COMMENT '申请科室',
  `stock_day` date NOT NULL COMMENT '出库预定日',
  `application_date` date NOT NULL COMMENT '申请日',
  `application_user` bigint(20) NOT NULL COMMENT '申请人',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_out_bill
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_out_detail
-- ----------------------------
DROP TABLE IF EXISTS `reagent_out_detail`;
CREATE TABLE `reagent_out_detail`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `out_bill_id` bigint(20) NOT NULL COMMENT '出库单ID',
  `reagent_id` bigint(20) NOT NULL COMMENT '试剂ID',
  `reagent_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试剂名称',
  `reagent_unit` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `reagent_specification` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `quantity` bigint(20) NULL DEFAULT NULL COMMENT '数量',
  `batch_no` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '批号',
  `expire_date` date NOT NULL COMMENT '保质期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单详细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_out_detail
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_out_detail_item
-- ----------------------------
DROP TABLE IF EXISTS `reagent_out_detail_item`;
CREATE TABLE `reagent_out_detail_item`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `out_detail_id` bigint(20) NOT NULL COMMENT '出库单详细ID',
  `qr_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '二维码',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材出库单个体' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_out_detail_item
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_permission
-- ----------------------------
DROP TABLE IF EXISTS `reagent_permission`;
CREATE TABLE `reagent_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` int(1) NULL DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) NULL DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_permission
-- ----------------------------
INSERT INTO `reagent_permission` VALUES (24, 0, '商品', NULL, NULL, 0, NULL, 1, '2018-09-29 16:15:14', 0);
INSERT INTO `reagent_permission` VALUES (25, 1, '商品列表', 'pms:product:read', NULL, 1, '/pms/product/index', 1, '2018-09-29 16:17:01', 0);
INSERT INTO `reagent_permission` VALUES (26, 1, '添加商品', 'pms:product:create', NULL, 1, '/pms/product/add', 1, '2018-09-29 16:18:51', 0);
INSERT INTO `reagent_permission` VALUES (27, 1, '商品分类', 'pms:productCategory:read', NULL, 1, '/pms/productCate/index', 1, '2018-09-29 16:23:07', 0);
INSERT INTO `reagent_permission` VALUES (28, 1, '商品类型', 'pms:productAttribute:read', NULL, 1, '/pms/productAttr/index', 1, '2018-09-29 16:24:43', 0);
INSERT INTO `reagent_permission` VALUES (29, 1, '品牌管理', 'pms:brand:read', NULL, 1, '/pms/brand/index', 1, '2018-09-29 16:25:45', 0);
INSERT INTO `reagent_permission` VALUES (30, 2, '编辑商品', 'pms:product:update', NULL, 2, '/pms/product/updateProduct', 1, '2018-09-29 16:34:23', 0);
INSERT INTO `reagent_permission` VALUES (31, 2, '删除商品', 'pms:product:delete', NULL, 2, '/pms/product/delete', 1, '2018-09-29 16:38:33', 0);
INSERT INTO `reagent_permission` VALUES (32, 4, '添加商品分类', 'pms:productCategory:create', NULL, 2, '/pms/productCate/create', 1, '2018-09-29 16:43:23', 0);
INSERT INTO `reagent_permission` VALUES (33, 4, '修改商品分类', 'pms:productCategory:update', NULL, 2, '/pms/productCate/update', 1, '2018-09-29 16:43:55', 0);
INSERT INTO `reagent_permission` VALUES (34, 4, '删除商品分类', 'pms:productCategory:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:44:38', 0);
INSERT INTO `reagent_permission` VALUES (35, 5, '添加商品类型', 'pms:productAttribute:create', NULL, 2, '/pms/productAttr/create', 1, '2018-09-29 16:45:25', 0);
INSERT INTO `reagent_permission` VALUES (36, 5, '修改商品类型', 'pms:productAttribute:update', NULL, 2, '/pms/productAttr/update', 1, '2018-09-29 16:48:08', 0);
INSERT INTO `reagent_permission` VALUES (37, 5, '删除商品类型', 'pms:productAttribute:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:48:44', 0);
INSERT INTO `reagent_permission` VALUES (38, 6, '添加品牌', 'pms:brand:create', NULL, 2, '/pms/brand/add', 1, '2018-09-29 16:49:34', 0);
INSERT INTO `reagent_permission` VALUES (39, 6, '修改品牌', 'pms:brand:update', NULL, 2, '/pms/brand/update', 1, '2018-09-29 16:50:55', 0);
INSERT INTO `reagent_permission` VALUES (40, 6, '删除品牌', 'pms:brand:delete', NULL, 2, '/pms/brand/delete', 1, '2018-09-29 16:50:59', 0);
INSERT INTO `reagent_permission` VALUES (41, 0, '首页', NULL, NULL, 0, NULL, 1, '2018-09-29 16:51:57', 0);
INSERT INTO `reagent_permission` VALUES (42, 1, '事件列表', 'ims:incident:read', '', 1, '/ims/incident/index', 1, '2018-09-29 16:17:01', 0);
INSERT INTO `reagent_permission` VALUES (43, 1, '添加事件', 'ims:incident:create', '', 1, '/ims/incident/add', 1, '2018-09-29 16:18:51', 0);
INSERT INTO `reagent_permission` VALUES (44, 2, '编辑事件', 'ims:incident:update', '', 2, '/ims/incident/update', 1, '2018-09-29 16:34:23', 0);
INSERT INTO `reagent_permission` VALUES (45, 2, '删除事件', 'ims:incident:delete', '', 2, '/ims/incident/delete', 1, '2018-09-29 16:38:33', 0);

-- ----------------------------
-- Table structure for reagent_refund_detail
-- ----------------------------
DROP TABLE IF EXISTS `reagent_refund_detail`;
CREATE TABLE `reagent_refund_detail`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `in_bill_id` bigint(20) NOT NULL COMMENT '入库单ID',
  `reagent_id` bigint(20) NOT NULL COMMENT '试剂ID',
  `reagent_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试剂名称',
  `reagent_unit` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `reagent_specification` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `price` bigint(20) NULL DEFAULT NULL COMMENT '价格',
  `quantity` bigint(20) NULL DEFAULT NULL COMMENT '数量',
  `total` bigint(20) NULL DEFAULT NULL COMMENT '金额',
  `batch_no` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '批号',
  `expire_date` date NOT NULL COMMENT '保质期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退货单详细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_refund_detail
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_refund_detail_item
-- ----------------------------
DROP TABLE IF EXISTS `reagent_refund_detail_item`;
CREATE TABLE `reagent_refund_detail_item`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `in_detail_id` bigint(20) NOT NULL COMMENT '入库单详细ID',
  `qr_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '二维码',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退货单个体' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_refund_detail_item
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_resource
-- ----------------------------
DROP TABLE IF EXISTS `reagent_resource`;
CREATE TABLE `reagent_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_resource
-- ----------------------------
INSERT INTO `reagent_resource` VALUES (31, '2020-02-04 17:04:55', '商品品牌管理', '/brand/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (32, '2020-02-04 17:05:35', '商品属性分类管理', '/productAttribute/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (33, '2020-02-04 17:06:13', '商品属性管理', '/productAttribute/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (34, '2020-02-04 17:07:15', '商品分类管理', '/productCategory/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (35, '2020-02-04 17:09:16', '商品管理', '/product/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (36, '2020-02-04 17:09:53', '商品库存管理', '/sku/**', NULL, 1);
INSERT INTO `reagent_resource` VALUES (37, '2020-02-05 14:43:37', '订单管理', '/order/**', '', 2);
INSERT INTO `reagent_resource` VALUES (38, '2020-02-05 14:44:22', ' 订单退货申请管理', '/returnApply/**', '', 2);
INSERT INTO `reagent_resource` VALUES (39, '2020-02-05 14:45:08', '退货原因管理', '/returnReason/**', '', 2);
INSERT INTO `reagent_resource` VALUES (40, '2020-02-05 14:45:43', '订单设置管理', '/orderSetting/**', '', 2);
INSERT INTO `reagent_resource` VALUES (41, '2020-02-05 14:46:23', '收货地址管理', '/companyAddress/**', '', 2);
INSERT INTO `reagent_resource` VALUES (42, '2020-02-07 16:37:22', '优惠券管理', '/coupon/**', '', 3);
INSERT INTO `reagent_resource` VALUES (43, '2020-02-07 16:37:59', '优惠券领取记录管理', '/couponHistory/**', '', 3);
INSERT INTO `reagent_resource` VALUES (44, '2020-02-07 16:38:28', '限时购活动管理', '/flash/**', '', 3);
INSERT INTO `reagent_resource` VALUES (45, '2020-02-07 16:38:59', '限时购商品关系管理', '/flashProductRelation/**', '', 3);
INSERT INTO `reagent_resource` VALUES (46, '2020-02-07 16:39:22', '限时购场次管理', '/flashSession/**', '', 3);
INSERT INTO `reagent_resource` VALUES (47, '2020-02-07 16:40:07', '首页轮播广告管理', '/home/advertise/**', '', 3);
INSERT INTO `reagent_resource` VALUES (48, '2020-02-07 16:40:34', '首页品牌管理', '/home/brand/**', '', 3);
INSERT INTO `reagent_resource` VALUES (49, '2020-02-07 16:41:06', '首页新品管理', '/home/newProduct/**', '', 3);
INSERT INTO `reagent_resource` VALUES (50, '2020-02-07 16:42:16', '首页人气推荐管理', '/home/recommendProduct/**', '', 3);
INSERT INTO `reagent_resource` VALUES (51, '2020-02-07 16:42:48', '首页专题推荐管理', '/home/recommendSubject/**', '', 3);
INSERT INTO `reagent_resource` VALUES (52, '2020-02-07 16:44:56', ' 商品优选管理', '/prefrenceArea/**', '', 5);
INSERT INTO `reagent_resource` VALUES (53, '2020-02-07 16:45:39', '商品专题管理', '/subject/**', '', 5);
INSERT INTO `reagent_resource` VALUES (54, '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', 4);
INSERT INTO `reagent_resource` VALUES (55, '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', 4);
INSERT INTO `reagent_resource` VALUES (56, '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', 4);
INSERT INTO `reagent_resource` VALUES (57, '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', 4);
INSERT INTO `reagent_resource` VALUES (58, '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', 4);
INSERT INTO `reagent_resource` VALUES (59, '2020-02-04 17:09:16', '事件管理', '/incident/**', '', 1);

-- ----------------------------
-- Table structure for reagent_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `reagent_resource_category`;
CREATE TABLE `reagent_resource_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int(4) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_resource_category
-- ----------------------------
INSERT INTO `reagent_resource_category` VALUES (7, '2020-02-05 10:21:44', '商品模块', 0);
INSERT INTO `reagent_resource_category` VALUES (8, '2020-02-05 10:22:34', '订单模块', 0);
INSERT INTO `reagent_resource_category` VALUES (9, '2020-02-05 10:22:48', '营销模块', 0);
INSERT INTO `reagent_resource_category` VALUES (10, '2020-02-05 10:23:04', '权限模块', 0);
INSERT INTO `reagent_resource_category` VALUES (11, '2020-02-07 16:34:27', '内容模块', 0);
INSERT INTO `reagent_resource_category` VALUES (12, '2020-02-07 16:35:49', '其他模块', 0);

-- ----------------------------
-- Table structure for reagent_role
-- ----------------------------
DROP TABLE IF EXISTS `reagent_role`;
CREATE TABLE `reagent_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_role
-- ----------------------------
INSERT INTO `reagent_role` VALUES (1, '系统管理员', '系统维护', 0, NULL, 1, 0);
INSERT INTO `reagent_role` VALUES (2, '中心库管理员', '一级库管理', 0, NULL, 1, 0);
INSERT INTO `reagent_role` VALUES (3, '科室管理员', '2级库管理', 0, NULL, 1, 0);
INSERT INTO `reagent_role` VALUES (4, '试剂操作员', '试剂使用', 0, NULL, 1, 0);
INSERT INTO `reagent_role` VALUES (5, '供货商', '进货', 0, NULL, 1, 0);

-- ----------------------------
-- Table structure for reagent_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_role_menu_relation`;
CREATE TABLE `reagent_role_menu_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_role_menu_relation
-- ----------------------------
INSERT INTO `reagent_role_menu_relation` VALUES (96, 1, 1);
INSERT INTO `reagent_role_menu_relation` VALUES (97, 1, 2);
INSERT INTO `reagent_role_menu_relation` VALUES (98, 1, 3);
INSERT INTO `reagent_role_menu_relation` VALUES (99, 1, 4);
INSERT INTO `reagent_role_menu_relation` VALUES (100, 1, 5);
INSERT INTO `reagent_role_menu_relation` VALUES (101, 1, 6);
INSERT INTO `reagent_role_menu_relation` VALUES (102, 1, 8);
INSERT INTO `reagent_role_menu_relation` VALUES (103, 1, 9);

-- ----------------------------
-- Table structure for reagent_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_role_permission_relation`;
CREATE TABLE `reagent_role_permission_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色和权限关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_role_permission_relation
-- ----------------------------
INSERT INTO `reagent_role_permission_relation` VALUES (18, 1, 1);
INSERT INTO `reagent_role_permission_relation` VALUES (19, 1, 2);
INSERT INTO `reagent_role_permission_relation` VALUES (20, 1, 3);
INSERT INTO `reagent_role_permission_relation` VALUES (21, 1, 7);
INSERT INTO `reagent_role_permission_relation` VALUES (22, 1, 8);
INSERT INTO `reagent_role_permission_relation` VALUES (23, 2, 4);
INSERT INTO `reagent_role_permission_relation` VALUES (24, 2, 9);
INSERT INTO `reagent_role_permission_relation` VALUES (25, 2, 10);
INSERT INTO `reagent_role_permission_relation` VALUES (26, 2, 11);
INSERT INTO `reagent_role_permission_relation` VALUES (27, 3, 5);
INSERT INTO `reagent_role_permission_relation` VALUES (28, 3, 12);
INSERT INTO `reagent_role_permission_relation` VALUES (29, 3, 13);
INSERT INTO `reagent_role_permission_relation` VALUES (30, 3, 14);
INSERT INTO `reagent_role_permission_relation` VALUES (31, 4, 6);
INSERT INTO `reagent_role_permission_relation` VALUES (32, 4, 15);
INSERT INTO `reagent_role_permission_relation` VALUES (33, 4, 16);
INSERT INTO `reagent_role_permission_relation` VALUES (34, 4, 17);

-- ----------------------------
-- Table structure for reagent_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `reagent_role_resource_relation`;
CREATE TABLE `reagent_role_resource_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(20) NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_role_resource_relation
-- ----------------------------
INSERT INTO `reagent_role_resource_relation` VALUES (178, 2, 8);
INSERT INTO `reagent_role_resource_relation` VALUES (179, 2, 9);
INSERT INTO `reagent_role_resource_relation` VALUES (180, 2, 10);
INSERT INTO `reagent_role_resource_relation` VALUES (181, 2, 11);
INSERT INTO `reagent_role_resource_relation` VALUES (182, 2, 12);
INSERT INTO `reagent_role_resource_relation` VALUES (183, 5, 1);
INSERT INTO `reagent_role_resource_relation` VALUES (184, 5, 2);
INSERT INTO `reagent_role_resource_relation` VALUES (185, 5, 3);
INSERT INTO `reagent_role_resource_relation` VALUES (186, 5, 4);
INSERT INTO `reagent_role_resource_relation` VALUES (187, 5, 5);
INSERT INTO `reagent_role_resource_relation` VALUES (188, 5, 6);
INSERT INTO `reagent_role_resource_relation` VALUES (189, 5, 8);
INSERT INTO `reagent_role_resource_relation` VALUES (190, 5, 9);
INSERT INTO `reagent_role_resource_relation` VALUES (191, 5, 10);
INSERT INTO `reagent_role_resource_relation` VALUES (192, 5, 11);
INSERT INTO `reagent_role_resource_relation` VALUES (193, 5, 12);
INSERT INTO `reagent_role_resource_relation` VALUES (194, 5, 13);
INSERT INTO `reagent_role_resource_relation` VALUES (195, 5, 14);
INSERT INTO `reagent_role_resource_relation` VALUES (196, 5, 15);
INSERT INTO `reagent_role_resource_relation` VALUES (197, 5, 16);
INSERT INTO `reagent_role_resource_relation` VALUES (198, 5, 17);
INSERT INTO `reagent_role_resource_relation` VALUES (199, 5, 18);
INSERT INTO `reagent_role_resource_relation` VALUES (200, 5, 19);
INSERT INTO `reagent_role_resource_relation` VALUES (201, 5, 20);
INSERT INTO `reagent_role_resource_relation` VALUES (202, 5, 21);
INSERT INTO `reagent_role_resource_relation` VALUES (203, 5, 22);
INSERT INTO `reagent_role_resource_relation` VALUES (204, 5, 23);
INSERT INTO `reagent_role_resource_relation` VALUES (205, 5, 24);
INSERT INTO `reagent_role_resource_relation` VALUES (206, 5, 25);
INSERT INTO `reagent_role_resource_relation` VALUES (207, 5, 26);
INSERT INTO `reagent_role_resource_relation` VALUES (208, 5, 27);
INSERT INTO `reagent_role_resource_relation` VALUES (209, 5, 28);
INSERT INTO `reagent_role_resource_relation` VALUES (210, 5, 29);
INSERT INTO `reagent_role_resource_relation` VALUES (211, 1, 1);
INSERT INTO `reagent_role_resource_relation` VALUES (212, 1, 2);
INSERT INTO `reagent_role_resource_relation` VALUES (213, 1, 3);
INSERT INTO `reagent_role_resource_relation` VALUES (214, 1, 4);
INSERT INTO `reagent_role_resource_relation` VALUES (215, 1, 5);
INSERT INTO `reagent_role_resource_relation` VALUES (216, 1, 54);
INSERT INTO `reagent_role_resource_relation` VALUES (217, 1, 55);
INSERT INTO `reagent_role_resource_relation` VALUES (218, 1, 56);

-- ----------------------------
-- Table structure for reagent_stock
-- ----------------------------
DROP TABLE IF EXISTS `reagent_stock`;
CREATE TABLE `reagent_stock`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `branch_id` bigint(20) NULL DEFAULT NULL COMMENT '科室ID ',
  `reagent_id` bigint(20) NOT NULL COMMENT '试剂耗材ID',
  `batch_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统批号',
  `expire_date` date NOT NULL COMMENT '到期日期',
  `quantity` decimal(20, 4) NOT NULL COMMENT '库存数量',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材库存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_stock
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_stock_item
-- ----------------------------
DROP TABLE IF EXISTS `reagent_stock_item`;
CREATE TABLE `reagent_stock_item`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `stock_id` bigint(20) NOT NULL COMMENT '库存ID',
  `qr_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '二维码',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态 10:中心入库，11:中心过期，12:中心损耗，13:中心退货，14:中心出库，\n20:科室入库，21:科室过期，23:科室退货，24:科室损耗，25:科室出库，\n31:过期，32:损耗，33:用尽：34:退货',
  `use_date` date NULL DEFAULT NULL COMMENT '开瓶日',
  `use_expire` date NULL DEFAULT NULL COMMENT '开瓶有效期',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试剂耗材库存个体' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_stock_item
-- ----------------------------

-- ----------------------------
-- Table structure for reagent_supplier
-- ----------------------------
DROP TABLE IF EXISTS `reagent_supplier`;
CREATE TABLE `reagent_supplier`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货商ID',
  `supplier_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货商正式名',
  `supplier_short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货商简名',
  `contacts` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contacts_tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contacts_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人手机',
  `contacts_wechat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人微信',
  `supplier_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `status` int(1) NULL DEFAULT NULL COMMENT '公司状态',
  `create_time` datetime(0) NOT NULL,
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '软删除标志: 0, 未删除, 1: 已删除',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reagent_supplier
-- ----------------------------
INSERT INTO `reagent_supplier` VALUES (1, '23123', '哈药六厂', '哈', '2143234', '234234', '234234', '2342342', '423434', 1, '2021-02-28 19:37:14', '1', '2021-02-28 19:37:17', '2', 0, '2021-02-28 19:37:22', '2');

SET FOREIGN_KEY_CHECKS = 1;
