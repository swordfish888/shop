/*
Navicat MySQL Data Transfer

Source Server         : myconnect
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-07-04 15:42:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cat` varchar(25) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Ноутбуки', '0');
INSERT INTO `categories` VALUES ('2', 'Планшеты', '1');
INSERT INTO `categories` VALUES ('3', 'Компьтеры', '2');
INSERT INTO `categories` VALUES ('4', 'Телефоны', '3');
INSERT INTO `categories` VALUES ('5', 'ТВ', '4');
INSERT INTO `categories` VALUES ('6', 'Аудио', '5');
INSERT INTO `categories` VALUES ('7', 'Видео', '6');
INSERT INTO `categories` VALUES ('8', 'Фото', '7');
INSERT INTO `categories` VALUES ('9', 'Бытовая техника', '8');
INSERT INTO `categories` VALUES ('10', 'Интерьер', '9');
INSERT INTO `categories` VALUES ('11', 'Активный отдых', '10');
INSERT INTO `categories` VALUES ('12', 'Туризм', '11');
INSERT INTO `categories` VALUES ('13', 'Ноутбуки', '12');
INSERT INTO `categories` VALUES ('14', 'Одежда', '13');
INSERT INTO `categories` VALUES ('15', 'Обувь', '14');
INSERT INTO `categories` VALUES ('16', 'Спортивные товары', '15');
INSERT INTO `categories` VALUES ('17', 'Детский мир', '16');
INSERT INTO `categories` VALUES ('18', 'Товары для дома', '17');
INSERT INTO `categories` VALUES ('19', 'Инструменты', '18');
INSERT INTO `categories` VALUES ('20', 'Автотовары', '19');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id_goods` int(11) NOT NULL AUTO_INCREMENT,
  `name_goods` varchar(30) NOT NULL,
  `parent_goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id_goods`),
  KEY `parent_goods_id` (`parent_goods_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`parent_goods_id`) REFERENCES `categories` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'Acer ', '0');
INSERT INTO `goods` VALUES ('2', 'Apple', '0');
INSERT INTO `goods` VALUES ('3', 'Asus', '0');
INSERT INTO `goods` VALUES ('4', 'Dell', '0');
INSERT INTO `goods` VALUES ('5', 'Fujitsu', '0');
INSERT INTO `goods` VALUES ('6', 'Acer Iconia', '1');
INSERT INTO `goods` VALUES ('7', 'Apple A1489 iPad', '1');
INSERT INTO `goods` VALUES ('8', 'Apple iPad Pro', '1');
INSERT INTO `goods` VALUES ('9', 'Samsung Galaxy Tab E 9.6\" 3G', '1');
INSERT INTO `goods` VALUES ('10', 'Samsung Galaxy Tab 3 Lite 7.0', '1');
INSERT INTO `goods` VALUES ('11', 'HP ProDesk 600 G2 SFF', '2');
INSERT INTO `goods` VALUES ('12', 'HP Pavilion All-in-One 23-q232', '2');
INSERT INTO `goods` VALUES ('13', 'Asus ET1801IUK-BC023M', '2');
INSERT INTO `goods` VALUES ('14', 'Asus G11CB-UA002T', '2');
INSERT INTO `goods` VALUES ('15', 'HP ProDesk 400 G3 MT', '2');
INSERT INTO `goods` VALUES ('16', 'Lenovo A7000 Black', '3');
INSERT INTO `goods` VALUES ('17', 'Samsung Galaxy S5 G900H Gold', '3');
INSERT INTO `goods` VALUES ('18', 'Apple iPhone 6 16GB', '3');
INSERT INTO `goods` VALUES ('19', 'Samsung Galaxy Core Prime VE G', '3');
INSERT INTO `goods` VALUES ('20', 'Lenovo Vibe S1 White', '3');
INSERT INTO `goods` VALUES ('21', 'LG 43UF680V ', '4');
INSERT INTO `goods` VALUES ('22', 'LG 28LF498U', '4');
INSERT INTO `goods` VALUES ('23', 'Sony KDL-32R503C', '4');
INSERT INTO `goods` VALUES ('24', 'Samsung UE32J5530', '4');
INSERT INTO `goods` VALUES ('25', 'Philips 43PUT4900/12', '4');
INSERT INTO `goods` VALUES ('26', 'Sony GTK-X1BT', '5');
INSERT INTO `goods` VALUES ('27', 'LG X-Boom CM9760', '5');
INSERT INTO `goods` VALUES ('28', 'LG X-Boom FH6', '5');
INSERT INTO `goods` VALUES ('29', 'Samsung MX-J730', '5');
INSERT INTO `goods` VALUES ('30', 'LG OM6540', '5');
INSERT INTO `goods` VALUES ('31', 'Panasonic HC-W580EE-K Black', '6');
INSERT INTO `goods` VALUES ('32', 'Sony Action Cam Mini AZ1VR Wi-', '6');
INSERT INTO `goods` VALUES ('33', 'Panasonic HC-X920', '6');
INSERT INTO `goods` VALUES ('34', 'Sony HDR-CX405B Black', '6');
INSERT INTO `goods` VALUES ('35', 'Sony Handycam HDR-CX900 Black', '6');
INSERT INTO `goods` VALUES ('36', 'Canon EOS 1200D 18-55 III', '7');
INSERT INTO `goods` VALUES ('37', 'Nikon D5200', '7');
INSERT INTO `goods` VALUES ('38', 'Nikon Coolpix L840 Black', '7');
INSERT INTO `goods` VALUES ('39', 'Canon EOS 700D 18-55mm STM', '7');
INSERT INTO `goods` VALUES ('40', 'Sony Cyber-Shot DSC-H300 Black', '7');
INSERT INTO `goods` VALUES ('41', 'INDESIT NBS 18 AA UA', '8');
INSERT INTO `goods` VALUES ('42', 'INDESIT NTS 14 AA', '8');
INSERT INTO `goods` VALUES ('43', 'ZANUSSI ZRB 36101 XA', '8');
INSERT INTO `goods` VALUES ('44', 'BOSCH KGV39VW31', '8');
INSERT INTO `goods` VALUES ('45', 'SAMSUNG RB29FEJNDWW', '8');
INSERT INTO `goods` VALUES ('46', 'Настенные часы UTA 01 S 03', '9');
INSERT INTO `goods` VALUES ('47', 'Настенные часы ASSISTANT AH-17', '9');
INSERT INTO `goods` VALUES ('48', 'Настенные часы PRAGMART 149 ', '9');
INSERT INTO `goods` VALUES ('49', 'Настенные часы DIDIART \"Старин', '9');
INSERT INTO `goods` VALUES ('50', 'Настенные часы TFA 603017', '9');
INSERT INTO `goods` VALUES ('51', 'Author Magnum 26\" Рама 19\" Сar', '10');
INSERT INTO `goods` VALUES ('52', 'Author Era 3.0 26\" Рама 19\" Ca', '10');
INSERT INTO `goods` VALUES ('53', 'Orbea Alma 29 M20 2016 M', '10');
INSERT INTO `goods` VALUES ('54', 'Orbea OIZ 29 M50 2016 L (F2341', '10');
INSERT INTO `goods` VALUES ('55', 'Author A-Ray 2.0 26\" Рама 19\" ', '10');
INSERT INTO `goods` VALUES ('56', 'Storm St249', '11');
INSERT INTO `goods` VALUES ('57', 'Ладья ЛТ-330МВЕ', '11');
INSERT INTO `goods` VALUES ('58', 'Storm st240c', '11');
INSERT INTO `goods` VALUES ('59', 'Ладья ЛТ-270М', '11');
INSERT INTO `goods` VALUES ('60', 'Ладья ЛТ-220-ДС', '11');
INSERT INTO `goods` VALUES ('61', 'Рубашка Oodji', '12');
INSERT INTO `goods` VALUES ('62', 'Поло Adidas AJ6898 Condivo 16', '12');
INSERT INTO `goods` VALUES ('63', 'Спортивный костюм Adidas S9351', '12');
INSERT INTO `goods` VALUES ('64', 'Реглан Adidas S27116', '12');
INSERT INTO `goods` VALUES ('65', 'Поло Adidas s10778 Porsche Des', '12');
INSERT INTO `goods` VALUES ('66', 'Кроссовки Nike Flex Raid', '13');
INSERT INTO `goods` VALUES ('67', 'Шлепанцы New Balance 104', '13');
INSERT INTO `goods` VALUES ('68', 'Туфли Respect', '13');
INSERT INTO `goods` VALUES ('69', 'Ботинки New Balance 754 HL754B', '13');
INSERT INTO `goods` VALUES ('70', 'Кроссовки Umbro 85406U-YSY', '13');
INSERT INTO `goods` VALUES ('71', 'Гироборд Wheele W3 6.5\"', '14');
INSERT INTO `goods` VALUES ('72', 'Гироборд Wheele W4 8\" Black', '14');
INSERT INTO `goods` VALUES ('73', 'Детский гироборд Just Step&GO', '14');
INSERT INTO `goods` VALUES ('74', 'Гироборд Wheele W1 6.5\" Black', '14');
INSERT INTO `goods` VALUES ('75', 'Гироборд Wheele W1 6.5\" Red ', '14');
INSERT INTO `goods` VALUES ('76', 'EnergyFIT EF-5501A', '15');
INSERT INTO `goods` VALUES ('77', 'Garmin Forerunner 920XT Bundle', '15');
INSERT INTO `goods` VALUES ('78', 'Garmin Forerunner 235 Black-Gr', '15');
INSERT INTO `goods` VALUES ('79', 'Suunto Ambit3 Peak Black', '15');
INSERT INTO `goods` VALUES ('80', 'Suunto Core All Black', '15');
INSERT INTO `goods` VALUES ('81', 'Детский электромобиль Feber Ra', '16');
INSERT INTO `goods` VALUES ('82', 'Детский электромобиль Feber Ra', '16');
INSERT INTO `goods` VALUES ('83', 'Toys Toys Ferrari Enzo', '16');
INSERT INTO `goods` VALUES ('84', 'Toys Toys Lamborghini Gallardo', '16');
INSERT INTO `goods` VALUES ('85', 'Geoby W456EQ-K312', '16');
INSERT INTO `goods` VALUES ('86', 'Компьютерный стол Zeus Davos', '17');
INSERT INTO `goods` VALUES ('87', 'Компьютерный стол Zeus Kombi', '17');
INSERT INTO `goods` VALUES ('88', 'Компьютерный стол IDaMebel Del', '17');
INSERT INTO `goods` VALUES ('89', 'Компьютерный стол Zeus Calypso', '17');
INSERT INTO `goods` VALUES ('90', 'Компьютерный стол Barsky Homew', '17');
INSERT INTO `goods` VALUES ('91', 'Дрель ударная Bosch PSB 450 RE', '18');
INSERT INTO `goods` VALUES ('92', 'Дрель ударная Bosch Profession', '18');
INSERT INTO `goods` VALUES ('93', 'Дрель ударная Einhell BT-ID 55', '18');
INSERT INTO `goods` VALUES ('94', 'Дрель ударная Intertool DT-010', '18');
INSERT INTO `goods` VALUES ('95', 'Дрель ударная Hitachi FDV16VB2', '18');
INSERT INTO `goods` VALUES ('96', 'Mystery MCD-568MPU', '19');
INSERT INTO `goods` VALUES ('97', 'Alpine UTE-81R', '19');
INSERT INTO `goods` VALUES ('98', 'JVC KD-SD80BTEYD', '19');
INSERT INTO `goods` VALUES ('99', 'Pioneer MVH-08UB', '19');
INSERT INTO `goods` VALUES ('100', 'EasyGo C200', '19');
