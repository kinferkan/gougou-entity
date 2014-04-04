CREATE DATABASE  IF NOT EXISTS `gougou`;
USE `gougou`;

/*user table*/
DROP TABLE IF EXISTS `gougou_user`;
CREATE TABLE `gougou_user`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `username` VARCHAR(20) NOT NULL,
 `password` VARCHAR(20) NOT NULL,
 `type` INT(2) NOT NULL DEFAULT '0',
 `status` INT(2) NOT NULL DEFAULT '0',
 `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
 `updateTime` DATETIME DEFAULT NULL,
 `ip` VARCHAR(128) DEFAULT NULL,
 PRIMARY KEY(`id`)
);

/*product table*/
DROP TABLE IF EXISTS `gougou_product`;
CREATE TABLE `gougou_product`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `title` VARCHAR(255) NOT NULL,
 `price` VARCHAR(20) NOT NULL,
 `totalCount` INT(11) NOT NULL DEFAULT '0',
 `description` text,
 `status` INT(2) NOT NULL DEFAULT '0',
 `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
 `updateTime` DATETIME DEFAULT NULL,
 PRIMARY KEY(`id`)
);

/*order table*/
DROP TABLE IF EXISTS `gougou_order`;
CREATE TABLE `gougou_order`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `status` INT(2) NOT NULL DEFAULT '0',
 `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
 `updateTime` DATETIME DEFAULT NULL,
 `comment` VARCHAR(255) NOT NULL,
 PRIMARY KEY(`id`)
);

/*order item table*/
DROP TABLE IF EXISTS `gougou_order_item`;
CREATE TABLE `gougou_order_item`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `productId` INT(11) NOT NULL,
 `count` INT(11) NOT NULL,
 `price` VARCHAR(100) NOT NULL,
 PRIMARY KEY(`id`),
 KEY (`productId`),
 CONSTRAINT `gougou_order_item_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `gougou_product` (`id`)
);

/*category table*/
DROP TABLE IF EXISTS `gougou_category`;
CREATE TABLE `gougou_category`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `parentId` INT(11) NOT NULL DEFAULT '0',
 `name` VARCHAR(100) NOT NULL,
  `status` INT(11) NOT NULL DEFAULT '0',
  `sort` INT(11) NOT NULL DEFAULT '0',
  `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
  `updateTime` DATETIME DEFAULT NULL,
 PRIMARY KEY(`id`),
 KEY (`parentId`)
);

/*funds table*/
DROP TABLE IF EXISTS `gougou_funds`;
CREATE TABLE `gougou_funds`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `userId` INT(11) NOT NULL,
 `availabeAmount` VARCHAR(255) NOT NULL DEFAULT '0',
 `lockAmount` VARCHAR(255) NOT NULL DEFAULT '0',
 `totalRecharge` VARCHAR(255) NOT NULL DEFAULT '0',
 `totalWithdraw` VARCHAR(255) NOT NULL DEFAULT '0',
  `status` INT(11) NOT NULL DEFAULT '0',
  `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
  `updateTime` DATETIME DEFAULT NULL,
 PRIMARY KEY(`id`),
 KEY (`userId`),
 CONSTRAINT `gougou_funds_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `gougou_user` (`id`)
);

/*funds FLOW table*/
DROP TABLE IF EXISTS `gougou_funds_flow`;
CREATE TABLE `gougou_funds_flow`(
 `id` INT(11) NOT NULL AUTO_INCREMENT,
 `userId` INT(11) NOT NULL,
 `amount` VARCHAR(255) NOT NULL DEFAULT '0',
  `type` INT(11) NOT NULL DEFAULT '0',
  `status` INT(11) NOT NULL DEFAULT '0',
  `createTime` TIMESTAMP DEFAULT CONCURRENT_TIMESTAMP,
  `updateTime` DATETIME DEFAULT NULL,
  `comment` VARCHAR(255) NOT NULL,
 PRIMARY KEY(`id`),
 KEY (`userId`),
 CONSTRAINT `gougou_funds_flow_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `gougou_user` (`id`)
);

