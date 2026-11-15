CREATE TABLE alumno(
        dni INT PRIMARY KEY,
        nombre VARCHAR(20) NOT NULL,
        apellido VARCHAR(20) NOT NULL,
        correo VARCHAR(30)
);

CREATE TABLE curso(
        codigo VARCHAR(20) PRIMARY KEY,
        idioma VARCHAR(30) NOT NULL,
        nivel VARCHAR(20) NOT NULL,
        turno VARCHAR(20) NOT NULL,
        cupo INT NOT NULL,
        valor_cuota DECIMAL(10, 2) NOT NULL
);

CREATE TABLE inscripcion(
        id_inscripcion INT AUTO_INCREMENT,
        fecha DATE NOT NULL,
        pagada BOOLEAN NOT NULL,
        dni_alumno INT,
        codigo_curso VARCHAR(20),
        CONSTRAINT pk_id_inscripcion PRIMARY KEY (id_inscripcion),
        CONSTRAINT fk_dni_alumno FOREIGN KEY (dni_alumno) REFERENCES alumno(dni),
        CONSTRAINT fk_codigo_curso FOREIGN KEY (codigo_curso) REFERENCES curso(codigo)
);

-- Inserción de Cursos (Al menos 3. Supongamos que el ING-A1 tiene cupo 2 para llenarlo)
INSERT INTO curso (codigo, idioma, nivel, turno, cupo, valor_cuota) VALUES
    ('ING-A1', 'Ingles', 'A1', 'Mañana', 2, 25000.00),
    ('POR-B1', 'Portugues', 'B1', 'Tarde', 15, 28000.00),
    ('FRA-A2', 'Frances', 'A2', 'Noche', 10, 30000.00);

-- Inserción de Alumnos (Al menos 8, uno de ellos con correo NULL)
INSERT INTO alumno (dni, nombre, apellido, correo) VALUES
    (41111222, 'Lucia', 'Gomez', 'lucia@gmail.com'),
    (38222333, 'Carlos', 'Perez', NULL), -- Alumno sin correo obligatorio
    (40333444, 'Mariana', 'Lopez', 'mariana@gmail.com'),
    (42444555, 'Juan', 'Martinez', 'juan@gmail.com'),
    (39555666, 'Sofia', 'Ruiz', 'sofia@gmail.com'),
    (43666777, 'Mateo', 'Fernandez', 'mateo@gmail.com'),
    (37777888, 'Camila', 'Diaz', 'camila@gmail.com'),
    (44888999, 'Lucas', 'Torres', 'lucas@gmail.com');

-- Inserción de Inscripciones (Al menos 12 en total.
-- Llenamos el curso ING-A1 que tenía cupo 2 con 2 alumnos para que quede completo)
INSERT INTO inscripcion (dni_alumno, codigo_curso, fecha, pagada) VALUES
    (41111222, 'ING-A1', '2026-03-01', true),  -- Curso ING-A1 lleno (Inscripción 1/2)
    (38222333, 'ING-A1', '2026-03-02', false), -- Curso ING-A1 lleno (Inscripción 2/2 - ¡COMPLETO!)
    (40333444, 'POR-B1', '2026-03-01', true),
    (42444555, 'POR-B1', '2026-03-03', true),
    (39555666, 'POR-B1', '2026-03-04', false),
    (43666777, 'POR-B1', '2026-03-05', true),
    (37777888, 'FRA-A2', '2026-03-01', true),
    (44888999, 'FRA-A2', '2026-03-02', false),
    (41111222, 'FRA-A2', '2026-03-03', true),
    (40333444, 'FRA-A2', '2026-03-04', false),
    (42444555, 'FRA-A2', '2026-03-05', true),
    (39555666, 'FRA-A2', '2026-03-06', true);