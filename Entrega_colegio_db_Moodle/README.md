# Documentación: Base de Datos `colegio_db`

## Datos generales

- **Estudiante:** Edgar Junior Ramírez Vásquez
- **Matrícula:** LR-2025-03006
- **Carrera:** Ingeniería en Software

## Descripción

`colegio_db` es una base de datos desarrollada en PostgreSQL para un ejercicio práctico de un Sistema de Gestión Escolar. Permite registrar estudiantes, los cursos que toman y consultar la información mediante SQL.

## Estructura de la base de datos

### Tabla `estudiantes`

- `estudiante_id`: identificador autoincrementable y llave primaria.
- `nombre`: nombre del estudiante; obligatorio.
- `email`: correo electrónico; obligatorio y único.
- `edad`: edad entera, con una restricción que exige que sea mayor o igual a 15.

### Tabla `cursos`

- `curso_id`: identificador autoincrementable y llave primaria.
- `nombre_curso`: nombre del curso; obligatorio.
- `estudiante_id`: llave foránea que relaciona el curso con un estudiante.

## Datos de prueba

- 3 estudiantes registrados.
- 4 cursos registrados.
- El estudiante con ID 1 tiene dos cursos.

## Cómo ejecutar en pgAdmin 4

1. Abre pgAdmin 4 y conéctate al servidor PostgreSQL.
2. Haz clic derecho en `Databases` y selecciona `Query Tool` desde una base de datos existente, normalmente `postgres`.
3. Ejecuta el contenido de `01_crear_base_datos.sql` para crear `colegio_db`.
4. Actualiza (`Refresh`) el panel `Databases`.
5. Selecciona la base de datos `colegio_db` y abre `Query Tool`.
6. Ejecuta el contenido de `colegio_db.sql` **solo si la base de datos todavía no tiene las tablas ni los datos**. Si ya realizaste la práctica, no vuelvas a ejecutar las instrucciones `CREATE TABLE` e `INSERT`, porque los registros ya existen.
7. Para comprobar el trabajo, ejecuta por separado las tres consultas que aparecen al final de `colegio_db.sql`.

## Consultas incluidas

1. Mostrar todos los estudiantes.
2. Filtrar los cursos por el ID de un estudiante.
3. Mostrar el nombre del estudiante junto al nombre del curso usando `JOIN`.

## Resultado esperado

La consulta `JOIN` debe mostrar cuatro filas: Juan Pérez con Base de Datos y Programación, María Gómez con Redes y Pedro Rodríguez con Desarrollo Web.
