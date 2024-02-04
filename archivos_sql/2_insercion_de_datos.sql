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
