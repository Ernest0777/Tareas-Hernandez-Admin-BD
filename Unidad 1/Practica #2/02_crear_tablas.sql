USE `hernandez-ocon`;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT,
    documento_identidad VARCHAR(20) NOT NULL,
    nombre_completo VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL,

    CONSTRAINT pk_clientes
        PRIMARY KEY (id_cliente),

    CONSTRAINT uq_clientes_documento
        UNIQUE (documento_identidad)
);

CREATE TABLE mascotas (
    id_mascota INT AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(80),
    fecha_nacimiento DATE,

    CONSTRAINT pk_mascotas
        PRIMARY KEY (id_mascota)
);

CREATE TABLE veterinarios (
    id_veterinario INT AUTO_INCREMENT,
    documento_identidad VARCHAR(20) NOT NULL,
    nombre_completo VARCHAR(150) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,

    CONSTRAINT pk_veterinarios
        PRIMARY KEY (id_veterinario),

    CONSTRAINT uq_veterinarios_documento
        UNIQUE (documento_identidad)
);

CREATE TABLE atenciones_medicas (
    id_atencion INT AUTO_INCREMENT,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    diagnostico TEXT NOT NULL,
    costo_base DECIMAL(10,2) NOT NULL,

    CONSTRAINT pk_atenciones_medicas
        PRIMARY KEY (id_atencion)
);

CREATE TABLE medicamentos (
    codigo_medicamento VARCHAR(30),
    nombre_comercial VARCHAR(120) NOT NULL,
    laboratorio_fabricante VARCHAR(120) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,

    CONSTRAINT pk_medicamentos
        PRIMARY KEY (codigo_medicamento)
);

CREATE TABLE prescripciones (
    id_atencion INT NOT NULL,
    codigo_medicamento VARCHAR(30) NOT NULL,
    cantidad INT NOT NULL,
    indicaciones TEXT NOT NULL,

    CONSTRAINT pk_prescripciones
        PRIMARY KEY (id_atencion, codigo_medicamento)
);