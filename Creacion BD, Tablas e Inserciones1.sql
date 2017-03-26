--CREACION DE LA BASE DE DATOS PARA EL PROYECTO
CREATE DATABASE ProyectoBD2;

--USAR BD ProyectoBD2
USE [ProyectoBD2]
GO


--CREACION DE TABLAS

--Tabla TipoPersona
CREATE TABLE Tipo_Personas (
IdTipoPersona Int Identity(1,1) not null PRIMARY KEY,
DescripcionTipoPersona VarChar(60) not null,
activoTipoPersona bit not null
);

--Tabla Usuario
CREATE TABLE Tipo_Usuario (
IdTipoUsuario Int Identity(1,1) not null PRIMARY KEY,
DescripcionTipoUsuario VarChar(60) not null,
activoTipoUsuario bit not null
);

--Tabla Tipo Telefonos
CREATE TABLE TipoTelefonos (
IdTipoTelefono Int Identity(1,1) not null PRIMARY KEY,
DescripcionTipoTel VarChar(50),
activoTipoTelefono bit not null
);

--Tabla Genero
CREATE TABLE Genero(
IdGenero Int Identity(1,1) not null PRIMARY KEY,
DescripcionGenero varchar(20) not null
);

--Tabla Personas
CREATE TABLE Personas (
IdPersona Int Identity(1,1) not null PRIMARY KEY,
IdTipoUsuario Int Foreign Key References Tipo_Usuario(IdTipoUsuario),
IdTipoPersona Int Foreign Key References Tipo_Personas(IdTipoPersona),
IdGenero Int References Genero(IdGenero),
);

--Tabla Telefonos
CREATE TABLE Telefonos (
IdTelefono Int Identity(1,1) not null PRIMARY KEY,
IdTipoTelefono Int Foreign Key References TipoTelefonos(IdTipoTelefono),
IdPersona Int Foreign Key References Personas(IdPersona),
Telefono Int not null,
activoTelefono bit not null
);

--Tabla Tipo Email
CREATE TABLE TipoEmail (
IdTipoEmail Int Identity(1,1) not null PRIMARY KEY,
DescripcionTipoEmail VarChar(50),
activoTipoEmail bit not null
);

--Tabla Emails
CREATE TABLE Emails (
IdEmail Int Identity(1,1) not null PRIMARY KEY,
IdTipoEmail Int Foreign Key References TipoEmail(IdTipoEmail),
IdPersona Int Foreign Key References Personas(IdPersona),
Email Varchar(60),
activoEmail bit not null
);

--Tabla Distritos
CREATE TABLE Provincias (
IdProvincia Int Identity(1,1) not null PRIMARY KEY,
DescripcionProvincia VarChar(50)
);

--Tabla Cantones
CREATE TABLE Cantones (
IdProvincia Int Foreign Key References Provincias(IdProvincia),
IdCanton Int Identity(1,1) Not null PRIMARY KEY(IdProvincia, IdCanton),
DescripcionCanton Varchar(50)
);

--Tabla Provincias
CREATE TABLE Distritos (
IdProvincia int, 
IdCanton Int, 
Foreign key(IdProvincia, IdCanton) References Cantones(IdProvincia, IdCanton),
IdDistrito Int Identity(1,1) Not null, 
PRIMARY KEY(IdProvincia, IdCanton, IdDistrito),
DescripcionDistrito VarChar(50)
);

--Tabla Direcciones
CREATE TABLE Direcciones (
IdProvincia int, 
IdCanton Int, 
IdDistrito Int, 
Foreign Key(IdProvincia, IdCanton, IdDistrito) References Distritos(IdProvincia, IdCanton, IdDistrito),
IdDireccion Int Identity(1,1) not Null,
PRIMARY KEY(IdProvincia, IdCanton, IdDistrito, IdDireccion),
IdPersona Int Foreign Key References Personas(IdPersona),
Descripcion VarChar(50),
activoDireccion bit not null
);

