CREATE DATABASE SIIA;
USE SIIA;

CREATE TABLE users(
   id int(11) not null,
   username VARCHAR(16) NOT  null,
   password VARCHAR(60) NOT NULL, 
   fullname VARCHAR(100) NOT NULL,
   email varchar(60) not null,
   semestre varchar(15) not null,
   cve_carrera varchar(15)not null,
   CONSTRAINT fk_cve_carrera FOREIGN KEY(cve_carrera) REFERENCES carrera(cve_carrera)
   
);
ALTER TABLE users
  ADD PRIMARY KEY (id);

  ALTER TABLE users
  modify id int(11) not null AUTO_INCREMENT, AUTO_INCREMENT = 1;

-- CREATE TABLE users (
--   id int(11) not null,
--   numcontrol INT(11) NOT NULL,
--   name VARCHAR(16) NOT NULL,
--   email VARCHAR(20) NOT NULL,
--   semestre INT(15) NOT NULL,
--   carrera VARCHAR(100) NOT NULL,
--   password VARCHAR(60) NOT NULL,
--   CONSTRAINT fk_carrera FOREIGN KEY(carrera) REFERENCES carrera(cve_carrera)
-- );
-- ALTER TABLE users
--   ADD PRIMARY KEY (id);

--   ALTER TABLE users
--   modify id int(11) not null AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- DESCRIBE users;
-- INSERT INTO users (id, numcontrol, name, email, semestre, carrera, password)
-- VALUES (1, 17240410, 'lizbeth', 'lizvds08@gmail.com','6', 'ISX', 'Verdines98');
-- SELECT * FROM alumnos;
---------------------------------------------------------------------------------------------------------
CREATE TABLE carrera(
cve_carrera varchar(15) NOT NULL,
name_C VARCHAR(20) NOT NULL,
);
ALTER TABLE carrera
ADD PRIMARY KEY (cve_carrera);
DESCRIBE carrera;
INSERT INTO carrera (cve_carrera, name_C)
VALUES ('ISX', 'ING. Sistemas computacionales');
VALUES ('TIX', 'ING. Tecnologias de la informacion');
SELECT * FROM carrera;
----------------------------------------------------------------------------------------------------------

CREATE TABLE materia (
  cve_maestro varchar(11) NOT NULL,
  nombre_mat VARCHAR(150) NOT NULL,
  grupo VARCHAR(10) NOT NULL,
  horario VARCHAR(100) NOT NULL,
  aula varchar(15) NOT NULL,
  cve_carrera varchar(15) NOT NULL,
  CONSTRAINT fk_cvecarrera FOREIGN KEY(cve_carrera) REFERENCES carrera(cve_carrera)
);
DESCRIBE materia;

INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCD1015', 'LENGUAJES Y AUTOMATAS I', 'B', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D4', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCH1024', 'TALLER DE ADMINISTRACION', 'B', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D5', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCD1016', 'LENGUAJES Y AUTOMATAS II','B', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D6', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('DAD1404', 'ARQUITECTURA DE APLICACION EMPRESARIALES', 'B','LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D7', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACD0908', 'DESARROLLO SUSTENTABLE', 'B', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D8', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1052', 'PROBABILIDAD Y ESTADISTICA', 'B','LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-D9', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0901', 'CALCULO DIFERENCIAL', 'A', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-F5', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0902', 'CALCULO INTEGRAL', 'A', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-F6', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0904', 'CALCULO VECTORIAL', 'A', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-F7', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0905', 'ECUACIONES DIFERENCIALES', 'A', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-F8', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 'A', 'LUNES, MIERCOLES 07:00-08:40 Y VIERNES 07:00-07:50', 'C-C-LC2', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0901', 'CALCULO DIFERENCIAL', 'B', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D1', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCA1025', 'TALLER DE BASE DE DATOS', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D11', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCD1018', 'PRINCIPIOS ELECTRICOS Y APLICACIONES DIGITALES', 'C', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D12', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D13', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('DAB1445', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MOVILES', 'B', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D14', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACD0908', 'DESARROLLO SUSTENTABLE', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D2', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AED1286', 'POO', 'E', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D15', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACA0907', 'TALLER DE ETICA', 'C', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D3', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCD1015', 'LENGUAJES Y AUTOMATAS I', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D4', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCH1024', 'TALLER DE ADMINISTRACION', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D5', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('SCD1016', 'LENGUAJES Y AUTOMATAS II', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D6', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('DAD1404', 'ARQUITECTURA DE APLICACIONES EMPRESARIALES', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D7', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1052', 'PROBABILIDAD Y ESTADISTICA', 'A', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D7', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0904', 'CALCULO VECTORIAL', 'B', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-D9', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0902', 'CALCULO INTEGRAL', 'B', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-F5', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0903', 'ALGEBRA LINEAL', 'D', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-F6', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0905', 'ECUACIONES DIFERENCIALES', 'B', 'LUNES, MIERCOLES 08:45-10:25 Y VIERNES 08:45-09:35', 'C-C-F7', 'ISX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0901', 'CÁLCULO DIFERENCIAL', 'A', 'MARTES, JUEVES 15:50-17:30 Y VIERNES 16:40-17:30', 'C-C-D1 '. 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEA1063', 'TALLER DE BASE DE DATOS', 'A', 'MARTES, JUEVES 15:50-17:30', 'C-C-D11', 'TIX');  
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIC1005' ,'ARQUITECTURA DE COMPUTADORAS' , 'A', 'MARTES Y JUEVES 15:50-17:30', 'C-C-D12', 'TIX');  
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIC1023' ,'NEGOCIOS ELECTRONICOS II' , 'A', 'MARTES Y JUEVES 15:50-17:30', 'C-C-D13', 'TIX');  
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEB1055', 'PROGRAMACION WEB', 'A', 'MARTES Y JUEVES 15:50-17:30 Y VIERNES 16:40-17:30', 'C-C-D14', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIC1022', 'NEGOCIOS ELECTRONICOS I', 'A', 'MARTES Y JUEVES 15:50-17:30', 'C-C-D15', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACF0902', 'CALCULO INTEGRAL', 'A', 'MARTES Y JUEVES 15:50-17:30 Y VIERNES 16:40-17:30', 'C-C-D2', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('ACD0908', 'DESARROLLO SUSTENTABLE', 'A', 'MARTES Y JUEVES 15:50-17:30 Y VIERNES 16:40-17:30', 'C-C-D5', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1052', 'PROBABILIDAD Y ESTADISTICA', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-D1', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-D11', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIC1015', 'INGENIERIA DEL CONOCIMIENTO', 'A', 'MARTES Y JUEVES 17:35-19:15', 'C-C-D15', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIF1024', 'PROGRAMACION II', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-LC1', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIF1013', 'FUNDAMENTOS DE REDES', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-LC3', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('TIF1025', 'REDES DE COMPUTADORAS', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-LC4', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('GGD1405', 'GESTION DE SERVICIOS VoIP', 'A', 'MARTES Y JUEVES 17:35-19:15 Y VIERNES 18:25-19:15', 'C-C-LC2', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEB1011', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MOVILES', 'A', 'MARTES Y JUEVES 19:20-21:00 Y VIERNES 20:10-21:00', 'C-C-D11', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEF1032', 'FUNDAMENTOS DE PROGRAMACION', 'A', 'MARTES Y JUEVES 19:20-21:00 Y VIERNES 20:10-21:00', 'C-C-D14', 'TIX');
INSERT INTO materia (cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera)
VALUES ('AEB1054', 'POO', 'A', 'MARTES Y JUEVES 19:20-21:00 Y VIERNES 20:10-21:00', 'C-C-LC1', 'TIX');
