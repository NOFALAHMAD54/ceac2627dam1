Subunidad 1:
Ejemplo:
Alumno
	-nombre
  -apellidos
  -fecha_de_nacimiento
  -email
  -telefono


Subunidad 2:
sudo mysql -u root -p

CREATE DATABASE Juegos;
USE Juegos;
SHOW TABLES;

Subunidad 3:
CREATE TABLE Juegos (
    nombre VARCHAR(100),
    armas VARCHAR(100),
    nivel VARCHAR(100)
);
SHOW TABLES;
DESCRIBE Juegos;

Subunidad 4:
ALTER TABLE Juegos
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;
DESCRIBE Juegos;
INSERT INTO Juegos VALUES(
	'SPEED',
  'Escopeta Legendaria',
  '79',
  NULL
);
SELECT * FROM Juegos;


Subunidad 6: (nos la saltamos)

Subunidad 7: Claves ajenas
CREATE TABLE asignaturas (
    nombre VARCHAR(100)
);
ALTER TABLE asignaturas
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;

CREATE TABLE matriculas (
    fecha DATE,
    id_alumno INT,
    id_asignatura INT
);
ALTER TABLE matriculas
ADD Identificador INT AUTO_INCREMENT PRIMARY KEY;

Subunidad 9: Vistas: Pedir algo que involucre a todas las tablas
SELECT 
matriculas.fecha,
alumnos.nombre AS 
alumnos.apellidos,
asignaturas.nombre 
FROM matriculas
LEFT JOIN alumnos ON matriculas.alumno_id = alumnos.Identificador
LEFT JOIN asignaturas ON matriculas.asignatura_id = asignaturas.Identificador;

Subunidad 10:
CREATE USER 'josevicente2627'@'localhost' IDENTIFIED BY 'CEAC123$';
GRANT USAGE ON *.* TO 'josevicente2627'@'localhost';

ALTER USER 'josevicente2627'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON empresadam2627.* 
TO 'josevicente2627'@'localhost';

FLUSH PRIVILEGES;
