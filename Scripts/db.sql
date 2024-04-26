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
    modelo VARCHAR(6) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Estilo VARCHAR(14) NOT NULL,
    Placa VARCHAR(15) NOT NULL, 
    primary key(ID_autos)
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



INSERT INTO consecionaria(Dirección,Correo,Telefono,rol)
values ('Direccion 1', 'email@example.com', '3344546', 'usuario'),
       ('Direccion 2', 'email2@ecample.com', '43576346', 'admin'),
	   ('Direccion 3', 'email2@egvvv.com', '435564', 'usuario'),
	   ('Direccion 4', 'email2@revhvv.com', '43574363', 'admin'),
	   ('Direccion 5', 'email2@ebjybjhe.com', '435437', 'usuario'),
	   ('Direccion 6', 'email2@ytrbtdsewcom', '47878435', 'admin'),
	   ('Direccion 7', 'email2@3454hbvr.com', '4367745', 'usuario'),
	   ('Direccion 8', 'email2@bj6ebe.com', '74365546', 'admin'),
	   ('Direccion 9', 'email2@erytbju6u.com', '44364477', 'usuario'),
	   ('Direccion 10', 'email2@56un67bb.com', '654742757', 'admin');



 INSERT INTO  Autos_venta (
    Marca,
    Diseño, 
    Año,
    Color, 
    Cilindradas, 
    Precio,
    Estilo,
    Placa,
    modelo
    )
    values ('ferrari' ,'deportivo' , '2023', 'color  rojo' ,'v12' , '3.8 millones' , 'deportivo', 'placas USA','ygt'),
      ('audi' ,'deportivo' , '2010', 'zul' ,'ti8jm' , '3.1 millones' , 'deportivo', 'placas USA', ' gjs'),
	  ('mclaren' ,'deportivo' , '2021', 'verde' ,'v86s' , '3.2 millones' , 'deportivo', 'placas USA',' kgn'),
      ('lamborghini' ,'deportivo' , '2021', 'amarillo' ,'vmfi87' , '3.3 millones' , 'deportivo', 'placas USA', 'gcf'),
      ('bugatti' ,'deportivo' , '2024', 'naranja' ,'vgfdi6f' , '3.4 millones' , 'deportivo', 'placas USA','lsst'),
	  ('Rolls royce' ,'deportivo' , '2019', 'rosita' ,'v56h' , '3.5 millones' , 'deportivo', 'placas USA', 'lks'),
	  ('marcaren' ,'deportivo' , '2021', 'verde' ,'v62hs' , '3.6 millones' , 'deportivo', 'placas USA' , 'yswt'),
	  ('Bently' ,'deportivo' , '2010', 'morado' ,'hu765wqds' , '3.7 millones' , 'deportivo', 'placas USA' , 'ydkt'),
	  ('pagani' ,'deportivo' , '2015', 'verde' ,'98ygxx' , '3.8 millones' , 'deportivo', 'placas USA', 'lsd'),
	  ('maserati' ,'deportivo' , '2021', 'azul' ,'vdx759h' , '3.9 millones' , 'deportivo', 'placas USA' ,' ykd'),
	  ('Maybach' ,'deportivo' , '2011', 'gris' ,'by956th' , '3.10 millones' , 'deportivo', 'placas USA' ,  'kdn');
    
    

INSERT INTO cliente (
   Nombre,
   Direccion,
   Correo,
   edad,
   telefono
   )
   values  ( 'Rodolfo' , 'mexico' , 'email@maquinadefuego' , 20 , '9531023445 '),
           ( 'gerardo' , 'mexico' , 'email@mapoghuihiothgllin1234' , ' 25 años' , '9567623445 '),
		   ( 'kevin' , 'mexico' , 'email@grtehtry64re' , ' 20 años' , '9531054745 '),
		   ( 'gibran' , 'mexico' , 'email@yrtkmy6yj' , ' 22 años' , '953105524 '),
		   ( 'arcangel' , 'mexico' , 'email@ergthtm656' , ' 28 años' , '953544745 '),
		   ( 'angel' , 'mexico' , 'email@jdwfbuir489' , ' 22 años' , '953157745 '),
		   ( 'leonel' , 'mexico' , 'email@reg50ggef' , ' 24 años' , '95310454545 '),
		   ( 'william' , 'mexico' , 'email@eegrtjhyy6' , ' 21 años' , '9531346745 '),
		   ( 'luis' , 'mexico' , 'email@luisubdfre' , ' 20 años' , '9539800745 '),
 		   ( 'oliverio' , 'mexico' , 'email@grtñetybñrg' , ' 25 años' , '9531054645 '),

   ();
   
   
   INSERT INTO empleado (
    correo,
    nombre,
    Direccion,
    Telefono,
    Apellido
    )
    values ( 'email@kevincruz' , 'kevin' , 'oaxaca' , '9533478093' , 'hernandez' ),
           ( 'email@grsxhyfr' , 'Noe' , 'oaxaca' , '953376493' , 'cruz' ),
		   ( 'email@ejft58y75r' , 'angel' , 'oaxaca' , '953376493' , 'cruz' ),
		   ( 'email@ybyrt6767' , 'willi' , 'oaxaca' , '95597493' , 'sanchez' ),
	       ( 'email@grsxefgh43r' , 'gibran' , 'oaxaca' , '95756493' , 'cruz' );
           




    
    