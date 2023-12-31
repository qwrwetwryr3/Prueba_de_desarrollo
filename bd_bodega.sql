USE [master]
GO
/****** Object:  Database [Bodega]    Script Date: 16-07-2023 19:06:30 ******/
CREATE DATABASE [Bodega]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bodega', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bodega.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bodega_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bodega_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bodega] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bodega].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bodega] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bodega] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bodega] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bodega] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bodega] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bodega] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bodega] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bodega] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bodega] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bodega] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bodega] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bodega] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bodega] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bodega] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bodega] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bodega] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bodega] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bodega] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bodega] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bodega] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bodega] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bodega] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bodega] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bodega] SET  MULTI_USER 
GO
ALTER DATABASE [Bodega] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bodega] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bodega] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bodega] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Bodega] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Bodega]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
	[Fecha_Ingreso] [datetime] NULL,
	[Valor] [int] NULL,
	[StockMinimo] [int] NULL,
	[Codigo_Bodega] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bodega](
	[Codigo_Bodega] [int] NOT NULL,
	[Nombre_Bodega] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (2, N'probando', CAST(N'2014-06-12 02:25:15.000' AS DateTime), 12, 34, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (10, N'probando', CAST(N'2022-09-06 18:16:35.000' AS DateTime), 45, 45, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (12, N'probando', CAST(N'2023-02-02 18:30:12.000' AS DateTime), 12341241, 124141, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (13, N'probando actualizado', CAST(N'2023-02-13 18:33:59.000' AS DateTime), 12321, 213123, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (14, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (15, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (16, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (17, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (18, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (19, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (20, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (21, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (22, N'probando 2', CAST(N'2023-02-23 18:39:34.000' AS DateTime), 142, 124, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (24, N'probando3 actualizado?', CAST(N'2023-02-01 23:10:29.000' AS DateTime), 123, 123, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (25, N'probando3', CAST(N'2023-02-01 23:55:59.000' AS DateTime), 123, 123, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (26, N'probando 4', CAST(N'2022-09-21 00:15:46.000' AS DateTime), 123, 456, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (27, N'probando5', CAST(N'2022-08-02 00:24:14.000' AS DateTime), 3, 3, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (28, N'probando6', CAST(N'2022-07-02 00:34:25.000' AS DateTime), 65, 57, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (29, N'probando7', CAST(N'2000-02-10 00:42:14.000' AS DateTime), 123, 7868, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (30, N'probando8 actualizado?', CAST(N'2026-03-12 00:50:42.000' AS DateTime), 1313, 23523, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (33, N'probando 9 actualizado', CAST(N'2023-03-09 01:26:43.000' AS DateTime), 1434, 3414, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (34, N'probando 10 actualizado', CAST(N'2023-02-15 01:40:30.000' AS DateTime), 1241, 2141, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (35, N'probando11', CAST(N'2019-01-01 01:41:35.000' AS DateTime), 123, 124, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (37, N'probando 12', CAST(N'2055-07-16 01:46:26.000' AS DateTime), 5355, 252, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (38, N'probando 13', CAST(N'2023-02-14 01:49:09.000' AS DateTime), 14, 2141, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (39, N'probandi 14', CAST(N'2095-07-15 01:51:42.000' AS DateTime), 25352, 325235, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (40, N'probando 15', CAST(N'2009-11-27 01:57:02.000' AS DateTime), 75, 45454, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (41, N'safffffd', CAST(N'2005-03-11 01:57:02.000' AS DateTime), 75, 45454, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (43, N'wfeewfwf', CAST(N'2015-03-05 02:00:04.000' AS DateTime), 327, 27, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (44, N'wfffw', CAST(N'2023-02-17 02:25:15.000' AS DateTime), 12, 34, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (45, N'probando', CAST(N'2023-02-14 08:11:42.807' AS DateTime), 1, 2, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (46, N'efefqefw', CAST(N'2004-06-16 08:20:03.000' AS DateTime), 3412, 1243, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (47, N'qdqq', CAST(N'2023-02-14 08:35:45.460' AS DateTime), 12, 23, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (48, N'asasads', CAST(N'2023-02-14 08:36:05.637' AS DateTime), 123, 123, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (49, N'dwdwew', CAST(N'2023-02-14 23:17:00.973' AS DateTime), 123, 123, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (50, N'wfwqfeqfwf', CAST(N'2023-02-14 23:18:05.513' AS DateTime), 1, 1, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (52, N'dfsdffasafa', CAST(N'2023-02-14 23:55:43.027' AS DateTime), 1, 1, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (53, N'4wfewfqwef', CAST(N'2023-02-15 00:04:24.967' AS DateTime), 4, 4, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (54, N'4wfewfqwef', CAST(N'2023-02-15 00:04:24.967' AS DateTime), 4, 4, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (59, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (60, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (61, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (62, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (63, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (64, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (65, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (66, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (67, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (68, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (69, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (70, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (71, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (72, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (73, N'liduwbdipubwdiuwbuvw', CAST(N'2023-02-15 00:23:53.000' AS DateTime), 3285, 23423, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (76, N'wefnwoifwifownfiow', CAST(N'2023-02-15 02:20:28.107' AS DateTime), 43534354, 53453, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (77, N'ddcs', CAST(N'2023-04-27 23:25:11.623' AS DateTime), 21, 32, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (78, N'p9uhpwf', CAST(N'2023-05-18 20:57:49.533' AS DateTime), 1, 2, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (79, N'fdffdss', CAST(N'2023-05-19 00:17:51.003' AS DateTime), 23423, 234, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (80, N'11', CAST(N'2023-07-04 17:25:09.187' AS DateTime), 1, 11, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (81, N'dsfsfdsasd', CAST(N'2023-07-04 17:25:09.187' AS DateTime), 2, 2, 2)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (82, N'dvsdvsv', CAST(N'2023-07-04 21:40:53.530' AS DateTime), 3, 3, 3)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (83, N'egrwgrwg', CAST(N'2023-07-08 18:16:42.293' AS DateTime), 4, 4, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (84, N'wfdfsfsdf', CAST(N'2023-07-09 00:27:29.023' AS DateTime), 2, 3, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (85, N'iaubcuiabcauc', CAST(N'2023-07-11 00:38:04.000' AS DateTime), 5, 4, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (86, N'sñjsdnkjsnv', CAST(N'2023-07-09 00:45:43.310' AS DateTime), 4, 5, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (87, N'ejbwljebvbvw', CAST(N'2023-07-09 00:49:16.057' AS DateTime), 3, 4, 1)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (88, N'ecececdc', CAST(N'2023-07-13 19:11:51.497' AS DateTime), 2, 3, 4)
INSERT [dbo].[Articulo] ([Codigo], [Descripcion], [Fecha_Ingreso], [Valor], [StockMinimo], [Codigo_Bodega]) VALUES (89, N'dvsvdsvsvcs', CAST(N'2023-07-13 19:26:02.933' AS DateTime), 3, 1, 3)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
INSERT [dbo].[Bodega] ([Codigo_Bodega], [Nombre_Bodega]) VALUES (1, N'Bodega 1')
INSERT [dbo].[Bodega] ([Codigo_Bodega], [Nombre_Bodega]) VALUES (2, N'Bodega 2')
INSERT [dbo].[Bodega] ([Codigo_Bodega], [Nombre_Bodega]) VALUES (3, N'Bodega 3')
INSERT [dbo].[Bodega] ([Codigo_Bodega], [Nombre_Bodega]) VALUES (4, N'Bodega 4')
/****** Object:  StoredProcedure [dbo].[sp_actualizar]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_actualizar] @xCodigo int,@xDescripcion varchar(30),@xFecha_Ingreso dateTime,@xValor int,@xStockMinimo int,@xCodigo_Bodega int
as update Articulo 
set Descripcion=@xDescripcion, Fecha_Ingreso=@xFecha_Ingreso, Valor=@xValor, StockMinimo=@xStockMinimo, Codigo_Bodega=@xCodigo_Bodega
where Codigo=@xCodigo; 
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultar] @xCodigo int as select * from Articulo where Codigo=@xCodigo;
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_eliminar] @xCodigo int as delete from Articulo where Codigo=@xCodigo;
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar]    Script Date: 16-07-2023 19:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertar] @xDescripcion varchar(30),@xFecha_Ingreso dateTime,@xValor int,@xStockMinimo int,@xCodigo_Bodega int
as
insert into Articulo (Descripcion, Fecha_Ingreso, Valor, StockMinimo, Codigo_Bodega) 
values(@xDescripcion,@xFecha_Ingreso,@xValor,@xStockMinimo,@xCodigo_Bodega); 
GO
USE [master]
GO
ALTER DATABASE [Bodega] SET  READ_WRITE 
GO
