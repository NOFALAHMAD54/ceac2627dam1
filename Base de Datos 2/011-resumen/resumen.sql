# Subunidad 1:

Ejemplo:

Alumno
    - nombre
    - apellidos
    - fecha_de_nacimiento
    - email
    - telefono

**Sirve para:** saber qué datos vamos a guardar de cada alumno.

# Subunidad 2:

sudo mysql -u root -p
-- Entrar en MySQL como administrador

CREATE DATABASE clase;
-- Crear la base de datos "clase"

USE clase;
-- Seleccionar la base de datos con la que vamos a trabajar

SHOW TABLES;
-- Ver las tablas que existen


---

# Subunidad 3:


CREATE TABLE alumnos (
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    fecha_de_nacimiento VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(100)
);
-- Crear la tabla "alumnos"

SHOW TABLES;
-- Ver las tablas creadas

DESCRIBE alumnos;
-- Ver cómo está formada la tabla

---

# Subunidad 4:

ALTER TABLE alumnos
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;
-- Añadir un identificador único y automático

DESCRIBE alumnos;
-- Comprobar la estructura de la tabla

INSERT INTO alumnos VALUES(
    'Jose Vicente',
    'Carratalá Sanchis',
    '1978-04-14',
    '535252354',
    'info@jocarsa.com',
    NULL
);
-- Insertar un alumno

SELECT * FROM alumnos;
-- Mostrar todos los alumnos


---

# Subunidad 5:

ALTER TABLE alumnos
ADD CONSTRAINT chk_clientes_email
CHECK (
    email IS NULL
    OR email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'
);
-- Comprobar que el email tenga un formato correcto

---

# Subunidad 6:

**Nos la saltamos.**

---

# Subunidad 7: Claves ajenas

CREATE TABLE asignaturas (
    nombre VARCHAR(100)
);
-- Crear la tabla de asignaturas

ALTER TABLE asignaturas
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;
-- Añadir un identificador único a las asignaturas

CREATE TABLE matriculas (
    fecha DATE,
    id_alumno INT,
    id_asignatura INT
);
-- Crear la tabla de matrículas

ALTER TABLE matriculas
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;
-- Añadir un identificador único a las matrículas

---

# Subunidad 9: Vistas

SELECT 
    matriculas.fecha,
    alumnos.nombre AS alumnos.apellidos,
    asignaturas.nombre 
FROM matriculas
LEFT JOIN alumnos ON matriculas.alumno_id = alumnos.Identificador
LEFT JOIN asignaturas ON matriculas.asignatura_id = asignaturas.Identificador;
-- Mostrar información juntando las tres tablas

---

# Subunidad 10:

CREATE USER 'josevicente2627'@'localhost' IDENTIFIED BY 'CEAC123$';
-- Crear un usuario de MySQL

GRANT USAGE ON *.* TO 'josevicente2627'@'localhost';
-- Dar acceso básico al usuario

ALTER USER 'josevicente2627'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;
-- Configurar los límites del usuario

GRANT ALL PRIVILEGES ON empresadam2627.* 
TO 'josevicente2627'@'localhost';
-- Dar todos los permisos sobre la base de datos

FLUSH PRIVILEGES;
-- Aplicar los cambios de permisos

