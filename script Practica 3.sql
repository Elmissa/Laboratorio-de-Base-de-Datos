USE [ProyectoLoko]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[ApPaterno] [varchar](150) NULL,
	[ApMaterno] [varchar](150) NULL,
	[IdTelefono] [int] NULL,
	[IdDireccion] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Calle] [varchar](50) NULL,
	[Numero] [int] NULL,
	[Colonia] [varchar](50) NULL,
	[CodigoPostal] [int] NULL,
	[IdMunicipio] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdPais] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[ApPaterno] [varchar](150) NULL,
	[ApMaterno] [varchar](150) NULL,
	[IdTelefono] [int] NULL,
	[IdDireccion] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[idMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [money] NULL,
	[IdProveedor] [int] NULL,
	[IdCategoria] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProvedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RFC] [varchar](50) NULL,
	[IdDireccion] [int] NULL,
	[IdProducto] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[idTelefono] [int] IDENTITY(1,1) NOT NULL,
	[Telefono] [int] NULL,
	[IdTipo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelefonoCliente]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoCliente](
	[idTelefonoCliente] [int] IDENTITY(1,1) NOT NULL,
	[IdTelefono] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelefonoEmpleado]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoEmpleado](
	[idTelefonoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[IdTelefono] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 07/10/2017 14:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoTelefono](
	[idTipoTelefono] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
