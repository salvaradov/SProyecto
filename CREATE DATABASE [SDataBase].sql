USE [master]
GO

CREATE DATABASE [SDataBase]
GO

USE [SDataBase]
GO

CREATE TABLE [dbo].[tCarrito](
	[Consecutivo] [bigint] IDENTITY(1,1) NOT NULL,
	[ConsecutivoUsuario] [bigint] NOT NULL,
	[ConsecutivoProducto] [bigint] NOT NULL,
	[Unidades] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tCarrito] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tError](
	[Consecutivo] [bigint] IDENTITY(1,1) NOT NULL,
	[ConsecutivoUsuario] [bigint] NOT NULL,
	[Mensaje] [varchar](max) NOT NULL,
	[Origen] [varchar](50) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_tError] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tProducto](
	[Consecutivo] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Inventario] [int] NOT NULL,
	[Imagen] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_tProducto] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tRol](
	[Consecutivo] [smallint] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tRol] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tUsuario](
	[Consecutivo] [bigint] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](20) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[CorreoElectronico] [varchar](80) NOT NULL,
	[Contrasenna] [varchar](255) NOT NULL,
	[Activo] [bit] NOT NULL,
	[ConsecutivoRol] [smallint] NOT NULL,
	[UsaClaveTemp] [bit] NOT NULL,
	[Vigencia] [datetime] NOT NULL,
 CONSTRAINT [PK_tUsuario] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[tCarrito] ON 
