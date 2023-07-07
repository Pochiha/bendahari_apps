/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : general

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 07/07/2023 17:07:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_module
-- ----------------------------
DROP TABLE IF EXISTS `access_module`;
CREATE TABLE `access_module`  (
  `access_module_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`access_module_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_module
-- ----------------------------

-- ----------------------------
-- Table structure for access_module_group
-- ----------------------------
DROP TABLE IF EXISTS `access_module_group`;
CREATE TABLE `access_module_group`  (
  `access_module_group_id` int NOT NULL AUTO_INCREMENT,
  `access_module_id` int NOT NULL,
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
  PRIMARY KEY (`access_module_group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_module_group
-- ----------------------------

-- ----------------------------
-- Table structure for building_room_type
-- ----------------------------
DROP TABLE IF EXISTS `building_room_type`;
CREATE TABLE `building_room_type`  (
  `building_room_type_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`building_room_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building_room_type
-- ----------------------------
INSERT INTO `building_room_type` VALUES ('RT0001', 'Office', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0002', 'Officer Room', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0003', 'Lecture Office', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0004', 'Pantry', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0005', 'Classroom', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0006', 'Auditorium', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0007', 'Multi Purpose Hall', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:02', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0008', 'Lab', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0009', 'Store', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0010', 'Praying Room', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0011', 'Meeting Room', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0012', 'Gallery', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0013', 'Service Shop', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0014', 'Library', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0015', 'Gym', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0016', 'Mosque', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0017', 'Workshop', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0018', 'Studio', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('RT0019', 'Server', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);
INSERT INTO `building_room_type` VALUES ('s', 'Other', 'active', '', '', 'ADMINISTRATOR', '2019-12-19 07:29:03', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for citizenship
-- ----------------------------
DROP TABLE IF EXISTS `citizenship`;
CREATE TABLE `citizenship`  (
  `citizenship_id` tinyint NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`citizenship_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of citizenship
-- ----------------------------
INSERT INTO `citizenship` VALUES (1, 'Warganegara', 'Local (Malaysian)', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:49:22', 'DEVELOPER', '2022-11-24 10:02:53', NULL, NULL);
INSERT INTO `citizenship` VALUES (2, 'Bukan Warganegara', 'International', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:49:22', 'DEVELOPER', '2022-11-24 10:03:04', NULL, NULL);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `country_id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `citizen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `iso_code2` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `iso_code3` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dial_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NOT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`country_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 373 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (101, 'Abu Dhabi', 'Abu Dhabi', 'Abu Dhabi', 'DH', 'ADH', '+971', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (102, 'Admiralty Islands', 'Kepulauan Admiralty', 'Admiralty Islands', 'AY', 'AYI', '+675', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (103, 'Afghanistan', 'Afghanistan', 'Afghan', 'AF', 'AFG', '+93', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (104, 'Al Ain', 'Al Ain', 'Al Ain', 'AA', 'AAN', '+971-3', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (105, 'Albania', 'Albania', 'Albanian', 'AL', 'ALB', '+355', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (106, 'Algeria', 'Algeria', 'Algerian', 'DZ', 'DZA', '+213', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (107, 'Andorra', 'Andorra', 'Andorran', 'AD', 'AND', '+376 ', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (108, 'Angola', 'Angola', 'Angolan', 'AO', 'AGO', '+244', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (109, 'Anguilla', 'Anguilla', 'Anguillan', 'AI', 'AIA', '+1-264', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (110, 'Antarctica', 'Antartika', 'Antartican', 'AQ', 'AQN', '+672', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (111, 'Antigua and Barbuda', 'Antigua dan Barbuda', 'Antiguan', 'AG', 'ATG', '+1-268', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (112, 'Argentina', 'Argentina', 'Argentinian', 'AR', 'ARG', '+54', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (113, 'Armenia', 'Armenia', 'Armenian', 'AM', 'ARM', '+374', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (114, 'Aruba', 'Aruba', 'Aruban', 'AW', 'ABW', '+297', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (115, 'Ascension Island', 'Pulau Ascension', 'Ascension Island', 'AC', 'ACI', '+290', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (116, 'Australia', 'Australia', 'Australian', 'AU', 'AUS', '+61', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (117, 'Austria', 'Austria', 'Austrian', 'AT', 'AUT', '+43', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (118, 'Azerbaijan', 'Azerbaijan', 'Azerbaijanian', 'AZ', 'AZE', '+994', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (119, 'Bahamas', 'Bahamas', 'Bahamas', 'BS', 'BHS', '+1-242', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (120, 'Bahrain', 'Bahrain', 'Bahrainian', 'BH', 'BHR', '+973', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (121, 'Bangladesh', 'Bangladesh', 'Bangladeshi', 'BD', 'BGD', '+880', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (122, 'Barbados', 'Barbados', 'Barbados', 'BB', 'BRB', '+1-246', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (123, 'Belgium', 'Belgium', 'Belgium', 'BE', 'BEL', '+32', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (124, 'Belize', 'Belize', 'Belize', 'BZ', 'BLZ', '+501', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (125, 'Benin', 'Benin', 'Benin', 'BJ', 'BEN', '+229', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (126, 'Bermuda', 'Bermuda', 'Bermuda', 'BM', 'BMU', '+1-441', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (127, 'Bhutan', 'Bhutan', 'Bhutan', 'BT', 'BTN', '+975', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (128, 'Bolivia', 'Bolivia', 'Bolivian', 'BO', 'BOL', '+591', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (129, 'Bosnia and Herzegovina', 'Bosnia dan Herzegovina', 'Bosnian', 'BA', 'BIH', '+387', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (130, 'Botswana', 'Botswana', 'Botswana', 'BW', 'BWA', '+267', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (131, 'Bouvet Island', 'Pulau Bouvet', 'Bouvet Island', 'BV', 'BVI', '+55', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (132, 'Brazil', 'Brazil', 'Brazilian', 'BR', 'BRA', '+55', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (133, 'British Indian Ocean Territory', 'Wilayah Lautan Hindi British', 'British Indian Ocean Territory', 'IO', 'IOT', '+246', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (134, 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei', 'BN', 'BRN', '+673', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (135, 'Bulgaria', 'Bulgaria', 'Bulgarian', 'BG', 'BGR', '+359', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (136, 'Burkina Faso', 'Burkina Faso', 'Burkina/faso', 'BF', 'BFA', '+226', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (137, 'Burundi', 'Burundi', 'Burundian', 'BI', 'BDI', '108', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (138, 'Byelorussia', 'Belarus', 'Byelorussian', 'BL', 'BYL', '+375', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (139, 'Cameroon', 'Republik Cameroon', 'Cameroon', 'CM', 'CMR', '+237', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (140, 'Canada', 'Kanada', 'Canadian', 'CA', 'CAN', '+1', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (141, 'Cape Verde', 'Republik Tanjung Verde', 'Cape Verde', 'CV', 'CPV', '+238', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (143, 'Cayman Islands', 'Kepulauan Cayman', 'Cayman Islands', 'KY', 'CYM', '+1-345', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (144, 'Central African Republic', 'Republik Afrika Tengah', 'African', 'CF', 'CAF', '+236', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (145, 'Chad', 'Republik Chad', 'Chad', 'TD', 'TCD', '+235', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (146, 'Chile', 'Republik Chile', 'Chile', 'CL', 'CHL', '+56', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (147, 'China', 'Republik Rakyat China', 'Chinese', 'CN', 'CHN', '+86', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (148, 'Christmas Island', 'Wilayah Pulau Krismas', 'Christmas Islands', 'CX', 'CXI', '+53', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (149, 'Cocos (Keeling) Islands', 'Wilayah Kepulauan Cocos (Keeling)', 'Cocos (keeling) Islands', 'CC', 'COC', '+61', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (150, 'Colombia', 'Republik Colombia', 'Colombian', 'CO', 'COL', '+57', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (151, 'Comoros', 'Kesatuan Comoros', 'Comoro Islands', 'KM', 'COM', '+269', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (152, 'Congo', 'Republik Congo', 'Congo', 'CG', 'COG', '+242', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (153, 'Cook Islands', 'Kepulauan Cook', 'Cook Islands', 'CK', 'COK', '+682', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (154, 'Costa Rica', 'Costa Rica', 'Costa Rican', 'CR', 'CRI', '+506', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (155, 'Croatia', 'Republik Croatia', 'Crotian', 'HR', 'HRV', '+385', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (156, 'Cuba', 'Republik Cuba', 'Cuban', 'CU', 'CUB', '+53', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (157, 'Cyprus', 'Republik Cyprus', 'Cyprus', 'CY', 'CYP', '+357', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (158, 'Czech Republic', 'Republik Czech', 'Czechoslovakian', 'CZ', 'CZE', '+420', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (159, 'Denmark', 'Denmark', 'Danish', 'DK', 'DNK', '+45', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (160, 'Djibouti', 'Republik Djibouti', 'Djibouti', 'DJ', 'DJI', '+253', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (161, 'Dominica', 'Komanwel Dominika', 'Dominican', 'DM', 'DMA', '+1-767', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (162, 'Dominican Republic', 'Republik Dominika', 'Dominican Republic', 'DO', 'DOM', '+1-809 and +1-829  ', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (163, 'Dubai', 'Dubai ', 'Dubai', 'DB', 'DBI', '+971-4', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (164, 'Timor-leste', 'Republik Demokratik Timor Leste ', 'East Timor', 'TL', 'ETL', '+670', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (165, 'Ecuador', 'Republik Ecuador ', 'Ecuador', 'EC', 'ECU', '+593 ', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (166, 'Egypt', 'Republik Arab Mesir', 'Egyptian', 'EG', 'EGY', '+20', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (167, 'El Salvador', 'Republik El Salvador', 'El Salvador', 'SV', 'SLV', '+503', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (168, 'England', 'England ', 'British', 'EN', 'ENG', '+44', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (169, 'Equatorial Guinea', 'Republik Guinea Khatulistiwa', 'Equatorial Guinea', 'GQ', 'GNQ', '+240', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (170, 'Eritrea', 'Eritrea ', 'Eritrea', 'ER', 'ERI', '+291', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (171, 'Estonia', 'Republik Estonia', 'Estonian', 'EE', 'EST', '+372', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (172, 'Ethiopia', 'Ethiopia ', 'Ethiopian', 'ET', 'ETH', '+251', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (173, 'Faeroe Islands', 'Kepulauan Faroe', 'Faeroe Islands', 'FO', 'FRO', '+298', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (174, 'Falkland Islands (Malvinas)', 'Kepulauan Falkland', 'Falkland Islands', 'FK', 'FLK', '+500', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (175, 'Fiji', 'Republik Fiji', 'Fijian', 'FJ', 'FJI', '+679', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (176, 'Finland', 'Republik Finland', 'Finnish', 'FI', 'FIN', '+358', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (177, 'France', 'Republik Perancis', 'French', 'FR', 'FRA', '+33', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (178, 'French Guiana', 'Guiana Perancis', 'French Guiana', 'GF', 'GUF', '+594', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (179, 'French Polynesia', 'Polinesia Perancis', 'French Polynesia', 'PF', 'PYF', '+689', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (180, 'French Southern Territories', 'Wilayah Selatan Perancis', 'French Southern Territories', 'TF', 'TFR', '+262', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (181, 'Fujairah', 'Fujairah ', 'Fujairah', 'FH', 'FJH', '+971-70', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (182, 'Gabon', 'Republik Gabon', 'Gabon', 'GA', 'GAB', '+241', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (183, 'Gambia', 'Republik Gambia', 'Gambian', 'GM', 'GMB', '+220', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (184, 'Georgia', 'Georgia', 'Georgian', 'GE', 'GEO', '+995', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (185, 'Germany', 'Jerman ', 'German', 'DE', 'DEU', '+49', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (186, 'Ghana', 'Republik Ghana', 'Ghana', 'GH', 'GHA', '+233', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (187, 'Gibraltar', 'Gibraltar ', 'Gibraltar', 'GI', 'GIB', '+350', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (188, 'Greece', 'Republik Yunani', 'Greek', 'GR', 'GRC', '+30', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (189, 'Greenland', 'Greenland ', 'Greenland', 'GL', 'GRL', '+299', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (190, 'Grenada', 'Grenada', 'Grenada', 'GD', 'GRD', '+1-473', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (191, 'Guadeloupe', 'Guadeloupe ', 'Guadeloupe', 'GP', 'GLP', '+590', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (192, 'Guam', 'Guam ', 'Guam', 'GU', 'GUM', '+1-671', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (193, 'Guatemala', 'Republik Guatemala', 'Guatemala', 'GT', 'GTM', '+502', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (194, 'Guinea', 'Republik Guinea', 'Guinea', 'GN', 'GIN', '+245', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (195, 'Guinea-bissau', 'Republik Guinea-Bissau', 'Guinea-Bissau', 'GW', 'GNB', '+245', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (196, 'Guyana', 'Republik Kerjasama Guyana', 'Guyana', 'GY', 'GUY', '+592', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (197, 'Haiti', 'Republik Haiti', 'Haitian', 'HT', 'HTI', '+509', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (198, 'Heard Island and Mcdonald Islands', 'Pulau Heard dan Kepulauan McDonald', 'Heard & Mcdonald Islands', 'HM', 'HMI', '+672', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (199, 'Honduras', 'Republik Honduras', 'Honduras', 'HN', 'HND', '+504', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (200, 'Hong Kong', 'Hong Kong', 'Hong Kong', 'HK', 'HKG', '+852', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (201, 'Hungary', 'Republik Hungary', 'Hungarian', 'HU', 'HUN', '+36', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (202, 'Iceland', 'Republik Iceland', 'Iceland', 'IS', 'ISL', '+354', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (203, 'India', 'India', 'Indian', 'IN', 'IND', '+91', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (204, 'Indonesia', 'Indonesia', 'Indonesian', 'ID', 'IDN', '+62', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (205, 'Iran, Islamic Republic Of', 'Republik Islam Iran', 'Iranian', 'IR', 'IRN', '+98', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (206, 'Iraq', 'Iraq ', 'Iraqi', 'IQ', 'IRQ', '+964', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (207, 'Ireland', 'Republik Ireland', 'Irish', 'IE', 'IRL', '+353', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (208, 'Israel', 'Israel', 'Israel', 'IL', 'ISR', '+972', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (209, 'Italy', 'Itali', 'Italian', 'IT', 'ITA', '+39', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (210, 'Ivory Coast', 'Republik Côte d\'Ivoire', 'Ivory Coast', 'IC', 'IVC', '+225', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (211, 'Jamaica', 'Jamaica ', 'Jamaican', 'JM', 'JAM', '+1-876', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (212, 'Japan', 'Jepun ', 'Japanese', 'JP', 'JPN', '+81', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (213, 'Jordan', 'Jordan ', 'Jordan', 'JO', 'JOR', '+962', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (214, 'Cambodia', 'Kemboja', 'Cambodian', 'KH', 'KHM', '116', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (215, 'Kazakhstan', 'Kazakhstan ', 'Kazakhstan', 'KZ', 'KAZ', '+7', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (216, 'Kenya', 'Republik Kenya', 'Kenyan', 'KE', 'KEN', '+254', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (217, 'Kirghizia', 'Kirghizia', 'Kirghizia', 'KA', 'KGA', '+996', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (218, 'Kiribati', 'Kiribati ', 'Kiribati', 'KI', 'KIR', '+686', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (219, 'Korea, Democratic People\'s Republic of', 'Korea Utara', 'North Korean', 'KP', 'PRK', '+850', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (220, 'Korea, Republic of ', 'Korea Selatan', 'South Korean', 'KR', 'KOR', '+82', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (221, 'Kuwait', 'Kuwait', 'Kuwaiti', 'KW', 'KWT', '+965', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (222, 'Lao People\'s Democratic Republic', 'Republik Demokratik Rakyat Laos', 'Laos', 'LA', 'LAO', '+856', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (223, 'Latvia', 'Republik Latvia', 'Latvia', 'LV', 'LVA', '+371', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (224, 'Lebanon', 'Lubnan ', 'Lebanese', 'LB', 'LBN', '+961', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (225, 'Lesotho', 'Lesotho ', 'Lesotho', 'LS', 'LSO', '+266', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (226, 'Liberia', 'Liberia ', 'Liberian', 'LR', 'LBR', '+231', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (227, 'Libyan Arab Jamahiriya', 'Jamahiriya Arab Libya', 'Libyan', 'LY', 'LBY', '+218', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (228, 'Liechtenstein', 'Liechtenstein ', 'Liechtenstein', 'LI', 'LIE', '+423', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (229, 'Lithuania', 'Lithuania', 'Lithuanian', 'LT', 'LTU', '+370', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (230, 'Luxembourg', 'Luxembourg ', 'Luxembourg', 'LU', 'LUX', '+352', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (231, 'Macao', 'Macau', 'Macao', 'MO', 'MAC', '+853', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (232, 'Madagascar', 'Republik Madagaskar', 'Madagascar/Malagasy', 'MG', 'MDG', '+261', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (233, 'Malawi', 'Malawi', 'Malawian', 'MW', 'MWI', '+265', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (234, 'Malaysia', 'Malaysia', 'Malaysian', 'MY', 'MYS', '+60', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (235, 'Maldives', 'Maldives ', 'Maldives', 'MV', 'MDV', '+960', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (236, 'Mali', 'Republik Mali ', 'Mali', 'ML', 'MLI', '+223', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (237, 'Malta', 'Republik Malta', 'Malta', 'MT', 'MLT', '+356', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (238, 'Marshall Islands', 'Republik Kepulauan Marshall', 'Marshall Islands', 'MH', 'MHL', '+692', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (239, 'Martinique', 'Martinique ', 'Martinique', 'MQ', 'MTQ', '+596', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (240, 'Mauritania', 'Republik Islam Mauritania', 'Mauritania', 'MR', 'MRT', '+222', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (241, 'Mauritius', 'Mauritius ', 'Mauritius', 'MU', 'MUS', '+230', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (242, 'Mayotte', 'Mayotte ', 'Mayotte', 'YT', 'YTE', '+269', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (243, 'Mexico', 'Mexico ', 'Mexican', 'MX', 'MEX', '+52', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (244, 'Micronesia, Federated States Of', 'Persekutuan Micronesia', 'Micronesian', 'FM', 'FSM', '+691', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (245, 'Midway Island', 'Pulau Midway', 'Midway Island', 'MI', 'MID', '+1 808', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (246, 'Moldova, Republic Of', 'Republik Moldova', 'Moldavia', 'MD', 'MDA', '+373', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (247, 'Monaco', 'Monaco ', 'Monaco', 'MC', 'MCO', '+377', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (248, 'Mongolia', 'Mongolia ', 'Mongol', 'MN', 'MNG', '+976', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (249, 'Montserrat', 'Montserrat ', 'Montserrat', 'MS', 'MSR', '+1-664', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (250, 'Morocco', 'Maghribi ', 'Moroccian', 'MA', 'MAR', '+212', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (251, 'Mozambique', 'Mozambique ', 'Mozambique', 'MZ', 'MOZ', '+258', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (252, 'Myanmar', 'Myanmar ', 'Myanmese', 'MM', 'MMR', '+95', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (253, 'Namibia', 'Republik Namibia', 'Namibian', 'NA', 'NAM', '+264', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (254, 'Nauru', 'Republik Nauru', 'Nauru', 'NR', 'NRU', '+674', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (255, 'Nepal', 'Nepal ', 'Nepalese', 'NP', 'NPL', '+977', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (256, 'Netherlands', 'Belanda ', 'Netherlands', 'NL', 'NLD', '+31', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (257, 'Netherlands Antilles', 'Antillen Belanda', 'Netherlands Antilles', 'AN', 'ANT', '+599', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (258, 'New Caledonia', 'New Caledonia', 'New Caledonian', 'NC', 'NCL', '+687', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (259, 'New Zealand', 'New Zealand', 'New Zealand', 'NZ', 'NZL', '+64', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (260, 'Nicaragua', 'Nicaragua', 'Nicaraguan', 'NI', 'NIC', '+505', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (261, 'Niger', 'Republik Niger', 'Niger', 'NE', 'NER', '+227', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (262, 'Nigeria', 'Nigeria ', 'Nigerian', 'NG', 'NGA', '+234', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (263, 'Niue', 'Niue ', 'Niue', 'NU', 'NIU', '+683', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (264, 'Norfolk Island', 'Pulau Norfolk', 'Norfolk Island', 'NF', 'NFK', '+672', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (266, 'Northern Mariana Islands', 'Kepulauan Mariana Utara', 'Northern Mariana Islands', 'MP', 'MNP', '+1-670', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (267, 'Norway', 'Norway ', 'Norwegian', 'NO', 'NOR', '+47', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (268, 'Oman', 'Oman ', 'Omani', 'OM', 'OMN', '+968', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (269, 'Pakistan', 'Pakistan ', 'Pakistan', 'PK', 'PAK', '+92', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (270, 'Palau', 'Palau ', 'Palau', 'PW', 'PLW', '+680', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (271, 'Panama', 'Republik Panama', 'Panama', 'PA', 'PAN', '+507', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (272, 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'PG', 'PNG', '+675', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (273, 'Paraguay', 'Paraguay ', 'Paraguay', 'PY', 'PRY', '+595', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (274, 'Peru', 'Peru', 'Peruvian', 'PE', 'PER', '+51', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (275, 'Philippines', 'Filipina', 'Philippinian', 'PH', 'PHL', '+63', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (276, 'Pitcairn', 'Kepulauan Pitcairn ', 'Pitcairn', 'PN', 'PCN', '612', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (277, 'Poland', 'Poland ', 'Polish', 'PL', 'POL', '+48', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (278, 'Portugal', 'Portugal ', 'Portugese', 'PT', 'PRT', '+351', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (279, 'Puerto Rico', 'Puerto Rico', 'Puerto Rican', 'PR', 'PRI', '+1-787 or +1-939', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (280, 'Qatar', 'Qatar ', 'Qatar', 'QA', 'QAT', '+974 ', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (281, 'Ras Al Khaimah', 'Ras Al Khaimah', 'Ras Al Khaimah', 'RK', 'RAK', '+971-77', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (282, 'Reunion', 'Reunion ', 'Reunion Island', 'RE', 'REU', '+262', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (283, 'Romania', 'Romania', 'Romanian', 'RO', 'ROM', '+40', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (284, 'Russian Federation', 'Persekutuan Rusia', 'Russian', 'RU', 'RUS', '+7', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (285, 'Rwanda', 'Republik Rwanda', 'Rwanda', 'RW', 'RWA', '+250', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (286, 'Samoa American', 'Samoa Amerika', 'American Samoa', 'AS', 'ASM', '16', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (287, 'Samoa Western', 'Samoa Barat ', 'Samoa Western', 'WS', 'WSM', '+685', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (288, 'San Marino', 'San Marino', 'San Marino', 'SM', 'SMR', '+378', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (289, 'Sao Tome And Principe', 'São Tomé dan Príncipe', 'Sao Tome & Principe', 'ST', 'STP', '+239', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (290, 'Saudi Arabia', 'Arab Saudi ', 'Saudi Arabia', 'SA', 'SAU', '+966', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (291, 'Scotland', 'Scotland ', 'Scottish', 'CT', 'SCT', '+44', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (292, 'Senegal', 'Republik Senegal', 'Senegal', 'SN', 'SEN', '+221', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (293, 'Seychelles', 'Republik Seychelles', 'Seychelles', 'SC', 'SYC', '+248', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (294, 'Sharjah', 'Sharjah ', 'Sharjah', 'HJ', 'HJH', '+971-6', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (295, 'Sierra Leone', 'Republik Sierra Leone', 'Sierra Leone', 'SL', 'SLE', '+232', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (296, 'Singapore', 'Singapura', 'Singaporean', 'SG', 'SGP', '+65', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (297, 'Slovakia', 'Republik Slovakia', 'Slovakia', 'SK', 'SVK', '+421', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (298, 'Slovenia', 'Republik Slovenia', 'Slovenia', 'SI', 'SVN', '+386', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (299, 'Solomon Islands', 'Kepulauan Solomon', 'Solomon Islands', 'SB', 'SLB', '+677', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (300, 'Somalia', 'Somalia ', 'Somalian', 'SO', 'SOM', '+252', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (301, 'South Africa', 'Afrika Selatan', 'South African', 'ZA', 'ZAF', '+27', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (302, 'South Georgia', 'Georgia Selatan', 'South Georgia', 'GS', 'GSW', '+500', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (303, 'South Sandwich Islands', 'Kepulauan Sandwich Selatan', 'South Sandwich Islands', 'SW', 'SSI', '+500', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (304, 'Soviet Union', 'Kesatuan Soviet', 'Soviet', 'SU', 'SUN', '+7', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (305, 'Spain', 'Sepanyol', 'Spanish', 'ES', 'ESP', '+34', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (306, 'Sri Lanka', 'Sri Lanka', 'Sri Lankan', 'LK', 'LKA', '+94', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (307, 'Saint Helena', 'Saint Helena', 'St Helena', 'SH', 'SHN', '+290', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (308, 'Saint Kitts and Nevis', 'Saint Kitts dan Nevis', 'St Kitts/nevis', 'KN', 'KNA', '+1-869', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (309, 'Saint Lucia', 'Saint Lucia', 'St Lucia', 'LC', 'LCA', '+1-758', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (310, 'Saint Pierre and Miquelon', 'Saint-Pierre dan Miquelon', 'St Pierre', 'PM', 'SPM', '+508', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (311, 'Saint Vincent and the Grenadines', 'Saint Vincent dan Kepulauan Grenadine', 'St Vincent', 'VC', 'VCT', '+1-784', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (312, 'Sudan', 'Republik Sudan', 'Sudanese', 'SD', 'SDN', '+249', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (313, 'Suriname', 'Suriname', 'Suriname', 'SR', 'SUR', '+597', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (314, 'Svalbard and Jan Mayen', 'Svalbard dan Jan Mayen', 'Svalbard & Jan Mayen Islands', 'SJ', 'SJM', '744', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (315, 'Swaziland', 'Swaziland', 'Swaziland', 'SZ', 'SWZ', '+268', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (316, 'Sweden', 'Sweden ', 'Swedish', 'SE', 'SWE', '+46', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (317, 'Switzerland', 'Switzerland', 'Swiss', 'CH', 'CHE', '+41', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (318, 'Syrian Arab Republic', 'Republik Arab Syria', 'Syrian', 'SY', 'SYR', '+963', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (319, 'Taiwan, Province of China', 'Republik China di Taiwan', 'Taiwanese', 'TW', 'TWN', '+886', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (320, 'Tajikistan', 'Tajikistan', 'Tajikstan', 'TJ', 'TJK', '+992', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (321, 'Tanzania, United Republic Of', 'Republik Bersatu Tanzania', 'Tanzania', 'TZ', 'TZA', '+255', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (322, 'Thailand', 'Thailand', 'Thailand', 'TH', 'THA', '+66', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (323, 'Togo', 'Republik Togo', 'Togo', 'TG', 'TGO', '768', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (324, 'Tokelau', 'Tokelau ', 'Tokelau Islands', 'TK', 'TKL', '+690', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (325, 'Tonga', 'Tonga ', 'Tonga', 'TO', 'TON', '+676', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (326, 'Trinidad and Tobago', 'Republik Trinidad dan Tobago', 'Trinidad & Tobago', 'TT', 'TTO', '+1-868', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (327, 'Tunisia', 'Republik Tunisia', 'Tunisian', 'TN', 'TUN', '+216', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (328, 'Turkey', 'Republik Turki', 'Turkish', 'TR', 'TUR', '+90', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (329, 'Turkmenistan', 'Republik Turkmenistan', 'Turkmenistan', 'TM', 'TKM', '+993', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (330, 'Turks and Caicos Islands', 'Kepulauan Turks dan Caicos', 'Turks & Caicos Islands', 'TC', 'TCA', '+1-649', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (331, 'Tuvalu', 'Tuvalu', 'Tuvalu', 'TV', 'TUV', '+688', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (332, 'Uganda', 'Republik Uganda', 'Uganda', 'UG', 'UGA', '+256', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (333, 'Ukraine', 'Ukraina', 'Ukraine', 'UA', 'UKR', '+380', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (334, 'Umm Al Qaiwain', 'Umm al-Qaiwain ', 'Umm Al Qaiwain', 'UQ', 'UAQ', '', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (335, 'United Arab Emirates', 'Emiriah Arab Bersatu', 'United Arab Emirates', 'AE', 'ARE', '+971', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (336, 'United Kingdom', 'United Kingdom', 'United Kingdom', 'GB', 'GBR', '+44', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (337, 'United States', 'Amerika Syarikat', 'American', 'US', 'USA', '+1', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (338, 'United States Minor Outlying Islands', 'Kepulauan Terluar Kecil Amerika Syarikat', 'United States Minor Outlying Islands', 'UM', 'USM', '+011', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (339, 'Uruguay', 'Uruguay ', 'Uruguay', 'UY', 'URY', '+598', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (340, 'Uzbekistan', 'Republik Uzbekistan', 'Uzbekistan', 'UZ', 'UZB', '+998', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (341, 'Vanuatu', 'Vanuatu', 'Vanuatu', 'VU', 'VUT', '+678', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (342, 'Holy See (vatican City State)', 'Negara Kota Vatican', 'Vatican City', 'VA', 'VAT', '+418', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (343, 'Venezuela', 'Venezuela', 'Venezuela', 'VE', 'VEN', '+58', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (344, 'Viet Nam', 'Vietnam ', 'Vietnamese', 'VN', 'VNM', '+84', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (345, 'Virgin Islands, British', 'Kepulauan Virgin British', 'Virgin Islands Uk', 'VG', 'VGB', '+1-284', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (346, 'Wake Island', 'Pulau Wake', 'Wake Islands', 'WI', 'WID', '+1808', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (347, 'Wales', 'Wales ', 'Welsh', 'WA', 'WAL', '+44', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (348, 'Wallis And Futuna', 'Kepulauan Wallis dan Futuna ', 'Wallis & Futuna Island', 'WF', 'WLF', '+681', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (349, 'Western Sahara', 'Sahara Barat', 'Western Sahara', 'EH', 'ESH', '732', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (350, 'Yemen', 'Yaman', 'Republic Of Yemen', 'YE', 'YEM', '+967', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (351, 'Macedonia, The Former Yugoslav Republic of', 'Republik Macedonia Utara', 'Yugoslavia', 'MK', 'MKD', '807', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (352, 'Zaire', 'Zaire ', 'Zaire', 'ZI', 'ZIR', '+243', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (353, 'Zambia', 'Republik Zambia', 'Zambia', 'ZM', 'ZMB', '+260', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (354, 'Zimbabwe', 'Republik Zimbabwe ', 'Zimbabwe', 'ZW', 'ZWE', '+263', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (355, 'Palestinian Territory, Occupied', 'Negara Palestina ', 'Palestine', 'PS', 'PLS', '+970', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (356, 'West Africa', 'Afrika Barat', 'West African', 'WR', 'WFR', '', '', '', 'inactive', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (357, 'Others', 'Lain-lain', 'Others', 'OT', 'OTH', '', '', '', 'inactive', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (358, 'Undefined', 'Tidak diketahui', 'Undefined', 'UD', 'UND', '', '', '', 'inactive', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (359, 'Serbia and Montenegro', 'Serbia dan Montenegro', 'Republic Of Serbia', 'CS', 'RCS', '+381', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (360, 'South Sudan', 'Republik Sudan Selatan', 'South Sudanese', 'SS', 'SSD', '211', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (361, 'Congo, The Democratic Republic of the', 'Republik Demokratik Congo ', 'Dr Congo', 'CD', 'COD', '180', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (362, 'Kyrgyzstan', 'Kyrgyzstan ', 'Kyrgyzstan', 'KG', 'KGZ', '417', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (363, 'Cote D\'ivoire', 'Republik Côte d\'Ivoire', 'Republique De Cote D\'ivoire', 'CI', 'CIV', '384', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (370, 'Virgin Islands, U.S.', 'Kepulauan Virgin Amerika Syarikat', 'Virgin Islands Us', 'VI', 'VIR', '850', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (371, 'Virgin Islands, U.S.', 'Republik Belarus', 'Belarusian', 'BY', 'BLR', '112', '', '', 'active', 'DEVELOPER', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `country` VALUES (372, 'test', 'test2', 'test', 'TS', 'TSR', '+0123', 'dsdsds', '', 'deleted', 'DEVELOPER', '0000-00-00 00:00:00', 'DEVELOPER', '0000-00-00 00:00:00', 'DEVELOPER', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('BENDAHARI', 'Jabatan Bendahari', 'JABATAN BENDAHARI', NULL, NULL, 'active', 'DEVELOPER', '2023-06-21 12:58:32', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for department_division
-- ----------------------------
DROP TABLE IF EXISTS `department_division`;
CREATE TABLE `department_division`  (
  `department_division_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `department__id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
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
  PRIMARY KEY (`department_division_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department_division
-- ----------------------------
INSERT INTO `department_division` VALUES ('BAHAGIAN_PENTADBIRAN_DAN_JAMINAN_KUALITI', 'BENDAHARI', 'Bahagian Pentadbiran Dan Jaminan Kualiti', 'BAHAGIAN PENTADBIRAN DAN JAMINAN KUALITI', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:19:22', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_AKAUN_DAN_PELABURAN', 'BENDAHARI', 'Bahagian Akaun Dan Pelaburan', 'BAHAGIAN AKAUN DAN PELABURAN', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:19:43', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_BAJET_DAN_PENJANAAN', 'BENDAHARI', 'Bahagian Bajet Dan Penjanaan', 'BAHAGIAN BAJET DAN PENJANAAN', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:20:04', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_ASSET', 'BENDAHARI', 'Bahagian Asset', 'BAHAGIAN ASSET', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:20:17', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_PEROLEHAN', 'BENDAHARI', 'Bahagian Perolehan', 'BAHAGIAN PEROLEHAN', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:20:27', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_BAYARAN', 'BENDAHARI', 'Bahagian Bayaran', 'BAHAGIAN BAYARAN', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:20:44', NULL, NULL);
INSERT INTO `department_division` VALUES ('BAHAGIAN_HASIL', 'BENDAHARI', 'Bahagian Hasil', 'BAHAGIAN HASIL', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:20:55', NULL, NULL);

-- ----------------------------
-- Table structure for department_unit
-- ----------------------------
DROP TABLE IF EXISTS `department_unit`;
CREATE TABLE `department_unit`  (
  `department_unit_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `department_division_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
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
  PRIMARY KEY (`department_unit_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department_unit
-- ----------------------------
INSERT INTO `department_unit` VALUES ('UNIT_PENTADBIRAN', 'BAHAGIAN_PENTADBIRAN_DAN_JAMINAN_KUALITI', 'Unit Pentadbiran', 'UNIT PENTADBIRAN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:22:35', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_JAMINAN_KUALITI', 'BAHAGIAN_PENTADBIRAN_DAN_JAMINAN_KUALITI', 'Unit Jaminan Kualiti', 'UNIT JAMINAN KUALITI', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:27:22', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_AKAUN', 'BAHAGIAN_AKAUN_DAN_PELABURAN', 'Unit Akaun', 'UNIT AKAUN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:27:36', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PELABURAN', 'BAHAGIAN_AKAUN_DAN_PELABURAN', 'Unit Pelaburan', 'UNIT PELABURAN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:40:34', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_BAJET', 'BAHAGIAN_BAJET_DAN_PENJANAAN', 'Unit Bajet', 'UNIT BAJET', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:40:44', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PENGURUSAN_TABUNG_DAN_PELABURAN ', 'BAHAGIAN_BAJET_DAN_PENJANAAN', 'Unit Pengurusan Tabung Dan Pelaburan ', 'UNIT PENGURUSAN TABUNG DAN PELABURAN ', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:41:12', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PENJANAAN_PENDAPATAN', 'BAHAGIAN_BAJET_DAN_PENJANAAN', 'Unit Penjanaan Pendapatan', 'UNIT PENJANAAN PENDAPATAN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:41:49', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PENGURUSAN_ASET', 'BAHAGIAN_ASSET', 'Unit Pengurusan Aset', 'UNIT PENGURUSAN ASET', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:42:04', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PENGURUSAN_STOR', 'BAHAGIAN_ASSET', 'Unit Pengurusan Stor', 'UNIT PENGURUSAN STOR', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:42:20', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_PENGURUSAN_PELUPUSAN', 'BAHAGIAN_ASSET', 'Unit Pengurusan Pelupusan', 'UNIT PENGURUSAN PELUPUSAN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:42:37', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_GAJI', 'BAHAGIAN_BAYARAN', 'Unit Gaji', 'UNIT GAJI', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:42:44', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_ELAUN', 'BAHAGIAN_BAYARAN', 'Unit Elaun', 'UNIT ELAUN', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:42:54', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_BAYARAN_PEMBEKAL', 'BAHAGIAN_BAYARAN', 'Unit Bayaran Pembekal', 'UNIT BAYARAN PEMBEKAL', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:43:12', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_KEWANGAN_PELAJAR', 'BAHAGIAN_HASIL', 'Unit Kewangan Pelajar', 'UNIT KEWANGAN PELAJAR', '', '', '', '', '0000-00-00 00:00:00', '', '2023-07-04 16:43:26', '', NULL);
INSERT INTO `department_unit` VALUES ('UNIT_KAWALAN_KREDIT', 'BAHAGIAN_HASIL', 'Unit Kawalan Kredit', 'UNIT KAWALAN KREDIT', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:43:42', NULL, NULL);
INSERT INTO `department_unit` VALUES ('UNIT_KUTIPAN_HASIL', 'BAHAGIAN_HASIL', 'Unit Kutipan Hasil', 'UNIT KUTIPAN HASIL', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-07-04 16:44:01', NULL, NULL);

-- ----------------------------
-- Table structure for disability_status
-- ----------------------------
DROP TABLE IF EXISTS `disability_status`;
CREATE TABLE `disability_status`  (
  `disability_status_id` tinyint NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`disability_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11123136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disability_status
-- ----------------------------
INSERT INTO `disability_status` VALUES (101, 'Bisu', 'Mute', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:25:44', NULL, NULL);
INSERT INTO `disability_status` VALUES (102, 'Gagap', 'Stammer', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:25:47', NULL, NULL);
INSERT INTO `disability_status` VALUES (103, '\r\nKecacatan Kaki', 'Foot Deformity', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:25:57', NULL, NULL);
INSERT INTO `disability_status` VALUES (104, '\r\nKecacatan Tangan', 'Hand Deformity', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:26:04', NULL, NULL);
INSERT INTO `disability_status` VALUES (105, '\r\nLumpuh', 'Paralyse', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:26:20', NULL, NULL);
INSERT INTO `disability_status` VALUES (106, 'Lain-lain', 'Others', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:26:25', NULL, NULL);
INSERT INTO `disability_status` VALUES (107, 'Normal', 'Normal', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:26:35', NULL, NULL);
INSERT INTO `disability_status` VALUES (108, 'Buta', 'Blind', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:26:38', NULL, NULL);
INSERT INTO `disability_status` VALUES (109, 'Kabur Penglihatan', 'Blurred Vision', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:27:07', NULL, NULL);
INSERT INTO `disability_status` VALUES (110, 'Buta Warna', 'Colour Blind', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:27:13', NULL, NULL);
INSERT INTO `disability_status` VALUES (111, 'Pekak', 'Deaf', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:27:22', NULL, NULL);
INSERT INTO `disability_status` VALUES (112, 'Normal', 'Normal', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 12:52:26', 'DEVELOPER', '2022-11-23 16:27:37', NULL, NULL);

-- ----------------------------
-- Table structure for education_qualification
-- ----------------------------
DROP TABLE IF EXISTS `education_qualification`;
CREATE TABLE `education_qualification`  (
  `education_qualification_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`education_qualification_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_qualification
-- ----------------------------
INSERT INTO `education_qualification` VALUES ('PMR', 'Lower Secondary Assessment', 'Penilaian Menengah Rendah (PMR)', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:30:23', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('SPM', 'Malaysian Certificate of Education (SPM)', 'Sijil Pelajaran Malaysia (SPM)', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:30:35', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('STPM', 'Malaysian Higher Certificate of Education (STPM)', 'Sijil Tinggi Pelajaran Malaysia (STPM)', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:30:42', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('DIPLOM', 'DIPLOMA', 'DIPLOMA', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:37:15', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('DEGREE', 'DEGREE', 'IJAZAH SARJANA MUDA', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:37:26', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('MASTER', 'MASTER', 'IJAZAH SARJANA', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:37:31', NULL, NULL);
INSERT INTO `education_qualification` VALUES ('PHD', 'PHD', 'IJAZAH KEDOKTORAN', NULL, NULL, 'active', '', '0000-00-00 00:00:00', NULL, '2023-06-19 10:37:35', NULL, NULL);

-- ----------------------------
-- Table structure for employee_grading_code
-- ----------------------------
DROP TABLE IF EXISTS `employee_grading_code`;
CREATE TABLE `employee_grading_code`  (
  `employee_grading_code_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_grading_code_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_grading_code
-- ----------------------------
INSERT INTO `employee_grading_code` VALUES ('A', 'Vehicle', 'Pengangkutan', NULL, NULL, NULL, 'DEVELOPER', '2023-06-19 10:27:00', NULL, NULL, NULL, NULL);
INSERT INTO `employee_grading_code` VALUES ('B', 'Talent and Art', 'Bakat dan seni', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('C', 'Science', 'Sains', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('D', 'Education', 'Pendidikan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('DG/DG', 'Graduate & Non-Graduate Education', 'Pendidikan Berijazah & Bukan Berijazah', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_grading_code` VALUES ('DH', 'Higher Education', 'Pendidikan Pengajian Tinggi', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('DM', 'UKM\'s lecturer', 'Pensyarah UKM', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('DS', 'University lecturer', 'Pensyarah Universiti', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('DU', 'Medical Lecturer', 'Pensyarah Perubatan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('DUG', 'Dental Lecturer', 'Pensyarah Pergigian', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('E', 'Economy', 'Ekonomi', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('F', 'Information system', 'Sistem Maklumat', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('FT', 'Technical Information Systems', 'Sistem Maklumat Teknikal', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('G', 'Agriculture', 'Pertanian', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('J', 'Engineering', 'Kejuruteraan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('K', 'Security and Civil Defense', 'Keselamatan dan Pertahanan Awam', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('KB', 'Firefighters', 'Bomba', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('KP', 'Security Administration', 'Pentadbiran Keselamatan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('KX', 'Prison', 'Penjara', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('L', 'Legislation and Judiciary', 'Perundangan dan Kehakiman', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('LS', 'Sharia Law', 'Perundangan Syariah', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('M', 'Administration and Diplomacy', 'Tadbir dan Diplomatik', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('N', 'Administration and Support', 'Pentadbiran dan Sokongan ', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('NP', 'Chieftain', 'Penghulu', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('NT', 'Land Administration', 'Pentadbiran Tanah', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('P', 'Prevention', 'Pencegahan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('Q', 'Research and development', 'Penyelidikan dan Pembangunan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('R', 'Skilled/Semi-Skilled/Unskilled', 'Mahir/Separuh Mahir/Tidak Mahir', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('S', 'Social', 'Sosial', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('U', 'Medical and Health', 'Perubatan dan Kesihatan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('UD', 'Medical officer', 'Pegawai Perubatan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('W', 'Financial', 'Kewangan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('WK', 'Financial', 'Kewangan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('X', 'Maritime Enforcement', 'Penguatkuasa Maritim', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('Y', 'Police', 'Polis', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('YA', 'Police officer', 'Pegawai Polis', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('YP', 'Orang Asli Police', 'Polis Orang Asli', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('YT', 'Additional Police', 'Polis Tambahan', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);
INSERT INTO `employee_grading_code` VALUES ('Z', 'Malaysian Armed Forces', 'Angkatan Tentera Malaysia', '', '', '', 'DEVELOPER', '2023-06-19 10:27:17', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for employee_position
-- ----------------------------
DROP TABLE IF EXISTS `employee_position`;
CREATE TABLE `employee_position`  (
  `employee_position_id` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `employee_posItion_category_id` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_position_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_position
-- ----------------------------
INSERT INTO `employee_position` VALUES ('BENDAHARI', 'BENDAHARI', 'BENDAHARI', '', NULL, NULL, NULL, NULL, '2023-06-30 16:55:52', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEGAWAI_KEWANGAN', NULL, 'Pegawai Kewangan ', '', NULL, NULL, NULL, NULL, '2023-07-03 11:44:36', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEGAWAI_TADBIR', NULL, 'Pegawai Tadbir', '', NULL, NULL, NULL, NULL, '2023-07-03 11:44:21', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEKERJA_AWAM', NULL, 'Pekerja Awam', '', NULL, NULL, NULL, NULL, '2023-07-03 11:43:48', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEMBANTU_AWAM', NULL, 'Pembantu Awam', '', NULL, NULL, NULL, NULL, '2023-07-03 11:43:39', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEMBANTU_OPERASI', NULL, 'Pembantu Operasi', '', NULL, NULL, NULL, NULL, '2023-07-03 11:43:32', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEMBANTU_SETIAUSAHA_PEJABAT', NULL, 'Pembantu Setiausaha Pejabat', '', NULL, NULL, NULL, NULL, '2023-07-03 11:43:19', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PEMBANTU_TADBIR', NULL, 'Pembantu Tadbir', '', NULL, NULL, NULL, NULL, '2023-07-03 11:42:58', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PENOLONG_AKAUNTAN', NULL, 'Penolong Akauntan', '', NULL, NULL, NULL, NULL, '2023-07-03 11:42:46', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PENOLONG_PEGAWAI_TADBIR', NULL, 'Penolong Pegawai Tadbir', '', NULL, NULL, NULL, NULL, '2023-07-03 11:28:42', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position` VALUES ('PENOLONG_PEGAWAI_TEKNOLOGI_MAKLUMAT', NULL, 'Penolong Pegawai Teknologi Maklumat', '', NULL, NULL, NULL, NULL, '2023-07-03 11:28:16', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for employee_position_category
-- ----------------------------
DROP TABLE IF EXISTS `employee_position_category`;
CREATE TABLE `employee_position_category`  (
  `employee_position_category_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `abbreviation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_position_category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_position_category
-- ----------------------------
INSERT INTO `employee_position_category` VALUES ('SK', 'Sokongan', 'Sokongan', '', '', '', '', '2023-06-14 11:58:49', '', '2023-06-14 11:58:57', '', '2023-06-14 11:58:57');
INSERT INTO `employee_position_category` VALUES ('PP', 'Pengurusan & Profesional', 'Pengurusan & Profesional', '', '', '', '', '2023-06-14 11:58:58', '', '2023-06-14 11:59:03', '', '2023-06-14 11:59:03');

-- ----------------------------
-- Table structure for employee_position_grading
-- ----------------------------
DROP TABLE IF EXISTS `employee_position_grading`;
CREATE TABLE `employee_position_grading`  (
  `employee_position_grading_id` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `education_qualification_id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_position_grading_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_position_grading
-- ----------------------------
INSERT INTO `employee_position_grading` VALUES ('1', '1', 'PMR', '', '', '', '', '2023-06-19 10:32:14', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_position_grading` VALUES ('2', '2', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('3', '3', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('4', '4', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('5', '5', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('6', '6', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('7', '7', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('8', '8', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('9', '9', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('10', '10', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('11', '11', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('12', '12', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('13', '13', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('14', '14', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('15', '15', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('16', '16', 'PMR', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('17', '17', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('18', '18', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('19', '19', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('20', '20', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('21', '21', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('22', '22', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('23', '23', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('24', '24', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('25', '25', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('26', '26', 'SPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('27', '27', 'STPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('28', '28', 'STPM', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('29', '29', 'DIPLOMA', NULL, NULL, NULL, NULL, '2023-06-20 12:23:17', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('30', '30', 'DIPLOMA', NULL, NULL, NULL, NULL, '2023-06-20 12:23:24', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('31', '31', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:29', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('32', '32', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:30', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('33', '33', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:32', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('34', '34', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:34', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('35', '35', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:36', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('36', '36', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:37', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('37', '37', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:39', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('38', '38', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:42', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('39', '39', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:44', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('40', '40', 'STPM', NULL, NULL, NULL, NULL, '2023-06-20 12:23:48', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('41', '41', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:23:58', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('42', '42', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('43', '43', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('44', '44', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('45', '45', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('46', '46', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('47', '47', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('48', '48', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:04', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('49', '49', '', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('50', '50', '', NULL, NULL, NULL, NULL, '2023-06-19 10:32:14', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('51', '51', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('52', '52', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('53', '53', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('54', '54', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('JUSA_', 'Jusa A', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('JB', 'Jusa B', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('JC', 'Jusa C', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('TURUS', 'Turus I', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('II', 'Turus II', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('III', 'Turus III', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);
INSERT INTO `employee_position_grading` VALUES ('KSN', 'Ketua Setiausaha Negara', 'IJAZAH', NULL, NULL, NULL, NULL, '2023-06-20 12:24:09', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for employee_position_status
-- ----------------------------
DROP TABLE IF EXISTS `employee_position_status`;
CREATE TABLE `employee_position_status`  (
  `employee_position_status_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_position_status_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_position_status
-- ----------------------------
INSERT INTO `employee_position_status` VALUES ('CONTRACT', 'Contract', 'Kontrak', '', '', '', '', '2023-06-19 10:43:43', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_position_status` VALUES ('PERMENENT', 'Permenent', 'Tetap', '', '', '', '', '2023-06-19 10:43:43', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_position_status` VALUES ('PROBATION', 'Probation', 'Percubaan', '', '', '', '', '2023-06-19 10:43:43', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_position_status` VALUES ('TEMPORARY', 'Temporary', 'Sementara', '', '', '', '', '2023-06-19 10:43:43', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `employee_position_status` VALUES ('MYSTEP', 'MySTEP', 'MySTEP', NULL, NULL, NULL, NULL, '2023-06-19 10:44:37', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for employee_status
-- ----------------------------
DROP TABLE IF EXISTS `employee_status`;
CREATE TABLE `employee_status`  (
  `employee_status_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
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
INSERT INTO `employee_status` VALUES (101, 'Active', 'Aktif', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:10:12', NULL, NULL);
INSERT INTO `employee_status` VALUES (102, 'Inactive', 'Tidak Aktif', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:10:24', NULL, NULL);
INSERT INTO `employee_status` VALUES (103, 'Terminated', 'Ditamatkan', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:10:39', NULL, NULL);
INSERT INTO `employee_status` VALUES (104, 'Suspended', 'Digantung', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:10:53', NULL, NULL);
INSERT INTO `employee_status` VALUES (105, 'Retired', 'Bersara', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:11:05', NULL, NULL);
INSERT INTO `employee_status` VALUES (106, 'Deleted', 'Dipadam', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 08:45:12', 'DEVELOPER', '2023-07-03 17:11:21', NULL, NULL);

-- ----------------------------
-- Table structure for gender
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender`  (
  `gender_id` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`gender_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gender
-- ----------------------------
INSERT INTO `gender` VALUES ('F', 'Perempuan', 'Female', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 13:02:30', 'DEVELOPER', '2022-11-24 09:16:13', NULL, NULL);
INSERT INTO `gender` VALUES ('M', 'Lelaki', 'Male', NULL, NULL, 'active', 'DEVELOPER', '2020-07-03 13:02:30', 'DEVELOPER', '2022-11-23 16:52:25', NULL, NULL);
INSERT INTO `gender` VALUES ('O', 'Lain-lain', 'Others', NULL, NULL, 'inactive', 'DEVELOPER', '2020-07-03 13:02:30', 'DEVELOPER', '2022-11-23 16:52:30', NULL, NULL);
INSERT INTO `gender` VALUES ('T', 'test', 'test', 'jhgjhgjhg', NULL, 'inactive', 'DEVELOPER', '2022-11-23 17:20:46', 'DEVELOPER', '2022-11-24 09:16:42', NULL, NULL);

-- ----------------------------
-- Table structure for marital_status
-- ----------------------------
DROP TABLE IF EXISTS `marital_status`;
CREATE TABLE `marital_status`  (
  `marital_status_id` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`marital_status_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marital_status
-- ----------------------------
INSERT INTO `marital_status` VALUES ('M', 'Married', 'Berkahwin', NULL, NULL, 'active', 'DEVELOPER', '2020-08-07 11:17:25', 'DEVELOPER', '2022-11-23 14:17:13', NULL, NULL);
INSERT INTO `marital_status` VALUES ('O', 'Others', 'Lain-lain', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-07 11:17:25', 'DEVELOPER', '2022-11-23 14:17:18', NULL, NULL);
INSERT INTO `marital_status` VALUES ('R', 'Widower', 'Duda', NULL, NULL, 'active', 'DEVELOPER', '2020-08-07 11:17:25', 'DEVELOPER', '2023-04-20 10:13:44', NULL, NULL);
INSERT INTO `marital_status` VALUES ('S', 'Single', 'Bujang', NULL, NULL, 'active', 'DEVELOPER', '2020-08-07 11:17:25', 'DEVELOPER', '2022-11-23 14:17:33', NULL, NULL);
INSERT INTO `marital_status` VALUES ('W', 'Widow', 'Janda', NULL, NULL, 'active', 'DEVELOPER', '2020-08-07 11:17:25', 'DEVELOPER', '2023-04-20 10:13:39', NULL, NULL);

-- ----------------------------
-- Table structure for place_of_birth
-- ----------------------------
DROP TABLE IF EXISTS `place_of_birth`;
CREATE TABLE `place_of_birth`  (
  `place_of_birth_id` tinyint NOT NULL AUTO_INCREMENT,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`place_of_birth_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of place_of_birth
-- ----------------------------
INSERT INTO `place_of_birth` VALUES (1, 'Johor', 'Johor', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (2, 'Kedah', 'Kedah', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (3, 'Kelantan', 'Kelantan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (4, 'Malacca', 'Melaka', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (5, 'Negeri Sembilan', 'Negeri Sembilan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (6, 'Pahang', 'Pahang', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (7, 'Perak', 'Perak', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (8, 'Perlis', 'Perlis', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (9, 'Penang', 'Pulau Pinang', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (10, 'Sabah', 'Sabah', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (11, 'Sarawak', 'Sarawak', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (12, 'Selangor', 'Selangor', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (13, 'Terengganu', 'Terengganu', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (14, 'Federal Territory of Kuala Lumpur', 'Wilayah Persekutuan Kuala Lumpur', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (15, 'Federal Territory of Labuan', 'Wilayah Persekutuan Labuan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `place_of_birth` VALUES (16, 'Federal Territory of Putrajaya', 'Wilayah Persekutuan Putrajaya', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for race
-- ----------------------------
DROP TABLE IF EXISTS `race`;
CREATE TABLE `race`  (
  `race_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`race_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of race
-- ----------------------------
INSERT INTO `race` VALUES (101, 'Malay', 'Melayu', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:21:52', NULL, NULL);
INSERT INTO `race` VALUES (102, 'Chinese', 'Cina', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:21:54', NULL, NULL);
INSERT INTO `race` VALUES (103, 'Indian', 'India', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:21:58', NULL, NULL);
INSERT INTO `race` VALUES (104, 'Sikh', 'Sikh', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:24', NULL, NULL);
INSERT INTO `race` VALUES (105, 'Orang Asli Semenanjung', 'Orang Asli Semenanjung', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:33', NULL, NULL);
INSERT INTO `race` VALUES (106, 'Bumiputera Sabahan', 'Bumiputera Sabahan', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:37', NULL, NULL);
INSERT INTO `race` VALUES (107, 'Bumiputera Sarawak', 'Bumiputera Sarawak', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:44', NULL, NULL);
INSERT INTO `race` VALUES (109, 'Dusun', 'Dusun', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:48', NULL, NULL);
INSERT INTO `race` VALUES (110, 'Bumiputera ', 'Bumiputera ', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:22:58', NULL, NULL);
INSERT INTO `race` VALUES (111, 'Kadazan', 'Kadazan', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:08', NULL, NULL);
INSERT INTO `race` VALUES (112, 'Brunei', 'Brunei', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:13', NULL, NULL);
INSERT INTO `race` VALUES (113, 'Sungai', 'Sungai', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:17', NULL, NULL);
INSERT INTO `race` VALUES (114, 'Bajau', 'Bajau', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:21', NULL, NULL);
INSERT INTO `race` VALUES (115, 'Arabian', 'Arab', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:27', NULL, NULL);
INSERT INTO `race` VALUES (117, 'Indonesian', 'Indonesia', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:23:34', NULL, NULL);
INSERT INTO `race` VALUES (121, 'Non-Malaysian', 'Bukan Warganegara', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:24:32', NULL, NULL);
INSERT INTO `race` VALUES (122, 'Others', 'Lain-lain', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:17:43', 'DEVELOPER', '2022-12-08 11:24:36', NULL, NULL);

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship`  (
  `relationship_id` int NOT NULL AUTO_INCREMENT,
  `oracle_id` int NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`relationship_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relationship
-- ----------------------------
INSERT INTO `relationship` VALUES (1, 101, 'Father', 'Bapa', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (2, 102, 'Mother', 'Ibu', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (3, 103, 'Brother', 'Abang', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (4, 104, 'Sister', 'Kakak', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (5, 106, 'Uncle', 'Pak Cik', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (6, 105, 'Aunt', 'Mak Cik', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (7, NULL, 'Father in Law', 'Bapa Mertua', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (8, NULL, 'Mother in Law', 'Ibu Mertua', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (9, NULL, 'Brother in Law', 'Abang Ipar', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (10, NULL, 'Sister in Law', 'Kakak Ipar', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (11, 115, 'Grandfather', 'Datuk', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (12, NULL, 'Grandmother', 'Nenek', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (13, NULL, 'Great Grandfather', 'Moyang Lelaki', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (14, NULL, 'Great Grandmother', 'Moyang Perempuan', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (15, 107, 'Friend', 'Kawan', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (16, 114, 'Cousin', 'Sepupu', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (17, NULL, 'Nephew', 'Anak saudara lelaki', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (18, NULL, 'Niece', 'Anak saudara perempuan', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (19, 108, 'Wife', 'Isteri', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (20, 108, 'Husband', 'Suami', NULL, NULL, 'inactive', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);
INSERT INTO `relationship` VALUES (21, 116, 'Other', 'Lain-lain', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:36:43', 'DEVELOPER', '2023-06-19 08:59:46', NULL, NULL);

-- ----------------------------
-- Table structure for religion
-- ----------------------------
DROP TABLE IF EXISTS `religion`;
CREATE TABLE `religion`  (
  `religion_id` tinyint NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`religion_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of religion
-- ----------------------------
INSERT INTO `religion` VALUES (101, 'Islam', 'Islam', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:39:28', NULL, NULL);
INSERT INTO `religion` VALUES (102, 'Buddhist', 'Buddha', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:39:42', NULL, NULL);
INSERT INTO `religion` VALUES (103, 'Christian', 'Kristian', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:39:49', NULL, NULL);
INSERT INTO `religion` VALUES (104, 'Sikh', 'Sikh', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:39:55', NULL, NULL);
INSERT INTO `religion` VALUES (105, 'Hindu', 'Hindu', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:40:01', NULL, NULL);
INSERT INTO `religion` VALUES (106, 'Animisme', 'Animisme', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:40:28', NULL, NULL);
INSERT INTO `religion` VALUES (107, 'Others', 'Lain-lain', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:18:06', 'DEVELOPER', '2023-07-03 15:40:39', NULL, NULL);

-- ----------------------------
-- Table structure for repository_folder
-- ----------------------------
DROP TABLE IF EXISTS `repository_folder`;
CREATE TABLE `repository_folder`  (
  `repository_folder_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `office_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` enum('internal','external') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url_scheme` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`repository_folder_id`, `type`, `url_scheme`, `office_id`) USING BTREE,
  INDEX `semester_id`(`repository_folder_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repository_folder
-- ----------------------------
INSERT INTO `repository_folder` VALUES ('event', 'ukm', 'internal', 'http', 'Event ', '127.0.0.1:8000', 'repository/iukl/event', 'active', '', 'DEVELOPER', '2023-05-08 23:39:17', '', NULL, '', NULL);
INSERT INTO `repository_folder` VALUES ('event', 'ukm', 'external', 'http', 'Event ', '127.0.0.1:8000', 'repository/iukl/event', 'active', '', 'DEVELOPER', '2023-05-08 23:42:12', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for salutation
-- ----------------------------
DROP TABLE IF EXISTS `salutation`;
CREATE TABLE `salutation`  (
  `salutation_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `abbreviation` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`salutation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salutation
-- ----------------------------
INSERT INTO `salutation` VALUES ('AR', 'Architecture', 'Arch', 'Ar.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2023-06-14 10:31:49', NULL, NULL);
INSERT INTO `salutation` VALUES ('ASSOC_PROF', 'Associate Professor', NULL, 'Assoc. Prof', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('CTECH', 'Certified Technician', NULL, 'C. Tech', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2021-03-16 16:14:44', NULL, NULL);
INSERT INTO `salutation` VALUES ('DATIN', 'Datin', NULL, 'Datin', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('DATO', 'Dato\'', NULL, 'Dato\'', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('DATO_SERI', 'Dato\' Seri', NULL, 'Dato\' Seri', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('DATUK', 'Datuk', NULL, 'Datuk', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('DR', 'Doctor', NULL, 'Dr.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('IR', 'Ingeniur', NULL, 'Ir.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('MR', 'Mister', 'Encik', 'Mr.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2023-06-14 10:26:20', NULL, NULL);
INSERT INTO `salutation` VALUES ('MRS', 'Mistress', 'Puan', 'Mrs.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2023-06-14 10:26:16', NULL, NULL);
INSERT INTO `salutation` VALUES ('MS', 'Miss', 'Cik', 'Ms.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2023-06-14 10:26:12', NULL, NULL);
INSERT INTO `salutation` VALUES ('PR', NULL, NULL, 'Pr.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('PROF', 'Professor', NULL, 'Prof.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('PROF_EMERITUS', 'Professor Emeritus', NULL, 'Prof. Emeri', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('PTECH', 'Professional Technologist', NULL, 'P. Tech', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2021-03-16 16:14:44', NULL, NULL);
INSERT INTO `salutation` VALUES ('TAN_SERI', 'Tan Seri', NULL, 'Tan Seri', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);
INSERT INTO `salutation` VALUES ('TC', 'Certified Technician', NULL, 'Tc.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2021-03-16 16:14:44', NULL, NULL);
INSERT INTO `salutation` VALUES ('TS', 'Professional Technologist', NULL, 'Ts.', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2021-03-16 16:14:34', NULL, NULL);
INSERT INTO `salutation` VALUES ('TUN', 'Tun', NULL, 'Tun', NULL, NULL, 'active', 'DEVELOPER', '2020-08-11 10:31:23', 'DEVELOPER', '2020-08-11 10:31:36', NULL, NULL);

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `state_id` tinyint NOT NULL AUTO_INCREMENT,
  `name_ms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` enum('active','inactive','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_by` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES (1, 'Johor', 'Johor', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (2, 'Kedah', 'Kedah', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (3, 'Kelantan', 'Kelantan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (4, 'Malacca', 'Melaka', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (5, 'Negeri Sembilan', 'Negeri Sembilan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (6, 'Pahang', 'Pahang', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (7, 'Perak', 'Perak', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (8, 'Perlis', 'Perlis', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (9, 'Penang', 'Pulau Pinang', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (10, 'Sabah', 'Sabah', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (11, 'Sarawak', 'Sarawak', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (12, 'Selangor', 'Selangor', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (13, 'Terengganu', 'Terengganu', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (14, 'Federal Territory of Kuala Lumpur', 'Wilayah Persekutuan Kuala Lumpur', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (15, 'Federal Territory of Labuan', 'Wilayah Persekutuan Labuan', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);
INSERT INTO `state` VALUES (16, 'Federal Territory of Putrajaya', 'Wilayah Persekutuan Putrajaya', NULL, NULL, 'active', '', '2023-06-20 12:17:09', NULL, NULL, NULL, NULL);

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

SET FOREIGN_KEY_CHECKS = 1;
