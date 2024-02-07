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

/*  Insercion de datos */

/*
-- Query: SELECT * FROM shenxinglin.graduation
LIMIT 0, 50000

-- Date: 2023-12-22 20:14
*/
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (1,'punta-amarillo','2000-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (2,'amarillo','2001-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (3,'amarillo-punta-naranja','2002-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (4,'naranja','2003-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (5,'naranja-punta-verde','2004-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (6,'verde','2005-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (7,'verde-punta-azul','2006-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (8,'azul','2007-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (9,'azul-punta-roja','2008-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (10,'rojo','2010-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (11,'rojo-punta-negro','2012-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (12,'negro','2013-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (13,'negro-I','2014-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (14,'negro-II','2015-02-10');
INSERT INTO `graduation` (`id_graduation`,`level`,`registration_date`) VALUES (15,'maestro','2016-02-10');

/*
-- Query: SELECT * FROM shenxinglin.style
LIMIT 0, 50000

-- Date: 2023-12-22 20:16
*/
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (1,'mono','uso de baston');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (2,'serpiente','mano cuchillo');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (3,'mantis','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (4,'tigre','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (5,'dragon','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (6,'doble golpe','golpe consecutivo');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (7,'borracho','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (8,'grulla','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (9,'perro','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (10,'pollera','estilo de mujeres');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (11,'aguila','apariencia');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (12,'nanquan','estilo del sur');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (13,'chanquan','estilo del norte');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (14,'taichi','estilo interno');
INSERT INTO `style` (`id_style`,`name`,`description`) VALUES (15,'taichi chen','estilo interno');

/*
-- Query: SELECT * FROM shenxinglin.sede
LIMIT 0, 50000

-- Date: 2023-12-22 20:17
*/
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (1,'centro 12 de octubre bis','12 de octubre 44',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (2,'Centro cultural cane','miguel cane 1652',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (3,'Club deportivo quilmes','1 de mayo 325',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (4,'Club 12 de octubre','12 de octubre 432',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (5,'Club Ameghino','pellegrini 1002',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (6,'Club campal','guido 100',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (7,'Centro comunitario Qui','entre rios 1342',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (8,'Colegio XII','puan 2312',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (10,'Plaza Los Rosales','pringles 23',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (12,'GYM Titan','irigoyen 100',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (13,'GYM mitre','mitre 12',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (14,'Sociedad de fomento Lopez','vicente lopez 521',NULL);
INSERT INTO `sede` (`id_sede`,`name`,`adress`,`description`) VALUES (15,'GYM Gigantes','rodolfo lopez 476',NULL);

/*
-- Query: SELECT * FROM shenxinglin.master
LIMIT 0, 50000

-- Date: 2023-12-22 20:17
*/
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (1,'emilio giordano','1985-02-10','11-38107145','Av Rafael Núñez 5019','emilio@gmail.com',15,'shen xing lin');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (2,'carlos peralta','1991-03-02','11-38234564','Av Colón 788','carlos@gmail.com',15,'tien long hu');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (3,'matias pedrano','1989-01-10','11-43598102','Av Circunvalación 2321','matias@gmail.com',15,'shen quan');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (4,'ayelen di nardo','2000-03-10','11-37107345','Av de Mayo 825','ayelen@gmail.com',15,'she quan');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (5,'gerardo aguin','0198-04-23','11-38234864','Av Monseñor Pablo Cabrera 6080\n','gerado@gmail.com',15,'hao mei');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (6,'carlos cain','2001-02-12','11-43598102','El Salvador 4735','carlos@gmail.com',15,'shuan pei tou');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (7,'marcos escalante','2000-05-30','11-48107135','Juan Julián Lastra 176','marcos@gmail.com',15,'long hua');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (8,'david romero','2007-06-11','11-38214564','Rivadavia 724','david@gmail.com',15,'shen xing lian');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (9,'elias escalante','1985-02-10','11-43598102','San Pedro 2930','elias@gmail.com',15,'lian hua');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (10,'fernanda di zoccolo','1988-06-06','11-36107115','Honduras 5303','fernanda@gmail.com',15,'dragones');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (11,'giavani gonzales','1978-03-12','11-39234564','Habana 4836','giavani@gmail.com',15,'ma shuan dao');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (12,'alberto escalante','1990-04-09','11-43598102','Cassanello 1086','alberto@gmail.com',15,'zhi chuan');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (13,'lucas martin','1992-08-12','11-32107149','Av Santa Ana 2353','lucas@gmail.com',15,'tao');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (14,'cintia fernandez','1986-02-03','11-36234564','9 de Julio 501','cintia@gmail.com',15,'tien tai chien');
INSERT INTO `master` (`master_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`school_in_charge`) VALUES (15,'julian conte','1996-06-04','11-43598102','Dr R Hellman Gauna 107','julian@gmail.com',15,'chuen');

/*
-- Query: SELECT * FROM shenxinglin.teacher
LIMIT 0, 50000

-- Date: 2023-12-22 20:22
*/
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (1,'Miguel Vega','1980-03-11','11-38107156','Zabala 1837','miguel@gmail.com',14,1);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (2,'Tomas Riojas','1978-10-09','11-93107157','Buenos Aires 930','tomas@gmail.com',14,1);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (3,'Bautista Nazario Hijo','1982-12-21','11-78507158','Arribeï¿½os 3676','bautista@gmail.com',14,5);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (4,'Sophie Gutiï¿½rrez','1989-02-23','11-38607159','Cassanello 1086','sophie@gmail.com',14,5);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (5,'Montserrat Mendoza','1996-06-13','11-28907160','AV.VELEZ SARSFIELD 4621','montserrat@gmail.com',14,3);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (6,'Damiï¿½n Soria','1990-02-10','11-39907161','Av Corrientes 1334','damian@gmail.com',14,3);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (7,'Aarï¿½n Zï¿½ï¿½iga','1986-02-01','11-38107160','25 de Mayo 2676','aaron@gmail.com',14,14);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (8,'Alonso Mares','1995-05-19','11-38107169','25 de Mayo 2697','alonso@gmail.com',14,15);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (9,'Marï¿½a Josï¿½ Tello','1993-03-31','11-38107164','San Martï¿½n 2898','maria@gmail.com',14,15);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (10,'Anthony Tapia','1982-10-15','11-38108165','9 de Julio 674','anthony@gmail.com',14,8);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (11,'Valery Colï¿½n','1982-09-28','11-38107966','Av Josï¿½ Marï¿½a Moreno 1483','valery@gmail.com',14,9);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (12,'Adriana Nevï¿½rez','1994-03-03','11-88707160','Av Santa Fe 4636','adriana@gmail.com',14,6);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (13,'Mateo Lï¿½pez','1990-08-12','11-38107168','Defensa 855','mateo@gmail.com',14,7);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (14,'Adriï¿½n Caldera','1999-09-04','11-38707160','Rivadavia 724','adrian@gmail.com',14,2);
INSERT INTO `teacher` (`teacher_file`,`full_name`,`birthdate`,`phone_number`,`adress`,`mail`,`graduation`,`master`) VALUES (15,'Emmanuel Ruvalcaba','1982-03-29','11-36607170','Lavalle 757','emmanuel@gmail.com',14,2);


/*
-- Query: SELECT * FROM shenxinglin.school
LIMIT 0, 50000

-- Date: 2023-12-22 20:23
*/
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (1,'shen xing lin',1,2,1);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (2,'tien long hu',2,2,3);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (3,'shen quan',3,1,2);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (4,'she quan',5,5,4);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (6,'shuan pei tou',6,11,5);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (7,'long hua',7,4,7);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (10,'dragones',1,1,10);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (11,'ma shuan dao',15,1,12);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (12,'zhi chuan',14,15,13);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (13,'tao',13,15,14);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (14,'tien tai chien',12,12,15);
INSERT INTO `school` (`id`,`name`,`teacher_in_charge`,`style_id`,`sede`) VALUES (15,'chuen',11,11,8);


/*
-- Query: SELECT * FROM shenxinglin.student
LIMIT 0, 50000

-- Date: 2023-12-22 20:23
*/
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (1,'Joshua Jaramillo','1986-05-25','Av San Martï¿½n 491','11-38107145','joshua@gmail.com',2,1);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (2,'Manuel Alejandro','1995-05-26','Salta 431','11-29002331','manuel@gmail.com',2,1);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (3,'Regina Roldï¿½n','1999-06-27','Av Santa Fe 2422','11-32677752','regina@gmail.com',3,2);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (4,'Sara Crespo','2009-02-28','Av Bolivia 2602','11-23425675','sara@gmail.com',3,3);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (5,'Ivan Muï¿½oz','2018-05-29','Avenida de La Costa Brigadier Estanislao Lï¿½pez 2550','11-81073460','ivan@gmail.com',6,1);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (6,'Juana Muï¿½oz','2015-06-30','Avenida de La Costa Brigadier Estanislao Lï¿½pez 2550','11-23459012','juana@gmail.com',6,1);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (7,'Valentina Alvarado','2000-03-31','Lima 278','11-42804577','valentina@gmail.com',7,6);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (8,'Jerï¿½nimo Suï¿½rez','1997-07-01','Cordoba 33','11-12122433','jeronimo@gmail.com',1,15);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (9,'Esteban Munguï¿½a Segundo','1995-01-02','Av Colon 1506','11-38107145','esteban@gmail.com',4,15);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (10,'Sergio Lucero','1996-08-03','Obispo 323','11-29102334','sergio@gmail.com',2,8);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (11,'Valentina Olvera','2015-06-30','Junin 357','11-32678759','valentina1@gmail.com',4,8);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (12,'Irene Casanova','2000-03-31','24 de Septiembre 387','11-23425973','irene@gmail.com',4,6);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (13,'Axel Razo','1997-07-01','Av Colon 3836','11-81073461','axel@gmail.com',8,3);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (14,'Joaquï¿½n Gallardo','1995-01-02','Rodriguez Pena 1967','11-23459212','joaquin@gmail.com',1,1);
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (15,'Miguel ï¿½ngel Rosario','1996-08-03','Belgrano 663','11-42804677','miguel@gmail.com',1,1);


/* vistas */

-- ESTA VISTA CONTIENE LOS NOMBRES DE LOS ESTUDIANTES CON SU RESPECTIVAS GRADUACIONES.alter
-- TOMA DE LA COLUMNA 'FULL_NAME' DE LA TABLA STUDENT Y DE LA COLUMNA 'LEVEL' DE LA TABLA GRADUATION.
CREATE OR REPLACE VIEW view_students_with_graduation AS
    SELECT s.full_name AS student_name, g.level AS graduation_level
    FROM  student s
    JOIN graduation g ON s.graduation = g.id_graduation;

-- ESTA VISTA CONTIENE LOS NOMBRES COMPLETOS DE LOS PROFESORES Y CONTIENE LOS NIVELES DE GRADUACION DE LOS MISMOS.
-- ( TOMA DE LA COLUMNA 'FULL_NAME' DE LA TABLA TEACHER Y DE LA TABLA GRADUATION LA COLUMNA LEVEL.)
CREATE OR REPLACE VIEW view_teachers_with_graduation AS
    SELECT t.full_name AS teacher_name, g.level AS graduation_level
    FROM  teacher t
    JOIN graduation g ON t.graduation = g.id_graduation;

-- ESTA VISTA CONTIENE LOS NOMBRES DE LAS ESCUELAS CON SUS RESPECTIVOS PROFESORES A CARGO.alter
-- ( TOMA DE LA COLUMNA 'NAME' DE LA TABLA SCHOOL Y DE LA COLUMNA 'FULL_NAME' DE LA TABLA TEACHER)
CREATE OR REPLACE VIEW view_schools_with_teacher AS
    SELECT sc.name AS school_name, t.full_name AS teacher_in_charge_name
    FROM school sc
    LEFT JOIN teacher t ON sc.teacher_in_charge = t.teacher_file;

-- ESTA VISTA CONTIENE LOS NOMBRES DE LAS ESCUELAS CON SUS RESPECTIVAS SEDES Y SUS DIRECCIONES.alter
-- ( TOMA DE LA COLUMNA 'NAME' DE LA TABLA SCHOOL Y DE LA COLUMNA 'NAME' DE LA TABLA SEDE JUNTO CON LA COLUMNA 'ADRESS' DE LA TABLA SEDE)
CREATE OR REPLACE VIEW view_schools_with_sede AS
    SELECT sc.name AS school_name, sd.name AS sede_name, sd.adress AS sede_address
    FROM school sc
    JOIN sede sd ON sc.sede = sd.id_sede;


-- ESTA VISTA CONTIENE LOS NOMBRES DE LOS MAESTROS JUNTO CON SUS GRADUACIONES Y LAS ESCUELAS QUE TIENEN A CARGO
-- TOMA DE LA COLUMNA 'FULL_NAME' DE LA TABLA MASTER Y DE LA COLUMNA 'LEVEL' DE LA TABLA GRADUATION Y DE LA COLUMNA 'SCHOOL_IN_CHARGE' DE LA TABLA MASTER.
CREATE OR REPLACE VIEW view_masters_with_graduation_and_school AS
    SELECT m.full_name AS master_name, g.level AS graduation_level,  m.school_in_charge AS school_in_charge
    FROM master m
    JOIN graduation g ON m.graduation = g.id_graduation;
    
    
    
    
    /* funciones */
    
    use  shenxinglin;

/* funcion 1 */
/* funcion para saber la cantidad de maestros que nacieron en el año dado por parametro */
DROP FUNCTION IF EXISTS cantidad_maestros_nacidos_en_anio ;
DELIMITER //
CREATE FUNCTION cantidad_maestros_nacidos_en_anio(birthYearParam INT)
RETURNS INT
deterministic
BEGIN
    DECLARE countMaestros INT;

    SELECT COUNT(*) INTO countMaestros
    FROM shenxinglin.master
    WHERE YEAR(birthdate) = birthYearParam OR birthdate LIKE CONCAT(birthYearParam, '-%');

    RETURN countMaestros;
END //
DELIMITER ;

SELECT cantidad_maestros_nacidos_en_anio(1985) AS cantidad_maestros;


/* funcion 2 */
/* funcion para calcular el promedio de las edades de cierto nivel que se pasa por parametro */

DROP FUNCTION IF EXISTS promedio_edades_por_graduacion ;
DELIMITER //
CREATE FUNCTION promedio_edades_por_graduacion(graduationLevel VARCHAR(100))
RETURNS DECIMAL(10, 2)
deterministic
BEGIN
    DECLARE avgAge DECIMAL(10, 2);
    SELECT AVG(YEAR(CURDATE()) - YEAR(birthdate)) INTO avgAge
    FROM shenxinglin.student
    WHERE graduation = (
        SELECT id_graduation
        FROM shenxinglin.graduation
        WHERE level = graduationLevel
    );
    RETURN avgAge;
END //
DELIMITER ;

select promedio_edades_por_graduacion('punta-amarillo') as promedio_estudiantes;

/* funcion 3 */
/* funcion para contar la cantidad de estudiantes de una determinada graduacion dada */

DELIMITER //
CREATE FUNCTION contar_estudiantes_por_graduacion(graduationLevel VARCHAR(100))
RETURNS INT
deterministic
BEGIN
    DECLARE countEstudiantes INT;
    SELECT COUNT(*) INTO countEstudiantes
    FROM shenxinglin.student
    WHERE graduation = (
        SELECT id_graduation
        FROM shenxinglin.graduation
        WHERE level = graduationLevel
    );
    RETURN countEstudiantes;
END //
DELIMITER ;

select contar_estudiantes_por_graduacion('amarillo');




/* procedure */


/* PRIMER PROCEDIMIENTO*/
 
DELIMITER //
/* drop el SP si ya existe*/
drop procedure if exists sp_order_table;
/* procedimiento para ordenar una tabla que paso por parametro en orden ascendente o descendente  segun una columna que tambien paso por parametro*/

CREATE PROCEDURE sp_order_table(IN table_name VARCHAR(255), IN order_column VARCHAR(255), IN order_direction VARCHAR(10))
BEGIN
	/* concateno la cadena SQL que representa la consulta que se completa con los parametros */
    SET @query = CONCAT('SELECT * FROM ', table_name, ' ORDER BY ', order_column, ' ', order_direction, ';');
    /* aca preparo la consulta */
    PREPARE stmt FROM @query;
    /* aca ejecuto la consulta preparada que selecciona los registros de la tabla que se especifica por parametro y se ordena por columna y orden dado por
    parametro*/
    EXECUTE stmt;
    /* aca libero de la memoria la consulta preparada*/
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
/* llamo al SP para la tabla graduation y la ordeno por level ascendente */
CALL sp_order_table('graduation', 'level', 'ASC');
/* llamo al SP para la tabla graduation y la ordeno por level descendente*/
CALL sp_order_table('graduation', 'level', 'DESC');
    
/* SEGUNDO PROCEDIMIENTO */

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS manage_style;
DELIMITER //
CREATE PROCEDURE manage_style(
    IN action int, -- 1 para insertar o 2 para eliminar
    IN style_id INT,       
    IN style_name VARCHAR(25),  
    IN style_description TEXT    
)
BEGIN
    /* inserta un registro en la tabla style */
    IF action = 1 THEN
        INSERT INTO `style` (`name`, `description`)
        VALUES (style_name, style_description);

    /* borra un registro usando el id */
    ELSEIF action = 2 THEN
        DELETE FROM `style`
        WHERE `id_style` = style_id;

    /* si la accion es ninguna entonces no hace nada */
    ELSE
	/* mensaje de error si elige mal las opciones */ 
        SELECT 'eleccion no valida, elige 1 para insertar o 2 para eliminar un registro';
    END IF;
END //

DELIMITER ;

/*  para insertar un nuevo estilo */
CALL manage_style(1, NULL, 'leon dorado', 'apariencia');
/* para eliminar un registro de la tabla style */
CALL manage_style(2, 2, NULL, NULL);
/* para comprobar que lo inserto o elimino*/
select * from style;

-- TRIGGERS


/* creacion de la tabla auditoria */
CREATE TABLE log_auditoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    table_name VARCHAR(255) NOT NULL,
    modification_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action varchar (255)
);


/* aca creo el disparador para detectar los insert que se hacen a la tabla style */
-- 1
DELIMITER //
CREATE TRIGGER after_style_insert_trigger
AFTER INSERT ON style
FOR EACH ROW
BEGIN
    INSERT INTO log_auditoria (user_name, table_name, modification_date, action)
    VALUES (CURRENT_USER(), 'style', NOW(), 'insert');
END;
//
DELIMITER ;


-- 2
-- Aca defino el trigger para detectar antes de que se elimine una fila de la tabla "style"
DELIMITER //
CREATE TRIGGER trg_style_before_delete
BEFORE DELETE
ON style FOR EACH ROW
BEGIN
    /* Inserta un registro en una tabla de registros de eliminación */
    INSERT INTO log_auditoria (user_name, table_name, modification_date, action)
    VALUES (CURRENT_USER(), 'style', NOW(), 'delete');
END //

DELIMITER ;

-- ejecuto el procedure de "manage_style" para agregar o eliminar un registro.alter
/*  para insertar un nuevo estilo */
CALL manage_style(1, NULL, 'delirio mistico', 'apariencia');
/* para eliminar un registro de la tabla style */
CALL manage_style(2, 4, NULL, NULL);

-- aca seleccion la tabla log_auditoria para comprobar que se registro los eventos
select * from log_auditoria;



-- ACA CREO LOS DOS TRIGGERS EN LA TABLA STUDENT
-- 1
/* creo el disparador para detectar si la tabla student sufrio alguna modificacion */
DELIMITER //

CREATE TRIGGER trg_student_before_update
BEFORE UPDATE
ON student FOR EACH ROW
BEGIN
    DECLARE field_changed BOOLEAN DEFAULT FALSE;

    -- Compara cada campo de la fila actual con el valor original
    IF NEW.full_name != OLD.full_name THEN
        SET field_changed = TRUE;
    END IF;
	-- aca verifico que el campo ah cambiado (pasa a valer true)
    -- en ese caso inserto en la tabla log_auditoria el registro del evento
    IF field_changed THEN
        INSERT INTO log_auditoria (user_name, table_name, modification_date, action)
        VALUES (CURRENT_USER(), 'student', NOW(), 'update');
    END IF;
END //

DELIMITER ;

-- 2 
-- creo 2 trigger mas para saber si se elimina o inserta un registro en la tabla student.

-- Trigger para detectar inserciones en la tabla student
DELIMITER //
CREATE TRIGGER trg_student_after_insert
AFTER INSERT
ON student FOR EACH ROW
BEGIN
	-- aca realizo la insercion en la tabla log_auditoria 
    INSERT INTO log_auditoria (user_name, table_name, modification_date, action)
    VALUES (CURRENT_USER(), 'student', NOW(), 'insert');
END //
DELIMITER ;

-- Trigger para detectar eliminaciones en la tabla student
DELIMITER //
CREATE TRIGGER trg_student_after_delete
AFTER DELETE
ON student FOR EACH ROW
BEGIN
	-- aca realizo la insercion del evento en la tabla log_auditoria
    INSERT INTO log_auditoria (user_name, table_name, modification_date, action)
    VALUES (CURRENT_USER(), 'student', NOW(), 'delete');
END //
DELIMITER ;


-- TESTEO LOS DIFERENTES REGISTROS DE EVENTOS:

-- ahora modifico algun campo de un registro de la tabla student.
UPDATE student
SET full_name = 'Carla Palermo'
WHERE student_file = 1;

-- elimino un registro de la tabla student
DELETE FROM student
WHERE student_file = 3;

-- inserto un nuevo registro en la tabla student
INSERT INTO `student` (`student_file`,`full_name`,`birthdate`,`adress`,`phone_number`,`mail`,`graduation`,`teacher_in_charge`) VALUES (16,'Mirian gel Rosario','1996-08-03','Belgrano 663','11-42804677','mili@gmail.com',1,1);

-- ahora seleccion la tabla log_auditoria para corroborar que se registro el evento satisfactoriamente
select * from log_auditoria;

-- aca creo el usuario con solo los premisos de lectura sobre todas las tablas

CREATE USER 'coderhouse@localhost' IDENTIFIED BY 'coderhouse';
GRANT SELECT ON shenxinglin.* TO 'coderhouse@localhost';

-- aca creo el usuario elias que puede ver insertar y modificar datos de las tablas pero no eliminar
CREATE USER 'escalante@localhost' IDENTIFIED BY 'escalante';
-- aca le otorgo los permisos requeridos en el desafio
GRANT SELECT, INSERT, UPDATE ON shenxinglin.* TO 'escalante@localhost';


-- uso la setencia select para seleccionar desde la tabla user en la base de datos
-- asi puedo ver si efectivamente estos usuarios tienen los permisos deseados y fueron creados. 

SELECT * FROM mysql.user;

-- con estos script puedo vizualizar los permisos otorgados a los usuarios creados
SHOW GRANTS FOR 'escalante@localhost';
SHOW GRANTS FOR 'coderhouse@localhost';


-- TRANSACCIONES
-- realizo la consulta sobre la tabla a trabajar:
select * from style;
-- consulto el estado del autocommit
select @@autocommit;
-- seteo la variable a 0 para poder trabajar con transacciones
set autocommit = 0;

-- Inicio de la transacción
START TRANSACTION;

-- Punto de guardado 1
SAVEPOINT inicio_transaccion;

-- 1. Modifica los registros cuyo id_style sea menor a 5
UPDATE style
-- acaseteo la columna que voy a modificar en ambos registros sobreescribiendo dicho campo
SET name = 'puño sur'
WHERE id_style < 5;

-- Punto de guardado 2
SAVEPOINT modificacion_1;

-- 2. Agrego dos registros nuevos
INSERT INTO style (id_style, name, description)
VALUES ('21', 'puño volador', 'variante del puño norte'),
	   ('1', 'puño volador', 'variante del puño norte'),
       ('20', 'tai chi wudang', 'variante del tai chi chuan estilo yang');

-- Punto de guardado 3
SAVEPOINT insercion;

-- 3. Modificar en el registro con id_style 6 la description
UPDATE style
-- cambio la descripcion del campo description a la nueva descripcion.
SET description = 'golpe continuo'
-- dicho cambio lo hago en el registro con id 6
WHERE id_style = 6;

-- confirmo las transacciones
COMMIT;

-- Si ocurre algún error, se puede revertir parte de la transacción
-- ROLLBACK TO inicio_transaccion; 
-- ROLLBACK TO modificacion_1;      
-- ROLLBACK TO insercion; 

-- ROLLBACK;  -- Deshacer todas las operaciones.








