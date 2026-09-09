USE libreria;



CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    nombre_libro VARCHAR(200) NOT NULL,
    autor VARCHAR(150) NOT NULL
);

CREATE TABLE prestamos (
    id_prestamo INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);


INSERT INTO usuarios (id_usuario, nombre_usuario, email) VALUES
(1, 'Ana Gómez', 'ana@email.com'),
(2, 'Carlos Ruiz', 'carlos@email.com');

INSERT INTO libros (id_libro, nombre_libro, autor) VALUES
(1, 'El Principito', 'Antoine de Saint-Exupéry'),
(2, 'Cien Años de Soledad', 'Gabriel García Márquez');

INSERT INTO prestamos (id_prestamo, id_usuario, id_libro, fecha_prestamo) VALUES
(5001, 1, 1, '2026-03-01'),
(5002, 2, 2, '2026-03-02'),
(5003, 1, 2, '2026-03-05');
