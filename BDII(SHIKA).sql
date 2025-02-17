USE [master]
GO
/****** Object:  Database [BD_SHIKA (1)]    Script Date: 10/29/2024 3:49:44 PM ******/
CREATE DATABASE [BD_SHIKA (1)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_SHIKA (1)_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_SHIKA (1).mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_SHIKA (1)_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_SHIKA (1).ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BD_SHIKA (1)] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_SHIKA (1)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_SHIKA (1)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_SHIKA (1)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_SHIKA (1)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_SHIKA (1)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_SHIKA (1)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_SHIKA (1)] SET  MULTI_USER 
GO
ALTER DATABASE [BD_SHIKA (1)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_SHIKA (1)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_SHIKA (1)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_SHIKA (1)] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_SHIKA (1)] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_SHIKA (1)] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_SHIKA (1)', N'ON'
GO
ALTER DATABASE [BD_SHIKA (1)] SET QUERY_STORE = ON
GO
ALTER DATABASE [BD_SHIKA (1)] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BD_SHIKA (1)]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/29/2024 3:49:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[telefono] [int] NULL,
	[fecha_registro] [date] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[id_compra] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha_compra] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Compra]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Compra](
	[id_detalle_compra] [int] NOT NULL,
	[id_compra] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [nvarchar](50) NULL,
	[precio_unitario] [nvarchar](50) NULL,
	[subtotal] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Detalle_Compa] PRIMARY KEY CLUSTERED 
