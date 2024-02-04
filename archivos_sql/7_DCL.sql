-- CREACION DE USUARIOS

-- aca creo el usuario con solo los premisos de lectura sobre todas las tablas
CREATE USER IF NOT EXISTS 'coderhouse@localhost' IDENTIFIED BY 'coderhouse';
-- otorgo unicamente permisos para ver las tablas de la base de datos
GRANT SELECT ON shenxinglin.* TO 'coderhouse@localhost';

-- aca creo el usuario elias que puede ver insertar y modificar datos de las tablas pero no eliminar
CREATE USER IF NOT EXISTS'escalante@localhost' IDENTIFIED BY 'escalante';
-- aca le otorgo los permisos requeridos en el desafio - seleccionar tablas para ver, insertar y modificar datos.
GRANT SELECT, INSERT, UPDATE ON shenxinglin.* TO 'escalante@localhost';


-- uso la setencia select para seleccionar desde la tabla user en la base de datos
-- asi puedo ver si efectivamente estos usuarios tienen los permisos deseados y fueron creados. 

SELECT * FROM mysql.user;

-- con estos script puedo vizualizar los permisos otorgados a los usuarios creados
SHOW GRANTS FOR 'escalante@localhost';
SHOW GRANTS FOR 'coderhouse@localhost';
