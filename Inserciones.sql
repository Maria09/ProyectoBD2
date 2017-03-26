--INSERTS

USE [ProyectoBD2]
GO

--Agregar columna a Personas
Alter table Personas
	add FechaNecimiento date not null;

--INSERCIONES DE CATALOGOS
Insert into Tipo_Personas(DescripcionTipoPersona, activoTipoPersona)
	values ('Nacional', 1),
		   ('Extranjero', 1);

select * from Tipo_Personas;


Insert into Tipo_Usuario(DescripcionTipoUsuario, activoTipoUsuario)
	values  ('Administrador', 1),
			('Operador',1);

select * from Tipo_Usuario;


Insert into TipoTelefonos(DescripcionTipoTel, activoTipoTelefono)
values	('Personal Fijo',1),
		('Personal Celular',1),
		('Laboral Fijo',1),
		('Laboral Celular',1);

select * from TipoTelefonos;


Insert into TipoEmail(DescripcionTipoEmail, activoTipoEmail)
values ('Personal',1),
		('Laboral',1);

select * from TipoEmail;


Insert into TipoTransaccion(DescripcionTipoTransaccion, activoTipoTransaccion)
values  ('Iniciar Sesion',1),
		('Insertar Registro',1),
		('Modificar Registro',1),
		('Desactivar Registro',1),
		('Consultar Registro',1);

select * from TipoTransaccion;

--DBCC CHECKIDENT (TipoTransaccion, RESEED,0)  --Inicializa los identity


Insert into dbo.Genero(DescripcionGenero)
values  ('Femenino'),
		('Masculino');

select * from [dbo].[Genero]; 


--volver a insert el primer admi

--Primer administrador 
/*
PRIMERO SE HACEN LOS INSERTS DE PROVINCIA, CANTONES Y DISTRITOS
*/
SELECT * FROM Administrador;

Insert into Personas(IdTipoUsuario,IdTipoPersona,IdGenero,FechaNecimiento)
values(1,1,1,'1996/09/22');

Insert into Emails(IdTipoEmail,IdPersona,Email,activoEmail)
values(1,1,'jefe1@miempresa.com',1);

Insert into Telefonos(IdTipoTelefono,IdPersona,Telefono,activoTelefono)
values(4,1,89354677,1);

Insert into Direcciones(IdProvincia,IdCanton,IdDistrito,IdPersona,Descripcion,activoDireccion)
values(1,1,1,1,'El la ciudad de San José, capital del país',1);

Insert into Nacional(IdPersona,IdIdentificacion,Nombre,Apellido1,Apellido2)
values(1,'116540936','Maria','Salas', 'Arce');

Insert into Administrador(IdPersona,IdTipoPersona,IdTipoUsuario,IdEmail,IdTelefono,IdProvincia,IdCanton,IdDistrito,IdDireccion,usernameAdm,passwordAdm,activoAdm)
values(1,1,1,1,1,1,1,1,1,'msalas','123',1);

select * from [dbo].[Direcciones]; 
--INSERCIONES DE PROVINCIAS
INSERT INTO Provincias (DescripcionProvincia)
VALUES ('San Jose'),
		('Alajuela'),
		('Cartago'),
		('Heredia'),
		('Guanacaste'),
		('Puntarenas'),
		('Limon');

Select * from Provincias


--INSERCIONES DE CANTONES
INSERT INTO Cantones (IdProvincia, DescripcionCanton)
values  ((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Alajuelita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Aserrí'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Curridabat'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Desamparados'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Escazú'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Goicoechea'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Montes de Oca'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Mora'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Perez Zeledon'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Central'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Santa Ana'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Tibas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), 'Vasquez de Coronado'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Alajuela'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'San Ramón'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Grecia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Atenas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Naranjo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Poás'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Orotina'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'San Carlos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Zarcero'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Valverde Vega'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Upala'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Los chiles'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), 'Gautuso'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'Cartago'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'Paraiso'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'Jiménez'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'Turrialba'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'Oreamuno'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), 'El Guarco'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Heredia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Barva'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Santo Domingo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Santa Barbara'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'San Rafael'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'San Isidro'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Belen'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), 'Sarapiquí'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Liberia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Santa Cruz'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Bagaces'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Carrillo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Cañas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Abangares'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Tilaran'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'Nandayure'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), 'La Cruz'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Puntarenas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Esparza'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Bueno Aires'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Osa'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Quepos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Golfito'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Coto Brus'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Parrita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Corredores'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), 'Garabito'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Limon'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Pococi'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Siquirres'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Talamanca'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Matina'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), 'Guacimo');
		
--delete from Cantones
Select * from Cantones

