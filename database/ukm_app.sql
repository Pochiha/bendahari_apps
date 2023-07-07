/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ukm_app

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 07/07/2023 17:09:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_module_user
-- ----------------------------
DROP TABLE IF EXISTS `access_module_user`;
CREATE TABLE `access_module_user`  (
  `access_module_user_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `access_module_group_id` int NOT NULL,
  `access_module_id` int NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`access_module_user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_module_user
-- ----------------------------

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `building_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`building_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('CENSELORI', 'Bangunan Censelori', 'Chancellory', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-06 16:02:35', NULL, NULL);

-- ----------------------------
-- Table structure for building_level
-- ----------------------------
DROP TABLE IF EXISTS `building_level`;
CREATE TABLE `building_level`  (
  `building_level_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`building_level_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building_level
-- ----------------------------
INSERT INTO `building_level` VALUES ('ARAS_4', 'CENSELORI', 'Aras 4', 'Level 4', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for building_room
-- ----------------------------
DROP TABLE IF EXISTS `building_room`;
CREATE TABLE `building_room`  (
  `building_room_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_level_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `room` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_room_type_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`building_room_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building_room
-- ----------------------------
INSERT INTO `building_room` VALUES ('ROOM_8', 'ARAS_4', 'Bilik 8', 'RT0002', 'Bilik 8', NULL, NULL, 'active', '', '2023-07-04 17:15:42', NULL, '2023-07-04 17:15:44', NULL, NULL);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ems_username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_status_id` tinyint NULL DEFAULT NULL,
  `ua_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `online_status` enum('online','offline') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activation_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE,
  INDEX `employee_status_e_foreign`(`employee_status_id`) USING BTREE,
  INDEX `user_access_e_foreign`(`ua_id`) USING BTREE,
  CONSTRAINT `employee_status_e_foreign` FOREIGN KEY (`employee_status_id`) REFERENCES `general`.`employee_status` (`employee_status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_access_e_foreign` FOREIGN KEY (`ua_id`) REFERENCES `user_access` (`ua_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('DEVELOPER', 'syazwanishabudin@ukm.edu.my', '$2y$10$DE.J70QqH6YA756owKpwsuKfPa4jDzCRA/bc4k0yzKynqEb9u0f4.', NULL, 101, 'administrator', 'offline', '', NULL, 'DEVELOPER', '2023-06-13 10:49:44', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for employee_job_detail
-- ----------------------------
DROP TABLE IF EXISTS `employee_job_detail`;
CREATE TABLE `employee_job_detail`  (
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `employee_position_id` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_position_category_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_grading_code_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_position_grading_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_position_status_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `field_of_work` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_job_detail
-- ----------------------------
INSERT INTO `employee_job_detail` VALUES ('DEVELOPER', 'PENOLONG_PEGAWAI_TEKNOLOGI_MAKLUMAT', 'PP', 'F', '29', 'MYSTEP', 'membina serta menjaga sistem dan laman web', NULL, NULL, NULL, NULL, '2023-07-06 16:14:26', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for employee_personal_detail
-- ----------------------------
DROP TABLE IF EXISTS `employee_personal_detail`;
CREATE TABLE `employee_personal_detail`  (
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `postcode` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country_id` smallint NULL DEFAULT NULL,
  `citizenship_id` tinyint NULL DEFAULT NULL,
  `place_of_birth_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `race_id` tinyint NULL DEFAULT NULL,
  `academic_qualification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_personal_detail
-- ----------------------------
INSERT INTO `employee_personal_detail` VALUES ('DEVELOPER', 'UKM bangi', '123', '13', 103, 1, '6', '1983-03-31', 103, 'BACHELOR OF INFORMATION TECHNOLOGY (HONS) IN NETWORK TECHNOLOGY', NULL, NULL, 'active', '', '2023-07-06 16:18:43', NULL, '2023-07-03 16:00:19', NULL, NULL);

-- ----------------------------
-- Table structure for employee_profile
-- ----------------------------
DROP TABLE IF EXISTS `employee_profile`;
CREATE TABLE `employee_profile`  (
  `salutation_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `nric_type` enum('nric','passport') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nric` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `passport_issue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `passport_expired` date NULL DEFAULT NULL,
  `religion_id` tinyint NULL DEFAULT NULL,
  `gender_id` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `marital_status_id` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `disability_status_id` tinyint NULL DEFAULT NULL,
  `contact_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `office_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department_division_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department_unit_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`, `department_unit_id`) USING BTREE,
  CONSTRAINT `employee_ep_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_profile
-- ----------------------------
INSERT INTO `employee_profile` VALUES ('TAN_SERI', 'DEVELOPER', 'Developer', 'Developer', 'Ict', 'DEV12', 'nric', '123456121234', NULL, '2021-08-30', 101, 'M', 'M', 107, '01321192901', '752', 'BENDAHARI', 'BAHAGIAN_BAJET_DAN_PENJANAAN', 'UNIT_BAJET', NULL, 'DEVELOPER', '2023-07-04 16:17:04', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for employee_seating_detail
-- ----------------------------
DROP TABLE IF EXISTS `employee_seating_detail`;
CREATE TABLE `employee_seating_detail`  (
  `employee_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_level_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_room_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_seating_detail
-- ----------------------------
INSERT INTO `employee_seating_detail` VALUES ('DEVELOPER', 'CENSELORI', 'ARAS_4', 'ROOM_8', NULL, NULL, 'active', '', '2023-07-06 15:46:07', NULL, '2023-07-04 17:17:18', NULL, NULL);

-- ----------------------------
-- Table structure for employee_status
-- ----------------------------
DROP TABLE IF EXISTS `employee_status`;
CREATE TABLE `employee_status`  (
  `employee_status_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_status
-- ----------------------------
INSERT INTO `employee_status` VALUES (101, 'Active', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `employee_status` VALUES (102, 'Inactive', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2021-03-12 09:20:32', NULL, NULL);
INSERT INTO `employee_status` VALUES (103, 'Terminated', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2021-03-12 09:20:40', NULL, NULL);
INSERT INTO `employee_status` VALUES (104, 'Suspended', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2021-03-12 09:20:47', NULL, NULL);
INSERT INTO `employee_status` VALUES (105, 'Retired', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2021-03-12 09:20:57', NULL, NULL);
INSERT INTO `employee_status` VALUES (106, 'Deleted', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2021-03-12 10:43:45', NULL, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `student_status_id` tinyint NULL DEFAULT NULL,
  `student_entry_status` enum('new','transfer','progression') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `online_status` enum('online','offline','idle') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activation_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  INDEX `student_status_s_foreign`(`student_status_id`) USING BTREE,
  INDEX `student_status_package_index`(`student_id`, `student_status_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('192021294', 'nursyazwani811@gmail.com', '$2y$10$qkr41EMWuyRwAFYFhBBZIe8OR76hd7cAIM5LVEm.PRTvZXDiXw9rK', 101, 'progression', 'offline', NULL, 'Created by: IRWANDY', 'DEVELOPER', '2023-05-06 22:11:05', '', NULL, '', NULL, NULL);

-- ----------------------------
-- Table structure for student_profile
-- ----------------------------
DROP TABLE IF EXISTS `student_profile`;
CREATE TABLE `student_profile`  (
  `student_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `semester_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `citizenship_id` int NULL DEFAULT NULL,
  `nric_type` enum('nric','passport') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nric` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `passport_issue` timestamp(0) NULL DEFAULT NULL,
  `passport_due` timestamp(0) NULL DEFAULT NULL,
  `nationality_id` int NULL DEFAULT NULL,
  `religion_id` smallint NULL DEFAULT NULL,
  `gender_id` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `marital_status_id` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `disability_status_id` tinyint NULL DEFAULT NULL,
  `race_id` tinyint NULL DEFAULT NULL,
  `programme_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth_date` datetime(0) NULL DEFAULT NULL,
  `birth_place` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  INDEX `student_programme_package_index`(`student_id`, `programme_id`) USING BTREE,
  INDEX `student_semester_package_index`(`student_id`, `semester_id`) USING BTREE,
  INDEX `student_gender_package_index`(`student_id`, `gender_id`) USING BTREE,
  CONSTRAINT `student_sp_foreign` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_profile
-- ----------------------------
INSERT INTO `student_profile` VALUES ('192021294', 'NUR SYAZWANI SHABUDIN', 'NUR SYAZWANI SHABUDIN', '', NULL, 'fn', '0123235684', '1192', 1, 'nric', '001108140078', NULL, NULL, 234, 101, 'F', '1', 112, 101, 'CIT302', '2000-11-08 00:00:00', 'LOURDES CLINIC KL', 'Created by: IRWANDY', '', 'DEVELOPER', '2019-07-15 12:10:55', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for student_status
-- ----------------------------
DROP TABLE IF EXISTS `student_status`;
CREATE TABLE `student_status`  (
  `student_status_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`student_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_status
-- ----------------------------
INSERT INTO `student_status` VALUES (101, 'Active', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2022-08-09 12:16:21', NULL, NULL);
INSERT INTO `student_status` VALUES (102, 'Change Program', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (103, 'Expel', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (104, 'Terminated', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-17 17:46:13', NULL, NULL);
INSERT INTO `student_status` VALUES (105, 'Deceased', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (106, 'Completed', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (107, 'Graduated', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (108, 'Not Register', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (109, 'Dormant', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (110, 'Register', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (111, 'Suspended', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (112, 'Dismissal', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (113, 'Postponed', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (114, 'Withdraw', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (115, 'F Withdrawal', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (118, 'Not Enrolled', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);
INSERT INTO `student_status` VALUES (119, 'Final Dismissal', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2020-08-11 08:45:16', NULL, NULL);

-- ----------------------------
-- Table structure for user_access
-- ----------------------------
DROP TABLE IF EXISTS `user_access`;
CREATE TABLE `user_access`  (
  `ua_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ua_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_access
-- ----------------------------
INSERT INTO `user_access` VALUES ('admin_department', 'Administrator (Department)', 'active', NULL, 'DEVELOPER', '2020-06-23 01:44:59', NULL, NULL, NULL, NULL);
INSERT INTO `user_access` VALUES ('admin_faculty', 'Administrator (Faculty)', 'active', NULL, 'DEVELOPER', '2020-06-23 01:45:13', NULL, NULL, NULL, NULL);
INSERT INTO `user_access` VALUES ('admin_module', 'Administrator (Module)', 'active', NULL, 'DEVELOPER', '2020-06-23 01:44:26', NULL, NULL, NULL, NULL);
INSERT INTO `user_access` VALUES ('admin_page', 'Administrator (Page)', 'active', NULL, 'DEVELOPER', '2020-06-23 01:44:39', NULL, NULL, NULL, NULL);
INSERT INTO `user_access` VALUES ('administrator', 'Administrator', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', 'DEVELOPER', '2020-06-19 05:49:40', NULL, NULL);
INSERT INTO `user_access` VALUES ('audit', 'Audit', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);
INSERT INTO `user_access` VALUES ('developer', 'Developer', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);
INSERT INTO `user_access` VALUES ('guest', 'Guest', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);
INSERT INTO `user_access` VALUES ('moderator', 'Moderator', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);
INSERT INTO `user_access` VALUES ('staff', 'Staff', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);
INSERT INTO `user_access` VALUES ('superadmin', 'Super Administrator', 'active', NULL, 'ADMINISTRATOR', '2019-12-19 07:27:45', NULL, '2019-12-19 07:27:45', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