GO
INSERT [dbo].[tCarrito] ([Consecutivo], [ConsecutivoUsuario], [ConsecutivoProducto], [Unidades], [Fecha]) VALUES (1, 8, 5, 3, CAST(N'2024-12-07T10:31:38.127' AS DateTime))
GO
INSERT [dbo].[tCarrito] ([Consecutivo], [ConsecutivoUsuario], [ConsecutivoProducto], [Unidades], [Fecha]) VALUES (2, 8, 4, 3, CAST(N'2024-12-07T10:31:31.267' AS DateTime))
GO
INSERT [dbo].[tCarrito] ([Consecutivo], [ConsecutivoUsuario], [ConsecutivoProducto], [Unidades], [Fecha]) VALUES (3, 8, 6, 3, CAST(N'2024-12-07T10:31:41.473' AS DateTime))
GO
INSERT [dbo].[tCarrito] ([Consecutivo], [ConsecutivoUsuario], [ConsecutivoProducto], [Unidades], [Fecha]) VALUES (4, 8, 7, 3, CAST(N'2024-12-07T10:31:44.527' AS DateTime))
GO
INSERT [dbo].[tCarrito] ([Consecutivo], [ConsecutivoUsuario], [ConsecutivoProducto], [Unidades], [Fecha]) VALUES (5, 8, 8, 3, CAST(N'2024-12-07T10:31:47.440' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tCarrito] OFF
GO

SET IDENTITY_INSERT [dbo].[tError] ON 
GO
INSERT [dbo].[tError] ([Consecutivo], [ConsecutivoUsuario], [Mensaje], [Origen], [FechaHora]) VALUES (1, 0, N'Could not find stored procedure ''ValidarUsuarioX''.', N'/api/Login/RecuperarAcceso', CAST(N'2024-11-23T10:53:24.650' AS DateTime))
GO
INSERT [dbo].[tError] ([Consecutivo], [ConsecutivoUsuario], [Mensaje], [Origen], [FechaHora]) VALUES (2, 0, N'Could not find stored procedure ''ValidarUsuarioX''.', N'/api/Login/RecuperarAcceso', CAST(N'2024-11-23T10:54:03.847' AS DateTime))
GO
INSERT [dbo].[tError] ([Consecutivo], [ConsecutivoUsuario], [Mensaje], [Origen], [FechaHora]) VALUES (3, 7, N'Could not find stored procedure ''ConsultarUsuariosX''.', N'/api/Usuario/ConsultarUsuarios', CAST(N'2024-11-23T10:55:24.307' AS DateTime))
GO
INSERT [dbo].[tError] ([Consecutivo], [ConsecutivoUsuario], [Mensaje], [Origen], [FechaHora]) VALUES (10002, 7, N'Error parsing column 1 (Nombre=Play station 5 - String)', N'/api/Producto/ConsultarProductos', CAST(N'2024-11-30T08:51:43.183' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tError] OFF
GO

SET IDENTITY_INSERT [dbo].[tProducto] ON 
GO
INSERT [dbo].[tProducto] ([Consecutivo], [Nombre], [Precio], [Inventario], [Imagen], [Activo]) VALUES (4, N'Play Station 4', CAST(100000.00 AS Decimal(18, 2)), 3, N'/products/', 1)
GO
INSERT [dbo].[tProducto] ([Consecutivo], [Nombre], [Precio], [Inventario], [Imagen], [Activo]) VALUES (5, N'Play Station 5', CAST(200000.00 AS Decimal(18, 2)), 3, N'/products/', 1)
GO
INSERT [dbo].[tProducto] ([Consecutivo], [Nombre], [Precio], [Inventario], [Imagen], [Activo]) VALUES (6, N'Play Station 6', CAST(300000.00 AS Decimal(18, 2)), 3, N'/products/', 1)
GO
INSERT [dbo].[tProducto] ([Consecutivo], [Nombre], [Precio], [Inventario], [Imagen], [Activo]) VALUES (7, N'Play Station 7', CAST(400000.00 AS Decimal(18, 2)), 3, N'/products/', 1)
GO
INSERT [dbo].[tProducto] ([Consecutivo], [Nombre], [Precio], [Inventario], [Imagen], [Activo]) VALUES (8, N'Play Station 8', CAST(500000.00 AS Decimal(18, 2)), 3, N'/products/', 1)
GO
SET IDENTITY_INSERT [dbo].[tProducto] OFF
GO

SET IDENTITY_INSERT [dbo].[tRol] ON 
GO
INSERT [dbo].[tRol] ([Consecutivo], [NombreRol]) VALUES (1, N'Administradores')
GO
INSERT [dbo].[tRol] ([Consecutivo], [NombreRol]) VALUES (2, N'Clientes')
GO
SET IDENTITY_INSERT [dbo].[tRol] OFF
GO

SET IDENTITY_INSERT [dbo].[tUsuario] ON 
GO
INSERT [dbo].[tUsuario] ([Consecutivo], [Identificacion], [Nombre], [CorreoElectronico], [Contrasenna], [Activo], [ConsecutivoRol], [UsaClaveTemp], [Vigencia]) VALUES (7, N'304590415', N'EDUARDO JOSE CALVO CASTILLO', N'ecalvo90415@ufide.ac.cr', N'vq6iL/cYD92ZbcRTmCttQA==', 1, 1, 0, CAST(N'2024-11-16T08:48:07.430' AS DateTime))
GO
INSERT [dbo].[tUsuario] ([Consecutivo], [Identificacion], [Nombre], [CorreoElectronico], [Contrasenna], [Activo], [ConsecutivoRol], [UsaClaveTemp], [Vigencia]) VALUES (8, N'304590416', N'FRANCINI DE LOS ANGELES ROMERO ARAYA', N'ecalvo90416@ufide.ac.cr', N'Sgzn/gAnGHGe55pefazs6Q==', 1, 2, 0, CAST(N'2024-11-16T08:48:39.217' AS DateTime))
GO
INSERT [dbo].[tUsuario] ([Consecutivo], [Identificacion], [Nombre], [CorreoElectronico], [Contrasenna], [Activo], [ConsecutivoRol], [UsaClaveTemp], [Vigencia]) VALUES (9, N'304590417', N'MERCEDES FRANCISCA MAROTO HERNANDEZ', N'ecalvo90417@ufide.ac.cr', N'b+SdtkM0Embs98KX7RA5fA==', 1, 2, 0, CAST(N'2024-11-16T10:16:23.780' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tUsuario] OFF
GO

ALTER TABLE [dbo].[tUsuario] ADD  CONSTRAINT [UK_Correo] UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tUsuario] ADD  CONSTRAINT [UK_Identificacion] UNIQUE NONCLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tCarrito]  WITH CHECK ADD  CONSTRAINT [FK_tCarrito_tProducto] FOREIGN KEY([ConsecutivoProducto])
REFERENCES [dbo].[tProducto] ([Consecutivo])
GO
ALTER TABLE [dbo].[tCarrito] CHECK CONSTRAINT [FK_tCarrito_tProducto]
GO

ALTER TABLE [dbo].[tCarrito]  WITH CHECK ADD  CONSTRAINT [FK_tCarrito_tUsuario] FOREIGN KEY([ConsecutivoUsuario])
REFERENCES [dbo].[tUsuario] ([Consecutivo])
GO
ALTER TABLE [dbo].[tCarrito] CHECK CONSTRAINT [FK_tCarrito_tUsuario]
GO

ALTER TABLE [dbo].[tUsuario]  WITH CHECK ADD  CONSTRAINT [FK_tUsuario_tRol] FOREIGN KEY([ConsecutivoRol])
REFERENCES [dbo].[tRol] ([Consecutivo])
GO
ALTER TABLE [dbo].[tUsuario] CHECK CONSTRAINT [FK_tUsuario_tRol]
GO

CREATE PROCEDURE [dbo].[ActualizarContrasenna]
	@Consecutivo bigint,
	@Contrasenna varchar(255),
	@UsaClaveTemp bit,
	@Vigencia datetime
AS
BEGIN
	
	UPDATE	dbo.tUsuario
	SET		Contrasenna = @Contrasenna,
			UsaClaveTemp = @UsaClaveTemp,
			Vigencia = @Vigencia
	WHERE	Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ActualizarEstado]
	@Consecutivo bigint