--INSERCIONES DE DISTRITOS
INSERT INTO Distritos(IdProvincia, IdCanton, DescripcionDistrito)
VALUES  ((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuelita'), 'Alajuelita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuelita'), 'San Antonio'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Aserrí'), 'Aserrí'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Aserrí'), 'Salitrillos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Curridabat'), 'Curridabat'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Curridabat'), 'Tirrases'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Desamparados'), 'Desamparados'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Desamparados'), 'Los Guido'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Desamparados'), 'San Antonio'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Desamparados'), 'San Rafael Abajo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Desamparados'), 'San Rafael Arriba'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Escazú'), 'Escazú'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Escazú'), 'San Antonio'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Goicoechea'), 'Calle Blancos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Montes de Oca'), 'Sabanilla'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Montes de Oca'), 'San Pedro'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Mora'), 'Ciudad Colón'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Perez Zeledon'), 'San Isidro de El General'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Central'), 'Hatillo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Central'), 'Pavas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Central'), 'San Francisco de Dos Ríos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Central'), 'Uruca'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Central'), 'Zapote'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santa Ana'), 'Pozos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Tibas'), 'León XIII'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Tibas'), 'San Juan'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'San Jose'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Vasquez de Coronado'), 'Dulce Nombre de Jesús'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuela'), 'Alajuela'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuela'), 'Guácima'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuela'), 'Río Segundo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Alajuela'), 'Garita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Ramón'), 'San Ramón'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Ramón'), 'Peñas Blancas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Ramón'), 'San Juan'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Grecia'), 'Grecia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Grecia'), 'San José'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Atenas'), 'Atenas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Naranjo'), 'Naranjo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Naranjo'), 'San Miguel'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Naranjo'), 'Buenos Aires'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Poás'), 'San Pedro'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Orotina'), 'Orotina'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Carlos'), 'Pital'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Carlos'), 'La Fortuna'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Zarcero'), 'Zarcero'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Valverde Vega'), 'Sarchi'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Upala'), 'Upala'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Los chiles'), 'Caño Negro'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Alajuela'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Gautuso'), 'San Rafael'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Cartago'), 'San Nicolás'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Cartago'), 'Carmen'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Cartago'), 'Tierra Blanco'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Paraiso'), 'Paraiso'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Paraiso'), 'Orosi'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Jiménez'), 'Tucurrique'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Jiménez'), 'Pejibaye'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Turrialba'), 'San Nicolás'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Turrialba'), 'Chirripo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Oreamuno'), 'San Rafael'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Cartago'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'El Guarco'), 'Tejar'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Heredia'), 'Heredia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Heredia'), 'Mercedes'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Barva'), 'Barva'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Barva'), 'San Pablo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santo Domingo'), 'Santo Domingo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santo Domingo'), 'San Vicente'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santo Domingo'), 'San Rosa'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santa Barbara'), 'Santa Barbara'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santa Barbara'), 'San Juan'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Rafael'), 'San Rafael'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Rafael'), 'Ángeles'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Isidro'), 'San Isidro'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'San Isidro'), 'Concepcion'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Belen'), 'San Antonio'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Belen'), 'San Asuncion'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Sarapiquí'), 'Puerto Viejo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Heredia'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Sarapiquí'), 'La Virgen'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Liberia'), 'Liberia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Liberia'), 'Nicoya'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santa Cruz'), 'Santa Cruz'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Santa Cruz'), 'Tamarindo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Bagaces'), 'Bagaces'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Carrillo'), 'Sardinal'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Cañas'), 'Cañas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Abangares'), 'Las Juntas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Tilaran'), 'Tilarán'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Nandayure'), 'Zapotal'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'La Cruz'), 'La Cruz'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Guanacaste'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'La Cruz'), 'Santa Cecilia'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Puntarenas'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Manzanillo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Barranca'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Monteverde'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Cobano'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'Chacarita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Puntarenas'), 'El Roble'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Esparza'), 'Buenos Aires'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Esparza'), 'San Jeronimo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Bueno Aires'), 'Buenos Aires'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Bueno Aires'), 'Boruca'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Osa'), 'Cortes'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Osa'), 'Bahía Ballena'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Quepos'), 'Quepos'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Golfito'), 'Golfito'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Golfito'), 'Puerto Jimenez'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Coto Brus'), 'Coto Brus'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Coto Brus'), 'Sabalito'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Parrita'), 'Parrita'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Corredores'), 'Corredor'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Garabito'), 'Jaco'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Puntarenas'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Garabito'), 'Tárcoles'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Limon'), 'Limon'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Limon'), 'Valle la Estrella'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Pococi'), 'Guápiles'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Pococi'), 'Cariari'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Pococi'), 'Colorado'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Siquirres'), 'Siquirres'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Talamanca'), 'Sixaola'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Matina'), 'Matina'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Matina'), 'Batan'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Guacimo'), 'Guacimo'),
		((Select idProvincia from dbo.Provincias where DescripcionProvincia = 'Limon'), (Select IdCanton from dbo.Cantones Where DescripcionCanton = 'Guacimo'), 'Mercedes');

--delete from Distritos
SELECT * FROM Distritos 


