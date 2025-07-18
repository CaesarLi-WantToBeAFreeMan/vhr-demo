/*
    database server type: MySQL 8.0
    database server host: localhost:3306
    database management application: DBeaver Community Version
    author: Caesar James LEE
*/

-- create database
DROP DATABASE IF EXISTS `vhr_database`;
CREATE DATABASE `vhr_database`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
USE `vhr_database`;

-- setting for full Unicode support
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET collation_connection = 'utf8mb4_unicode_ci';
/*
    MySQL 5.7 version, but not full support Unicode
    CHARACTER SET utf8
    COLLATE utf8_general_ci;
*/

-- create table hr

DROP TABLE IF EXISTS `hr`;
CREATE TABLE `hr`(
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'id',
    `username` VARCHAR(255) NOT NULL UNIQUE COMMENT 'unique username for login',
    `password` VARCHAR(255) NOT NULL COMMENT 'BCrypt hashed password',
    `full_name` VARCHAR(100) NOT NULL UNIQUE COMMENT 'hr full name',
    `email` VARCHAR(100) NOT NULL UNIQUE COMMENT 'hr email',
    `phone` VARCHAR(20) NOT NULL UNIQUE COMMENT 'hr phone in E.164 format',
    `address` VARCHAR(255) NOT NULL COMMENT 'hr contact address',
    `status` BOOLEAN DEFAULT TRUE COMMENT 'hr account status',-- synonym (alias) for `TINYINT(1)`
    `icon` VARCHAR(255) DEFAULT '' COMMENT 'hr icon',
    `description` VARCHAR(255) DEFAULT '' COMMENT 'hr description',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'account created time in GMT',
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'account info updated time in GMT',
    `comment` VARCHAR(255) DEFAULT NULL COMMENT 'hr comments',
    `remark` VARCHAR(255) DEFAULT NULL COMMENT 'hr remarked info'
)   ENGINE = InnoDB 
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci
    COMMENT = 'hr table';

-- records of table hr
INSERT INTO `hr`(
	`username`, `password`, `full_name`, `email`, `phone`, `address`,
	`status`, `icon`, `description`, `created_at`, `updated_at`, `comment`, `remark`
)
VALUES
(
    'djt',
    '$2b$12$mxvnDBM/pdVZ9IRz1lJHbOiruHZyVJ1X4BgNGRqDnf6VEc.Qt7/3e',-- Make America Great Again No.1
    'Donald John Trump',
    'donaldjtrump@gmail.com',
    '+14155552671',
    'Queens, New York City, New York State, U.S.',
    TRUE,
    'https://en.wikipedia.org/wiki/File:Official_Presidential_Portrait_of_President_Donald_J._Trump_(2025).jpg',
    '45th & 47th President of the United States',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'lai-ching‑te',
    '$2b$12$Etns3BNdGzjZllX2d5JY5ePKqnMPc0syaewoLQXOozkEpoBXPqXue',-- Lai Chine Te @65
    '賴清德',
    'laichingte@gmail.com',
    '+886912345678',
    '中華民國臺灣省臺北縣萬里鄉六坑煤礦區',
    TRUE,
    'https://en.wikipedia.org/wiki/File:%E8%B3%B4%E6%B8%85%E5%BE%B7%E7%B8%BD%E7%B5%B1_(cropped_2).jpg',
    '8th President of the Republic of China (Taiwan)',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'emmanuel-macron',
    '$2b$12$xUoObdQ3VbbJZHb4a4wkhOAi4aYLqkMcpH5CkOgUzEWcuryqKlwrO',-- Emmanuel Macron @47
    'Emmanuel Jean-Michel Frédéric Macron',
    'emmanuel-macron@gmail.com',
    '+33123456789',
    'Amiens dans la Somme',
    TRUE,
    'https://en.wikipedia.org/wiki/File:Emmanuel_Macron_-_June_2025_(3x4_cropped).jpg',
    'President of France',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'friedrich-merz',
    '$2b$12$zcfyFktVn0fuzpxg29Xx8OurLfXM9.4f7lrM1/xMT5awFfk0vihVa',-- Friedrich Merz @69
    'Joachim-Friedrich Martin Josef Merz',
    'friedrichmerz@gmail.com',
    '+4915123456789',
    'Brilon',
    TRUE,
    'https://en.wikipedia.org/wiki/File:2024-08-21_Event,_CDU,_Wahlkampf_mit_Friedrich_Merz_in_Erfurt_2024_STP_3041_by_Stepro_(cropped).jpg',
    'Chancellor of Germany',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'keir-starmer',
    '$2b$12$d1Bh2phHHmmwGm8R.IxoSOxjUKI823zT5b4D7fbMYnjzzx132WEdy',-- Keir Starmer @62
    'Keir Rodney Starmer',
    'keir-starmer@gmail.com',
    '+447911123456',
    'Southwark, London, England',
    TRUE,
    'https://en.wikipedia.org/wiki/File:Keir_Starmer_official_portrait_(3x4_cropped).jpg',
    'Prime Minister of the United Kingdom',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'shigeru-ishiba',
    '$2b$12$gxXy.W8GEUdSQFzwthQcfOuIqxHV0S21tZi7AChX99MtUaYy6Y/OO',-- Shigeru Ishiba @68
    '石破 茂',
    'shigeruishiba@gmail.com',
    '+81312345678',
    '東京都千代田区',
    TRUE,
    'https://en.wikipedia.org/wiki/File:Ishiba_Shigeru_20241001_(cropped).jpg',
    'Prime Minister of Japan',
    NOW(),
    NOW(),
    NULL,
    NULL
),
(
    'xi-jinping',
    '$2b$12$dLA66jkdh9MFIq29XeHAaeTQzM12UvNLr5xNdyIz4gIxHcMDUUnkO',-- Xi Jinping @72
    '习近平',
    'xijinping@gmail.com',
    '+8613812345678',
    '中国北京市',
    FALSE,
    'https://en.wikipedia.org/wiki/File:Xi_Jinping_in_Beijing_on_May_13,_2025_(cropped).jpg',
    'General Secretary of the Chinese Communist Party',
    NOW(),
    NOW(),
    NULL,
    NULL
);