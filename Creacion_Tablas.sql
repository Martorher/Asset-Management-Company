/*Creamos las diferenetes que conformaran la Base de Datos*/

/*ESTRUCTURA DE LA EMPRESA*/
CREATE TABLE "Empleados"(id_empleado SERIAL NOT NULL,
			nombre VARCHAR(50) NOT NULL,
			app VARCHAR(50) NOT NULL,
			apm VARCHAR(50),
			nomina REAL NOT NULL,
			fecha_inicio DATE NOT NULL );
CREATE TABLE "Operador"(id_operador SERIAL NOT NULL,
			ced_oper VARCHAR(35) NOT NULL,
			id_empleado INTEGER NOT NULL);
CREATE TABLE "Promotor"(id_promotor SERIAL NOT NULL,
			comision REAL NOT NULL,
			id_empleado INTEGER NOT NULL);

/*ESTRUCTURA DE LA OPERACION*/

CREATE TABLE "Trade_off"(id_trade_off SERIAL NOT NULL,
			unidades REAL NOT NULL,
			precio REAL NOT NULL,
			id_instrumento INTEGER NOT NULL,
			fecha_op DATE NOT NULL,
			id_tipo_op INTEGER NOT NULL,
			ced_oper VARCHAR(50) NOT NULL,
			id_inversionista INTEGER NOT NULL);
			
CREATE TABLE "Instrumento"(id_instrumento SERIAL NOT NULL,
			isin VARCHAR(100),
			nombre VARCHAR(50) NOT NULL,
			tipo_valor VARCHAR(50) NOT NULL,
			id_moneda INTEGER NOT NULL,
			id_bolsa_valores INTEGER NOT NULL,
			id_emisora INTEGER NOT NULL,
			id_sector INTEGER NOT NULL,
			id_clasificacion INTEGER NOT NULL);
			
/*ESTRUCTURA DE INFORMACION DE LAS OPERACIONES*/
CREATE TABLE "Emisor"(id_emisora SERIAL NOT NULL,
			calificacion VARCHAR(10),
			nombre VARCHAR(100) NOT NULL,
			nombre_ceo VARCHAR(100),
			nombre_Ch VARCHAR(50),
			decripcion VARCHAR(150) NOT NULL,
			id_pais INTEGER NOT NULL,
			id_region INTEGER,
			id_industria INTEGER);		
CREATE TABLE "Tipo_Operacion"(id_tipo_op SERIAL NOT NULL,
				operacion VARCHAR(35) NOT NULL);
CREATE TABLE "Sector"(id_sector SERIAL NOT NULL,
			sector VARCHAR(50) NOT NULL,
			descripcion VARCHAR(150) NOT NULL);
CREATE TABLE "Bolsa_Valores"(id_bolsa_valores SERIAL NOT NULL,
				nombre VARCHAR(100),
				id_pais INTEGER NOT NULL);
CREATE TABLE "Moneda"(id_moneda SERIAL, 
			nombre VARCHAR(50) NOT NULL,
			id_pais INTEGER);
CREATE TABLE "Region"(id_region SERIAL,
			nombre VARCHAR(50) NOT NULL,
			descripcion VARCHAR(150),
			tratados VARCHAR(150));						
CREATE TABLE "Pais"(id_pais SERIAL,
			nombre VARCHAR(20),
			tipo_gobierno VARCHAR(30),
			lider VARCHAR(50));
CREATE TABLE "Clasificación"(id_clasificacion SERIAL NOT NULL,
				clasificacion VARCHAR(50));

CREATE TABLE "Industria"(id_industria SERIAL NOT NULL,
				industria VARCHAR(50),
				descripción VARCHAR(150));
/*ESRUCTURA PARA REPORTERIA Y REGISTRO DE VENTAS*/				

CREATE TABLE "Reporte_Inversion" (id_reporte SERIAL,
			inversion REAL NOT NULL,
			comision_decim REAL NOT NULL,
			id_inversionista INTEGER NOT NULL,
			id_promotor INTEGER NOT NULL);				
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
					id_inversionista INTEGER NOT NULL);
					
CREATE TABLE "Municipio"(id_municipio SERIAL NOT NULL,
			municipio VARCHAR(100),
			id_estado INTEGER NOT NULL);

CREATE TABLE "Estado"(id_estado SERIAL NOT NULL,
			estado VARCHAR(100) NOT NULL);
			
			
	      
	      