--Tabla Nacional
CREATE TABLE Nacional (
IdNacional Int Identity(1,1) not null PRIMARY KEY,
IdPersona Int Foreign Key References Personas(IdPersona),
IdIdentificacion Char(9) not null,
Nombre Varchar(50) not null,
Apellido1 Varchar(50) not null,
Apellido2 Varchar(50) not null
);

--Tabla Extranjera
CREATE TABLE Extranjera (
IdExtranjera Int Identity(1,1) not null PRIMARY KEY,
IdPersona Int Foreign Key References Personas(IdPersona),
IdIdentificacion Int not null,
Nombre Varchar(50) not null,
Apellido1 Varchar(50) not null,
);

--TipoTransaccion
CREATE TABLE TipoTransaccion (
IdTipoTrasaccion Int Identity(1,1) not null PRIMARY KEY,
DescripcionTipoTransaccion VarChar(50) not null,
activoTipoTransaccion bit not null
);

--Bitacora
CREATE TABLE Bitacora (
IdBitacora Int Identity(1,1) not null PRIMARY KEY,
IdTipoTrasaccion Int Foreign Key References TipoTransaccion(IdTipoTrasaccion),
IdPersona Int Foreign Key References Personas(IdPersona),
Fecha DATETIME DEFAULT GETDATE(),
DescripcionEspecifica VarChar(60)
);

--Administrador
CREATE TABLE Administrador(
IdAdmi Int Identity(1,1) not null PRIMARY KEY,
IdPersona Int Foreign Key References Personas(IdPersona) not null,
IdTipoPersona Int Foreign Key References Tipo_Personas(IdTipoPersona) not null,
IdTipoUsuario Int Foreign Key References Tipo_Usuario(IdTipoUsuario) not null,
IdEmail Int Foreign Key References Emails(IdEmail) not null,
IdTelefono Int Foreign Key References Telefonos(IdTelefono) not null,
IdProvincia int, 
IdCanton Int, 
IdDistrito Int, 
IdDireccion Int, 
Foreign key(IdProvincia, IdCanton, IdDistrito, IdDireccion) References Direcciones(IdProvincia, IdCanton, IdDistrito, IdDireccion),
usernameAdm varchar(20) not null,
passwordAdm varchar(20) not null,
activoAdm bit not null
);

--Operador
CREATE TABLE Operador(
IdOpe Int Identity(1,1) not null PRIMARY KEY,
IdPersona Int Foreign Key References Personas(IdPersona) not null,
IdTipoPersona Int Foreign Key References Tipo_Personas(IdTipoPersona)not null,
IdTipoUsuario Int Foreign Key References Tipo_Usuario(IdTipoUsuario) not null,
IdEmail Int Foreign Key References Emails(IdEmail) not null,
IdTelefono Int Foreign Key References Telefonos(IdTelefono) not null,
IdProvincia int, 
IdCanton Int, 
IdDistrito Int, 
IdDireccion Int, 
Foreign key(IdProvincia, IdCanton, IdDistrito, IdDireccion) References Direcciones(IdProvincia, IdCanton, IdDistrito, IdDireccion),
usernameOpe varchar(20) not null,
passwordOpe varchar(20) not null,
activoOpe bit not null
);

--Padron
Create TABLE Padron (
Cedula varchar(50),
Folio varchar(50),
FechaSuceso varchar(50),
Genero Varchar(50),
Indicador_Defuncion varchar(50),
Apellido1 Varchar(50),
Apellido2 Varchar(50),
Nombre Varchar(50),
NombrePadre Varchar(50),
NombreMadre Varchar(50),
LugarNacimiento Varchar(50)
);

Alter table Padron
add activo_Padron bit not null default 1;




select top 10 *
from [ProyectoBD2].[dbo].[Padron]


