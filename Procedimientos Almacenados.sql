USE ProyectoBD2
GO

--Cargar Catalogos

alter proc proc_CargarCatalogos @nombreTabla varchar(30)
As
Begin
	if(@nombreTabla='Tipo_Personas')
	Begin
		Select DescripcionTipoPersona from Tipo_Personas;
	End
	else
	Begin 
		If(@nombreTabla='Genero')
		Begin
			Select DescripcionGenero from Genero;
		End
		Else
		Begin
			If(@nombreTabla='TipoTelfonos')
			Begin
				Select DescripcionTipoTel from TipoTelefonos;
			End
			Else
			Begin
				If(@nombreTabla='TipoEmail')
				Begin
					Select DescripcionTipoEmail from TipoEmail;
				End
				Else
				Begin
					If(@nombreTabla='Tipo_Usuario')
					Begin 
						Select DescripcionTipoUsuario from Tipo_Usuario
					End
					Else
					Begin
						If(@nombreTabla='Provincias')
						Begin
							Select DescripcionProvincia from Provincias
						End
						Else
						Begin
							If(@nombreTabla='Cantones')
							Begin
								Select DescripcionCanton from Cantones
							End
							Else
							Begin
								If(@nombreTabla='Distritos')
								Begin
									Select DescripcionDistrito from Distritos
								End
								Else
								Begin
									if(@nombreTabla='Personas')
									Begin
										Select IdPersona from Personas;
									End
									Else
									Begin
										if(@nombreTabla='Trasacciones')
										Begin
											Select DescripcionTipoTransaccion from TipoTransaccion;
										End
									End
								End
							End
						End
					End
				End
			End
		End
	End
End
Go

Exec proc_CargarCatalogos 'Trasacciones';

Alter proc proc_InsertarUsuarios @TipoPersona int, @id varchar(20), @nombre varchar(20),
	@apellido1 varchar(20), @apellido2 varchar(20), @idGenero int, @fechaNacimiento date, @tipoTel int,
	@telefono int, @tipoEmail int, @email varchar(30), @tipoTel2 int, @tel2 int, @tipoEmail2 int, 
	@email2 varchar(30), @tipoUsuario int, @nombreUsu varchar(20),@contrasenya varchar(20), @Provincia int, 
	@Canton int, @Distrito int, @exacta varchar(50),

	@idTipoTransac int, @idPersonaCreadora int
	

As
Begin
	Insert into Personas(IdTipoUsuario,IdTipoPersona,IdGenero,FechaNecimiento)
		values(@tipoUsuario,@TipoPersona,@idGenero,@fechaNacimiento);
	Declare @idPersona int = @@Identity;
	
	Insert into Emails(IdTipoEmail,IdPersona,Email,activoEmail)values(@tipoEmail,@idPersona,@email,1);
	Declare @idemail int = @@Identity; 
	
	if(@tipoEmail2!=0 and @email2!=null)
	Begin
		Insert into Emails(IdTipoEmail,IdPersona,Email,activoEmail)values(@tipoEmail2,@idPersona,@email2,1);
		Declare @idemail2 int = @@Identity;
	End

	Insert into Telefonos(IdTipoTelefono,IdPersona,Telefono,activoTelefono)values(@tipoTel,@idPersona,@telefono,1);
	Declare @idtel int = @@Identity;

	if(@tipoTel2!=0 and @tel2>0)
	Begin
		Insert into Telefonos(IdTipoTelefono,IdPersona,Telefono,activoTelefono)values(@tipoTel2,@idPersona,@tel2,1);
		Declare @idtel2 int = @@Identity;
	End

	Insert into Direcciones(IdProvincia,IdCanton,IdDistrito,IdPersona,Descripcion,activoDireccion)
		values(@Provincia,@Canton,@Distrito,@idPersona,@exacta,1)
	Declare @idDirect int = @@Identity;

	If(@TipoPersona=1)
	Begin
		Insert into Nacional(IdPersona,IdIdentificacion,Nombre,Apellido1,Apellido2)
		values(@idPersona,@id,@nombre,@apellido1,@apellido2);
	End
	Else
	Begin
		Insert into Extranjera(IdPersona,IdIdentificacion,Nombre,Apellido1)
		values(@idPersona,@id,@nombre,@apellido1);
	End

	

	If(@tipoUsuario=1)
	Begin
		Insert into Administrador(IdPersona,IdTipoPersona,IdTipoUsuario,IdEmail,IdTelefono,IdProvincia,IdCanton,IdDistrito,IdDireccion,usernameAdm,passwordAdm,activoAdm)
			values(@idPersona,@TipoPersona,@tipoUsuario,@idemail,@idtel,@Provincia,@Canton,@Distrito,@idDirect,@nombreUsu,@contrasenya,1);
	End
	Else
	Begin
		Insert into Operador(IdPersona,IdTipoPersona,IdTipoUsuario,IdEmail,IdTelefono,IdProvincia,IdCanton,IdDistrito,IdDireccion,usernameOpe,passwordOpe,activoOpe)
			values(@idPersona,@TipoPersona,@tipoUsuario,@idemail,@idtel,@Provincia,@Canton,@Distrito,@idDirect,@nombreUsu,@contrasenya,1);
	End

	--bitacora
	Declare @descripcionTransac varchar(50);
	if(@idTipoTransac=1)
	Begin
		set @descripcionTransac = 'Inicio de Sesion';
		Insert into Bitacora(IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica)values(@idTipoTransac,@idPersonaCreadora,GETDATE(),@descripcionTransac);
	End
	Else
	Begin
		if(@idTipoTransac=2)
		Begin
			set @descripcionTransac = 'Insercion de Usuario';
			Insert into Bitacora(IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica)values(@idTipoTransac,@idPersonaCreadora,GETDATE(),@descripcionTransac);
		End
		Else
		Begin
			if(@idTipoTransac=3)
			Begin
				set @descripcionTransac = 'Modificación de Usuario';
				Insert into Bitacora(IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica)values(@idTipoTransac,@idPersonaCreadora,GETDATE(),@descripcionTransac);
			End
			Else
			Begin
				if(@idTipoTransac=4)
				Begin
					set @descripcionTransac = 'Desactivación de Registro';
					Insert into Bitacora(IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica)values(@idTipoTransac,@idPersonaCreadora,GETDATE(),@descripcionTransac);
				End
				Else
				Begin
					if(@idTipoTransac=5)
					Begin
						set @descripcionTransac = 'Consulta de Registro ';
						Insert into Bitacora(IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica)values(@idTipoTransac,@idPersonaCreadora,GETDATE(),@descripcionTransac);
					End
				End
			End
		End	
	End

