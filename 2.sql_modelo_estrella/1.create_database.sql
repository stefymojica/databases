-- Diseñar el modelo de tablas y sus relaciones. En las relaciones se deben indicar los campos y la cardinalidad 
-- Indicar qué tablas se han generado, Indicar las relaciones entre las tablas y su cardinalidad, Diseñar el diagrama de tablas y sus campos.

-- crear bbdd_Nortwind_DW
USE [master]
GO

CREATE DATABASE [Northwind_DW]
	CONTAINMENT = NONE
	ON PRIMARY
	(	NAME = N'Northwind_DW',  FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Northwind_DW.mdf' , SIZE = 8192KB , MAXSIZE 
	= UNLIMITED, FILEGROWTH = 65536KB ) 
	 LOG ON
	(	NAME = N'Northwind_DW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Northwind_DW_log.ldf' , SIZE = 8192KB , 
	MAXSIZE = 2048GB, FILEGROWTH = 65536KB	)
	 WITH CATALOG_COLLATION = DATABASE_DEFAULT
	GO

	IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
	begin
	EXEC [Northwind_DW].[dbo].[sp_fulltest_database] @action = 'enable'
	end
	GO

	ALTER DATABASE [Northwind_DW] SET ANSI_NULL_DEFAULT OFF
	GO

	ALTER DATABASE [Northwind_DW] SET ANSI_NULLS OFF
	GO
