create table if not exists consecionaria(
	id_consecionaria int not null auto_increment,
	Dirección VARCHAR (150) NOT NULL,
	Correo VARCHAR (50) NOT NULL,
	Telefono CHAR (13),
	rol ENUM('admin', 'usuario','reporter'),
	PRIMARY KEY(id_consecionaria)
);
create table if not exists Autos_venta (
    ID_autos INT NOT NULL auto_increment,
    Marca CHAR(20) NOT NULL,
    Diseño VARCHAR(10) NOT NULL,
    Año VARCHAR(4) NOT NULL,
    id_color int NOT NULL,
    Cilindradas VARCHAR(8) NOT NULL,
    Modelo VARCHAR(6) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    id_Estilo int NOT NULL,
    placa VARCHAR(15) NOT NULL, 
    primary key(ID_autos),
    foreign key (id_color) references color_auto(id_color),
    foreign key (id_Estilo) references Estilo_auto(id_Estilo)
);

-- 
alter table Autos_venta add column id_color int null references color_auto(id_color);
alter table Autos_venta add column id_Estilo int;

create table if not exists Color_auto(
  id_color int not null auto_increment primary key,
  color varchar(50)
);
insert into Color_auto (Color) values
("azul"),
("verde"),
("rojo");
  
create table if not exists Estilo_auto(
  id_Estilo int not null auto_increment primary key,
  Estilo varchar(50)
);

-- ALTER TABLE Autos_venta drop column Marca;
-- ALTER TABLE Autos_venta add column Marca VARCHAR(20) NOT NULL;

create table if not exists Cliente (
   ID_clientes INT NOT NULL auto_increment, 
   Nombre  VARCHAR (30),
   Direccion  VARCHAR (60),
   Correo  VARCHAR (30),
   edad smallint, 
   telefono char(13),
   primary key(ID_clientes)
);
create table if not exists EMPLEADO (
    id_empleado INT NOT NULL auto_increment,
    correo VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    Telefono CHAR(10),
    Apellido VARCHAR (50)NOT NULL, 
     PRIMARY KEY(id_empleado)
);



SELECT id_consecionaria, Dirección,Correo,Telefono,rol FROM Consecionaria;
select ID_autos,Diseño,Año,Color,Cilindradas,Modelo,Precio,EStilo,placa FROM autos_venta;
SELECT ID_clientes, Nombre, Direccion,Correo,edad,Telefono FROM Cliente;
SELECT id_empleado,correo,Nombre,Direccion, Telefono, Apellido FROM Empleado;
SELECT id_historial, id_cliente, id_empleado, id_auto, ID_Empleado,  fecha_venta FROM historial;

use concesionaria;

create table if not exists consecionaria(
	id_consecionaria int not null auto_increment,
	Dirección VARCHAR (150) NOT NULL,
	Correo VARCHAR (50) NOT NULL,
	Telefono CHAR (13),
	rol ENUM('admin', 'usuario','reporter'),
	PRIMARY KEY(id_consecionaria)
);
create table if not exists Autos_venta (
    ID_autos INT NOT NULL auto_increment,
    Marca CHAR(20) NOT NULL,
    Diseño VARCHAR(10) NOT NULL,
    Año VARCHAR(4) NOT NULL,
    Color VARCHAR(12) NOT NULL,
    Cilindradas VARCHAR(8) NOT NULL,
    Modelo VARCHAR(6) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Estilo VARCHAR(14) NOT NULL,
    placa VARCHAR(15) NOT NULL, 
    primary key(ID_autos)
);
    -- ALTER TABLE Autos_venta drop column Marca;
-- ALTER TABLE Autos_venta add column Marca VARCHAR(20) NOT NULL;
;
create table if not exists Cliente (
   ID_clientes INT NOT NULL auto_increment, 
   Nombre  VARCHAR (30),
   Direccion  VARCHAR (60),
   Correo  VARCHAR (30),
   edad smallint, 
   telefono char(13),
   primary key(ID_clientes)
);
create table if not exists EMPLEADO (
    id_empleado INT NOT NULL auto_increment,
    correo VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    Telefono CHAR(10),
    Apellido VARCHAR (50)NOT NULL, 
     PRIMARY KEY(id_empleado)
);
create table if not exists historial (
id_historial int not null auto_increment, 
id_cliente int NOT NULL,
id_empleado int NOT NULL,
id_auto int NOT NULL,
fecha_venta date,
PRIMARY KEY(id_historial)
);

