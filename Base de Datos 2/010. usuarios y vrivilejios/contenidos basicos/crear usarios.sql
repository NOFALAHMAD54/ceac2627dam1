-- crea usuario nuevo con contraseña
-- creamos el nombre de usuario que queramos
CREATE USER 
'[NOFAL]'@'[tuservidor]' 
IDENTIFIED  BY '[tucontraseña]';

CREATE USER 'nofal'@'localhost' IDENTIFIED BY 'Nofal123@';
@ = at (en)

-- permite acceso a ese usuario
GRANT USAGE ON *.* TO '[tunombredeusuario]'@'[tuservidor]';
--[tuservidor] == localhost
-- La contraseña puede requerir Mayus, minus, numeros, caracteres, min len

-- quitale todos los limites que tenga

-- dale acceso a la base de datos empresadam
GRANT ALL PRIVILEGES ON empresadam2627.* 
TO 'nofal'@'localhost';

-- recarga la tabla de privilegios
FLUSH PRIVILEGES;
ALTER USER 'NOFAL'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;
