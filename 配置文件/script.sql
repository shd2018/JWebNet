USE [master]
GO
/****** Object:  Database [yang]    Script Date: 06/28/2017 16:33:46 ******/
CREATE DATABASE [yang] ON  PRIMARY 
( NAME = N'yang_Data', FILENAME = N'C:\apache-tomcat-8.5.16\webapps\ROOT\yang_Data.MDF' , SIZE = 1984KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'yang_Log', FILENAME = N'C:\apache-tomcat-8.5.16\webapps\ROOT\yang_Log.LDF' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [yang] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yang].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [yang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [yang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [yang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [yang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [yang] SET ARITHABORT OFF
GO
ALTER DATABASE [yang] SET AUTO_CLOSE ON
GO
ALTER DATABASE [yang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [yang] SET AUTO_SHRINK ON
GO
ALTER DATABASE [yang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [yang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [yang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [yang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [yang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [yang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [yang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [yang] SET  DISABLE_BROKER
GO
ALTER DATABASE [yang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [yang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [yang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [yang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [yang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [yang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [yang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [yang] SET  READ_WRITE
GO
ALTER DATABASE [yang] SET RECOVERY SIMPLE
GO
ALTER DATABASE [yang] SET  MULTI_USER
GO
ALTER DATABASE [yang] SET PAGE_VERIFY NONE
GO
ALTER DATABASE [yang] SET DB_CHAINING OFF
GO
USE [yang]
GO
/****** Object:  User [yang]    Script Date: 06/28/2017 16:33:46 ******/
CREATE USER [yang] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[yang]
GO
/****** Object:  Schema [yang]    Script Date: 06/28/2017 16:33:46 ******/
CREATE SCHEMA [yang] AUTHORIZATION [yang]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gonghao] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[birthday] [varchar](50) NULL,
	[xuewei] [varchar](50) NULL,
	[zhicheng] [varchar](50) NULL,
	[teshu] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[jianli] [varchar](1200) NULL,
	[photo] [varchar](50) NULL,
	[regtime] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[question]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [char](15) NULL,
	[question] [varchar](500) NULL,
	[questionjieshao] [varchar](500) NULL,
	[dotime] [varchar](50) NULL,
	[awser] [varchar](500) NULL,
	[answerteacher] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kejian]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kejian](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gonghao] [varchar](50) NULL,
	[kejianname] [varchar](50) NULL,
	[kejianjieshao] [varchar](1000) NULL,
	[kejianfilename] [varchar](50) NULL,
	[uploadtime] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[class]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[sex] [char](10) NULL,
	[birthday] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[jianli] [varchar](1000) NULL,
	[photo] [varchar](50) NULL,
	[regtime] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] NOT NULL,
	[admin] [varchar](50) NULL,
	[adminpwd] [varchar](50) NULL,
	[type] [char](10) NULL,
	[datetime] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[a]    Script Date: 06/28/2017 16:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[a](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zt] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[qq] [char](20) NULL,
	[email] [varchar](50) NULL,
	[sex] [char](10) NULL,
	[tx] [varchar](50) NULL,
	[nr] [varchar](7000) NULL,
	[sj] [varchar](50) NULL,
	[photo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_question_awser]    Script Date: 06/28/2017 16:33:47 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_awser]  DEFAULT ('无') FOR [awser]
GO
