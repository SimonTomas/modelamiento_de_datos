-- Crear y cambiarse a la Base de Datos
CREATE DATABASE colegio;
\c colegio

-- Crear Tablas
CREATE TABLE cursos(ID INT PRIMARY KEY);

CREATE TABLE alumnos(rut VARCHAR(12) PRIMARY KEY, nombre VARCHAR(70) NOT NULL, curso_id INT NOT NULL, FOREIGN KEY(curso_id) REFERENCES cursos(id));

CREATE TABLE profesores(id INT PRIMARY KEY, nombre VARCHAR(70) NOT NULL, departamento VARCHAR(100) NOT NULL);

CREATE TABLE pruebas(id INT PRIMARY KEY, puntaje INT NOT NULL, profesor_id INT NOT NULL, FOREIGN KEY(profesor_id) REFERENCES profesores(id));

CREATE TABLE alumnos_pruebas(alumno_rut VARCHAR(12) NOT NULL, prueba_id INT NOT NULL, FOREIGN KEY(alumno_rut) REFERENCES alumnos(rut), FOREIGN KEY(prueba_id) REFERENCES pruebas(id));