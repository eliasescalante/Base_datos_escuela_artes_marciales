/* creacion de tablas y schema*/
DROP SCHEMA IF EXISTS shenxinglin;
CREATE SCHEMA  IF NOT EXISTS shenxinglin;
USE shenxinglin;

CREATE TABLE IF NOT EXISTS `graduation`(
    `id_graduation` int NOT NULL AUTO_INCREMENT,
    `level` varchar(100) NOT NULL,
    `registration_date` DATE,
    PRIMARY KEY(`id_graduation`)
);

CREATE TABLE IF NOT EXISTS `style`(
    `id_style` int NOT NULL AUTO_INCREMENT,
    `name` varchar(25) NOT NULL,
    `description` text(2000) NULL,
    PRIMARY KEY (`id_style`)
);

CREATE TABLE IF NOT EXISTS `sede`(
    `id_sede` int NOT NULL AUTO_INCREMENT,
    `name` varchar(25) NOT NULL,
    `adress` varchar(75) NOT NULL,
    `description` text(2000) NULL,
    PRIMARY KEY (`id_sede`)
);

CREATE TABLE IF NOT EXISTS `master`(
    `master_file` int NOT NULL AUTO_INCREMENT,
    `full_name` varchar(25) NOT NULL,
    `birthdate` DATE,
    `phone_number` varchar(20) NOT NULL,
    `adress` varchar(75) NOT NULL,
    `mail` varchar(100) NOT NULL,
    `graduation` int,
    `school_in_charge` varchar(100),
    PRIMARY KEY (`master_file`),
    FOREIGN KEY (`graduation`)  REFERENCES `graduation`(`id_graduation`)
);

CREATE TABLE IF NOT EXISTS `teacher`(
    `teacher_file` int NOT NULL AUTO_INCREMENT,
    `full_name` varchar(25) NOT NULL,
    `birthdate` DATE,
    `phone_number` varchar(20) NOT NULL,
    `adress` varchar(75) NOT NULL,
    `mail` varchar(100) NOT NULL,
    `graduation` int,
    `master` int,
    PRIMARY KEY (`teacher_file`),
    FOREIGN KEY (`graduation`)  REFERENCES `graduation`(`id_graduation`), 
    FOREIGN KEY (`master`) REFERENCES `master`(`master_file`)
);

CREATE TABLE IF NOT EXISTS `school` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(25) NOT NULL,
    `teacher_in_charge` int,
    `style_id` int,
    `sede` int,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`teacher_in_charge`) REFERENCES `teacher`(`teacher_file`),
    FOREIGN KEY (`style_id`) REFERENCES `style`(`id_style`) ON DELETE CASCADE,
    FOREIGN KEY (`sede`) REFERENCES `sede`(`id_sede`)
);

CREATE TABLE IF NOT EXISTS `student`(
    `student_file` int NOT NULL AUTO_INCREMENT,
    `full_name` varchar(75) NOT NULL,
    `birthdate` DATE,
    `adress` varchar(75) NOT NULL, 
    `phone_number` varchar(20) NOT NULL,
    `mail` varchar(100) NOT NULL,
    `graduation` int,
    `teacher_in_charge` int,
    PRIMARY KEY(`student_file`),
    FOREIGN KEY(`graduation`) REFERENCES `graduation`(`id_graduation`),
    FOREIGN KEY(`teacher_in_charge`) REFERENCES `teacher`(`teacher_file`)
);









