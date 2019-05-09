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
ADD CONSTRAINT tipo_operacion_pk PRIMARY KEY (id_tipo_op);


ALTER TABLE "Instrumento"
ADD CONSTRAINT instrumento_pk PRIMARY KEY (id_instrumento);


ALTER TABLE "Empleados"
ADD CONSTRAINT empleado_pk PRIMARY KEY (id_empleado);


ALTER TABLE "Promotor"
ADD CONSTRAINT promotor_pk PRIMARY KEY (id_promotor);


ALTER TABLE "Operador"
ADD CONSTRAINT operador_pk PRIMARY KEY (ced_oper);

ALTER TABLE "Trade_off"
ADD CONSTRAINT trade_off_pk PRIMARY KEY (id_trade_off);

ALTER TABLE "Sector"
ADD CONSTRAINT sector_pk PRIMARY KEY (id_sector);

ALTER TABLE "Bolsa_Valores"
ADD CONSTRAINT bolsa_pk PRIMARY KEY(id_bolsa_valores);

ALTER TABLE "Moneda"
ADD CONSTRAINT moneda_pk PRIMARY KEY (id_moneda);

ALTER TABLE "Pais"
ADD CONSTRAINT pais_pk PRIMARY KEY (id_pais);

ALTER TABLE "Region"
ADD CONSTRAINT region_pk PRIMARY KEY (id_region);

ALTER TABLE "Reporte_Inversion"
ADD CONSTRAINT reporte_inversion_pk PRIMARY KEY (id_reporte);

ALTER TABLE "Clasificación"
ADD CONSTRAINT clasificaion_pk PRIMARY KEY (id_clasificacion);

ALTER TABLE "Industria"
ADD CONSTRAINT industria_pk PRIMARY KEY(id_industria);

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

/*FK Tabla Inversionista*/
ALTER TABLE "Inversionista" ADD CONSTRAINT tipo_riesgo_inversionista_fk
FOREIGN KEY (id_tipo_riesgo)
REFERENCES "Tipo_Riesgo" (id_tipo_riesgo)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Reporte_Inversion*/
ALTER TABLE "Reporte_Inversion" ADD CONSTRAINT inversionista_detalle_reporte_fk
FOREIGN KEY (id_inversionista)
REFERENCES "Inversionista" (id_inversionista)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Reporte_Inversion" ADD CONSTRAINT promor_detalle_reporte_fk
FOREIGN KEY (id_promotor)
REFERENCES "Promotor" (id_promotor)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Instrumento*/
ALTER TABLE "Instrumento" ADD CONSTRAINT emisor_instrumento_fk
FOREIGN KEY (id_moneda)
REFERENCES "Moneda" (id_moneda)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Instrumento" ADD CONSTRAINT bolsa_fk
FOREIGN KEY (id_bolsa_valores)
REFERENCES "Bolsa_Valores" (id_bolsa_valores)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Instrumento" ADD CONSTRAINT emisor_fk
FOREIGN KEY (id_emisora)
REFERENCES "Emisor" (id_emisora)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Instrumento" ADD CONSTRAINT sector_fk
FOREIGN KEY (id_sector)
REFERENCES "Sector" (id_sector)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Operador*/
ALTER TABLE "Operador" ADD CONSTRAINT empleado_operador_fk
FOREIGN KEY (id_empleado)
REFERENCES "Empleados" (id_empleado)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Promotor*/
ALTER TABLE "Promotor" ADD CONSTRAINT empleado_promotor_fk
FOREIGN KEY (id_empleado)
REFERENCES "Empleados" (id_empleado)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Trade_off */
ALTER TABLE "Trade_off" ADD CONSTRAINT operador_trade_off_fk
FOREIGN KEY (ced_oper)
REFERENCES "Operador" (ced_oper)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Trade_off" ADD CONSTRAINT instrumento_trade_off_pk
FOREIGN KEY (id_instrumento)
REFERENCES "Instrumento" (id_instrumento)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Trade_off" ADD CONSTRAINT tipo_operacion_trade_off_fk
FOREIGN KEY (id_tipo_op)
REFERENCES "Tipo_Operacion" (id_tipo_op)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Trade_off" ADD CONSTRAINT id_inversionista_trade_off_fk
FOREIGN KEY (id_inversionista)
REFERENCES "Inversionista" (id_inversionista)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Bolsa_Valores*/
ALTER TABLE "Bolsa_Valores" ADD CONSTRAINT pais_fk
FOREIGN KEY (id_pais)
REFERENCES "Pais" (id_pais)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Moneda*/
ALTER TABLE "Moneda" ADD CONSTRAINT tipo_operacion_trade_off_fk
FOREIGN KEY (id_pais)
REFERENCES "Pais" (id_pais)
ON UPDATE CASCADE ON DELETE CASCADE;

/*FK Tabla Emisor*/
ALTER TABLE "Emisor" ADD CONSTRAINT tipo_operacion_trade_off_fk
FOREIGN KEY (id_pais)
REFERENCES "Pais" (id_pais)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "Emisor" ADD CONSTRAINT region_fk
FOREIGN KEY (id_region)
REFERENCES "Region" (id_region)
ON UPDATE CASCADE ON DELETE CASCADE;


