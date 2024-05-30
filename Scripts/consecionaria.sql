-- Active: 1717090344031@@127.0.0.1@3306@base de datossistema_usuarios

-- Creación de tablas
CREATE TABLE IF NOT EXISTS consecionaria (
    id_consecionaria INT NOT NULL AUTO_INCREMENT,
    Direccion VARCHAR(150) NOT NULL,
    Correo VARCHAR(50) NOT NULL,
    Telefono CHAR(13),
    rol ENUM('admin', 'usuario', 'reporter'),
    PRIMARY KEY(id_consecionaria)
);

CREATE TABLE IF NOT EXISTS Color_auto (
    id_color INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estilo_auto (
    id_Estilo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Estilo VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Autos_venta (
    ID_autos INT NOT NULL AUTO_INCREMENT,
    Marca CHAR(20) NOT NULL,
    Diseño VARCHAR(10) NOT NULL,
    Año VARCHAR(4) NOT NULL,
    id_color INT NOT NULL,
    Cilindradas VARCHAR(8) NOT NULL,
    Modelo VARCHAR(6) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    id_Estilo INT NOT NULL,
    placa VARCHAR(15) NOT NULL,
    PRIMARY KEY(ID_autos),
    FOREIGN KEY (id_color) REFERENCES Color_auto(id_color),
    FOREIGN KEY (id_Estilo) REFERENCES Estilo_auto(id_Estilo)
);

CREATE TABLE IF NOT EXISTS Cliente (
    ID_clientes INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Direccion VARCHAR(60) NOT NULL,
    Correo VARCHAR(30) NOT NULL,
    edad SMALLINT NOT NULL,
    telefono CHAR(13) NOT NULL,
    PRIMARY KEY(ID_clientes)
);

CREATE TABLE IF NOT EXISTS Empleado (
    id_empleado INT NOT NULL AUTO_INCREMENT,
    correo VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    Telefono CHAR(10) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_empleado)
);

CREATE TABLE IF NOT EXISTS historial (
    id_historial INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    id_auto INT NOT NULL,
    fecha_venta DATE NOT NULL,
    PRIMARY KEY(id_historial),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(ID_clientes),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_auto) REFERENCES Autos_venta(ID_autos)
);

-- Inserción de datos
INSERT INTO Color_auto (color) VALUES
('azul'), ('verde'), ('rojo')
ON DUPLICATE KEY UPDATE color=VALUES(color);

INSERT INTO Estilo_auto (Estilo) VALUES
('sedán'), ('SUV'), ('deportivo'), ('coupé'), ('pick-up'), ('hatchback')
ON DUPLICATE KEY UPDATE Estilo=VALUES(Estilo);

INSERT INTO consecionaria (Direccion, Correo, Telefono, rol) VALUES
('Direccion 1', 'email@example.com', '3344546', 'usuario'),
('Direccion 2', 'email2@example.com', '43576346', 'admin'),
('Direccion 3', 'email3@example.com', '435564', 'usuario'),
('Direccion 4', 'email4@example.com', '43574363', 'admin'),
('Direccion 5', 'email5@example.com', '435437', 'usuario'),
('Direccion 6', 'email6@example.com', '47878435', 'admin'),
('Direccion 7', 'email7@example.com', '4367745', 'usuario'),
('Direccion 8', 'email8@example.com', '74365546', 'admin'),
('Direccion 9', 'email9@example.com', '44364477', 'usuario'),
('Direccion 10', 'email10@example.com', '654742757', 'admin')
ON DUPLICATE KEY UPDATE Direccion=VALUES(Direccion);

INSERT INTO Autos_venta (Marca, Diseño, Año, id_color, Cilindradas, Modelo, Precio, id_Estilo, placa) VALUES
('Ferrari', 'deportivo', '2023', 3, 'V12', 'LaFerrari', 3800000.00, 3, 'placas USA'),
('Toyota', 'sedán', '2020', 1, 'V6', 'Camry', 30000.00, 1, 'placas MX'),
('BMW', 'SUV', '2021', 1, 'V8', 'X5', 60000.00, 2, 'placas USA'),
('Audi', 'coupé', '2019', 1, 'V4', 'A5', 45000.00, 4, 'placas EU'),
('Mercedes-Benz', 'sedán', '2022', 2, 'V6', 'E-Class', 70000.00, 1, 'placas USA'),
('Ford', 'pick-up', '2021', 3, 'V8', 'F-150', 50000.00, 5, 'placas MX'),
('Honda', 'hatchback', '2018', 2, 'V4', 'Civic', 20000.00, 6, 'placas USA'),
('Chevrolet', 'deportivo', '2023', 3, 'V8', 'Corvette', 80000.00, 3, 'placas USA'),
('Tesla', 'sedán', '2022', 1, 'eléctrico', 'Model S', 90000.00, 1, 'placas USA'),
('Porsche', 'deportivo', '2020', 2, 'V6', '911', 120000.00, 3, 'placas EU')
ON DUPLICATE KEY UPDATE Marca=VALUES(Marca);