INSERT INTO consecionaria(
	Dirección,
	Correo,
	Telefono,
	rol
)
values ('Direccion 1', 'email@example.com', '3344546', 'usuario'),
       ('Direccion 2', 'email2@ecample.com', '43576346', 'admin'),
	   ('Direccion 3', 'email2@egvvv.com', '435564', 'usuario'),
	   ('Direccion 4', 'email2@revhvv.com', '43574363', 'admin'),
	   ('Direccion 5', 'email2@ebjybjhe.com', '435437', 'usuario'),
	   ('Direccion 6', 'email2@ytrbtdsewcom', '47878435', 'admin'),
	   ('Direccion 7', 'email2@3454hbvr.com', '4367745', 'usuario'),
	   ('Direccion 8', 'email2@bj6ebe.com', '74365546', 'admi'),
	   ('Direccion 9', 'email2@erytbju6u.com', '44364477', 'usuario'),
	   ('Direccion 10', 'email2@56un67bb.com', '654742757', 'admin');


INSERT INTO Autos_venta (
    Marca,
    Diseño, 
    Año,
    Color, 
    Cilindradas, 
    modelo,
    Precio,
    Estilo,
    Placa
) 
VALUES 
('Ferrari', 'deportivo', '2023', 'rojo', 'V12', 'LaFerrari', '3.8 millones', 'deportivo', 'placas USA'),
('Toyota', 'sedán', '2020', 'negro', 'V6', 'Camry', '30,000', 'sedán', 'placas MX'),
('BMW', 'SUV', '2021', 'blanco', 'V8', 'X5', '60,000', 'SUV', 'placas USA'),
('Audi', 'coupé', '2019', 'azul', 'V4', 'A5', '45,000', 'coupé', 'placas EU'),
('Mercedes-Benz', 'sedán', '2022', 'plateado', 'V6', 'E-Class', '70,000', 'sedán', 'placas USA'),
('Ford', 'pick-up', '2021', 'rojo', 'V8', 'F-150', '50,000', 'pick-up', 'placas MX'),
('Honda', 'hatchback', '2018', 'gris', 'V4', 'Civic', '20,000', 'hatchback', 'placas USA'),
('Chevrolet', 'deportivo', '2023', 'amarillo', 'V8', 'Corvette', '80,000', 'deportivo', 'placas USA'),
('Tesla', 'sedán', '2022', 'blanco', 'eléctrico', 'Model S', '90,000', 'sedán', 'placas USA'),
('Porsche', 'deportivo', '2020', 'negro', 'V6', '911', '120,000', 'deportivo', 'placas EU');

INSERT INTO cliente (
    Nombre,
    Direccion,
    Correo,
    edad,
    telefono
) 
VALUES 
('Rodolfo', 'Mexico', 'rodolfo@maquinadefuego.com', '20 años', '9531023445'),
('Laura', 'USA', 'laura@gmail.com', '32 años', '1234567890'),
('Pedro', 'España', 'pedro@hotmail.com', '45 años', '9876543210'),
('Ana', 'Argentina', 'ana@yahoo.com', '27 años', '1122334455'),
('Carlos', 'Chile', 'carlos@outlook.com', '38 años', '2233445566'),
('Marta', 'Colombia', 'marta@aol.com', '29 años', '3344556677'),
('Javier', 'Peru', 'javier@live.com', '34 años', '4455667788'),
('Lucía', 'Mexico', 'lucia@gmail.com', '25 años', '5566778899'),
('Miguel', 'Uruguay', 'miguel@yahoo.com', '41 años', '6677889900'),
('Sofia', 'Costa Rica', 'sofia@icloud.com', '30 años', '7788990011');