AS
BEGIN
	
	UPDATE	dbo.tUsuario
	SET		Activo = CASE WHEN Activo = 1 THEN 0 ELSE 1 END
	WHERE	Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ActualizarEstadoProducto]
	@Consecutivo bigint
AS
BEGIN
	
	UPDATE	dbo.tProducto
	SET		Activo = CASE WHEN Activo = 1 THEN 0 ELSE 1 END
	WHERE	Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ActualizarPerfil]
	@Consecutivo		bigint,
	@Identificacion		varchar(20),
	@Nombre				varchar(255),
	@CorreoElectronico	varchar(80),
	@ConsecutivoRol		smallint
AS
BEGIN
	
	IF NOT EXISTS(SELECT 1 FROM dbo.tUsuario
				  WHERE (Identificacion = @Identificacion OR CorreoElectronico = @CorreoElectronico)
					AND Consecutivo != @Consecutivo)
	BEGIN

		UPDATE	dbo.tUsuario
		SET		Identificacion = @Identificacion,
				Nombre = @Nombre,
				CorreoElectronico = @CorreoElectronico,
				ConsecutivoRol = CASE WHEN @ConsecutivoRol != 0
									  THEN @ConsecutivoRol
									  ELSE ConsecutivoRol END
		WHERE	Consecutivo = @Consecutivo

	END

END
GO

CREATE PROCEDURE [dbo].[ActualizarProducto]
	@Consecutivo bigint,
	@Nombre varchar(50),
	@Precio decimal(18,2),
	@Inventario int
AS
BEGIN
	
	UPDATE dbo.tProducto
	SET	Nombre = @Nombre,
		Precio = @Precio,
		Inventario = @Inventario
	WHERE Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ConsultarCarrito]
	@ConsecutivoUsuario BIGINT
AS
BEGIN
	
	SELECT	C.Consecutivo,
			C.ConsecutivoProducto,
			P.Nombre,
			C.Unidades,
			P.Precio,
			C.Unidades * P.Precio 'Total',
			C.Fecha
	  FROM	dbo.tCarrito C
	  INNER JOIN dbo.tProducto P ON C.ConsecutivoProducto = P.Consecutivo
	  WHERE ConsecutivoUsuario = @ConsecutivoUsuario

END
GO

CREATE PROCEDURE [dbo].[ConsultarProducto]
	@Consecutivo BIGINT
AS
BEGIN
	
	SELECT	Consecutivo,
			Nombre,
			Precio,
			Inventario,
			Imagen + CONVERT(VARCHAR,Consecutivo) + '.png' Imagen,
			Activo,
			CASE WHEN Activo = 1 THEN 'Activo' ELSE 'Inactivo' END Estado
	  FROM	dbo.tProducto
	  WHERE Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ConsultarProductos]
	
AS
BEGIN
	
	SELECT	Consecutivo,
			Nombre,
			Precio,
			Inventario,
			Imagen + CONVERT(VARCHAR,Consecutivo) + '.png' Imagen,
			Activo,
			CASE WHEN Activo = 1 THEN 'Activo' ELSE 'Inactivo' END Estado
	  FROM	dbo.tProducto

END
GO

CREATE PROCEDURE [dbo].[ConsultarRoles]
	
AS
BEGIN
	
	SELECT	Consecutivo, NombreRol
	FROM	dbo.tRol

END
GO

CREATE PROCEDURE [dbo].[ConsultarUsuario]
	@Consecutivo BIGINT
AS
BEGIN
	
	SELECT	U.Consecutivo,
			Identificacion,
			Nombre,
			CorreoElectronico,
			Activo,
			ConsecutivoRol,
			R.NombreRol
	  FROM	dbo.tUsuario U
	  INNER JOIN dbo.tRol R ON U.ConsecutivoRol = R.Consecutivo
	  WHERE U.Consecutivo = @Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ConsultarUsuarios]
	
