USE [master]
GO
/****** Object:  Database [Gestion_Citas_Medicas]    Script Date: 5/07/2024 3:04:23 p. m. ******/
CREATE DATABASE [Gestion_Citas_Medicas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gestion_Citas_Medicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Gestion_Citas_Medicas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gestion_Citas_Medicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Gestion_Citas_Medicas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gestion_Citas_Medicas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET RECOVERY FULL 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET  MULTI_USER 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Gestion_Citas_Medicas', N'ON'
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET QUERY_STORE = OFF
GO
USE [Gestion_Citas_Medicas]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 5/07/2024 3:04:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[Cedula] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellido] [varchar](20) NULL,
	[Correo] [varchar](20) NULL,
	[Contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 5/07/2024 3:04:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[Cedula] [varchar](20) NOT NULL,
	[Medico] [varchar](20) NULL,
	[Especialidad] [varchar](20) NULL,
	[lugar] [varchar](20) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 5/07/2024 3:04:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Cedula] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellido] [varchar](20) NULL,
	[Correo] [varchar](20) NULL,
	[Contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 5/07/2024 3:04:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[Cedula] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellido] [varchar](20) NULL,
	[Correo] [varchar](20) NULL,
	[Contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValidacionRoles]    Script Date: 5/07/2024 3:04:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidacionRoles](
	[ValidacionRol] [varchar](1) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Gestion_Citas_Medicas] SET  READ_WRITE 
GO
