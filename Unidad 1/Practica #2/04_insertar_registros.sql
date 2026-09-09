USE `hernandez-ocon`;

-- Cinco clientes
INSERT INTO clientes (
    documento_identidad,
    nombre_completo,
    telefono,
    correo_electronico
)
VALUES
('CLI001', 'Ana López', '5551000001', 'ana.lopez@example.com'),
('CLI002', 'Carlos Pérez', '5551000002', 'carlos.perez@example.com'),
('CLI003', 'María García', '5551000003', 'maria.garcia@example.com'),
('CLI004', 'José Ramírez', '5551000004', 'jose.ramirez@example.com'),
('CLI005', 'Laura Martínez', '5551000005', 'laura.martinez@example.com');


-- Cinco mascotas
INSERT INTO mascotas (
    id_cliente,
    nombre,
    especie,
    raza,
    fecha_nacimiento
)
VALUES
(1, 'Luna',  'Perro', 'Labrador', '2020-05-10'),
(2, 'Milo',  'Gato',  'Siamés',   '2021-03-15'),
(3, 'Rocky', 'Perro', 'Bulldog',  '2019-08-21'),
(4, 'Nala',  'Gato',  'Persa',    '2022-01-11'),
(5, 'Max',   'Perro', 'Beagle',   '2020-11-30');


-- Cinco veterinarios
INSERT INTO veterinarios (
    documento_identidad,
    nombre_completo,
    especialidad,
    telefono
)
VALUES
('VET001', 'Elena Ruiz',     'Medicina general', '5552000001'),
('VET002', 'Miguel Torres',  'Dermatología',      '5552000002'),
('VET003', 'Sofía Ramírez',  'Cirugía',           '5552000003'),
('VET004', 'Daniel Castro',  'Cardiología',       '5552000004'),
('VET005', 'Paola Mendoza',  'Oftalmología',      '5552000005');


-- Cinco atenciones médicas
INSERT INTO atenciones_medicas (
    id_mascota,
    id_veterinario,
    fecha_hora,
    diagnostico,
    costo_base
)
VALUES
(1, 1, '2026-08-01 10:00:00', 'Infección estomacal leve',       500.00),
(2, 2, '2026-08-02 11:30:00', 'Dermatitis alérgica',            650.00),
(3, 3, '2026-08-03 09:15:00', 'Lesión en pata delantera',       800.00),
(4, 4, '2026-08-04 12:00:00', 'Revisión cardiaca preventiva',   700.00),
(5, 5, '2026-08-05 16:45:00', 'Conjuntivitis',                  550.00);


-- Cinco medicamentos
INSERT INTO medicamentos (
    codigo_medicamento,
    nombre_comercial,
    laboratorio_fabricante,
    precio_unitario
)
VALUES
('MED001', 'Amoxicilina', 'VetPharma',     120.00),
('MED002', 'Dermavet',    'Animal Health', 180.00),
('MED003', 'Meloxicam',   'PetLab',         95.00),
('MED004', 'CardioPet',   'VetCare',       240.00),
('MED005', 'Oftalvet',    'BioAnimal',     135.00);


-- Prescripciones
INSERT INTO prescripciones (
    id_atencion,
    codigo_medicamento,
    cantidad,
    indicaciones
)
VALUES
(1, 'MED001', 10, 'Una tableta cada 12 horas durante 5 días'),
(1, 'MED003',  5, 'Una tableta diaria durante 5 días'),
(2, 'MED002',  1, 'Aplicar en la zona afectada cada 24 horas'),
(3, 'MED003',  5, 'Una tableta diaria durante 5 días'),
(4, 'MED004', 15, 'Una tableta cada 24 horas'),
(5, 'MED005',  1, 'Aplicar dos gotas cada 8 horas');