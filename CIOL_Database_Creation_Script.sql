USE [master]
GO

/****** Object:  Database [CIOL]    Script Date: 6/14/2019 3:10:41 PM ******/
DROP DATABASE [CIOL]
GO

/****** Object:  Database [CIOL]    Script Date: 6/14/2019 3:10:41 PM ******/
CREATE DATABASE [CIOL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CIOL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CIOL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CIOL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CIOL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [CIOL] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CIOL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CIOL] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CIOL] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CIOL] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CIOL] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CIOL] SET ARITHABORT OFF 
GO

ALTER DATABASE [CIOL] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CIOL] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CIOL] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CIOL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CIOL] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CIOL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CIOL] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CIOL] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CIOL] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CIOL] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CIOL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CIOL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CIOL] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CIOL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CIOL] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CIOL] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CIOL] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CIOL] SET RECOVERY FULL 
GO

ALTER DATABASE [CIOL] SET  MULTI_USER 
GO

ALTER DATABASE [CIOL] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CIOL] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CIOL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CIOL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CIOL] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CIOL] SET QUERY_STORE = OFF
GO

ALTER DATABASE [CIOL] SET  READ_WRITE 
GO

