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
-- aca seteo la columna que voy a modificar en ambos registros sobreescribiendo dicho campo
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

-- para ver las modificaciones en la tabla
select * from style;


-- Si ocurre algún error, se puede revertir parte de la transacción con los siguientes script

ROLLBACK TO inicio_transaccion; 
ROLLBACK TO modificacion_1;      
ROLLBACK TO insercion; 

-- para ver las modificaciones en la tabla
select * from style;
