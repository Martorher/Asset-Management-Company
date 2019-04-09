--- Creacion de integridad de entidad (PK)

ALTER TABLE "Estado"
ADD CONSTRAINT estado_pk PRIMARY KEY (id_estado);

ALTER TABLE "Municipio"
ADD CONSTRAINT municipio_pk PRIMARY KEY (id_municipio);


ALTER TABLE "Tipo_Riesgo"
ADD CONSTRAINT tipo_riesgo_pk PRIMARY KEY (id_tipo_riesgo);


ALTER TABLE "Inversionista"
ADD CONSTRAINT inversionista_pk PRIMARY KEY (id_inversionista);


ALTER TABLE "Direccion_Fiscal"
ADD  CONSTRAINT direccion_fiscal_pk PRIMARY KEY (id_direccion);


ALTER TABLE "Emisor"
ADD CONSTRAINT emisor_pk PRIMARY KEY (id_emisora);


ALTER TABLE "Tipo_Operacion"
ADD CONSTRAINT tipo_operacion_pk PRIMARY KEY (id_tipo_oper);


ALTER TABLE "Instrumento"
ADD CONSTRAINT instrumento_pk PRIMARY KEY (id_instrumento);


ALTER TABLE "Empleados"
ADD CONSTRAINT empleado_pk PRIMARY KEY (id_empleado);


ALTER TABLE "Promotor"
ADD CONSTRAINT promotor_pk PRIMARY KEY (id_promotor);


ALTER TABLE "Operador"
ADD CONSTRAINT operador_pk PRIMARY KEY (ced_oper);

ALTER TABLE "Trade_off"
ADD CONSTRAINT trade_off_pk PRIMARY KEY (id_trade);

ALTER TABLE "Orden"
ADD CONSTRAINT orden_pk PRIMARY KEY (id_orden);


ALTER TABLE "Reporte"
ADD CONSTRAINT reporte_pk PRIMARY KEY (id_reporte);


ALTER TABLE "Detalle_Reporte"
ADD CONSTRAINT detalle_reporte_pk PRIMARY KEY (id_reporte);

-- Creacion de integridad Referencial

ALTER TABLE "Municipio" ADD CONSTRAINT estado_municipio_fk
FOREIGN KEY (id_estado)
REFERENCES "Estado" (id_estado)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Direccion Fiscal*/
ALTER TABLE "Direccion_Fiscal" ADD CONSTRAINT municipio_direccion_fiscal_fk
FOREIGN KEY (id_municipio)
REFERENCES "Municipio" (id_municipio)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Direccion_Fiscal" ADD CONSTRAINT inversionista_direccion_fiscal_fk
FOREIGN KEY (id_inversionista)
REFERENCES "Inversionista" (id_inversionista)
ON UPDATE CASCADE ON DELETE CASCADE;
/*#####################################################################*/

ALTER TABLE "Inversionista" ADD CONSTRAINT tipo_riesgo_inversionista_fk
FOREIGN KEY (id_tipo_riesgo)
REFERENCES "Tipo_Riesgo" (id_tipo_riesgo)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Detalle_Reporte*/
ALTER TABLE "Detalle_Reporte" ADD CONSTRAINT inversionista_detalle_reporte_fk
FOREIGN KEY (id_inversionista)
REFERENCES "Inversionista" (id_inversionista)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Detalle_Reporte" ADD CONSTRAINT promor_detalle_reporte_fk
FOREIGN KEY (id_promotor)
REFERENCES "Promotor" (id_promotor)
ON UPDATE CASCADE ON DELETE CASCADE;
/*############################################################*/

/*FK Tabla Instrumento*/
ALTER TABLE "Instrumento" ADD CONSTRAINT emisor_instrumento_fk
FOREIGN KEY (id_emisora)
REFERENCES "Emisor" (id_emisora)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Instrumento" ADD CONSTRAINT tipo_operacion_instrumento_fk
FOREIGN KEY (id_tipo_oper)
REFERENCES "Tipo_Operacion" (id_tipo_oper)
ON UPDATE CASCADE ON DELETE CASCADE;
/*#######################################################*/

ALTER TABLE "Operador" ADD CONSTRAINT empleado_operador_fk
FOREIGN KEY (id_empleado)
REFERENCES "Empleados" (id_empleado)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Promotor" ADD CONSTRAINT empleado_promotor_fk
FOREIGN KEY (id_empleado)
REFERENCES "Empleados" (id_empleado)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Detalle_Reporte" ADD CONSTRAINT promotor_detalle_reporte_fk
FOREIGN KEY (id_promotor)
REFERENCES "Promotor" (id_promotor)
ON UPDATE CASCADE ON DELETE CASCADE;


/*FK Tabla Trade_off */

ALTER TABLE "Trade_off" ADD CONSTRAINT operador_trade_off_fk
FOREIGN KEY (ced_oper)
REFERENCES "Operador" (ced_oper)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Trade_off" ADD CONSTRAINT orden_trade_off_fk
FOREIGN KEY (id_orden)
REFERENCES "Orden" (id_orden)
ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE "Trade_off" ADD CONSTRAINT instrumento_trade_off_pk
FOREIGN KEY (id_instrumento)
REFERENCES "Instrumento" (id_instrumento)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Trade_off" ADD CONSTRAINT tipo_operacion_trade_off_fk
FOREIGN KEY (id_tipo_oper)
REFERENCES "Tipo_Operacion" (id_tipo_oper)
ON UPDATE CASCADE ON DELETE CASCADE;
/*####################################################*/

/*FK Tabla Orden*/
ALTER TABLE "Orden" ADD CONSTRAINT trade_off_instrumento_orden_fk
FOREIGN KEY (isin, id_trade)
REFERENCES "Trade_off" (isin, id_intrumento)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Orden" ADD CONSTRAINT instrumento_orden_fk
FOREIGN KEY (id_instrumento)
REFERENCES "Instrumento" (id_instrumento)
ON UPDATE CASCADE ON DELETE CASCADE;
 

/*#####################################################*/

ALTER TABLE "Reporte" ADD CONSTRAINT orden_reporte_fk
FOREIGN KEY (id_orden)
REFERENCES "Orden" (id_orden)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Detalle_Reporte" ADD CONSTRAINT reporte_detalle_reporte_fk
FOREIGN KEY (id_reporte)
REFERENCES "Reporte" (id_reporte)
ON UPDATE CASCADE ON DELETE CASCADE;