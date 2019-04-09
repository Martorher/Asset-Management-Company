/*Creamos las diferenetes que conformaran la Base de Datos*/

/*Creamo primero las tablas Empleado, Operador, Promotor*/

CREATE TABLE "Empleados"(id_empleado SERIAL,
	      nombre VARCHAR(50) NOT NULL,
	      app VARCHAR(50) NOT NULL,
	      apm VARCHAR(50) );

CREATE TABLE "Operador"(id_operador SERIAL NOT NULL,
			ced_oper VARCHAR(35) NOT NULL,
			sueldo REAL NOT NULL,
			id_empleado INTEGER NOT NULL);
/*Se crea el atributo id_operador, para efectos de los registros, talvez estadistica de eficiencia de empledos análisis estadístico...*/
CREATE TABLE "Promotor"(id_promotor SERIAL NOT NULL,
			comision REAL NOT NULL,
			id_empleado INTEGER NOT NULL);
CREATE TABLE "Trade_off"(id_trade SERIAL,
			isin VARCHAR(50),
			unidades REAL NOT NULL,
			precio REAL NOT NULL,
			rendimiento REAL NOT NULL,
			fecha_oper DATE NOT NULL,
			monto REAL NOT NULL,
			id_operacion INTEGER NOT NULL,
			ced_oper VARCHAR(50) NOT NULL,
			id_tipo_oper INTEGER NOT NULL,
			id_instrumento INTEGER NOT NULL);
			
CREATE TABLE "Instrumento"(id_instrumento SERIAL NOT NULL,
			nombre VARCHAR(50) NOT NULL,
			tipo_valor VARCHAR(50) NOT NULL,
			id_tipo_oper INTEGER NOT NULL,
			id_emisora INTEGER NOT NULL);

CREATE TABLE "Emisor"(id_emisora SERIAL,
			nombre VARCHAR(100) NOT NULL,
			sector VARCHAR(100) NOT NULL,
			descripcion VARCHAR(150));
			
CREATE TABLE "Tipo_Operacion"(id_tipo_oper SERIAL NOT NULL,
				tipo_oper VARCHAR(35) NOT NULL);
				
CREATE TABLE "Orden"(id_orden SERIAL,
		asset_comision REAL,
		inversion REAL NOT NULL,
		P_G REAL NOT NULL,
		monto REAL NOT NULL,
		id_trade INTEGER NOT NULL,
		isin VARCHAR(50),
		id_instrumento INTEGER NOT NULL);
		
CREATE TABLE "Reporte" (id_reporte SERIAL,
			estatus VARCHAR(100) NOT NULL,
			tipo VARCHAR(100) NOT NULL,
			monto REAL NOT NULL,
			id_orden INTEGER NOT NULL);
			
CREATE TABLE "Detalle_Reporte"(id_inversionista INTEGER NOT NULL,
		id_promotor INTEGER NOT NULL,
		id_reporte INTEGER NOT NULL,
		inversion REAL NOT NULL);
		
CREATE TABLE "Inversionista"(id_inversionista SERIAL NOT NULL,
				rfc VARCHAR(50),
				nombre_empresa VARCHAR(100) NOT NULL,
				id_tipo_riesgo INTEGER NOT NULL);
				
CREATE TABLE "Tipo_Riesgo"(id_tipo_riesgo SERIAL,
				categoria VARCHAR(100));
				
CREATE TABLE "Direccion_Fiscal" (id_direccion SERIAL NOT NULL,
					calle VARCHAR(100) NOT NULL,
					numero VARCHAR(100) NOT NULL,
					colonia VARCHAR(100) NOT NULL,
					cp VARCHAR(100) NOT NULL,
					id_municipio INTEGER NOT NULL,
					id_inverisionista INTEGER NOT NULL);
					
CREATE TABLE "Municipio"(id_municipio SERIAL NOT NULL,
			municipio VARCHAR(100),
			id_estado INTEGER NOT NULL);

CREATE TABLE "Estado"(id_estado SERIAL NOT NULL,
			estado VARCHAR(100) NOT NULL);
			
			
	      
	      