(
	[id_detalle_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[id_factura] [int] NOT NULL,
	[id_compra] [int] NOT NULL,
	[fecha_emision] [date] NULL,
	[total] [int] NULL,
	[estado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[id_pago] [int] NOT NULL,
	[id_factura] [int] NOT NULL,
	[fecha_pago] [date] NULL,
	[monto] [int] NULL,
	[metodo_pago] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[id_producto] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[precio] [int] NULL,
	[cantidad_en_inventario] [int] NULL,
	[categoria] [nvarchar](50) NULL,
	[id_proveedor] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 10/29/2024 3:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[contacto] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (1, N'Carlos ', N'Perez', N'carlos.perez@gmail.com', 65842375, CAST(N'2024-10-27' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (2, N'Ana', N'Lopez', N'ana.lopez@gmail.com', 45124684, CAST(N'2024-09-15' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (3, N'Maria', N'Gonzalez', N'maria.gonzalez@gmail.com', 12365482, CAST(N'2024-09-12' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (4, N'Luis', N'Ramirez', N'luis.ramirez@gmail.com', 41698542, CAST(N'2024-08-22' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (5, N'Rosa', N'Martinez', N'rosa.martinez@gmail.com', 12589635, CAST(N'2024-08-09' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (6, N'Juan', N'Fernandez', N'juan.fernandez@gmail.com', 77825914, CAST(N'2024-07-29' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (7, N'Laura', N'Torres', N'laura.torres@gmail.com', 71256384, CAST(N'2024-07-07' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (8, N'Pedro', N'Morales', N'pedro.morales@gmail.com', 76548927, CAST(N'2024-06-01' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (9, N'Carmen', N'Diaz', N'carmen.diaz@gmail.com', 74516878, CAST(N'2024-06-10' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (10, N'Javier', N'Soto', N'javier.soto@gmail.com', 78452158, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (11, N'Sofia', N'Navarro', N'sofia.navarro@gmail.com', 77523694, CAST(N'2024-05-10' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (12, N'Andres', N'Flores', N'andres.flores@gmail.com', 79523841, CAST(N'2024-04-28' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (13, N'Marta', N'Rojas', N'marta.rojas@gmail.com', 76154985, CAST(N'2024-04-17' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (14, N'Roberto', N'Vega', N'roberto.vega@gmail.com', 76324812, CAST(N'2024-03-04' AS Date))
INSERT [dbo].[Cliente] ([id_cliente], [nombre], [apellido], [email], [telefono], [fecha_registro]) VALUES (15, N'Elisa', N'Herrera', N'elisa.herrera@gmail.com', 76259874, CAST(N'2024-03-03' AS Date))
GO
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (1, 1, N'2024-10-28', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (2, 2, N'2024-09-16', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (3, 3, N'2024-09-13', N'Pendiente')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (4, 4, N'2024-08-23', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (5, 4, N'2024-08-23', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (6, 4, N'2024-08-23', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (7, 5, N'2024-08-10', N'Pendiente')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (8, 6, N'2024-07-30', N'Cancelada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (9, 7, N'2024-07-08', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (10, 8, N'2024-06-02', N'Pendiente')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (11, 9, N'2024--0611', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (12, 10, N'2024-05-16', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (13, 11, N'2024-05-15', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (14, 12, N'2024-04-29', N'Pendiente')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (15, 13, N'2024-04-19', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (16, 14, N'2024-03-06', N'Pendiente')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (17, 15, N'2024-03-05', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (18, 15, N'2024-06-04', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (19, 7, N'2024-08-08', N'Completada')
INSERT [dbo].[Compra] ([id_compra], [id_cliente], [fecha_compra], [estado]) VALUES (20, 7, N'2024-08-08', N'Completada')
GO
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (1, 1, 1, N'1', N'700', CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (2, 2, 2, N'1', N'350', CAST(350.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (3, 3, 3, N'1', N'50', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (4, 4, 4, N'1', N'1200', CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (5, 5, 5, N'1', N'25', CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (6, 6, 6, N'1', N'60', CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (7, 7, 7, N'1', N'300', CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (8, 8, 8, N'1', N'200', CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (9, 9, 9, N'1', N'80', CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (10, 10, 10, N'1', N'90', CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (11, 11, 11, N'1', N'110', CAST(110.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (12, 12, 12, N'1', N'200', CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (13, 13, 13, N'1', N'150', CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (14, 14, 14, N'1', N'120', CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (15, 15, 15, N'1', N'40', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (16, 16, 1, N'1', N'700', CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (17, 17, 2, N'1', N'350', CAST(350.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (18, 18, 3, N'1', N'50', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (19, 19, 4, N'1', N'1200', CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Compra] ([id_detalle_compra], [id_compra], [id_producto], [cantidad], [precio_unitario], [subtotal]) VALUES (20, 20, 5, N'1', N'25', CAST(25.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (1, 1, CAST(N'2024-10-28' AS Date), 700, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (2, 2, CAST(N'2024-09-16' AS Date), 350, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (3, 3, CAST(N'2024-09-13' AS Date), 50, N'No Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (4, 4, CAST(N'2024-08-23' AS Date), 1200, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (5, 5, CAST(N'2024-08-23' AS Date), 25, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (6, 6, CAST(N'2024-08-23' AS Date), 60, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (7, 7, CAST(N'2024-08-10' AS Date), 300, N'No Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (8, 8, CAST(N'2024-07-30' AS Date), 200, N'Cancelada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (9, 9, CAST(N'2024-07-08' AS Date), 80, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (10, 10, CAST(N'2024-06-02' AS Date), 90, N'No Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (11, 11, CAST(N'2024-06-11' AS Date), 110, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (12, 12, CAST(N'2024-05-16' AS Date), 200, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (13, 13, CAST(N'2024-05-15' AS Date), 150, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (14, 14, CAST(N'2024-04-29' AS Date), 120, N'No Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (15, 15, CAST(N'2024-04-19' AS Date), 40, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (16, 16, CAST(N'2024-03-06' AS Date), 700, N'No Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (17, 17, CAST(N'2024-03-05' AS Date), 350, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (18, 18, CAST(N'2024-06-04' AS Date), 50, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (19, 19, CAST(N'2024-08-08' AS Date), 1200, N'Pagada')
INSERT [dbo].[Factura] ([id_factura], [id_compra], [fecha_emision], [total], [estado]) VALUES (20, 20, CAST(N'2024-08-08' AS Date), 25, N'Pagada')
GO
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (1, 1, CAST(N'2024-10-28' AS Date), 700, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (2, 2, CAST(N'2024-09-16' AS Date), 350, N'Efectivo')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (3, 3, CAST(N'2024-09-13' AS Date), 50, N'Transferencia')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (4, 4, CAST(N'2024-08-23' AS Date), 1200, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (5, 5, CAST(N'2024-08-23' AS Date), 25, N'Efectivo')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (6, 6, CAST(N'2024-08-23' AS Date), 60, N'Transferencia')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (7, 7, CAST(N'2024-08-10' AS Date), 300, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (8, 8, CAST(N'2024-07-30' AS Date), 200, N'Efectivo')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (9, 9, CAST(N'2024-07-08' AS Date), 80, N'Transferencia')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (10, 10, CAST(N'2024-06-02' AS Date), 90, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (11, 11, CAST(N'2024-06-11' AS Date), 110, N'Efectivo')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (12, 12, CAST(N'2024-05-16' AS Date), 200, N'Transferencia')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (13, 13, CAST(N'2024-05-15' AS Date), 150, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (14, 14, CAST(N'2024-04-29' AS Date), 120, N'Efectivo')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (15, 15, CAST(N'2024-04-19' AS Date), 40, N'Transferencia')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (16, 16, CAST(N'2024-03-06' AS Date), 700, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (17, 17, CAST(N'2024-03-05' AS Date), 350, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (18, 18, CAST(N'2024-06-04' AS Date), 50, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (19, 19, CAST(N'2024-08-08' AS Date), 1200, N'Tarjeta')
INSERT [dbo].[Pago] ([id_pago], [id_factura], [fecha_pago], [monto], [metodo_pago]) VALUES (20, 20, CAST(N'2024-08-08' AS Date), 25, N'Tarjeta')
GO
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (1, N'Laptop', N'Laptop con procesador intel i7', 700, 15, N'Electronica', 1)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (2, N'Smartphone', N'Smartphone de gama media', 350, 30, N'Electronica', 2)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (3, N'Auriculares', N'Auriculares inalambricos', 50, 50, N'Accesorios', 3)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (4, N'Televisor', N'Televisor 4K de 55 pulgadas', 1200, 8, N'Electronica', 4)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (5, N'Mouse Optico', N'Mouse ergonomico', 25, 40, N'Accesorios', 5)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (6, N'Teclado', N'Teclado mecanico RGB', 60, 25, N'Accesorios', 1)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (7, N'Camara', N'Camara digital 20 MP', 300, 12, N'Electronica', 2)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (8, N'Tablet', N'Tablet 10 pulgadas', 200, 20, N'Electronica', 3)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (9, N'Parlante', N'Parlante bluetooth portatil', 80, 18, N'Electronica', 4)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (10, N'Disco Duro', N'Disco duro externo 1TB', 90, 10, N'Almacenamiento', 5)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (11, N'SSD', N'SSD 512GB', 110, 15, N'Almacenamiento', 1)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (12, N'Monitor', N'Monitor Full HD de 24 pulgadas', 200, 9, N'Electronica', 2)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (13, N'Impresora', N'Impresora multifuncional', 150, 7, N'Oficina', 3)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (14, N'Router', N'Router WiFi 6', 120, 15, N'Electronica', 4)
INSERT [dbo].[Producto] ([id_producto], [nombre], [descripcion], [precio], [cantidad_en_inventario], [categoria], [id_proveedor]) VALUES (15, N'Bateria Portatil', N'Bateria externa de 10000 mAh', 40, 50, N'Accesorios', 5)
GO
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre], [contacto], [direccion], [email]) VALUES (1, N'TechDistribuidora', N'Juan Garcia', N'Calle Siempre Viva', N'juan.garcia@techdis.com')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre], [contacto], [direccion], [email]) VALUES (2, N'ElectroMundo', N'Ana Fernandez', N'Avenida La patria', N'ana.fernandez@electromundo.com')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre], [contacto], [direccion], [email]) VALUES (3, N'Compumax', N'Pedro Ramirez', N'Calle Ismael Montes', N'pedro.ramirez@compumax.com')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre], [contacto], [direccion], [email]) VALUES (4, N'Accesorios Plus', N'Laura Lopez', N'Calle Sargento tejerina', N'laura.lopez@accesoriosplus.com')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre], [contacto], [direccion], [email]) VALUES (5, N'Almacen Global', N'Roberto Diaz', N'Calle Cochabamba', N'roberto.diaz@almacenglobal.com')
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Cliente]
GO
ALTER TABLE [dbo].[Detalle_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Compra_Compra] FOREIGN KEY([id_compra])
REFERENCES [dbo].[Compra] ([id_compra])
GO
ALTER TABLE [dbo].[Detalle_Compra] CHECK CONSTRAINT [FK_Detalle_Compra_Compra]
GO
ALTER TABLE [dbo].[Detalle_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Compra_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Producto] ([id_producto])
GO
ALTER TABLE [dbo].[Detalle_Compra] CHECK CONSTRAINT [FK_Detalle_Compra_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Compra] FOREIGN KEY([id_compra])
REFERENCES [dbo].[Compra] ([id_compra])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Compra]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[Factura] ([id_factura])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Factura]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
USE [master]
GO
ALTER DATABASE [BD_SHIKA (1)] SET  READ_WRITE 
GO
