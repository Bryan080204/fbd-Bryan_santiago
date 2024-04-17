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
    Marca CHAR(10) NOT NULL,
    Diseño VARCHAR(10) NOT NULL,
    Año VARCHAR(4) NOT NULL,
    Color VARCHAR(12) NOT NULL,
    Cilindradas VARCHAR(8) NOT NULL,
    modelo VARCHAR(6) NOT NULL,
    Precio VARCHAR(15) NOT NULL,
    Estilo VARCHAR(14) NOT NULL,
    Placa VARCHAR(6) NOT NULL, 
    primary key(ID_autos)
);

create table if not exists Cliente (
   ID_clientes INT NOT NULL auto_increment, 
   Nombre  VARCHAR (30),
   Direccion  VARCHAR (60),
   Correo  VARCHAR (30),
   edad VARCHAR (60), 
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
create table if not exists Historial (
    id_historial INT NOT NULL auto_increment,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    id_auto INT NOT NULL,
    fecha_venta date NOT NULL,
    PRIMARY KEY(id_historial),
    foreign key (id_cliente) references Cliente(id_clientes),
    foreign key (id_empleado) references Empleado(id_empleado),
    foreign key (id_auto) references Autos_venta(ID_autos)
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



 INSERT INTO  Autos_venta (
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
    values ('ferrari' ,'deportivo' , '2023', 'color  rojo' ,'v12',
    'Laferrari' , '3.8 millones' , 'deportivo', 'placas USA'),
    
    ();
    

INSERT INTO cliente (
   Nombre,
   Direccion,
   Correo,
   edad,
   telefono
   )
   values ( 'Rodolfo' , 'mexico' , 'email@maquinadefuego' , ' 20 años' , '9531023445 '),
   ();
   
   
   INSERT INTO empleado (
    correo,
    nombre,
    Direccion,
    Telefono,
    Apellido
    )
    values ( 'email@kevincruz' , 'kevin' , 'oaxaca' , '9533478093' , 'hernandez' ),
    ( 'email@kevincruz' , 'kevin' , 'oaxaca' , '9533478093' , 'hernandez' );
    