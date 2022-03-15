
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for org_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `org_dept_info`;
CREATE TABLE `org_dept_info`  (
  `id` bigint(22) NOT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `dept_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_dept_info
-- ----------------------------
INSERT INTO `org_dept_info` VALUES (1, '研发部', NULL);
INSERT INTO `org_dept_info` VALUES (2, '测试部', NULL);
INSERT INTO `org_dept_info` VALUES (3, 'UED', NULL);
INSERT INTO `org_dept_info` VALUES (4, '架构部', NULL);
INSERT INTO `org_dept_info` VALUES (5, '业务部', NULL);
INSERT INTO `org_dept_info` VALUES (6, '生产部', NULL);

-- ----------------------------
-- Table structure for org_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `org_user_dept`;
CREATE TABLE `org_user_dept`  (
  `id` bigint(22) NOT NULL,
  `user_id` bigint(22) NOT NULL,
  `dept_id` bigint(22) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_user_dept
-- ----------------------------
INSERT INTO `org_user_dept` VALUES (1, 1, 1);
INSERT INTO `org_user_dept` VALUES (2, 1, 2);
INSERT INTO `org_user_dept` VALUES (3, 2, 2);
INSERT INTO `org_user_dept` VALUES (4, 2, 3);
INSERT INTO `org_user_dept` VALUES (5, 3, 4);
INSERT INTO `org_user_dept` VALUES (6, 3, 5);
INSERT INTO `org_user_dept` VALUES (7, 4, 4);
INSERT INTO `org_user_dept` VALUES (8, 4, 3);
INSERT INTO `org_user_dept` VALUES (9, 5, 2);
INSERT INTO `org_user_dept` VALUES (10, 5, 1);
INSERT INTO `org_user_dept` VALUES (11, 6, 1);
INSERT INTO `org_user_dept` VALUES (12, 7, 4);
INSERT INTO `org_user_dept` VALUES (13, 8, 1);
INSERT INTO `org_user_dept` VALUES (14, 9, 3);
INSERT INTO `org_user_dept` VALUES (15, 10, 2);
INSERT INTO `org_user_dept` VALUES (16, 11, 5);
INSERT INTO `org_user_dept` VALUES (17, 12, 5);
INSERT INTO `org_user_dept` VALUES (18, 13, 5);
INSERT INTO `org_user_dept` VALUES (19, 14, 3);
INSERT INTO `org_user_dept` VALUES (20, 15, 3);
INSERT INTO `org_user_dept` VALUES (21, 16, 3);
INSERT INTO `org_user_dept` VALUES (22, 17, 1);
INSERT INTO `org_user_dept` VALUES (23, 18, 1);
INSERT INTO `org_user_dept` VALUES (24, 19, 1);
INSERT INTO `org_user_dept` VALUES (25, 20, 2);
INSERT INTO `org_user_dept` VALUES (26, 21, 3);
INSERT INTO `org_user_dept` VALUES (27, 22, 4);

-- ----------------------------
-- Table structure for org_user_ext
-- ----------------------------
DROP TABLE IF EXISTS `org_user_ext`;
CREATE TABLE `org_user_ext`  (
  `id` bigint(22) NOT NULL,
  `user_id` bigint(22) NOT NULL COMMENT '用户id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `age` int(5) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_user_ext
-- ----------------------------
INSERT INTO `org_user_ext` VALUES (1, 1, '玉马路1号', '重庆', 25, '男');
INSERT INTO `org_user_ext` VALUES (2, 2, '玉马路1号', '重庆', 26, '女');
INSERT INTO `org_user_ext` VALUES (3, 3, '玉马路1号', '重庆', 25, '男');
INSERT INTO `org_user_ext` VALUES (4, 4, '玉马路2号', '重庆', 26, '女');
INSERT INTO `org_user_ext` VALUES (5, 5, '玉马路2号', '重庆', 25, '男');
INSERT INTO `org_user_ext` VALUES (6, 6, '玉马路2号', '北京', 26, '女');
INSERT INTO `org_user_ext` VALUES (7, 7, '玉马路3号', '北京', 27, '男');
INSERT INTO `org_user_ext` VALUES (8, 8, '玉马路4号', '北京', 28, '女');
INSERT INTO `org_user_ext` VALUES (9, 9, '玉马路5号', '北京', 29, '男');
INSERT INTO `org_user_ext` VALUES (10, 10, '玉马路6号', '北京', 30, '女');
INSERT INTO `org_user_ext` VALUES (11, 11, '玉马路7号', '北京', 31, '男');
INSERT INTO `org_user_ext` VALUES (12, 12, '玉马路8号', '北京', 32, '女');
INSERT INTO `org_user_ext` VALUES (13, 13, '玉马路9号', '上海', 33, '男');
INSERT INTO `org_user_ext` VALUES (14, 14, '玉马路10号', '上海', 34, '女');
INSERT INTO `org_user_ext` VALUES (15, 15, '玉马路11号', '上海', 35, '男');
INSERT INTO `org_user_ext` VALUES (16, 16, '玉马路12号', '上海', 36, '女');
INSERT INTO `org_user_ext` VALUES (17, 17, '玉马路13号', '上海', 37, '男');
INSERT INTO `org_user_ext` VALUES (18, 18, '玉马路14号', '上海', 38, '女');
INSERT INTO `org_user_ext` VALUES (19, 19, '玉马路15号', '上海', 39, '男');
INSERT INTO `org_user_ext` VALUES (20, 20, '玉马路16号', '深圳', 40, '女');
INSERT INTO `org_user_ext` VALUES (21, 21, '玉马路17号', '深圳', 41, '男');
INSERT INTO `org_user_ext` VALUES (22, 22, '玉马路18号', '深圳', 42, '女');
INSERT INTO `org_user_ext` VALUES (23, 23, '玉马路19号', '深圳', 43, '男');
INSERT INTO `org_user_ext` VALUES (24, 24, '玉马路20号', '深圳', 44, '女');
INSERT INTO `org_user_ext` VALUES (25, 25, '玉马路21号', '深圳', 45, '男');
INSERT INTO `org_user_ext` VALUES (26, 26, '玉马路22号', '深圳', 46, '女');
INSERT INTO `org_user_ext` VALUES (27, 27, '玉马路23号', '深圳', 47, '男');
INSERT INTO `org_user_ext` VALUES (28, 28, '玉马路24号', '深圳', 48, '女');
INSERT INTO `org_user_ext` VALUES (29, 29, '玉马路25号', '深圳', 49, '男');

-- ----------------------------
-- Table structure for org_user_info
-- ----------------------------
DROP TABLE IF EXISTS `org_user_info`;
CREATE TABLE `org_user_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'photo_url',
  `wx_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'wx_id',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enable` int(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态，1正常，0禁用',
  `user_sort` int(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_user_info
-- ----------------------------
INSERT INTO `org_user_info` VALUES (1, 'user1', 'xx', '用户1', '18888888888', 'xaasdasd', '232323', 'qq.com', 1, 1, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (2, 'user2', 'xx', '用户2', '18888888889', 'xaasdasd', '232323', 'qq.com', 1, 1, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (3, 'user3', 'xx', '用户3', '18888888890', 'xaasdasd', '232323', 'qq.com', 1, 1, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (4, 'user4', 'xx', '用户4', '18888888891', 'xaasdasd', '232323', 'qq.com', 1, 3, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (5, 'user5', 'xx', '用户5', '18888888892', 'xaasdasd', '232323', 'qq.com', 1, 3, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (6, 'user6', 'xx', '用户6', '18888888893', 'xaasdasd', '232323', 'qq.com', 1, 4, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (7, 'user7', 'xx', '用户7', '18888888894', 'xaasdasd', '232323', 'qq.com', 1, 5, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (8, 'user8', 'xx', '用户8', '18888888895', 'xaasdasd', '232323', 'qq.com', 0, 6, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (9, 'user9', 'xx', '用户9', '18888888896', 'xaasdasd', '232323', 'qq.com', 0, 7, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (10, 'user10', 'xx', '用户10', '18888888897', 'xaasdasd', '232323', 'qq.com', 0, 8, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (11, 'user11', 'xx', '用户11', '18888888898', 'xaasdasd', '232323', 'qq.com', 0, 9, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (12, 'user12', 'xx', '用户12', '18888888899', 'xaasdasd', '232323', 'qq.com', 0, 10, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (13, 'user13', 'xx', '用户13', '18888888900', 'xaasdasd', '232323', 'qq.com', 0, 11, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (14, 'user14', 'xx', '用户14', '18888888901', 'xaasdasd', '232323', 'qq.com', 0, 12, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (15, 'user15', 'xx', '用户15', '18888888902', 'xaasdasd', '232323', 'qq.com', 0, 13, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (16, 'user16', 'xx', '用户16', '18888888903', 'xaasdasd', '232323', 'qq.com', 0, 14, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (17, 'user17', 'xx', '用户17', '18888888904', 'xaasdasd', '232323', 'qq.com', 1, 15, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (18, 'user18', 'xx', '用户18', '18888888905', 'xaasdasd', '232323', 'qq.com', 1, 16, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (19, 'user19', 'xx', '用户19', '18888888906', 'xaasdasd', '232323', 'qq.com', 1, 17, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (20, 'user20', 'xx', '用户20', '18888888907', 'xaasdasd', '232323', 'qq.com', 1, 18, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (21, 'user21', 'xx', '用户21', '18888888908', 'xaasdasd', '232323', 'qq.com', 1, 19, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (22, 'user22', 'xx', '用户22', '18888888909', 'xaasdasd', '232323', 'qq.com', 1, 20, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (23, 'user23', 'xx', '用户23', '18888888910', 'xaasdasd', '232323', 'qq.com', 1, 21, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (24, 'user24', 'xx', '用户24', '18888888911', 'xaasdasd', '232323', 'qq.com', 1, 22, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (25, 'user25', 'xx', '用户25', '18888888912', 'xaasdasd', '232323', 'qq.com', 1, 23, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (26, 'user26', 'xx', '用户26', '18888888913', 'xaasdasd', '232323', 'qq.com', 1, 24, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (27, 'user27', 'xx', '用户27', '18888888914', 'xaasdasd', '232323', 'qq.com', 1, 25, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (28, 'user28', 'xx', '用户28', '18888888915', 'xaasdasd', '232323', 'qq.com', 1, 26, '2022-03-15 11:55:28', '2022-03-15 11:58:47');
INSERT INTO `org_user_info` VALUES (29, 'user29', 'xx', '用户29', '18888888916', 'xaasdasd', '232323', 'qq.com', 1, 27, '2022-03-15 11:55:28', '2022-03-15 11:58:47');

-- ----------------------------
-- Table structure for sys_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_role`;
CREATE TABLE `sys_auth_role`  (
  `id` bigint(22) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色备注',
  `role_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth_role
-- ----------------------------
INSERT INTO `sys_auth_role` VALUES (1, '超级管理员', NULL, 'superAdmin');
INSERT INTO `sys_auth_role` VALUES (2, '普通用户', NULL, 'ordinaryUser');
INSERT INTO `sys_auth_role` VALUES (3, '普通管理员', NULL, 'ordinaryAdmin');

-- ----------------------------
-- Table structure for sys_auth_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_user_role`;
CREATE TABLE `sys_auth_user_role`  (
  `id` bigint(22) NOT NULL,
  `role_id` bigint(22) NOT NULL,
  `user_id` bigint(22) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth_user_role
-- ----------------------------
INSERT INTO `sys_auth_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_auth_user_role` VALUES (2, 2, 1);
INSERT INTO `sys_auth_user_role` VALUES (3, 1, 2);
INSERT INTO `sys_auth_user_role` VALUES (4, 2, 2);
INSERT INTO `sys_auth_user_role` VALUES (5, 1, 3);
INSERT INTO `sys_auth_user_role` VALUES (6, 2, 3);
INSERT INTO `sys_auth_user_role` VALUES (7, 2, 4);
INSERT INTO `sys_auth_user_role` VALUES (8, 3, 4);
INSERT INTO `sys_auth_user_role` VALUES (9, 2, 5);
INSERT INTO `sys_auth_user_role` VALUES (10, 3, 5);
INSERT INTO `sys_auth_user_role` VALUES (11, 2, 6);
INSERT INTO `sys_auth_user_role` VALUES (12, 3, 6);
INSERT INTO `sys_auth_user_role` VALUES (13, 2, 7);
INSERT INTO `sys_auth_user_role` VALUES (14, 3, 7);
INSERT INTO `sys_auth_user_role` VALUES (15, 2, 8);
INSERT INTO `sys_auth_user_role` VALUES (16, 2, 9);
INSERT INTO `sys_auth_user_role` VALUES (17, 2, 10);
INSERT INTO `sys_auth_user_role` VALUES (18, 2, 11);
INSERT INTO `sys_auth_user_role` VALUES (19, 2, 12);
INSERT INTO `sys_auth_user_role` VALUES (20, 2, 13);
INSERT INTO `sys_auth_user_role` VALUES (21, 2, 14);
INSERT INTO `sys_auth_user_role` VALUES (22, 2, 15);
INSERT INTO `sys_auth_user_role` VALUES (23, 2, 16);
INSERT INTO `sys_auth_user_role` VALUES (24, 2, 17);
INSERT INTO `sys_auth_user_role` VALUES (25, 2, 18);
INSERT INTO `sys_auth_user_role` VALUES (26, 2, 19);
INSERT INTO `sys_auth_user_role` VALUES (27, 2, 20);
INSERT INTO `sys_auth_user_role` VALUES (28, 2, 21);
INSERT INTO `sys_auth_user_role` VALUES (29, 2, 22);
INSERT INTO `sys_auth_user_role` VALUES (30, 2, 23);
INSERT INTO `sys_auth_user_role` VALUES (31, 2, 24);
INSERT INTO `sys_auth_user_role` VALUES (32, 2, 25);
INSERT INTO `sys_auth_user_role` VALUES (33, 2, 26);
INSERT INTO `sys_auth_user_role` VALUES (34, 2, 27);
INSERT INTO `sys_auth_user_role` VALUES (35, 2, 28);
INSERT INTO `sys_auth_user_role` VALUES (36, 2, 29);

SET FOREIGN_KEY_CHECKS = 1;
