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
