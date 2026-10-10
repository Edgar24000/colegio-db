-- Proyecto: colegio_db
-- Estudiante: Edgar Junior Ramírez Vásquez
-- Matrícula: LR-2025-03006
-- Carrera: Ingeniería en Software
-- Nota: Este script se ejecuta dentro de la base de datos colegio_db.
-- Si ya creaste las tablas e insertaste los datos, NO lo ejecutes de nuevo,
-- porque volverá a intentar crear las tablas e insertar registros.

-- =========================================
-- FASE 1: CREACIÓN DE TABLAS
-- =========================================

CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    edad INT CHECK (edad >= 15)
);

CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    estudiante_id INT REFERENCES estudiantes(estudiante_id)
);

-- =========================================
-- FASE 2: INSERCIÓN DE DATOS
-- =========================================

INSERT INTO estudiantes (nombre, email, edad)
VALUES
    ('Juan Pérez', 'juan@gmail.com', 20),
    ('María Gómez', 'maria@gmail.com', 18),
    ('Pedro Rodríguez', 'pedro@gmail.com', 22);

INSERT INTO cursos (nombre_curso, estudiante_id)
VALUES
    ('Base de Datos', 1),
    ('Programación', 1),
    ('Redes', 2),
    ('Desarrollo Web', 3);

-- =========================================
-- FASE 3: CONSULTAS SOLICITADAS
-- Ejecutar cada consulta por separado para ver su resultado.
-- =========================================

-- 1. Mostrar todos los estudiantes
SELECT * FROM estudiantes;

-- 2. Mostrar los cursos del estudiante con ID 1
SELECT * FROM cursos
WHERE estudiante_id = 1;

-- 3. Mostrar cada estudiante junto con sus cursos
SELECT
    e.nombre AS estudiante,
    c.nombre_curso AS curso
FROM estudiantes e
JOIN cursos c
    ON e.estudiante_id = c.estudiante_id
ORDER BY e.nombre, c.nombre_curso;
