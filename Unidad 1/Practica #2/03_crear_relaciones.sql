USE `hernandez-ocon`;

ALTER TABLE mascotas
ADD CONSTRAINT fk_mascotas_clientes
FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente);

ALTER TABLE atenciones_medicas
ADD CONSTRAINT fk_atenciones_mascotas
FOREIGN KEY (id_mascota)
REFERENCES mascotas(id_mascota);

ALTER TABLE atenciones_medicas
ADD CONSTRAINT fk_atenciones_veterinarios
FOREIGN KEY (id_veterinario)
REFERENCES veterinarios(id_veterinario);

ALTER TABLE prescripciones
ADD CONSTRAINT fk_prescripciones_atenciones
FOREIGN KEY (id_atencion)
REFERENCES atenciones_medicas(id_atencion);

ALTER TABLE prescripciones
ADD CONSTRAINT fk_prescripciones_medicamentos
FOREIGN KEY (codigo_medicamento)
REFERENCES medicamentos(codigo_medicamento);