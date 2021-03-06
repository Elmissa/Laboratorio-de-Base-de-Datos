CREATE DATABASE ConsulSimi2
USE [ConsulSimi2]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCategoriaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCategoriaByID]
@ID INT,
@Descripcion VARCHAR(50)
AS
BEGIN
	Update Categoria
	set Descripcion = @Descripcion
	where IdCategoria = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarConsultaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarConsultaByID]
@ID UNIQUEIDENTIFIER,
@IdPaciente UNIQUEIDENTIFIER,
@IdMedico INT,
@FechaHora DATE,
@IdConsultorio INT,
@IdEstatus VARCHAR(50),
@Notas VARCHAR (300),
@Costo FLOAT
AS
BEGIN
	Update Consulta
	set IdPaciente = @IdPaciente, IdMedico = @IdMedico,FechaHora = GETDATE(),IdConsultorio = @IdConsultorio,
	IdEstatus = @IdEstatus, Notas = @Notas, Costo = @Costo 
	where IdConsulta = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarConsultorioByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarConsultorioByID]
@ID INT,
@IdSucursal INT,
@NumeroConsultorio INT
AS
BEGIN
	Update Consultorio
	set IdSucursal = @IdSucursal, NumConsultorio = @NumeroConsultorio
	where IdConsultorio = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEstadoByID]
@ID INT,
@Estado varchar(50)
AS
BEGIN
	Update Estado
	set Estado = @Estado
	where IdDireccion = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstatusByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEstatusByID]
@ID INT,
@Descripcion varchar(50)
AS
BEGIN
	Update Estatus
	set Descripcion = @Descripcion
	where IdEstatus = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMedicamentoByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarMedicamentoByID]
@ID uniqueidentifier,
@Nombre varchar(50),
@Descripcion varchar(50),
@IdCategoria int, 
@IdProvedor int, 
@IdLaboratorio int,
@NombreGenerico  varchar(50),
@PrecioBase float
AS
BEGIN
	Update Medicamento
	set Nombre = @Nombre,Descripcion = @Descripcion,IdCategoria = @IdCategoria,IdProveedor = @IdProvedor, IdLaboratorio = @IdLaboratorio,
	NombreGen = @NombreGenerico, PrecioBase = @PrecioBase
	where IdMedicamento = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPersonaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPersonaByID]
@ID uniqueidentifier,
@Nombre varchar(50),
@ApPaterno varchar(50),
@ApMaterno varchar(50), 
@FechaNacimiento DATE
AS
BEGIN
	Update Persona
	set Nombre = @Nombre ,ApPaterno = @ApPaterno,ApMaterno = @ApMaterno,FechaNac = @FechaNacimiento
	where IdPersona = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarCategoriaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarCategoriaByID]
@ID INT
AS
BEGIN
	Delete Categoria
	where IdCategoria = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarConsultaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarConsultaByID]
@ID UNIQUEIDENTIFIER
AS
BEGIN
	Delete Consulta
	where IdConsulta = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarConsultorioByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarConsultorioByID]
@ID INT
AS
BEGIN
	Delete Consultorio
	where IdConsultorio = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarEstadoByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarEstadoByID]
@ID INT
AS
BEGIN
	Delete Estado
	where IdDireccion = @ID
END

