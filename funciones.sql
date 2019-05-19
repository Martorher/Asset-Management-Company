
-----Procedimiento Almacenado que realiza una o más consultas del estilo UPDATE o DELETE. 

CREATE OR REPLACE FUNCTION actualizaDireccion_fiscal (
             
                calle VARCHAR(100),
                numero VARCHAR(100),
                colonia VARCHAR(100),
                cp VARCHAR(100),
                id_municipio INTEGER,
                id_inversionista INTEGER
                )
 RETURNS VARCHAR(30)
 AS
 $$
 DECLARE estatus_update VARCHAR(30);
 BEGIN
 IF((SELECT COUNT(*)
     FROM Inversionista
     WHERE id_inversionista=$7)=1)
     THEN
     UPDATE Direccion_fiscal SET calle= $2 WHERE id_inversionista =$7;
     estatus_update= 'Direccion fiscal actualizada';
     ELSE
     estatus_update= 'El inverionista no existe';
     END IF;
     RETURN estatus_update;
     END;
     $$
     LANGUAGE 'plpgsql' ;

--------Procedimiento almacenado con dos o más parámetros de entrada.

CREATE OR REPLACE FUNCTION InsertaOperador(
 ced_oper VARCHAR(100),
                sueldo REAL,
                id_empleado INTEGER
)
RETURNS VARCHAR(50)
 AS
 $$
DECLARE idempleado INTEGER; 
DECLARE estatus_insercion VARCHAR(50);
BEGIN
IF ((SELECT *
FROM Empleado
WHERE nombre = $2 AND app=$3) = 0) 
THEN
 idempleado= CASE 
WHEN((SELECT *
FROM Empleado) IS NOT NULL) 
THEN (SELECT * 
FROM Empleado)+1
 ELSE 1
 END;
INSERT INTO Empleado
VALUES (idempleado,ced_oper,sueldo,id_empeado);
estatus_insercion = 'La insercion fue realizada';
ELSE 
estatus_insercion = 'Error. El promotor ya existe';
END IF;
RETURN estatus_insercion;
END;
 $$ 
LANGUAGE 'plpgsql';

     
 