----Inserts 
----Provincias
--INSERT INTO Provincias (DescripcionProvincia)
--VALUES ('San Jose'),
--		('Alajuela'),
--		('Cartago'),
--		('Heredia'),
--		('Guanacaste'),
--		('Puntarenas'),
--		('Limon');

--Select * from Provincias



--INSERT INTO Distritos(DescripcionDistrito)
--VALUES ('Alajuelita'),  --canton alajuelita  --SAN JOSE
--		('San Antonio'), --Aljuelita SAN JOSE
--		('Aserrí'), --Aserri SAN JOSE
--		('Salitrillos'), --Aserri SAN JOSE
--		('Curridabat'), --Curridabat SAN JOSE
--		('Tirrases'), --Curridabat san jose
--		('Desamparados'),  --Desamparados san jose
--		('Los Guido'),  -- desamparados san jose
--		('San Antonio'), --desamparados san jose
--		('San Rafael Abajo'), --desamparados san jose
--		('San Rafael Arriba'), --desamparados san jose
--		('Escazú'), --Escazú san jose
--		('San Antonio'), --escazu san jose
--		('Calle Blancos'), --Goicoechea san jose
--		('Sabanilla'), --Montes de oca san jose
--		('San Pedro'),  --montes de oca san jose
--		('Ciudad Colón'), --mora san jose
--		('San Isidro de El General'), --perez zeledon
--		('Hatillo'), --central san jose
--		('Pavas'), --central san jose
--		('San Francisco de Dos Ríos'), --central san jose
--		('Uruca'), --central san jose
--		('Zapote'), --Central san jose
--		('Pozos'), --santa ana san jose
--		('León XIII'), --tibas san jose
--		('San Juan'), -- tibas san jose
--		('Dulce Nombre de Jesús'), --Vasquez de coronado  san jose
--		('Alajuela'), --Alajuela alajuela
--		('Guácima'), --Alajuela alajuela
--		('Río Segundo'), --alajuela alajuela
--		('Garita'), --alajuela alajuela
--		('San Ramón'), --san ramon alajuela
--		('Peñas Blancas'), --san ramon alajuela
--		('San Juan'), --san ramon alajuela
--		('Grecia'), --frecia alajuela
--		('San José'), --grecia alajuela
--		('Atenas'), --atenas alajuela
--		('Naranjo'), --naranjo alajuela
--		('San Miguel'), --naranjo alajuela
--		('Buenos Aires'), --naranjo alajuela
--		('San Pedro'), --Poás alajuela
--		('Orotina'), --Orotina alajuela
--		('Aguas Zarcas'), --San Carlos alajuela
--		('Pital'), --San carlos alajuela
--		('La Fortuna'), -- san carlos alajuela
--		('Zarcero'), --zarcero alajuela
--		('Sarchi'), --Valverde Vega alajuela
--		('Upala'), --Upala alajuela
--		('Caño Negro'), --Los chiles alajuela
--		('San Rafael'), --Gautuso alajuela
--		('San Nicolás'), --Cartago cartago
--		('Carmen'), --Cartago cartago
--		('Tierra Blanco'),  --cartago cartago
--		('Paraiso'), --Paraiso cartago
--		('Orosi'), --paraiso cartago
--		('Tucurrique'), --Jiménez cartago
--		('Pejibaye'), --Jimenes cartago
--		('Turrialba'), --turrialba cartago
--		('Chirripo'), --turrialba cartago
--		('San Rafael'), --Oreamuno cartago
--		('Tejar'), --El Guarco cartago
--		('Heredia'), --Heredia heredia
--		('Mercedes'), --Heredia heredia
--		('Barva'), --barva heredia
--		('San Pablo'), --Barva heredia
--		('Santo Domingo'), --Santo Domingo heredia
--		('San Vicente'), -- santo domingo heredia
--		('San Rosa'), -- santo domingo heredia
--		('Santa Barbara'), --santa barbara heredia
--		('San Juan'), --santa barbara heredia
--		('San Rafael'), --San rafael heredia
--		('Ángeles'), --san rafael heredia
--		('San Isidro'), --san isidro heredia
--		('Concepcion'), --SAN isidro heredia
--		('San Antonio'), --Belen Heredia
--		('San Asuncion'), --Belen heredia
--		('Puerto Viejo'), --Sarapiquí heredia
--		('La Virgen'), --Sarapiqui heredia
--		('Liberia'), --Liberia guanacaste
--		('Nicoya'), --liberia guanacaste
--		('Santa Cruz'), --Santa cruz guanacaste
--		('Tamarindo'), -- santa cruz guanacaste
--		('Bagaces'), --Bagaces guanacaste
--		('Sardinal'), --Carrillo guanacaste
--		('Cañas'), --Cañas guanacaste
--		('Las Juntas'), --Abangares guanacaste
--		('Tilarán'), --Tilaran guanacaste
--		('Zapotal'), --Nandayure guanacaste
--		('La Cruz'), --La cruz guanacaste
--		('Santa Cecilia'), --las cruz guanacaste
--		('Puntarenas'), --puntarenas puntarenas
--		('Manzanillo'), --puntarenas puntarenas
--		('Barranca'), --puntarenas puntarenas
--		('Monteverde'), ----puntarenas puntarenas
--		('Cobano'), --puntarenas puntarenas
--		('Chacarita'), --puntarenas puntarenas
--		('El Roble'), --puntarenas puntarenas
--		('Buenos Aires'), --Esparza puntarenas
--		('San Jeronimo'), --Esparza Puntarenas
--		('Bueno Aires'), --Buenos aires puntarenas
--		('Boruca'), --Buenos Aires puntarenas
--		('Cortes'), --osa puntarenas
--		('Bahía Ballena'), --osa puntarenas
--		('Quepos'), --quepos puntarenas
--		('Golfito'), --golfito puntarenas
--		('Puerto Jimenez'), --golfito puntarenas
--		('San Vito'),  --Coto brus puntarenas
--		('Sabalito'), --coto brus puntarenas
--		('Parrita'), --Parrita puntarenas
--		('Corredor'), --Corredores puntarenas
--		('Jaco'), --Garabito puntarenas
--		('Tárcoles'), --Garabito puntarenas
--		('Limon'), --Limon limon
--		('Valle la Estrella'), -- limon limon
--		('Guápiles'), --Pococi limon
--		('Cariari'), --Pococi limon
--		('Colorado'), --pococi limon
--		('Siquirres'), --Siquirres limon
--		('Sixaola'), --Talamanca limon
--		('Batan'), --Matina limon
--		('Matina'),  --Matina Limon
--		('Guacimo'), --Guacimo limon
--		('Mercedes'); --Guacimo limon

