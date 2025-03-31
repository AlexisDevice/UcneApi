TRUNCATE TABLE Usuarios RESTART IDENTITY CASCADE;
TRUNCATE TABLE Materias RESTART IDENTITY CASCADE;
TRUNCATE TABLE Profesores RESTART IDENTITY CASCADE;
TRUNCATE TABLE Comentarios RESTART IDENTITY CASCADE;
TRUNCATE TABLE Carreras RESTART IDENTITY CASCADE;






create table Usuarios(
    id serial primary key,
    user_name varchar(50),
    email varchar(50),
    matricula varchar(9),
    user_password varchar(30)
);

create table Materias(
    materiaId serial primary key,
    nombre varchar(100),
    codigo varchar(7),
    profesorId integer,
    carreraId integer
);

INSERT INTO Materias (materiaId, codigo, nombre, profesorId, carreraId) VALUES
(1, 'HUM-111', 'Lengua Española y Técnica de Expresión I', 1, 1),
(2, 'MAT-125', 'Precalculo', 2, 1),
(3, 'HUM-123', 'Filosofía', 3, 1),
(4, 'QMA-117', 'Química I', 4, 1),
(5, 'QMA-118', 'Laboratorio de Química I', 5, 1),
(6, 'FIS-136', 'Física I', 6, 1),
(7, 'FIS-137', 'Laboratorio Física I', 7, 1),
(8, 'ORI-116', 'Orientación Académica', 8, 1),

(9, 'HUM-121', 'Lengua Española y Técnica de Expresión II', 9, 1),
(10, 'FIS-230', 'Física II', 10, 1),
(11, 'FIS-231', 'Laboratorio Física II', 11, 1),
(12, 'MAT-140', 'Cálculo Diferencial', 12, 1),
(13, 'ISC-201', 'Introducción a la Ingeniería en Sistemas', 13, 1),
(14, 'ISC-202', 'Laboratorio Introducción a la Ingeniería en Sistemas', 14, 1),
(15, 'ISC-203', 'Estructuras Discretas', 15, 1),

(16, 'ISC-204', 'Doctrina Social de la Iglesia', 16, 1),
(17, 'ISC-205', 'Cálculo Integral', 17, 1),
(18, 'MAT-141', 'Física III', 18, 1),
(19, 'ISC-206', 'Laboratorio de Física III', 19, 1),
(20, 'ISC-207', 'Técnica de Programación', 20, 1),
(21, 'ISC-208', 'Laboratorio de Técnica de Programación', 21, 1),
(22, 'ISC-209', 'Actividad Cocurricular', 22, 1),
(23, 'ISC-210', 'Educación en Valores', 23, 1),

(24, 'ISC-211', 'Metodología de la Investigación', 24, 1),
(25, 'ISC-212', 'Contabilidad General', 25, 1),
(26, 'ISC-213', 'Cálculo Vectorial', 26, 1),
(27, 'ISC-214', 'Programación I', 27, 1),
(28, 'ISC-215', 'Laboratorio de Programación I', 28, 1),
(29, 'ISC-216', 'Estructura de Datos', 29, 1),
(30, 'ISC-217', 'Ecología y Preservación del Medio Ambiente', 30, 1),

(31, 'ISC-218', 'Álgebra Lineal', 31, 1),
(32, 'ISC-219', 'Electrónica Aplicada', 32, 1),
(33, 'ISC-220', 'Análisis de Sistemas', 33, 1),
(34, 'ISC-221', 'Programación II', 34, 1),
(35, 'ISC-222', 'Laboratorio de Programación II', 35, 1),
(36, 'ISC-223', 'Sistemas Operativos', 36, 1),
(37, 'ISC-224', 'Laboratorios Sistemas Operativos', 37, 1),
(38, 'ISC-225', 'Principios de Seguridad Informática', 38, 1),

(39, 'ISC-226', 'Probabilidad y Estadística', 39, 1),
(40, 'ISC-227', 'Base de Datos I', 40, 1),
(41, 'ISC-228', 'Laboratorio Base de Datos I', 41, 1),
(42, 'ISC-229', 'Arquitectura del Computador', 42, 1),
(43, 'ISC-230', 'Programación III', 43, 1),
(44, 'ISC-231', 'Laboratorio Programación III', 44, 1),
(45, 'ISC-232', 'Ecuaciones Diferenciales', 45, 1),
(46, 'ISC-233', 'Diseño de Sistemas', 46, 1),

(47, 'ISC-234', 'Proyecto Aplicado', 47, 1),
(48, 'ISC-235', 'Mantenimiento del Hardware', 48, 1),
(49, 'ISC-236', 'Teleproceso y Redes', 49, 1),
(50, 'ISC-237', 'Laboratorio de Teleproceso y Redes', 50, 1),
(51, 'ISC-238', 'Programación Aplicada I', 51, 1),
(52, 'ISC-239', 'Laboratorio Programación Aplicada I', 52, 1),
(53, 'ISC-241', 'Pasantía I', 53, 1),
(54, 'ISC-242', 'Ingeniería Económica', 54, 1),
(55, 'ISC-243', 'Organización y Administración de Sistemas', 55, 1),
(56, 'ISC-244', 'Base de Datos II', 56, 1),
(57, 'ISC-245', 'Laboratorio de Base de Datos II', 57, 1),
(58, 'ISC-246', 'Programación Aplicada II', 58, 1),
(59, 'ISC-247', 'Computación Centrada en Redes', 59, 1),
(60, 'ISC-248', 'Simulación Digital', 60, 1);

create table Carreras(
    carreraId serial primary key,
    nombre varchar(100)
);

INSERT INTO Carreras (nombre) 
VALUES 
    ('Ingenieria en sistema y computo'), 
    ('Ingenieria civil'), 
    ('Odontología'), 
    ('Medicina'),
	('Psicologia'),
	('Contabilidad'),
	('Mercadeo'),
	('Diseños e interiores'),
	('Administracion De Empresa');

create table Profesores(
    profesorId serial primary key,
    nombre varchar(25),
    apellido varchar(25),
    correo varchar(100)
);

insert into Profesores (nombre,apellido,correo) values('miguel','Jimenez','miguelJimenez@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Raysa','Gil','RaysaGil@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Nelson','Gonzales','NelsonGonsalez@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Junio','Gil','JunioGil@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Enel','almonte','Enelalmonte@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Gregory','Suarez','GregorySuarez@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Juan','Bello','JuanBello@gmail.com');
insert into Profesores (nombre,apellido,correo) values('favio','lopez','faviolopez@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Hiciano','marte','hicianomarte@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Eury','Gonzales','euryGonzales@gmail.com');
insert into Profesores (nombre,apellido,correo) values('Rafael','Gonzales','RafaelGonzales@gmail.com');

create table Comentarios(
    id serial primary key,
    contenido text,
    materiaId integer,
    usuarioId integer
);

insert into Usuarios (user_name, email, matricula, user_password) values ('Admin', 'admin@email.com', '2017-0294', 'Admin#1234');