INSERT INTO Cliente (Nombre, Direccion, Correo, edad, telefono) 
VALUES
 ('Rodolfo', 'Mexico', 'rodolfo@maquinadefuego.com', 20, '9531023445'),
 ('Laura', 'USA', 'laura@gmail.com', 32, '1234567890'),
 ('Pedro', 'España', 'pedro@hotmail.com', 45, '9876543210'),
 ('Ana', 'Argentina', 'ana@yahoo.com', 27, '1122334455'),
 ('Carlos', 'Chile', 'carlos@outlook.com', 38, '2233445566'),
 ('Marta', 'Colombia', 'marta@aol.com', 29, '3344556677'),
 ('Javier', 'Peru', 'javier@live.com', 34, '4455667788'),
 ('Lucía', 'Mexico', 'lucia@gmail.com', 25, '5566778899'),
 ('Miguel', 'Uruguay', 'miguel@yahoo.com', 41, '6677889900'),
 ('Sofia', 'Costa Rica', 'sofia@icloud.com', 30, '7788990011')
AS new
ON DUPLICATE KEY UPDATE 
    Nombre = new.Nombre,
    Direccion = new.Direccion,
    Correo = new.Correo,
    edad = new.edad,
    telefono = new.telefono;

INSERT INTO Empleado (correo, Nombre, Direccion, Telefono, Apellido) VALUES
('email@kevincruz.com', 'Kevin', 'Oaxaca', '9533478093', 'Hernandez'),
('maria@empresa.com', 'Maria', 'CDMX', '5512345678', 'Lopez'),
('juan@corporacion.com', 'Juan', 'Monterrey', '8187654321', 'Martinez'),
('ana@negocio.com', 'Ana', 'Guadalajara', '3312345678', 'Garcia'),
('pedro@empresa.com', 'Pedro', 'Puebla', '2223456789', 'Rodriguez'),
('luis@compania.com', 'Luis', 'Cancún', '9981234567', 'Gonzalez'),
('laura@oficina.com', 'Laura', 'Tijuana', '6649876543', 'Perez'),
('carlos@fabrica.com', 'Carlos', 'León', '4771234567', 'Sanchez'),
('marta@servicios.com', 'Marta', 'Querétaro', '4429876543', 'Ramirez'),
('jose@industrias.com', 'Jose', 'Toluca', '7221234567', 'Fernandez')
ON DUPLICATE KEY UPDATE correo=VALUES(correo);

INSERT INTO historial (id_cliente, id_empleado, id_auto, fecha_venta) VALUES
(1, 3, 2, '2023-11-05'),
(2, 4, 1, '2023-12-10'),
(3, 5, 3, '2024-01-15'),
(4, 6, 4, '2024-02-20'),
(5, 7, 5, '2024-03-25'),
(6, 8, 6, '2024-04-30'),
(7, 9, 7, '2024-05-05'),
(8, 10, 8, '2024-06-10'),
(9, 1, 9, '2024-07-15'),
(10, 2, 10, '2024-08-20')
ON DUPLICATE KEY UPDATE fecha_venta=VALUES(fecha_venta);

-- Consultas para mostrar los datos en tablas
SELECT id_consecionaria, Direccion, Correo, Telefono, rol FROM consecionaria;
SELECT ID_autos, Marca, Diseño, Año, id_color, Cilindradas, Modelo, Precio, id_Estilo, placa FROM Autos_venta;
SELECT ID_clientes, Nombre, Direccion, Correo, edad, telefono FROM Cliente;
SELECT id_empleado, correo, Nombre, Direccion, Telefono, Apellido FROM Empleado;
SELECT id_historial, id_cliente, id_empleado, id_auto, fecha_venta FROM historial;

-- Otras consultas útiles
SELECT * FROM Autos_venta ORDER BY Precio ASC;
SELECT * FROM Cliente ORDER BY edad DESC;
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

SELECT * FROM Autos_venta WHERE Año = '2023';

SELECT Nombre, 'Cliente' AS Tipo FROM Cliente
UNION
SELECT Nombre, 'Empleado' AS Tipo FROM Empleado;

SELECT * FROM historial WHERE fecha_venta BETWEEN '2023-01-01' AND '2023-12-31';

SELECT Nombre, edad FROM Cliente WHERE edad > (SELECT AVG(edad) FROM Cliente);

SELECT Nombre FROM Empleado e WHERE NOT EXISTS (
    SELECT 1 FROM historial h WHERE h.id_empleado = e.id_empleado
);

SELECT Nombre, edad FROM Cliente ORDER BY edad DESC LIMIT 10 OFFSET 10;