GO
/****** Object:  StoredProcedure [dbo].[BorrarEstatusByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarEstatusByID]
@ID INT
AS
BEGIN
	Delete Estatus
	where IdEstatus = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarMedicamentoByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarMedicamentoByID]
@ID uniqueidentifier
AS
BEGIN
	Delete Medicamento
	where IdMedicamento = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarPersonaByID]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarPersonaByID]
@ID uniqueidentifier
AS
BEGIN
	Delete Persona
	where IdPersona = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaEmpleadoPass]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultaEmpleadoPass]
@IdEmpleado uniqueidentifier,
@Contraseña varchar(50)
as
begin
	SELECT COUNT(IdEmpleado) as Valido
	FROM Empleado
	WHERE IdEmpleado = @IdEmpleado AND Contraseña = @Contraseña
end
GO
/****** Object:  StoredProcedure [dbo].[ConsultaEstatusPaciente]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultaEstatusPaciente]
	@IdConsulta uniqueidentifier
	as
	begin 
	
		Select Consulta.IdConsulta, Persona.Nombre as 'Paciente', Estatus.Descripcion as 'Estatus'
		FROM Consulta
		JOIN Paciente ON 
		Consulta.IdPaciente = Paciente.IdPaciente
		JOIN Persona ON
		Paciente.IdPersona = Persona.IdPersona
		JOIN Estatus ON
		Consulta.IdEstatus = Estatus.IdEstatus
		WHERE Consulta.IdConsulta = IdConsulta

	end

GO
/****** Object:  StoredProcedure [dbo].[ConsultasMedico]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultasMedico]
	@Medico int
	as
	begin 
	
	Select Consulta.IdConsulta, Persona.Nombre as 'Paciente', Consulta.FechaHora
	FROM Consulta
	JOIN Paciente ON 
	Consulta.IdPaciente = Paciente.IdPaciente
	JOIN Persona ON
	Paciente.IdPersona = Persona.IdPersona	
	WHERE Consulta.IdMedico = @Medico

	end

GO
/****** Object:  StoredProcedure [dbo].[NombreEmpleado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NombreEmpleado]
	@Empleados uniqueidentifier
	as
	begin 

		SELECT Persona.IdPersona, Persona.Nombre
		FROM Empleado 
		JOIN Persona ON 
		Empleado.IdPersona = Persona.IdPersona
		WHERE Empleado.IdEmpleado = @Empleados

	end

GO
/****** Object:  StoredProcedure [dbo].[NombrePaciente]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NombrePaciente]
@IdPaciente uniqueidentifier
as
begin 

SELECT Persona.IdPersona, Persona.Nombre
FROM Paciente 
JOIN Persona ON 
Paciente.IdPersona = Persona.IdPersona
WHERE Paciente.IdPaciente = @IdPaciente

end

GO
/****** Object:  StoredProcedure [dbo].[NuevaCategoria]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevaCategoria]
@Descripcion varchar(50)
as 
begin
	INSERT INTO Categoria(Descripcion)
	VALUES (@Descripcion)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevaConsulta]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevaConsulta]
@IdPaciente uniqueidentifier,
@IdMedico int,
@IdConsultorio int,
@IdEstatus int,
@Notas varchar(300),
@Costo float
as
begin
	INSERT INTO Consulta(IdConsulta,IdPaciente,IdMedico,FechaHora,IdConsultorio,IdEstatus,Notas,Costo)
	VALUES(NEWID(),@IdPaciente,@IdMedico,GETDATE(),@IdConsultorio,@IdEstatus,@Notas,@Costo)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevaPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevaPersona]
@Nombre varchar(50),
@ApPaterno varchar(50),
@ApMaterno varchar(50),
@FechaNacimiento date
as
begin
	INSERT INTO Persona(IdPersona,Nombre,ApPaterno,ApMaterno,FechaNac)
	VALUES (NEWID(),@Nombre,@ApPaterno,@ApMaterno,@FechaNacimiento)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoConsultorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoConsultorio]
@IdSucursal int,
@Numconsultorio int
as
begin
	INSERT INTO Consultorio(IdSucursal,NumConsultorio)
	VALUES (@IdSucursal,@Numconsultorio )
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoEmpleado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoEmpleado]
@IdPersona uniqueidentifier,
@Sueldo float, 
@Encargado uniqueidentifier, 
@Contraseña varchar(50),
@PuestoEmpleado int
as
begin 
	INSERT INTO Empleado (IdEmpleado, IdPersona, Sueldo, Encargado, Contraseña, PuestoEmpleado )
	VALUES (NEWID(),@IdPersona,@Sueldo,@Encargado,@Contraseña,@PuestoEmpleado  )
	INSERT INTO OIEmpleados(IdOIEmpleados,IdEmpleado,FechaEntrada )
	VALUES (NEWID(), (SELECT IdEmpleado FROM Empleado JOIN Persona ON Empleado.IdPersona = Persona.IdPersona WHERE Empleado.IdPersona = @IdPersona), GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoEstado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoEstado]
@Estado varchar(50)
as
begin
	INSERT INTO Estado(Estado)
	VALUES (@Estado)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoEstatus]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoEstatus]
@Estatus varchar(50)
as
begin
	INSERT INTO Estatus(Descripcion)
	VALUES (@Estatus)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoLaboratorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoLaboratorio]
@NombreEmpresa varchar(50),
@NombreSucursal varchar(50),
-- -------------- DIRECCION 
@CalleNum	varchar(50),
@Municipio	varchar(50),
@Estado	int,
-- -------------- CONTACTO
@Telefono float,
@Correo varchar(50),
-- -------------- PROVEEDOR
@Licencia varchar(50)
as
begin 
	INSERT INTO Empresa ([Nombre])
	VALUES (@NombreEmpresa)
	INSERT INTO Sucursal ([Nombre], [IdEmpresa] ) -- Los IDENTITY se omiten en la lista
	VALUES (@NombreSucursal, (SELECT IdEmpresa from Empresa where Nombre = @NombreEmpresa) )
	INSERT INTO DireccionSucursales([IdSucursal],[CalleNum],[Municipio],[IdEstado])
	VALUES ((SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ) , @CalleNum,@Municipio,@Estado	)
	INSERT INTO ContactoSucursal ([IdContactoSucursal],[IdSucursal],[Telefono],[Correo])
	VALUES(NEWID(), (SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ), @Telefono, @Correo)
	INSERT INTO Laboratorio(IdSucursal, LicenciaLaboratorio)
	VALUES((SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ), @Licencia)
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoMedicamento]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoMedicamento]
@Nombre varchar(50),
@Descripcion varchar(50),
@IdCategoria int, 
@IdProvedor int, 
@IdLaboratorio int,
@NombreGenerico  varchar(50),
@PrecioBase float
as
begin 
	INSERT INTO Medicamento ([IdMedicamento],[Nombre],[Descripcion],[IdCategoria],[IdProveedor],[IdLaboratorio],[NombreGen],[PrecioBase] )
	VALUES (NEWID(), @Nombre, @Descripcion,@IdCategoria,@IdProvedor,@IdLaboratorio ,@NombreGenerico, @PrecioBase )
end
GO
/****** Object:  StoredProcedure [dbo].[NuevoProveedor]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NuevoProveedor]
@NombreEmpresa varchar(50),
@NombreSucursal varchar(50),
-- -------------- DIRECCION 
@CalleNum	varchar(50),
@Municipio	varchar(50),
@Estado	int,
-- -------------- CONTACTO
@Telefono float,
@Correo varchar(50),
-- -------------- PROVEEDOR
@Licencia varchar(50)
as
begin 
	INSERT INTO Empresa ([Nombre])
	VALUES (@NombreEmpresa)
	INSERT INTO Sucursal ([Nombre], [IdEmpresa] ) -- Los IDENTITY se omiten en la lista
	VALUES (@NombreSucursal, (SELECT IdEmpresa from Empresa where Nombre = @NombreEmpresa) )
	INSERT INTO DireccionSucursales([IdSucursal],[CalleNum],[Municipio],[IdEstado])
	VALUES ((SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ) , @CalleNum,@Municipio,@Estado	)
	INSERT INTO ContactoSucursal ([IdContactoSucursal],[IdSucursal],[Telefono],[Correo])
	VALUES(NEWID(), (SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ), @Telefono, @Correo)
	INSERT INTO Proveedor(IdSucursal, LicenciaProveedor)
	VALUES((SELECT IdSucursal from Sucursal JOIN Empresa ON Sucursal.IdEmpresa = Empresa.IdEmpresa where Sucursal.Nombre = @NombreSucursal AND Empresa.Nombre = @NombreEmpresa ), @Licencia)
end
GO
/****** Object:  StoredProcedure [dbo].[ProductosProvedorLaboratorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductosProvedorLaboratorio]
	@Medicamento uniqueidentifier
	as
	begin 

		SELECT Medicamento.IdMedicamento, SucursalProveedor.Nombre as 'Proveedor', SucursalLaboratorio.Nombre as 'Laboratorio'
		FROM Medicamento
		JOIN Sucursal as SucursalProveedor
		ON  Medicamento.IdProveedor = SucursalProveedor.IdSucursal
		JOIN Sucursal as SucursalLaboratorio
		ON  Medicamento.IdLaboratorio = SucursalLaboratorio.IdSucursal
		WHERE Medicamento.IdMedicamento = @Medicamento

	end

GO
/****** Object:  UserDefinedFunction [dbo].[AlcoholemiaHom]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[AlcoholemiaHom](@GrAlc float, @PesoKg float)
returns float
begin
return (@GrAlc) / (@PesoKg * .7)
end
GO
/****** Object:  UserDefinedFunction [dbo].[AlcoholemiaMuj]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[AlcoholemiaMuj](@GrAlc float, @PesoKg float)
returns float
begin
return (@GrAlc) / (@PesoKg * .6)
end
GO
/****** Object:  UserDefinedFunction [dbo].[CalDisolucionMed]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[CalDisolucionMed](@TotalMed float, @Diluyente float, @Dosis float)
returns float
begin 
return (@Dosis * @Diluyente) / @TotalMed
end
GO
/****** Object:  UserDefinedFunction [dbo].[DescuentoMedicina]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[DescuentoMedicina] (@cMed float, @Descuento float)
returns float
begin
return (@cMed) - (@Descuento * @cMed)
end
GO
/****** Object:  UserDefinedFunction [dbo].[ImpuestoSal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[ImpuestoSal](@Salario float)
returns float
begin
return (@salario) - (@salario * 0.10)
end
GO
/****** Object:  UserDefinedFunction [dbo].[IndiceTabaquico]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[IndiceTabaquico](@cigFumDia int, @añosFumando int)
returns float 
begin
return (@cigFumDia * @añosFumando) / 20
end
GO
/****** Object:  UserDefinedFunction [dbo].[MIC]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[MIC](@AltMt float, @Peso float) 
returns float
begin
return (@Peso)/(@Altmt * @Altmt)
end
GO
/****** Object:  UserDefinedFunction [dbo].[Total]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Total](@SubTotal float) 
	returns float 
	as 
	begin
		Return @SubTotal * 1.15 
	end

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consulta](
	[IdConsulta] [uniqueidentifier] NOT NULL,
	[IdPaciente] [uniqueidentifier] NOT NULL,
	[IdMedico] [int] NULL,
	[FechaHora] [datetime] NOT NULL,
	[IdConsultorio] [int] NULL,
	[IdEstatus] [varchar](50) NOT NULL,
	[Notas] [varchar](300) NULL,
	[Costo] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorio](
	[IdConsultorio] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[NumConsultorio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactoPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoPersona](
	[IdContactoPersona] [uniqueidentifier] NOT NULL,
	[IdPersona] [uniqueidentifier] NOT NULL,
	[Telefono] [float] NOT NULL,
	[Correo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContactoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactoSucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactoSucursal](
	[IdContactoSucursal] [uniqueidentifier] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Telefono] [float] NOT NULL,
	[Correo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContactoSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DireccionPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DireccionPersona](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [uniqueidentifier] NOT NULL,
	[CalleNum] [varchar](50) NOT NULL,
	[Municipio] [varchar](50) NOT NULL,
	[IdEstado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DireccionSucursales]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DireccionSucursales](
	[IdDireccionSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[CalleNum] [varchar](50) NOT NULL,
	[Municipio] [varchar](50) NOT NULL,
	[IdEstado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDireccionSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [uniqueidentifier] NOT NULL,
	[IdPersona] [uniqueidentifier] NOT NULL,
	[Sueldo] [float] NOT NULL,
	[Encargado] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[PuestoEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estatus](
	[IdEstatus] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[IdLaboratiorio] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[LicenciaLaboratorio] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLaboratiorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamento](
	[IdMedicamento] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdLaboratorio] [int] NOT NULL,
	[NombreGen] [varchar](50) NOT NULL,
	[PrecioBase] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedicamentoBorrado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedicamentoBorrado](
	[IdMedicamentoBorrado] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdLaboratorio] [int] NOT NULL,
	[NombreGen] [varchar](50) NOT NULL,
	[PrecioBase] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMedicamentoBorrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medico](
	[IdMedico] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [uniqueidentifier] NULL,
	[Cedula] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OIEmpleados]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OIEmpleados](
	[IdOIEmpleados] [uniqueidentifier] NOT NULL,
	[IdEmpleado] [uniqueidentifier] NOT NULL,
	[FechaEntrada] [date] NOT NULL,
	[FechaSalida] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[IdPaciente] [uniqueidentifier] NOT NULL,
	[IdPersona] [uniqueidentifier] NOT NULL,
	[Peso] [float] NOT NULL,
	[Altura] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApPaterno] [varchar](50) NOT NULL,
	[ApMaterno] [varchar](50) NOT NULL,
	[FechaNac] [date] NOT NULL,
	[Edad]  AS (datediff(year,[FechaNac],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prescripcion]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prescripcion](
	[IdPrescripcion] [uniqueidentifier] NOT NULL,
	[IdConsulta] [uniqueidentifier] NOT NULL,
	[IdMedicamento] [uniqueidentifier] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Indicaciones] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrescripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[LicenciaProveedor] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PuestoEmpleado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PuestoEmpleado](
	[IdNivelEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNivelEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdEmpresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[categoriaMedicamento]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[categoriaMedicamento] as 
select m.IdMedicamento,m.Nombre,m.PrecioBase,c.IdCategoria,c.Descripcion
from Medicamento m 
inner join Categoria as c on m.IdCategoria=c.IdCategoria
GO
/****** Object:  View [dbo].[ComunicacionSucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ComunicacionSucursal] as 
select t.IdEmpresa,t.IdSucursal,t.Nombre,h.Correo,h.Telefono
from Sucursal t
inner join ContactoSucursal as h on t.IdSucursal=h.IdSucursal 
GO
/****** Object:  View [dbo].[ConsultaPaciente]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ConsultaPaciente] as
select k.Nombre,k.ApMaterno,k.ApPaterno,k.Edad,e.IdPaciente,e.Peso,e.Altura,m.IdConsulta,m.FechaHora,m.IdConsultorio,m.Costo,m.Notas
from Consulta m 
inner join Paciente as e on e.IdPaciente = m.IdPaciente
inner join Persona as k on e.IdPersona=k.IdPersona
GO
/****** Object:  View [dbo].[direccionPaciente]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view  [dbo].[direccionPaciente] as
select m.IdPersona,m.IdPaciente,p.Nombre,p.ApPaterno,p.ApMaterno,d.CalleNum,d.Municipio,d.IdEstado
from Paciente m 
inner join Persona p on m.IdPersona=p.IdPersona
inner join DireccionPersona as d on p.IdPersona=d.IdPersona
GO
/****** Object:  View [dbo].[DireccionSucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[DireccionSucursal] as 
select s.Nombre,d.IdSucursal,d.CalleNum,d.IdEstado,d.Municipio 
from Sucursal s
inner join DireccionSucursales as d on s.IdSucursal=d.IdSucursal
GO
/****** Object:  View [dbo].[empresaSucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[empresaSucursal] as
select p.IdEmpresa,p.Nombre,o.IdSucursal,o.Nombre as nombreSucursal
from Empresa as p
inner join Sucursal as o on p.IdEmpresa=o.IdEmpresa
GO
/****** Object:  View [dbo].[infoMedico]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[infoMedico] as 
select u.Nombre,u.ApPaterno,u.ApMaterno, k.IdMedico,k.IdEmpleado,l.PuestoEmpleado
from Medico k 
inner join Empleado as l on k.IdEmpleado = l.IdEmpleado
inner join Persona as u on l.IdPersona = u.IdPersona
GO
/****** Object:  View [dbo].[infoPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[infoPersona]	 as
select e.Nombre,e.ApMaterno,e.ApPaterno,v.Peso,v.Altura,k.Telefono,k.Correo
from Persona e
inner join Paciente as v on e.IdPersona = v.IdPersona  
inner join ContactoPersona as k on e.IdPersona = k.IdPersona
GO
/****** Object:  View [dbo].[proveedorSucursal]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[proveedorSucursal] as
select p.IdProveedor,p.LicenciaProveedor,s.IdSucursal,s.IdEmpresa
from Proveedor p
inner join Sucursal as s on p.IdSucursal=s.IdSucursal
GO
/****** Object:  Trigger [dbo].[BorrarCategoria]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarCategoria]
ON [dbo].[Categoria]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[InsertarCategoria]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarCategoria]
ON [dbo].[Categoria]
AFTER INSERT -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[UpdateCategoria]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UpdateCategoria]
ON [dbo].[Categoria]
AFTER UPDATE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[ActualizarConsulta]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarConsulta]
ON [dbo].[Consulta]
AFTER UPDATE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarConsulta]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarConsulta]
ON [dbo].[Consulta]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[InsertarConsulta]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarConsulta]
ON [dbo].[Consulta]
AFTER INSERT -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[ActualizarConsultorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarConsultorio]
ON [dbo].[Consultorio]
AFTER UPDATE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarConsultorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarConsultorio]
ON [dbo].[Consultorio]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[InsertarConsultorio]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarConsultorio]
ON [dbo].[Consultorio]
AFTER INSERT -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[ActualizarEstado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarEstado]
ON [dbo].[Estado]
AFTER UPDATE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[AgregarEstado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AgregarEstado]
ON [dbo].[Estado]
AFTER INSERT -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarEstado]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarEstado]
ON [dbo].[Estado]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[ActualizarEstatus]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ActualizarEstatus]
ON [dbo].[Estatus]
AFTER UPDATE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarEstatus]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarEstatus]
ON [dbo].[Estatus]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[InsertarEstatus]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarEstatus]
ON [dbo].[Estatus]
AFTER insert -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[AgregarMedicamento]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AgregarMedicamento]
ON [dbo].[Medicamento]
AFTER insert -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarMedicamento]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarMedicamento]
ON [dbo].[Medicamento]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[NuevoMedicamentos]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[NuevoMedicamentos]
on [dbo].[Medicamento]
after update -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END
GO
/****** Object:  Trigger [dbo].[BorrarPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BorrarPersona]
ON [dbo].[Persona]
AFTER DELETE -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[InsertarPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarPersona]
ON [dbo].[Persona]
AFTER insert -- delete/*instead*/
AS
BEGIN
	SELECT * 
	FROM INSERTED
	SELECT *
	FROM DELETED
END
GO
/****** Object:  Trigger [dbo].[NewPersona]    Script Date: 11/11/2017 21:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[NewPersona]
on [dbo].[Persona]
after update -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END
GO
