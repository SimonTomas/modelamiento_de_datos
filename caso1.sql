-- Crear y cambiarse a la Base de Datos
CREATE DATABASE empresa;
\c empresa

-- Crear Tablas
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, dep_nombre VARCHAR(60) NOT NULL UNIQUE);

CREATE TABLE trabajadores(
rut VARCHAR(12) PRIMARY KEY UNIQUE, trab_nombre VARCHAR(70) NOT NULL,
trab_direccion VARCHAR(100) NOT NULL,
dep_id INT NOT NULL,
FOREIGN KEY(dep_id) REFERENCES departamentos(id)
);

CREATE TABLE liquidaciones(
id SERIAL PRIMARY KEY,
archivo_drive CHAR NOT NULL UNIQUE,
trab_rut VARCHAR(12) NOT NULL,
FOREIGN KEY(trab_rut) REFERENCES trabajadores(rut)
);
