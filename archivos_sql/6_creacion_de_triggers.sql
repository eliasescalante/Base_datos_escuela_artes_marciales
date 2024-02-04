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