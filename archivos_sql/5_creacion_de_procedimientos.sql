/* procedure */


/* PRIMER PROCEDIMIENTO*/

/* drop el SP si ya existe*/
drop procedure if exists sp_order_table;

DELIMITER //
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

-- Delimiter change for procedure creation
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
CALL manage_style(2, 1, NULL, NULL);
/* para comprobar que lo inserto o elimino*/
select * from style;