--SELECT * FROM Distritos 


--INSERT INTO Cantones (IdDiscrito, DescripcionCanton)
--values --((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Alajuelita'), 'Alajuelita'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito =  'San Antonio'), 'Alajuelita'), --errror
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Aserrí'), 'Aserrí'),
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Salitrillos'), 'Aserrí'),
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Curridabat'), 'Curridabat'),
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tirrases'), 'Curridabat'),
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Desamparados'), 'Desamparados'),
--		--((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Los Guido'), 'Desamparados'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Antonio'), 'Desamparados'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rafael Abajo'), 'Desamparados'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rafael Arriba'), 'Desamparados'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Escazú'), 'Escazú'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Antonio'), 'Escazú'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Calle Blancos'), 'Goicoechea'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Sabanilla'), 'Montes de Oca'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Pedro'), 'Montes de Oca'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Ciudad Colón'), 'Mora'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Isidro de El General'), 'Perez Zeledon'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Hatillo'), 'Central'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Pavas'), 'Central'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Francisco de Dos Ríos'), 'Central'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Uruca'), 'Central'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Zapote'), 'Central'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Pozos'), 'Santa Ana'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'León XIII'), 'Tibas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Juan'), 'Tibas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Dulce Nombre de Jesús'), 'Vasquez de Coronado'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Alajuela'), 'Alajuela'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Guácima'), 'Alajuela'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Río Segundo'), 'Alajuela'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Garita'), 'Alajuela'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Ramón'), 'San Ramón'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Peñas Blancas'), 'San Ramón'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Juan'), 'San Ramón'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Grecia'), 'Grecia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San José'), 'Grecia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Atenas'), 'Atenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Naranjo'), 'Naranjo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Miguel'), 'Naranjo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Buenos Aires'), 'Naranjo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Pedro'), 'Poás'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Orotina'), 'Orotina'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Aguas Zarcas'), 'San Carlos'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Pital'), 'San Carlos'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'La Fortuna'), 'San Carlos'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Zarcero'), 'Zarcero'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Sarchi'), 'Valverde Vega'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Upala'), 'Upala'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Caño Negro'), 'Los Chiles'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rafael'), 'Gautuso'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Nicolás'), 'Cartago'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Carmen'), 'Cartago'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tierra Blanco'), 'Cartago'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Paraiso'), 'Paraiso'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Orosi'), 'Paraiso'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tucurrique'), 'Jiménez'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Pejibaye'), 'Jiménez'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Turrialba'), 'Turrialba'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Chirripo'), 'Turrialba'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rafael'), 'Oreamuno'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tejar'), 'El Guarco'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Heredia'), 'Heredia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Mercedes'), 'Heredia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Barva'), 'Barva'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Pablo'), 'Barva'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Santo Domingo'), 'Santo Domingo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Vicente'), 'Santo Domingo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rosa'), 'Santo Domingo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Santa Barbara'), 'Santa Barbara'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Juan'), 'Santa Barbara'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Rafael'), 'San Rafael'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Ángeles'), 'San Rafael'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Isidro'), 'San Isidro'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Concepcion'), 'San Isidro'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Antonio'), 'Belen'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Asuncion'), 'Belen'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Puerto Viejo'), 'Sarapiquí'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'La Virgen'), 'Sarapiquí'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Liberia'), 'Liberia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Nicoya'), 'Liberia'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Santa Cruz'), 'Santa Cruz'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tamarindo'), 'Santa Cruz'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Bagaces'), 'Bagaces'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Sardinal'), 'Carrillo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Cañas'), 'Cañas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Las Juntas'), 'Abangares'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tilarán'), 'Tilarán'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Zapotal'), 'Nandayure'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'La Cruz'), 'La Cruz'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Santa Cecilia'), 'La Cruz'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Puntarenas'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Manzanillo'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Barranca'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Monteverde'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Cobano'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Chacarita'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'El Roble'), 'Puntarenas'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Buenos Aires'), 'Esparza'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Jeronimo'), 'Esparza'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Buenos Aires'), 'Buenos Aires'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Boruca'), 'Buenos Aires'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Cortes'), 'Osa'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Bahía Ballena'), 'Osa'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Quepos'), 'Quepos'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Golfito'), 'Golfito'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Puerto Jimenez'), 'Golfito'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'San Vito'), 'Coto brus'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Sabalito'), 'Coto brus'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Parrita'), 'Parrita'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Corredor'), 'Corredores'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Jaco'), 'Garabito'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Tárcoles'), 'Garabito'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Limon'), 'Limon'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Valle la Estrella'), 'Limon'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Guápiles'), 'Pococi'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Cariari'), 'Pococi'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Colorado'), 'Pococi'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Siquirres'), 'Siquirres'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Sixaola'), 'Talamanca'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Batan'), 'Matina'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Matina'), 'Matina'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Guacimo'), 'Guacimo'),
--		((Select idDistrito from dbo.Distritos where DescripcionDistrito = 'Mercedes'), 'Guacimo');




--select * from Cantones