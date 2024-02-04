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