INSERT INTO empleado (
    correo,
    nombre,
    Direccion,
    Telefono,
    Apellido
) 
VALUES 
('email@kevincruz.com', 'Kevin', 'Oaxaca', '9533478093', 'Hernandez'),
('maria@empresa.com', 'Maria', 'CDMX', '5512345678', 'Lopez'),
('juan@corporacion.com', 'Juan', 'Monterrey', '8187654321', 'Martinez'),
('ana@negocio.com', 'Ana', 'Guadalajara', '3312345678', 'Garcia'),
('pedro@empresa.com', 'Pedro', 'Puebla', '2223456789', 'Rodriguez'),
('luis@compania.com', 'Luis', 'Cancún', '9981234567', 'Gonzalez'),
('laura@oficina.com', 'Laura', 'Tijuana', '6649876543', 'Perez'),
('carlos@fabrica.com', 'Carlos', 'León', '4771234567', 'Sanchez'),
('marta@servicios.com', 'Marta', 'Querétaro', '4429876543', 'Ramirez'),
('jose@industrias.com', 'Jose', 'Toluca', '7221234567', 'Fernandez');

INSERT INTO historial_ventas (
    id_cliente,
    id_empleado,
    id_auto,
    fecha_venta
) 
VALUES 
(1, 3, 2, '2023-11-05'),
(2, 4, 1, '2023-12-10'),
(3, 5, 3, '2024-01-15'),
(4, 6, 4, '2024-02-20'),
(5, 7, 5, '2024-03-25'),
(6, 8, 6, '2024-04-30'),
(7, 9, 7, '2024-05-05'),
(8, 10, 8, '2024-06-10'),
(9, 1, 9, '2024-07-15'),
(10, 2, 10, '2024-08-20');
    

SELECT id_consecionaria, Dirección,Correo,Telefono,rol FROM Consecionaria;
SELECT ID_autos,Diseño,Año,Color,Cilindradas,Modelo,Precio,EStilo,placa FROM autos_venta;
SELECT ID_clientes, Nombre, Direccion,Correo,edad,Telefono FROM Cliente;
SELECT id_empleado,correo,Nombre,Direccion, Telefono, Apellido FROM Empleado;
SELECT id_historial, id_cliente, id_empleado, id_auto, ID_Empleado,  fecha_venta FROM historial;

SELECT * FROM Autos_venta ORDER BY Precio ASC;

SELECT * FROM Cliente ORDER BY edad DESC;

-- Count the number of records in each table
SELECT COUNT(*) FROM consecionaria;
SELECT COUNT(*) FROM Autos_venta;
SELECT COUNT(*) FROM Cliente;
SELECT COUNT(*) FROM Empleado;
SELECT COUNT(*) FROM historial;
SELECT SUM(Precio) FROM Autos_venta;

SELECT MAX(edad), MIN(edad) FROM Cliente;

SELECT consecionaria.id_consecionaria, Empleado.id_empleado
FROM consecionaria
INNER JOIN Empleado ON consecionaria.id_consecionaria = Empleado.id_empleado;

SELECT historial.id_historial, Autos_venta.ID_autos
FROM historial
INNER JOIN Autos_venta ON historial.id_auto = Autos_venta.ID_autos;

SELECT * FROM Autos_venta
WHERE YEAR(Año) = 2023;

SELECT Nombre, 'Cliente' AS Tipo
FROM Cliente
UNION
SELECT Nombre, 'Empleado' AS Tipo
FROM Empleado;

SELECT * FROM historial
WHERE fecha_venta BETWEEN '2023-01-01' AND '2023-12-31';
SELECT Nombre, edad
FROM Cliente
WHERE edad > (SELECT AVG(edad) FROM Cliente);
SELECT Nombre
FROM Empleado e
WHERE NOT EXISTS (
    SELECT 1 FROM historial h WHERE h.id_empleado = e.id_empleado
);

SELECT Nombre, edad
FROM Cliente
ORDER BY edad DESC
lIMIT 10 OFFSET 10;