AS
BEGIN
	
	SELECT	U.Consecutivo,
			Identificacion,
			Nombre,
			CorreoElectronico,
			Activo,
			CASE WHEN Activo = 1 THEN 'Activo' ELSE 'Inactivo' END Estado,
			ConsecutivoRol,
			R.NombreRol
	  FROM	dbo.tUsuario U
	  INNER JOIN dbo.tRol R ON U.ConsecutivoRol = R.Consecutivo

END
GO

CREATE PROCEDURE [dbo].[CrearCuenta]
	@Identificacion varchar(20),
	@Nombre varchar(255),
	@CorreoElectronico varchar(80),
	@Contrasenna varchar(255)
AS
BEGIN
	
	DECLARE @Activo BIT = 1,
			@ConsecutivoRol TINYINT,
			@UsaClaveTemp BIT = 0

	SELECT	@ConsecutivoRol = Consecutivo
	FROM	dbo.tRol
	WHERE	NombreRol = 'Clientes'

	IF NOT EXISTS(SELECT 1 FROM dbo.tUsuario
				  WHERE Identificacion = @Identificacion
					OR CorreoElectronico = @CorreoElectronico)
	BEGIN

		INSERT INTO dbo.tUsuario (Identificacion,Nombre,CorreoElectronico,Contrasenna,Activo,ConsecutivoRol,UsaClaveTemp,Vigencia)
		VALUES (@Identificacion, @Nombre, @CorreoElectronico, @Contrasenna, @Activo, @ConsecutivoRol, @UsaClaveTemp, GETDATE())

	END
END
GO

CREATE PROCEDURE [dbo].[IniciarSesion]
	@CorreoElectronico varchar(80),
	@Contrasenna varchar(255)
AS
BEGIN
	
	SELECT	U.Consecutivo,
			Identificacion,
			Nombre,
			CorreoElectronico,
			Activo,
			ConsecutivoRol,
			R.NombreRol,
			UsaClaveTemp,
			Vigencia
	  FROM	dbo.tUsuario U
	  INNER JOIN dbo.tRol R ON U.ConsecutivoRol = R.Consecutivo
	  WHERE CorreoElectronico = @CorreoElectronico
		AND Contrasenna = @Contrasenna
		AND Activo = 1
	
END
GO

CREATE PROCEDURE [dbo].[RegistrarCarrito]
	@ConsecutivoUsuario		bigint,
	@ConsecutivoProducto	bigint,
	@Unidades				int
AS
BEGIN
	
	IF(	SELECT COUNT(*) FROM tCarrito
		WHERE	ConsecutivoUsuario = @ConsecutivoUsuario
			AND ConsecutivoProducto = @ConsecutivoProducto) = 0
	BEGIN

		INSERT INTO dbo.tCarrito (ConsecutivoUsuario,ConsecutivoProducto,Unidades,Fecha)
		VALUES (@ConsecutivoUsuario, @ConsecutivoProducto, @Unidades, GETDATE())

	END
	ELSE
	BEGIN

		UPDATE	dbo.tCarrito
		SET		Unidades = @Unidades,
				Fecha = GETDATE()
		WHERE	ConsecutivoUsuario = @ConsecutivoUsuario
			AND ConsecutivoProducto = @ConsecutivoProducto

	END

END
GO

CREATE PROCEDURE [dbo].[RegistrarError]
	@Consecutivo BIGINT,
	@Mensaje	 VARCHAR(MAX),
	@Origen		 VARCHAR(50)
AS
BEGIN

	INSERT INTO dbo.tError(ConsecutivoUsuario,Mensaje,Origen,FechaHora)
    VALUES (@Consecutivo,@Mensaje,@Origen,GETDATE())

END
GO

CREATE PROCEDURE [dbo].[RegistrarProducto]
	@Nombre varchar(50),
	@Precio decimal(18,2),
	@Inventario int,
	@Imagen varchar(50)
AS
BEGIN
	
	INSERT INTO dbo.tProducto (Nombre,Precio,Inventario,Imagen,Activo)
	VALUES (@Nombre, @Precio, @Inventario, @Imagen, 1)

	SELECT @@IDENTITY Consecutivo

END
GO

CREATE PROCEDURE [dbo].[ValidarUsuario]
	@CorreoElectronico varchar(80)
AS
BEGIN
	
	SELECT	U.Consecutivo,
			Identificacion,
			Nombre,
			CorreoElectronico,
			Activo,
			ConsecutivoRol,
			R.NombreRol
	  FROM	dbo.tUsuario U
	  INNER JOIN dbo.tRol R ON U.ConsecutivoRol = R.Consecutivo
	  WHERE CorreoElectronico = @CorreoElectronico
	
END
GO