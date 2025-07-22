create database Medisistema;

use Medisistema;

create table Vacaciones (
	vacaciones_plan DATETIME,
	vacaciones_dis DATETIME
);

create table Tipo_Empleados (
	auxiliar varchar(20),
	celadores varchar(20),
	administrativo varchar(20)
);

 create table Empleados (
 	nombre_emp varchar(100) primary key,
 	telefono_emp varchar(15),
 	correo_emp varchar(100) unique,
 	vacaciones_plan datetime,
 	vacaciones_dis datetime,
 	auxiliares varchar(20),
 	celadores varchar(20),
 	administrativo varchar(20)
);

CREATE TABLE Tipo_Medico (
	titular varchar(15),
	interno varchar(15),
	sustituto varchar(15)
);



create table Medicos (
	nombre_med varchar(100) primary key,
	telefono_med varchar(15),
	correo varchar(100) unique,
	horarios datetime,
	sustitucio datetime,
	vacaciones_plan datetime,
 	vacaciones_dis datetime,
 	titular varchar(15),
	interno varchar(15),
	sustituto varchar(15)
);

CREATE table Pacientes (
	relaciones_pac varchar(100) primary key,
	nombre_med varchar(100),
	horarios datetime
);

ALTER table Medicos add (
	nombre_pac varchar(100)
);

ALTER table Pacientes add (nombre_pac varchar(100));

INSERT INTO `Pacientes` (`nombre_pac`, `horarios`) values
('Paco', '24/07/25, 10:30:00 a.m'),
('Maria', '25/07/25, 10:50:00 a.m'),
('Luis', '24/07/25, 11:00:00 a.m'),
('Marta', '25/07/25, 11:30:00 a.m');

INSERT INTO Medicos (nombre_med, telefono_med, correo,titular, interno, sustituto) values
('Carlos','300025', 'carlos@gmail.com', 'titular', '', ''),
('Antonio','300125', 'antonio@gmail.com', '', 'interno', ''),
('Marco','30144', 'Marco@gmail.com', '', '', 'sustituto');

INSERT INTO Empleados (nombre_emp, telefono_emp, correo_emp, auxiliares, celadores, administrativo) values
('Pedro','380025', 'pedro@gmail.com', '', 'celadores', ''),
('Sofia','389125', 'sofia@gmail.com', 'auxiliares', '', ''),
('Tomas','30144', 'tomas@gmail.com', '', '', 'admistrativo');