End
GO


Select * from Bitacora;


Alter proc proc_ObtenerUsuarios @idUsuario int

As
Begin
	Select IdGenero From Personas where IdPersona = @idUsuario;
	Declare @tipo int = (Select IdTipoPersona from Personas where IdPersona = @idUsuario);
	Declare @admiOpe int;

	if(@tipo=1)
	Begin
		Select nombre,Apellido1,Apellido2 from Nacional where IdPersona = @idUsuario;
		Select telefono,IdTipoTelefono from Telefonos where IdPersona = @idUsuario;
		Select Email,IdTipoEmail from Emails where IdPersona = @idUsuario;
		Select IdProvincia,IdCanton,IdDistrito,Descripcion from Direcciones where IdPersona = @idUsuario;
		
		set @admiOpe = (Select IdTipoUsuario from Personas where IdPersona = @idUsuario);
		if(@admiOpe=1)
		Begin
			Select usernameAdm,passwordAdm,activoAdm from Administrador where IdPersona = @idUsuario;
		End
		Else
		Begin
			if(@admiOpe=2)
			Begin
				Select usernameOpe,passwordOpe,activoOpe from Operador where IdPersona = @idUsuario;
			End
		End
	End
	Else
	Begin
		if(@tipo=2)
		Begin
			Select nombre,Apellido1 from Extranjera where IdPersona = @idUsuario;
			Select telefono,IdTipoTelefono from Telefonos where IdPersona = @idUsuario;
			Select Email,IdTipoEmail from Emails where IdPersona = @idUsuario;
			Select IdProvincia,IdCanton,IdDistrito,Descripcion from Direcciones where IdPersona = @idUsuario;
		
			set @admiOpe = (Select IdTipoUsuario from Personas where IdPersona = @idUsuario);
			if(@admiOpe=1)
			Begin
				Select usernameAdm,passwordAdm,activoAdm from Administrador where IdPersona = @idUsuario;
			End
			Else
			Begin
				if(@admiOpe=2)
				Begin
					Select usernameOpe,passwordOpe,activoOpe from Operador where IdPersona = @idUsuario;
				End
			End
		End
	End
End

Exec proc_ObtenerUsuarios 1;


Create proc proc_DesactivarDelPadron @cedula varchar(20) --traes la palabra clave

As
Begin
--hacer if como proc de catalogos
	--validas la palabra
	--modifica
	--update en las mismas tablas del proc proc_ObtenerUsuarios
	--else
	--palabra = eiminar
	--update
	--
	Update ProyectoBD2.dbo.Padron
	set activo_Padron = 0
	from Padron 
	where Cedula = @cedula;
End

ALTER proc [dbo].[proc_CargarBitacora] 
As
Begin
	Select IdBitacora,IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica From Bitacora;
End


Alter proc proc_FiltroBitacora @DescripTransac varchar(60), @idPer int

As
Begin
	if(@idPer>0)
	Begin
		Select IdBitacora,IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica 
		from Bitacora where DescripcionEspecifica = @DescripTransac and IdPersona = @idPer;
	End
	Else
	Begin
		if(@idPer=0)
		Begin
			Select IdBitacora,IdTipoTrasaccion,IdPersona,Fecha,DescripcionEspecifica 
			from Bitacora where DescripcionEspecifica = @DescripTransac;
		End
		
	End

End

