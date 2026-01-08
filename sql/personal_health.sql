/*
 Navicat Premium Dump SQL

 Source Server         : local-db-mysql
 Source Server Type    : MySQL
 Source Server Version : 50741 (5.7.41)
 Source Host           : localhost:3306
 Source Schema         : personal_health

 Target Server Type    : MySQL
 Target Server Version : 50741 (5.7.41)
 File Encoding         : 65001

 Date: 15/12/2024 20:08:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for evaluations
-- ----------------------------
DROP TABLE IF EXISTS `evaluations`;
CREATE TABLE `evaluations`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父级评论ID',
  `commenter_id` int(11) NULL DEFAULT NULL COMMENT '评论者ID',
  `replier_id` int(11) NULL DEFAULT NULL COMMENT '回复者ID',
  `content_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '内容类型',
  `content_id` int(11) NULL DEFAULT NULL COMMENT '内容ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '评论内容',
  `upvote_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '点赞列表，以\",\"分割',
  `create_time` datetime NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of evaluations
-- ----------------------------
INSERT INTO `evaluations` VALUES (4, NULL, 8, NULL, 'NEWS', 10, '我也遇到过这种问题', '1,7,8', '2024-05-23 11:33:01');
INSERT INTO `evaluations` VALUES (7, 4, 3, NULL, 'NEWS', 10, '大侠风范', '1,7,8,3', '2024-06-08 17:06:19');
INSERT INTO `evaluations` VALUES (8, 1, 3, 3, 'NEWS', 10, '一派胡言', '1,7,8', '2024-06-08 17:06:19');
INSERT INTO `evaluations` VALUES (13, 1, 3, 7, 'NEWS', 10, '这么神奇？', '1,8', '2024-06-08 17:06:19');
INSERT INTO `evaluations` VALUES (14, NULL, 8, 3, 'NEWS', 10, '大哥，我服了！', '1,8', '2024-06-08 17:06:19');
INSERT INTO `evaluations` VALUES (15, 4, 8, 8, 'NEWS', 10, '小子，你真没种！', '1,8', '2024-06-08 15:04:19');
INSERT INTO `evaluations` VALUES (23, NULL, 3, NULL, 'NEWS', 10, '我的评论', '3', '2024-05-24 16:24:14');
INSERT INTO `evaluations` VALUES (27, 23, 3, 3, 'NEWS', 10, '什么事情', '3', '2024-05-25 00:32:16');
INSERT INTO `evaluations` VALUES (29, 14, 3, NULL, 'NEWS', 10, '先生。', '3', '2024-05-25 15:08:06');
INSERT INTO `evaluations` VALUES (40, NULL, 3, NULL, 'NEWS', 19, '测试评论啊', '3', '2024-06-13 19:57:02');
INSERT INTO `evaluations` VALUES (44, 40, 3, NULL, 'NEWS', 19, '回复', NULL, '2024-06-13 20:17:20');
INSERT INTO `evaluations` VALUES (45, 40, 3, 3, 'NEWS', 19, '回复', '3', '2024-06-13 20:19:11');
INSERT INTO `evaluations` VALUES (47, 40, 3, 3, 'NEWS', 19, '测试UU', '3', '2024-06-13 20:19:51');
INSERT INTO `evaluations` VALUES (48, 11, 3, NULL, 'NEWS', 10, '哈哈哈哈', NULL, '2024-06-13 20:20:45');
INSERT INTO `evaluations` VALUES (49, NULL, 3, NULL, 'NEWS', 10, 'UUUIII', NULL, '2024-06-13 20:21:24');
INSERT INTO `evaluations` VALUES (50, 49, 3, NULL, 'NEWS', 10, '就是', NULL, '2024-06-13 20:21:30');
INSERT INTO `evaluations` VALUES (51, 4, 3, NULL, 'NEWS', 10, '就是', NULL, '2024-06-13 20:24:40');
INSERT INTO `evaluations` VALUES (52, 4, 3, 8, 'NEWS', 10, '哈哈哈', '3', '2024-06-13 20:24:51');
INSERT INTO `evaluations` VALUES (53, 49, 3, 3, 'NEWS', 10, '哈哈哈', NULL, '2024-06-13 20:32:37');
INSERT INTO `evaluations` VALUES (54, NULL, 3, NULL, 'NEWS', 18, '测试', NULL, '2024-06-13 20:37:26');
INSERT INTO `evaluations` VALUES (55, 54, 3, NULL, 'NEWS', 18, 'niaho ', NULL, '2024-06-13 20:37:36');
INSERT INTO `evaluations` VALUES (58, 57, 3, NULL, 'NEWS', 19, '4324234', NULL, '2024-06-13 20:39:02');
INSERT INTO `evaluations` VALUES (59, 57, 3, 3, 'NEWS', 19, '54354354', NULL, '2024-06-13 20:39:07');
INSERT INTO `evaluations` VALUES (61, NULL, 3, NULL, 'NEWS', 19, '432432423', NULL, '2024-06-13 20:39:29');
INSERT INTO `evaluations` VALUES (83, NULL, 3, NULL, 'NEWS', 13, '健康', NULL, '2024-06-15 02:12:55');
INSERT INTO `evaluations` VALUES (84, NULL, 3, NULL, 'NEWS', 13, '丝滑', NULL, '2024-06-15 02:13:08');
INSERT INTO `evaluations` VALUES (85, NULL, 3, NULL, 'NEWS', 14, '哈哈哈哈哈', NULL, '2024-06-15 02:13:39');
INSERT INTO `evaluations` VALUES (87, NULL, 3, NULL, 'NEWS', 16, '？？？', NULL, '2024-06-15 02:37:10');
INSERT INTO `evaluations` VALUES (88, NULL, 3, NULL, 'NEWS', 16, '好好说话', NULL, '2024-06-15 21:38:26');
INSERT INTO `evaluations` VALUES (89, NULL, 3, NULL, 'NEWS', 19, '12121', '3', '2024-06-17 00:05:02');
INSERT INTO `evaluations` VALUES (90, 89, 3, NULL, 'NEWS', 19, '同意同意', NULL, '2024-06-17 00:05:11');
INSERT INTO `evaluations` VALUES (91, 89, 3, 3, 'NEWS', 19, '323232', NULL, '2024-06-17 00:05:18');
INSERT INTO `evaluations` VALUES (92, NULL, 3, NULL, 'NEWS', 16, '323213', NULL, '2024-06-24 23:53:41');
INSERT INTO `evaluations` VALUES (93, NULL, 3, NULL, 'NEWS', 20, '3123213213', NULL, '2024-06-24 23:53:48');
INSERT INTO `evaluations` VALUES (94, 93, 3, NULL, 'NEWS', 20, '32132132', NULL, '2024-06-24 23:53:53');
INSERT INTO `evaluations` VALUES (98, 95, 3, NULL, 'NEWS', 15, '32132', NULL, '2024-06-24 23:54:38');
INSERT INTO `evaluations` VALUES (99, 95, 3, NULL, 'NEWS', 15, '43434', NULL, '2024-06-24 23:54:41');
INSERT INTO `evaluations` VALUES (100, 95, 3, 3, 'NEWS', 15, '432423433454354', NULL, '2024-06-24 23:54:45');
INSERT INTO `evaluations` VALUES (101, NULL, 3, NULL, 'NEWS', 15, '4324324', NULL, '2024-06-24 23:54:52');
INSERT INTO `evaluations` VALUES (102, NULL, 3, NULL, 'NEWS', 20, '2121', NULL, '2024-06-30 23:09:39');
INSERT INTO `evaluations` VALUES (103, NULL, 3, NULL, 'NEWS', 16, '43434', NULL, '2024-06-30 23:09:49');
INSERT INTO `evaluations` VALUES (104, NULL, 3, NULL, 'NEWS', 20, '4343', NULL, '2024-07-07 03:00:30');
INSERT INTO `evaluations` VALUES (106, NULL, 3, NULL, 'NEWS', 20, '2121', NULL, '2024-07-07 04:46:11');
INSERT INTO `evaluations` VALUES (107, NULL, 3, NULL, 'NEWS', 20, '测试', NULL, '2024-07-07 04:46:25');
INSERT INTO `evaluations` VALUES (110, 109, 17, NULL, 'NEWS', 10, 'dsdsds', NULL, '2024-07-08 14:09:37');
INSERT INTO `evaluations` VALUES (112, 111, 9, NULL, 'NEWS', 5, '4324322', NULL, '2024-07-14 15:17:44');
INSERT INTO `evaluations` VALUES (113, 111, 9, 9, 'NEWS', 5, '5435435', NULL, '2024-07-14 15:17:51');
INSERT INTO `evaluations` VALUES (115, NULL, 9, NULL, 'NEWS', 2, '221332131', NULL, '2024-07-14 15:21:54');
INSERT INTO `evaluations` VALUES (116, NULL, 9, NULL, 'NEWS', 3, '这是指标的评论！', NULL, '2024-07-14 15:22:13');
INSERT INTO `evaluations` VALUES (117, NULL, 9, NULL, 'NEWS', 5, '3232', NULL, '2024-07-14 19:20:56');
INSERT INTO `evaluations` VALUES (118, 117, 9, NULL, 'NEWS', 5, '4324324', NULL, '2024-07-14 19:21:01');
INSERT INTO `evaluations` VALUES (119, NULL, 9, NULL, 'NEWS', 12, '3342143', '9', '2024-07-16 16:27:51');
INSERT INTO `evaluations` VALUES (120, 119, 9, NULL, 'NEWS', 12, '43243243', '9', '2024-07-16 16:27:56');
INSERT INTO `evaluations` VALUES (121, 119, 9, 9, 'NEWS', 12, '432423432', '9', '2024-07-16 16:28:01');
INSERT INTO `evaluations` VALUES (124, NULL, 3, NULL, 'NEWS', 12, '所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。', NULL, '2024-11-18 20:28:08');
INSERT INTO `evaluations` VALUES (125, 119, 3, 9, 'NEWS', 12, '所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。', '3', '2024-11-18 20:28:14');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食物表主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '食物名',
  `tag_id` int(11) NULL DEFAULT NULL COMMENT '标签分类ID',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '食物做法',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------

-- ----------------------------
-- Table structure for health_model_config
-- ----------------------------
DROP TABLE IF EXISTS `health_model_config`;
CREATE TABLE `health_model_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '健康模型自增主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置名',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置图标',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置单位',
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置符号',
  `is_global` tinyint(1) NULL DEFAULT NULL COMMENT '是否是全局模型',
  `value_range` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '正常值范围',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '健康模型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_model_config
-- ----------------------------
INSERT INTO `health_model_config` VALUES (1, 1, '身高', '身高模型，选择该模型可记录身高', '/api/personal-heath/v1.0/file/getFile?fileName=c8379f0身高.png', 'cm', 'Height', 1, '195,459');
INSERT INTO `health_model_config` VALUES (2, 1, '体重', '该模型为体重参数，记录时选中即可', '/api/personal-heath/v1.0/file/getFile?fileName=e7e18c5体重.png', 'KG', 'Weight', 1, '126,548');
INSERT INTO `health_model_config` VALUES (4, 1, '谷丙转氨酶', '专属记录转氨酶', '/api/personal-heath/v1.0/file/getFile?fileName=04d7bcf转氨酶.png', 'U/L', 'ALT', 1, '108,258');
INSERT INTO `health_model_config` VALUES (7, 1, '运动心率', '运动时心率', '/api/personal-heath/v1.0/file/getFile?fileName=ae7a515心率.png', '次/分', 'Bpm', 1, '75,197');
INSERT INTO `health_model_config` VALUES (8, 1, '夜间血压', '夜间血压测量值', '/api/personal-heath/v1.0/file/getFile?fileName=536807e血压.png', '毫米汞柱', 'mmHg', 1, '72,145');
INSERT INTO `health_model_config` VALUES (9, 1, '夜跑步数', '记录夜跑步数', '/api/personal-heath/v1.0/file/getFile?fileName=851253d步数.png', '步', '暂无', 1, '422,17990');
INSERT INTO `health_model_config` VALUES (10, 1, '晨跑步数', '记录晨跑时的步数', '/api/personal-heath/v1.0/file/getFile?fileName=1cd680d步数.png', '步', '暂无', 1, '3000,10000');
INSERT INTO `health_model_config` VALUES (11, 3, '辰星-晨间血糖浓度', '这是测试的', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=bad20ee体重.png', 'mol', '摩尔/升', 0, '10,50');
INSERT INTO `health_model_config` VALUES (12, 3, '辰星-夜间平均心率', '测试数据', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=a8e6967心率.png', '次', '暂无', 0, '80,110');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '消息表的自增主键ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息内容（消息体）',
  `message_type` int(2) NULL DEFAULT NULL COMMENT '消息类型（指标数据、互动、系统消息...）',
  `receiver_id` int(11) NULL DEFAULT NULL COMMENT '接收者ID',
  `sender_id` int(11) NULL DEFAULT NULL COMMENT '发送者ID',
  `is_read` tinyint(1) NULL DEFAULT NULL COMMENT '消息是否已经阅读',
  `content_id` int(11) NULL DEFAULT NULL COMMENT '关联的内容ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '消息的发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '测试系统消息发送了', 4, 9, NULL, 1, NULL, '2024-07-13 16:03:35');
INSERT INTO `message` VALUES (2, '测试111', 4, 9, NULL, 1, NULL, '2024-07-13 16:04:00');
INSERT INTO `message` VALUES (4, '评论被回复测试', 1, 9, 8, 1, 4, '2024-07-13 22:16:53');
INSERT INTO `message` VALUES (5, '你中奖了！及时联系我们', 4, 9, NULL, 1, NULL, '2024-07-13 22:54:32');
INSERT INTO `message` VALUES (6, '全站都需要接收的数据。这是测试！！！', 4, 8, NULL, 1, NULL, '2024-07-13 23:12:06');
INSERT INTO `message` VALUES (7, '全站都需要接收的数据。这是测试！！！', 4, 8, NULL, 1, NULL, '2024-07-13 23:12:06');
INSERT INTO `message` VALUES (16, '你记录的【体重】超标了，正常值范围:[126,548]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-15 14:15:36');
INSERT INTO `message` VALUES (17, '你记录的【身高】超标了，正常值范围:[195,459]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-15 14:15:36');
INSERT INTO `message` VALUES (18, '你记录的【体重】超标了，正常值范围:[126,548]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-15 14:43:32');
INSERT INTO `message` VALUES (19, '你记录的【身高】超标了，正常值范围:[195,459]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-15 14:43:32');
INSERT INTO `message` VALUES (20, '你记录的【心率-专属】超标了，正常值范围:[69,281]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-15 17:34:29');
INSERT INTO `message` VALUES (21, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:15:39');
INSERT INTO `message` VALUES (22, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:15:39');
INSERT INTO `message` VALUES (23, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:16:07');
INSERT INTO `message` VALUES (24, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:16:07');
INSERT INTO `message` VALUES (25, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:16:19');
INSERT INTO `message` VALUES (26, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:16:19');
INSERT INTO `message` VALUES (27, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:16:45');
INSERT INTO `message` VALUES (28, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:17:04');
INSERT INTO `message` VALUES (29, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:30:34');
INSERT INTO `message` VALUES (30, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 9, NULL, 1, NULL, '2024-07-16 16:30:34');
INSERT INTO `message` VALUES (31, '你记录的【专属血压记录指标】超标了，正常值范围:[72,184]，请注意休息。必要时请就医!', 3, 8, NULL, 1, NULL, '2024-10-04 16:42:38');
INSERT INTO `message` VALUES (32, '你记录的【心率-043】超标了，正常值范围:[75,171]，请注意休息。必要时请就医!', 3, 8, NULL, 1, NULL, '2024-10-04 16:42:38');
INSERT INTO `message` VALUES (33, '测试推送', 4, 20, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (35, '测试推送', 4, 18, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (36, '测试推送', 4, 17, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (37, '测试推送', 4, 16, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (38, '测试推送', 4, 15, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (39, '测试推送', 4, 14, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (40, '测试推送', 4, 13, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (41, '测试推送', 4, 12, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (42, '测试推送', 4, 11, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (43, '测试推送', 4, 10, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (44, '测试推送', 4, 9, NULL, 0, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (45, '测试推送', 4, 3, NULL, 1, NULL, '2024-11-18 16:24:56');
INSERT INTO `message` VALUES (46, '你记录的【夜跑步数】超标了，正常值范围:[422,17990]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 17:16:01');
INSERT INTO `message` VALUES (47, '你记录的【身高】超标了，正常值范围:[195,459]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 17:16:01');
INSERT INTO `message` VALUES (48, '你记录的【辰星-晨间血糖浓度】超标了，正常值范围:[10,50]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 17:17:45');
INSERT INTO `message` VALUES (49, '你记录的【辰星-夜间平均心率】超标了，正常值范围:[80,110]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 17:29:04');
INSERT INTO `message` VALUES (50, '你记录的【辰星-夜间平均心率】超标了，正常值范围:[80,110]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 17:29:51');
INSERT INTO `message` VALUES (52, '你好啊', 4, 19, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (53, '你好啊', 4, 18, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (54, '你好啊', 4, 17, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (55, '你好啊', 4, 16, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (56, '你好啊', 4, 15, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (57, '你好啊', 4, 14, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (58, '你好啊', 4, 13, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (59, '你好啊', 4, 12, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (60, '你好啊', 4, 11, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (61, '你好啊', 4, 10, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (62, '你好啊', 4, 9, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (63, '你好啊', 4, 8, NULL, 0, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (64, '你好啊', 4, 3, NULL, 1, NULL, '2024-11-18 18:28:10');
INSERT INTO `message` VALUES (65, '你好啊', 4, 20, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (66, '你好啊', 4, 19, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (67, '你好啊', 4, 18, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (68, '你好啊', 4, 17, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (69, '你好啊', 4, 16, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (70, '你好啊', 4, 15, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (71, '你好啊', 4, 14, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (72, '你好啊', 4, 13, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (73, '你好啊', 4, 12, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (74, '你好啊', 4, 11, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (75, '你好啊', 4, 10, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (76, '你好啊', 4, 9, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (77, '你好啊', 4, 8, NULL, 0, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (78, '你好啊', 4, 3, NULL, 1, NULL, '2024-11-18 20:24:10');
INSERT INTO `message` VALUES (79, '你记录的【夜间血压】超标了，正常值范围:[72,145]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 20:33:02');
INSERT INTO `message` VALUES (80, '你记录的【运动心率】超标了，正常值范围:[75,197]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 20:33:02');
INSERT INTO `message` VALUES (81, '你记录的【辰星-晨间血糖浓度】超标了，正常值范围:[10,50]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 20:33:02');
INSERT INTO `message` VALUES (82, '你记录的【辰星-夜间平均心率】超标了，正常值范围:[80,110]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-11-18 20:34:01');
INSERT INTO `message` VALUES (83, '你记录的【辰星-晨间血糖浓度】超标了，正常值范围:[10,50]，请注意休息。必要时请就医!', 3, 3, NULL, 1, NULL, '2024-12-15 19:43:41');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '健康资讯ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '内容',
  `tag_id` int(11) NULL DEFAULT NULL COMMENT '标签ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图片封面',
  `reader_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '阅读者ID列表，用“,”分割',
  `is_top` tinyint(1) NULL DEFAULT NULL COMMENT '是否推荐',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '健康资讯表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '成年男性平均身高接近1米7，女性1米58', '<p>中国人长高了！</p><p style=\"text-align: justify;\">成年男性平均身高接近1米7，女性1米58</p><p style=\"text-align: justify;\">据介绍，2015年至2019年，国家卫健委组织中国疾控中心、国家癌症中心、国家心血管病中心开展了新一轮中国居民慢性病与营养监测，覆盖全国31个省(区、市)近6亿人口，现场调查人数超过60万，具有国家和省级代表性，根据监测结果编写形成《中国居民营养与慢性病状况报告(2020年)》。</p><p style=\"text-align: justify;\">报告显示，中国居民体格发育与营养不足问题持续改善，城乡差异逐步缩小。中国城乡居民膳食能量和蛋白质、脂肪、碳水化合物三大宏量营养素摄入充足，优质蛋白摄入不断增加。</p><p style=\"text-align: justify;\">另外，近年来，中国人还“长高了”！</p><p style=\"text-align: justify;\">数据显示，中国成人平均身高继续增长，18-44岁男性和女性的平均身高分别为169.7厘米和158.0厘米，与2015年发布结果相比分别增加1.2厘米和0.8厘米。</p><p>儿童青少年生长发育水平持续改善，6-17岁男孩和女孩各年龄组身高均有增加，平均增加值分别为1.6厘米和1.0厘米，6岁以下儿童生长迟缓率降至7%以下，低体重率降至5%以下，均已实现2020年国家规划目标。</p>', 2, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=f0890964.jpg', NULL, 0, '2024-07-11 15:40:04');
INSERT INTO `news` VALUES (2, '疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击', '<p><br></p><p style=\"text-align: justify;\">在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。<br></p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p>所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 2, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=6b87fee8.jpg', NULL, 1, '2024-07-03 15:48:00');
INSERT INTO `news` VALUES (3, '身体健康的十项指标，你知道几个？', '<p>随着人们健康意识的提高。有关健康的话题越来越引起重视。不生病就是健康吗？这样说，有点太狭隘了。健康的准确定义应该是身体健康，心理健康，具有良好的社会适应性。今天我们就来详细了解身体健康的十项指标。</p><h4 style=\"text-align: justify;\"><strong>1.饮食指标</strong></h4><p style=\"text-align: justify;\">一般来说成人每天应该吃500克左右的食物，而老人的话，因为肠胃功能减弱，则不应该超过350克。如果出现多食多饮，而且体重下降的情况，就要考虑是否得了糖尿病或者甲亢；如果食量减少 ，每天摄取的食物不到250克，持续时间比较长，就要考虑是否患有炎症或者恶性肿瘤了，要及时检查。</p><p style=\"text-align: justify;\">2.体重指标</p><p style=\"text-align: justify;\">体重并不是越轻越好。这里教给大家一个公式，你可以算下你的正常体重应该是多少。世界卫生组织推荐的计算方法：男性：(身高cm－80)×70﹪=标准体重；女性：(身高cm－70)×60﹪=标准体重。如果短时间内，体重下降过快，人明显消瘦，这种情况多见于糖尿病、甲亢、恶性肿瘤、胃肠系统等疾病；如果短时间内，体重急剧增长，一方面和你的不健康饮食有关，另一方面，也可能和高血脂、甲减、糖尿病有关。国内外大量研究显示，约有60%—80%的成年糖尿病患者在发病前体重超标。</p><p style=\"text-align: justify;\">主食和油</p><p style=\"text-align: justify;\">糖尿病人这样吃更安全</p><p style=\"text-align: justify;\">3.体温指标</p><p style=\"text-align: justify;\">正常人的体温应该为36℃～37℃，超过37℃就可以确诊为发烧。除了发烧外，还有一种情况，就是体温低于正常体温，称为“低体温”。“低体温”常出现在高龄老人，长期营养不足的患者身上，甲减或者时常休克的病人，也会有这种情况。</p><p style=\"text-align: justify;\">4.脉搏指标（心跳指标）</p><p style=\"text-align: justify;\">成人标准脉搏应该为每分钟60～100次（注：运动员的脉搏可能低于这个标准）。如果出现脉搏过速、过缓、有间歇、脉搏较弱、时快时慢，这均表示，可能心脏有问题，需要及时就医。老人心跳一般会略低于标准数，不过，只要能保持不低于55次/分钟，就算是正常的。如果平时心跳较慢，突然增至80～90次每分钟，就要考虑是不是得了潜在疾病，需要马上就医检查。</p><p style=\"text-align: justify;\">5.呼吸指标</p><p style=\"text-align: justify;\">健康人的呼吸应该是平稳，有规律的。每分钟16～18次左右。如果呼吸急促、大喘气、或者气不够用，时快时慢，胸闷，憋气等现象都是不正常的表现。呼吸急促、喘不过气多见于哮喘疾病；胸闷、憋气多见于心脏疾病。对于老人来说，心肺功能减弱，运动后也可能会有心悸气短的症状，不过，如果休息后，症状缓解，就是正常的，并不是疾病的表现。</p><p style=\"text-align: justify;\">6.排便指标</p><p style=\"text-align: justify;\">健康人的排便次数每天或者隔天一次。正常的大便应该是黄色软状。高龄老人，饮食少、运动少的，2～3天排便一次也是正常的。只要排便畅通，大便不干，就不是便秘。对于普通人来说，如果超过3天未排便，而且排便困难、排不尽、大便发干，这就是得了便秘；如果每天排便超过三次，并且大便不成形，便稀，这种情况一般就是得了腹泻了。结肠炎也可以通过大便检查出来。一般来说，患有结肠炎的病人，会有便血、便秘或者腹泻等症状。</p><p style=\"text-align: justify;\">7.排尿指标</p><p style=\"text-align: justify;\">成人的排尿量每天应该在1～2升左右，2～4小时就要排尿一次（夜间除外）。健康人的尿液应该是淡黄色，透明、少许泡沫。如果小便黄中带红，就要考虑尿路感染的情况；小便呈蓝绿色，多见于绿脓杆菌感染；血尿常见于泌尿生殖系统疾病、肿瘤或者结石等；尿频、尿急，这种情况就不用说了，是前列腺疾病的典型症状。</p><p style=\"text-align: justify;\">8.血压指标</p><p style=\"text-align: justify;\">这个大家应该都比较熟悉。成人的血压应该是不超过140/80毫米汞柱。对于老人来说，血管壁弹性降低，体内垃圾积累过多，需要心脏加大压力，才能保证正常的血氧供应，所以血压会上升。不过要注意，老人的收缩压不应超过160毫米汞柱，如果超过这个标准，就可以判定为高血压，不管有没有不舒服的症状都应吃药。如果单纯的是舒张压过高，需要去医院检查，切忌私自用药。</p><p style=\"text-align: justify;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-tjoges91tu/T1cRrWvC8OWZ77~noop.image?_iz=58558&amp;from=article.pc_detail&amp;lk3s=953192f4&amp;x-expires=1721543150&amp;x-signature=%2F5yaAFAWB6ZB75WWQN%2BcrulPDns%3D\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p style=\"text-align: justify;\">9.睡眠指标</p><p style=\"text-align: justify;\">一般来说，成人的睡眠时间应该在6～8小时，睡足8小时不是标准，而是应该以起床时精神状态是否饱满作为标准。而且每个年龄段的人群，睡眠时间是不一样的。10～18岁的人群，要保证每天8小时睡眠时间；18～50岁的人群，保证每天7小时睡眠即可；50～70岁，每天只需要5～6小时睡觉就够了。对于老人来说，睡眠质量会有所下降，所以不能硬性规定每天要睡多久。只要睡醒后，白天有精神，无疲劳感就可以。另外，建议老人要养成午休的习惯，有利于身体健康。</p><p style=\"text-align: justify;\">10.精神指标</p><p style=\"text-align: justify;\">世界卫生组织把人体精神健康的标准概括为“三良好”：</p><p style=\"text-align: justify;\">良好的个性人格——情绪稳定，性格温和，一直坚强，感情丰富，豁达乐观。</p><p style=\"text-align: justify;\">良好的处世能力——观察问题客观，有较强的自我控制能力，能适应复杂的社会环境。</p><p style=\"text-align: justify;\">良好的人际关系——待人接物大度和善，助人为乐，与人为善。</p><p style=\"text-align: justify;\">健康人应该有饱满的精神状态，丰富的情感、敏捷的行动能力。如果不具备这些以及上面的“三良好”，就需要考虑是不是身体有隐疾了。</p><p>大家快来对照看看自己的这些指标是否合格吧！有了健康上的小问题要及时发现治疗，否则可能形成大隐患！</p>', 2, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=170541b7.jpg', NULL, 1, '2024-07-14 14:27:51');
INSERT INTO `news` VALUES (4, '健康的7大准则，做到2个就很厉害', '<p>有人说，打败一个年轻人，只需要一张体检报告单。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">中年青年报社社会调查中心做过一项调查，45.2%的受访青年表示害怕参加体检，其中95后受访者表示害怕体检的比例最高，为52.3%。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">害怕体检，68.1%的受访者是担心会查出身体有问题。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><strong>的确，不少疾病都在呈现年轻化的趋势，以前认为六七十岁才患的病，如今很多二三十岁的已经深受困扰。</strong></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">比如骨质疏松、中风、二型糖尿病等等，一档关注认知障碍的电视节目《忘不了餐厅》，曾邀请过一位嘉宾，她在36岁时就确诊了阿尔茨海默病。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">如果说造成疾病的是不良的饮食习惯和结构、不规律的作息、缺乏运动等生活方式，那么，又是什么导致我们过上了这种带来疾病的生活方式？</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">《运动改造大脑》的作者、哈佛医学院教授约翰·瑞迪，有一本书叫《医生最想让你做的事》。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">他指出，文明发展迅速，但我们的身体并没有跟上时代的步伐。这种失配影响到我们生活的每个领域，包括身体健康，还有情感健康。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><strong>瑞迪教授认为，疾病不是源于人身体结构上的不足或缺陷，而是源于生活方式带来的自我损伤。</strong></p><p style=\"text-align: justify;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/1ddd7fb50276407cb6f7c5f6cfefbf33~noop.image?_iz=58558&amp;from=article.pc_detail&amp;lk3s=953192f4&amp;x-expires=1721543305&amp;x-signature=yaW6sAE2E5qxjedMaYsFdnJiBI4%3D\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p><br></p><p style=\"text-align: justify;\">人类在进化过程中，本身积累了三个核心优势，但是现代生活，让这些优势的作用正在渐渐失效。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><strong>首先，人类在运动方面很全能。</strong></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">猿类都能跑，但跑不快，也跑不远，但人类可以。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">跑的前提是直立行走，同时需要调动大脑来进行协调和规划，在运动方面，人类就是个全能选手。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">而今，很多人一坐就是几个小时，运动量只有从家到地铁站的步行距离。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><strong>其次是人类饮食的多样化。</strong></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">人是杂食动物，肠道中有成千上万种菌群，它们分解食物后给食物增加的价值也远远超过了我们的想象。</p><p style=\"text-align: justify;\">饮食多样性，能确保人类摄取种类足够多的微量营养素，以支撑复杂的人体运转。</p><p style=\"text-align: justify;\">但是今天的人类，食物中大量的是能快速提供能量的精加工制品，丧失了食物本身的完整性。</p><p style=\"text-align: justify;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/450f91c6160849e0ba8e2a07756f240f~noop.image?_iz=58558&amp;from=article.pc_detail&amp;lk3s=953192f4&amp;x-expires=1721543305&amp;x-signature=ooUPVyq%2FJJWHFdwakIVOjBT4uMw%3D\" alt=\"\" data-href=\"\" style=\"width: 50%;\"></p><p><br></p><p style=\"text-align: justify;\"><strong>最后，人类富有同理心。</strong></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">20世纪八九十年代，意大利科学家团队发现了一种名为“镜像神经元”的细胞。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">研究人员在猴子吃花生时对其大脑进行监测，观察到一组神经元在放电。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">如果让一只猴子看另一只猴子吃花生，它脑内的同一组神经元也会放电，就好像它自己就是那只吃花生的猴子，那就是镜像神经元在放电。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">人不仅仅能察觉到他人的感受，甚至还会感同身受，这就是同理心。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">同理心是人类存在的基础，有同理心，人类才能凝聚在一起，才能合作。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">而今天的人，患上了社交恐惧症，不愿与人相处，更喜欢独自面对世界。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">比尔及梅琳达·盖茨基金会曾经进行过一项覆盖全世界187个国家的大规模研究，对死亡、身体虚弱及生活质量下降的成因进行了调查。</p><p style=\"text-align: justify;\"><br></p><p><strong>研究认为，全球范围内，造成疾病和身体虚弱的12个危险因素分别是：高血压、吸烟、酒精、油烟污染、水果摄入较少、体重指数高、高血糖、体重低、空气污染、缺乏活动、盐摄入量高、坚果和籽类食物摄入量低。</strong></p>', 1, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=c4cbe3b4.jpg', NULL, 1, '2024-07-14 14:29:09');
INSERT INTO `news` VALUES (5, '10条身体健康的“金标准”', '<p>一个人的身体是否健康</p><p style=\"text-align: justify;\">各项身体常见指标指数是最直接的判断</p><p style=\"text-align: justify;\">以下这些身体指标的正常值</p><p style=\"text-align: justify;\">以及维持指标正常的健康生活方式</p><p style=\"text-align: justify;\">每个人都应该知道！</p><p style=\"text-align: justify;\">赶紧自己对照一下！</p><p style=\"text-align: justify;\">10条身体健康的“金标准”</p><p style=\"text-align: justify;\">血压标准</p><p style=\"text-align: justify;\">收缩压＜120mmHg，舒张压＜80mmHg</p><p style=\"text-align: justify;\">根据中华医学会心血管病学分会等机构联合发布的《中国高血压防治指南(2018年修订版)》，我国成年人血压值的正常范围为：收缩压＜120mmHg，舒张压＜80mmHg。</p><p style=\"text-align: justify;\">血压不正常不仅会影响血管健康，还会影响心脏、大脑。《中国高血压患者教育指南》指出，高血压是脑卒中最重要的危险因素，我国70%的脑卒中患者有高血压。</p><p style=\"text-align: justify;\"><img src=\"https://p3-sign.toutiaoimg.com/pgc-image/SUnEYkXADWQXzc~noop.image?_iz=58558&amp;from=article.pc_detail&amp;lk3s=953192f4&amp;x-expires=1721543649&amp;x-signature=RuB5B1ApqxK6xu2fLl%2Bvs%2Bt4m%2BM%3D\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p>图源：《中国高血压防治指南（2018年修订版）》</p>', 3, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=9edc2e89.jpg', NULL, 0, '2024-07-14 14:34:58');
INSERT INTO `news` VALUES (6, '睡眠质量对健康的影响及改善方法', '<p>30年前……</p><p style=\"text-align: justify;\">癌症和心脏病离我们很远</p><p style=\"text-align: justify;\">很少听说糖尿病</p><p style=\"text-align: justify;\">医学教科书里没有“脂肪肝”</p><p style=\"text-align: justify;\">极少有精神和心理疾病</p><p style=\"text-align: justify;\">很少有人喝奶和吃奶粉</p><p style=\"text-align: justify;\">从来没有听说过补钙</p><p style=\"text-align: justify;\">只有逢年过节才喝酒助兴</p><p style=\"text-align: justify;\">几乎看不到胖子</p><p style=\"text-align: left;\"><br></p><p style=\"text-align: justify;\">现在……</p><p style=\"text-align: justify;\">每5个人就有一个患慢性病</p><p style=\"text-align: justify;\">每年增加1200万慢性病人</p><p style=\"text-align: justify;\">每5个成年人就有一个心血管病</p><p style=\"text-align: justify;\">每10秒就有一人死于心血管疾病</p><p style=\"text-align: left;\"><br></p><p style=\"text-align: justify;\">现在……</p><p style=\"text-align: justify;\">肺癌死亡率增加了5倍</p><p style=\"text-align: justify;\">地球上每3个肺癌就有一个在中国</p><p style=\"text-align: justify;\">烟民人数世界第一</p><p style=\"text-align: justify;\">喝酒人数世界第一</p><p style=\"text-align: justify;\">精神和心理疾病人数世界排名第一</p><p style=\"text-align: justify;\">糖尿病人数世界排名第一</p><p style=\"text-align: justify;\">所以我们今天整理了一篇健康大数据数据，以下是各大年龄段的健康数据情况！</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">中国人健康大数据概况</p><p style=\"text-align: justify;\">中国高血压人口有1.6——1.7亿人</p><p style=\"text-align: justify;\">高血脂的有将１亿多人</p><p style=\"text-align: justify;\">糖尿病患者达到9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症7000万——２亿人</p><p style=\"text-align: justify;\">血脂异常的1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者约1.2２亿人</p><p style=\"text-align: justify;\">平均每30秒就有一个人罹患癌症</p><p style=\"text-align: justify;\">平均每30秒就有一个人罹患糖尿病</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病</p><p style=\"text-align: justify;\">中国城市白领的健康堪忧</p><p style=\"text-align: justify;\">目前我国主流城市的白领亚健康比例高达76%，处于过劳状态的白领接近六成，<strong>真正意义上的健康人比例不足3%。</strong></p><p style=\"text-align: justify;\">白领女性更容易受到妇科、心脑血管疾病的威胁，男性则面临猝死、过劳、癌症等问题！</p><p style=\"text-align: justify;\">中国社科院《人才发展报告》：七种职业有过劳死的危险，如果中国知识分子不注意调整亚健康状态，不久的将来这些人中的2/3死于心脑血管疾病！</p><p style=\"text-align: justify;\"><img src=\"https://p3-sign.toutiaoimg.com/pgc-image/aa3e04dcf48349e290d9975aa17e431a~noop.image?_iz=58558&amp;from=article.pc_detail&amp;lk3s=953192f4&amp;x-expires=1721722113&amp;x-signature=wRHPZWa1UKZ7UI6UFFaakvp9Elk%3D\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p><br></p><p style=\"text-align: justify;\">健康和医生治疗没有直接关系</p><p style=\"text-align: justify;\">美国研究证实：与美国人健康寿命相关的因素中，只有10%跟医疗相关！</p><p style=\"text-align: justify;\">导致美国人健康寿命延长30年中，有25年与医学没有关系。</p><p style=\"text-align: justify;\">普通疾病的误诊率高达27%左右，重大疾病的误诊率高达40%左右。</p><p style=\"text-align: justify;\">美国研究证实：高度发达的现代医学体系与人的健康没有太大关系。</p><p style=\"text-align: justify;\">英国研究证实：有85%的药品是无效的，对病人最好的措施就是尽量减少医疗干预。</p><p style=\"text-align: justify;\">美国研究证实：有30%——40%的手术根本不需要做！</p><p style=\"text-align: justify;\">药物的不良反应是对健康的重大威胁</p><p style=\"text-align: justify;\">《千手观音》23位主要演员中19位都是因药物不良反应导致聋哑。</p><p style=\"text-align: justify;\">著名的美国医学协会杂志（JAMA）曾经发布过一篇令人震惊的报告,在1994年因为严重的药物副作用而需要住院治疗的人数也超过了220万人。</p><p style=\"text-align: justify;\">更令人吃惊的是，这其中有超过10．6万人死于药物副作用。</p><p style=\"text-align: justify;\">这份报告在医学界一石激起千层浪。我们以前从不知道，会有如此之多的患者深受药物副作用的危害。</p><p style=\"text-align: justify;\">2006年9月12日是我国首个“预防出生缺陷日”，同年监测显示，我国每天有720个缺陷儿出生。其中很多是药物的不良反应造成的。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">第四次国家卫生服务调查结果显示</p><p style=\"text-align: justify;\">2008年，慢性病患病率就已达20%，死亡数已占总死亡数的83%。</p><p style=\"text-align: justify;\">过去十一年，平均每年新增慢性病例接近了２倍。心脏病和恶性肿瘤病例增加了近1倍！</p><p style=\"text-align: justify;\">美国《保健事物》杂志报告，中国人的腰围增长速度将成为世界之最。肥胖人口将达到3.25亿，未来20年将会增长一倍，腰围只要增长一英寸（2.54厘米），血管就会增长４英里，患癌风险高８倍！</p><p style=\"text-align: justify;\">中国青少年健康大数据</p><p style=\"text-align: justify;\">80%学生早餐营养质量较差</p><p style=\"text-align: justify;\">青春期贫血的发病率达38%</p><p style=\"text-align: justify;\">全国肥胖儿中脂肪肝发生率40—50%</p><p style=\"text-align: justify;\">小学生近视率32.5%</p><p style=\"text-align: justify;\">初中生59.4%</p><p style=\"text-align: justify;\">高中生77.3%</p><p>大学生80%</p>', 3, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=3dd5dbaSnipaste_2024-07-16_16-06-47.png', NULL, 0, '2024-07-16 16:09:06');
INSERT INTO `news` VALUES (7, '快节奏的现代生活，如同一只无形的手', '<p> </p><p style=\"text-align: justify;\">在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p>所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 3, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=b2c347010.jpg', NULL, NULL, '2024-07-16 16:10:35');
INSERT INTO `news` VALUES (8, '我们对健康的重视程度仍然远远不够', '<p> </p><p style=\"text-align: justify;\">在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p>所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 3, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=47e0fb39.jpg', NULL, NULL, '2024-07-16 16:11:31');
INSERT INTO `news` VALUES (9, '慢性疾病的阴影逐渐笼罩在我们的生活之上', '<p> </p><p style=\"text-align: justify;\">在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p>所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 2, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=50c810f4.jpg', NULL, NULL, '2024-07-16 16:12:23');
INSERT INTO `news` VALUES (10, '如何建立健康的生活方式：有效的健康管理技巧', '<p> </p><p style=\"text-align: justify;\">在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p>所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 3, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=ed9c50f10.jpg', NULL, 0, '2024-07-16 16:12:56');
INSERT INTO `news` VALUES (11, '为了家人，为了亲朋，保健养生从现在做起！', '<p> 在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p style=\"text-align: justify;\">所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 2, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=a6fe88e2.jpg', NULL, 0, '2024-07-16 16:13:40');
INSERT INTO `news` VALUES (12, '探讨健康饮食对身体的重要性', '<p> 在过去，随着中国经济的高速发展，许多人的生活水平和物质条件得到了很大的改善。然而，这种快速发展的背后，却隐藏着一些被忽视的问题，其中较为突出的就是健康问题。当经济增速放缓，社会逐渐趋向和谐时，人们开始意识到，健康才是生活中更为重要的一部分。</p><p><br></p><p style=\"text-align: justify;\"><strong>中国人的健康数据，触目惊心！</strong></p><p style=\"text-align: justify;\">经过精心搜集与整理，我们获得了一组关于中国人健康状况的详尽数据。它们不仅仅是冷冰冰的统计结果，更像是一个个鲜活的生命在向我们诉说着健康的宝贵。</p><p style=\"text-align: justify;\">高血压——1.6-1.7亿人</p><p style=\"text-align: justify;\">高血脂——1亿多人</p><p style=\"text-align: justify;\">糖尿病患者——9240万人</p><p style=\"text-align: justify;\">超重或者肥胖症——7000万-----2亿人</p><p style=\"text-align: justify;\">血脂异常——1.6亿人</p><p style=\"text-align: justify;\">脂肪肝患者——1.2亿人</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患癌症，</p><p style=\"text-align: justify;\">平均每30秒，就有一个人罹患糖尿病，</p><p style=\"text-align: justify;\">平均每30秒，至少有一个人死于心脑血管疾病。</p><p style=\"text-align: justify;\">这些冰冷的数字背后，是无数家庭的痛苦和无奈。它们无声地诉说着一个残酷的真相：在繁忙的生活中，我们往往为了追逐金钱和物质享受，而忽略了身体的健康。当健康问题如暗流涌动，悄然而至时，我们才如梦初醒，惊觉已为时晚矣！</p><p style=\"text-align: justify;\"><strong>树立良好的健康理念</strong></p><p style=\"text-align: justify;\">快节奏的现代生活，如同一只无形的手，推动着我们不断前行，却也在不经意间，让我们生活方式和饮食习惯发生了很大的变化。作息不规律、高油高盐的饮食等，悄然侵蚀着我们的健康，使得慢性疾病的阴影逐渐笼罩在我们的生活之上。</p><p style=\"text-align: justify;\">更为严峻的是，我们对健康的重视程度仍然远远不够。在过去的日子里，人们紧紧盯着经济的发展和物质条件的改善，却忘记了健康才是生命的根基。我们需要的，不仅仅是医疗技术的日新月异，更需要的是健康理念的深入人心，健康行为的自觉养成。</p><p style=\"text-align: justify;\">健康对于每个人来说都是刻不容缓的。我们要珍惜自己的身体，我们要时刻提醒自己，健康才是重要的，不要等到失去健康之后才后悔莫及。 </p><p style=\"text-align: justify;\"><strong>补肽刻不容缓</strong></p><p style=\"text-align: justify;\">疾病，就像一位潜藏在暗处的狡猾猎手，随时准备向我们发动攻击。它的存在无声无息，却又无比强大，一旦被我们忽视，便有可能迅速蔓延，成为威胁我们生命安全的熊熊烈火。而补肽，这一健康管理的利器，正是我们对抗疾病、保持健康的重要武器。</p><p style=\"text-align: justify;\">补肽，顾名思义，就是补充身体所需的肽类物质。人体本身就含有小分子肽，但随着年龄的增长，肽类物质会逐渐减少，导致身体各项功能逐渐衰退。因此，及时补充肽类物质，对于保持身体健康具有重要意义。</p><p style=\"text-align: justify;\">小分子肽，如同一位贴心的守护者，为我们的身体健康筑起一道坚实的屏障，让我们在面对外界病邪时更有抵抗力，还能帮助身体更好地吸收营养，预防慢性疾病的发生。</p><p style=\"text-align: justify;\">记住，健康是我们宝贵的财富，只有拥有健康的身体，我们才能更好地享受生活、追求梦想。因为没有了健康，我们就无法享受生活的美好，无法陪伴家人，无法实现自己的梦想。</p><p style=\"text-align: justify;\">所以，为了自己，为了家人，为了亲朋，保健养生从现在做起！在这个充满挑战和机遇的时代里，让我们一起携手前行，用补肽这一健康管理利器守护我们的健康之路。</p>', 1, 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=a6c7d3e1.jpg', NULL, 1, '2024-07-16 16:14:27');

-- ----------------------------
-- Table structure for news_save
-- ----------------------------
DROP TABLE IF EXISTS `news_save`;
CREATE TABLE `news_save`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '资讯的收藏ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `news_id` int(11) NULL DEFAULT NULL COMMENT '资讯ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '收藏的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '健康资讯收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_save
-- ----------------------------
INSERT INTO `news_save` VALUES (40, 8, 3, '2024-10-05 14:46:48');
INSERT INTO `news_save` VALUES (41, 8, 1, '2024-10-05 14:46:54');
INSERT INTO `news_save` VALUES (45, 3, 8, '2024-11-18 18:32:57');
INSERT INTO `news_save` VALUES (47, 3, 2, '2024-11-18 20:29:04');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标签分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '标签分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '心理健康');
INSERT INTO `tags` VALUES (2, '养生');
INSERT INTO `tags` VALUES (3, '运动');
INSERT INTO `tags` VALUES (4, '中医');
INSERT INTO `tags` VALUES (5, '身体健康');
INSERT INTO `tags` VALUES (6, '环境健康');
INSERT INTO `tags` VALUES (7, '职业健康');
INSERT INTO `tags` VALUES (8, '精神健康');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_role` int(11) NULL DEFAULT NULL COMMENT '用户角色',
  `is_login` tinyint(1) NULL DEFAULT NULL COMMENT '可登录状态(0：可用，1：不可用)',
  `is_word` tinyint(1) NULL DEFAULT NULL COMMENT '禁言状态(0：可用，1：不可用)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '程序员辰星', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=3064c25pic_4.jpg', '1343243@qq.com', 1, 0, 0, '2024-07-09 12:53:05');
INSERT INTO `user` VALUES (3, 'yangshu', '辰星的健康系统', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=150bb3dSnipaste_2024-11-22_00-47-16.png', '1134123@qq.com', 2, 0, 0, '2024-10-07 23:59:31');
INSERT INTO `user` VALUES (8, 'aiqin', '深海', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=b024d50Snipaste_2024-11-29_18-23-12.png', '123@qq.coom', 2, 0, 1, '2024-10-07 23:59:31');
INSERT INTO `user` VALUES (9, 'wanghai', '大春', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=b40ef5dSnipaste_2024-11-29_18-23-18.png', '1243@qq.com', 1, 1, 0, '2024-10-07 23:59:31');
INSERT INTO `user` VALUES (10, 'meihua', '梅花', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=2c6fa89猫头鹰.png', '156456@qq.com', 2, 0, 0, '2024-10-07 23:59:31');
INSERT INTO `user` VALUES (11, 'hupeng', '胡鹏', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=a778bc4Snipaste_2024-11-29_18-23-12.png', '789789@qq.com', 1, 1, 0, '2024-11-18 13:00:14');
INSERT INTO `user` VALUES (12, 'zhanglan', '张兰', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=42bcf20Snipaste_2024-11-29_18-23-18.png', '43443@qq.com', 2, 0, 1, '2024-11-18 13:00:14');
INSERT INTO `user` VALUES (13, 'chenhao', '陈浩', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=b2b19b9熊猫.png', '1567766@qq.com', 2, 0, 0, '2024-10-25 16:16:40');
INSERT INTO `user` VALUES (14, 'liran', '李冉', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=f9275d7熊猫.png', '32323@qq.com', 1, 0, 0, '2024-11-18 13:00:14');
INSERT INTO `user` VALUES (15, 'liran1', 'liran1', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=907317eSnipaste_2024-11-22_00-46-48.png', '2121@qq.com', 2, 0, 0, '2024-11-18 13:00:30');
INSERT INTO `user` VALUES (16, 'zhenli', '陈立', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=3a7ef99Snipaste_2024-11-22_00-46-36.png', '32312@qq.com', 1, 0, 0, '2024-11-18 13:00:50');
INSERT INTO `user` VALUES (17, 'guihua', '桂花', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=b6aed4apic_9.jpg', '1212@qq.com', 2, 0, 0, '2024-11-18 13:01:18');
INSERT INTO `user` VALUES (18, 'chenghua', '橙黄橘', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=127ddf0pic_4.jpg', '432432@qq.com', 2, 0, 0, '2024-11-18 13:01:34');
INSERT INTO `user` VALUES (19, 'lineng', '力能', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=d516551pic_3.jpg', '1232@qq.com', 2, 0, 0, '2024-11-18 14:15:19');
INSERT INTO `user` VALUES (20, '1221gthjhg', 'yonghu', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=a7350bepic_2.jpg', '124354@qq.com', 2, 0, 0, '2024-11-18 14:16:24');
INSERT INTO `user` VALUES (21, 'yingzi11', '43影子1212121', '14e1b600b1fd579f47433b88e8d85291', 'http://localhost:21090/api/personal-heath/v1.0/file/getFile?fileName=d829e54pic_1.jpg', '12432@qq.com', 2, 0, 0, '2024-11-18 14:17:35');

-- ----------------------------
-- Table structure for user_health
-- ----------------------------
DROP TABLE IF EXISTS `user_health`;
CREATE TABLE `user_health`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户健康记录主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `health_model_config_id` int(11) NULL DEFAULT NULL COMMENT '健康模型ID',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '输入的值',
  `create_time` datetime NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户健康记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_health
-- ----------------------------
INSERT INTO `user_health` VALUES (1, 3, 1, '23', '2024-07-13 13:13:42');
INSERT INTO `user_health` VALUES (2, 3, 2, '200', '2024-07-13 13:13:56');
INSERT INTO `user_health` VALUES (3, 7, 1, '43', '2024-07-03 13:14:05');
INSERT INTO `user_health` VALUES (5, 7, 2, '110', '2024-07-15 14:15:36');
INSERT INTO `user_health` VALUES (6, 7, 1, '167', '2024-07-15 14:15:36');
INSERT INTO `user_health` VALUES (8, 7, 4, '99', '2024-07-15 14:15:36');
INSERT INTO `user_health` VALUES (9, 7, 3, '50', '2024-07-03 14:15:36');
INSERT INTO `user_health` VALUES (10, 7, 8, '70', '2024-07-15 14:43:32');
INSERT INTO `user_health` VALUES (11, 7, 7, '76', '2024-07-15 14:43:32');
INSERT INTO `user_health` VALUES (12, 7, 4, '110', '2024-07-15 14:43:32');
INSERT INTO `user_health` VALUES (13, 7, 2, '110', '2024-07-15 14:43:32');
INSERT INTO `user_health` VALUES (14, 7, 1, '170', '2024-07-15 14:43:32');
INSERT INTO `user_health` VALUES (17, 7, 8, '71', '2024-07-16 16:15:39');
INSERT INTO `user_health` VALUES (18, 7, 7, '70', '2024-07-16 16:15:39');
INSERT INTO `user_health` VALUES (19, 7, 8, '188', '2024-07-16 16:16:07');
INSERT INTO `user_health` VALUES (20, 7, 7, '188', '2024-07-16 16:16:07');
INSERT INTO `user_health` VALUES (21, 7, 8, '66', '2024-07-16 16:16:19');
INSERT INTO `user_health` VALUES (22, 7, 7, '66', '2024-07-16 16:16:19');
INSERT INTO `user_health` VALUES (23, 7, 8, '73', '2024-07-16 16:16:45');
INSERT INTO `user_health` VALUES (24, 7, 7, '34', '2024-07-16 16:16:45');
INSERT INTO `user_health` VALUES (25, 7, 8, '201', '2024-07-16 16:17:04');
INSERT INTO `user_health` VALUES (26, 7, 7, '111', '2024-07-16 16:17:04');
INSERT INTO `user_health` VALUES (27, 7, 8, '88', '2024-07-16 16:17:32');
INSERT INTO `user_health` VALUES (28, 7, 7, '88', '2024-07-16 16:17:32');
INSERT INTO `user_health` VALUES (30, 7, 7, '70', '2024-07-16 16:30:34');
INSERT INTO `user_health` VALUES (31, 7, 8, '32', '2024-10-04 16:42:38');
INSERT INTO `user_health` VALUES (32, 7, 7, '32', '2024-10-04 16:42:38');
INSERT INTO `user_health` VALUES (33, 7, 8, '132', '2024-10-05 15:19:24');
INSERT INTO `user_health` VALUES (34, 7, 7, '111', '2024-10-05 15:19:24');
INSERT INTO `user_health` VALUES (35, 3, 9, '309', '2024-11-18 17:16:01');
INSERT INTO `user_health` VALUES (36, 3, 10, '4000', '2024-11-10 17:16:01');
INSERT INTO `user_health` VALUES (37, 3, 4, '120', '2024-11-18 17:16:01');
INSERT INTO `user_health` VALUES (38, 3, 7, '88', '2024-11-18 17:16:01');
INSERT INTO `user_health` VALUES (39, 3, 1, '166.3', '2024-11-18 17:16:01');
INSERT INTO `user_health` VALUES (40, 3, 11, '66', '2024-11-18 17:17:45');
INSERT INTO `user_health` VALUES (41, 3, 10, '4000', '2024-11-16 17:17:45');
INSERT INTO `user_health` VALUES (42, 3, 12, '100', '2024-11-18 17:18:45');
INSERT INTO `user_health` VALUES (43, 3, 11, '40', '2024-11-18 17:18:45');
INSERT INTO `user_health` VALUES (44, 3, 10, '8000', '2024-11-18 17:27:18');
INSERT INTO `user_health` VALUES (45, 3, 12, '99', '2024-11-12 17:28:34');
INSERT INTO `user_health` VALUES (46, 3, 12, '99', '2024-11-14 17:28:51');
INSERT INTO `user_health` VALUES (47, 3, 12, '69', '2024-11-17 17:29:04');
INSERT INTO `user_health` VALUES (48, 3, 12, '74', '2024-11-10 17:29:51');
INSERT INTO `user_health` VALUES (49, 3, 12, '52', '2024-11-07 17:30:31');
INSERT INTO `user_health` VALUES (50, 3, 12, '44', '2024-11-06 17:30:31');
INSERT INTO `user_health` VALUES (51, 3, 12, '66', '2024-11-04 17:30:31');
INSERT INTO `user_health` VALUES (52, 3, 12, '89', '2024-11-02 17:30:31');
INSERT INTO `user_health` VALUES (53, 3, 12, '55', '2024-10-21 17:30:31');
INSERT INTO `user_health` VALUES (54, 3, 8, '160', '2024-11-18 20:33:02');
INSERT INTO `user_health` VALUES (55, 3, 7, '60', '2024-11-18 20:33:02');
INSERT INTO `user_health` VALUES (56, 3, 10, '5000', '2024-11-18 20:33:02');
INSERT INTO `user_health` VALUES (57, 3, 11, '5', '2024-11-18 20:33:02');
INSERT INTO `user_health` VALUES (58, 3, 12, '45', '2024-11-18 20:34:01');
INSERT INTO `user_health` VALUES (60, 3, 12, '80', '2024-11-18 20:58:37');
INSERT INTO `user_health` VALUES (61, 3, 10, '5000', '2024-12-15 19:23:34');
INSERT INTO `user_health` VALUES (62, 3, 9, '500', '2024-12-15 19:23:34');
INSERT INTO `user_health` VALUES (63, 3, 8, '123', '2024-12-15 19:23:34');
INSERT INTO `user_health` VALUES (64, 3, 10, '10000', '2024-12-15 19:23:56');
INSERT INTO `user_health` VALUES (65, 3, 10, '4554', '2024-12-15 19:39:53');
INSERT INTO `user_health` VALUES (66, 3, 9, '4354', '2024-12-15 19:39:53');
INSERT INTO `user_health` VALUES (67, 3, 8, '132', '2024-12-15 19:39:53');
INSERT INTO `user_health` VALUES (68, 3, 12, '102', '2024-12-15 19:43:41');
INSERT INTO `user_health` VALUES (69, 3, 11, '90', '2024-12-15 19:43:41');
INSERT INTO `user_health` VALUES (70, 3, 12, '99', '2024-12-15 19:44:01');
INSERT INTO `user_health` VALUES (71, 3, 10, '4000', '2024-12-15 19:44:01');
INSERT INTO `user_health` VALUES (72, 3, 9, '500', '2024-12-15 19:44:01');
INSERT INTO `user_health` VALUES (73, 3, 8, '90', '2024-12-15 19:44:01');

SET FOREIGN_KEY_CHECKS = 1;
