/* check whether the database exists, if so, drop it */

IF EXISTS(SELECT 1 FROM master.dbo.sysdatabases
			WHERE name = 'pokemon_db_am')
BEGIN
	DROP DATABASE pokemon_db_am
	print '' print '*** dropping database pokemon_db_am'
END
GO

print '' print '*** creating database pokemon_db_am'
GO
CREATE DATABASE pokemon_db_am
GO

print '' print '*** using pokemon_db_am'
GO
USE [pokemon_db_am]
GO

/* pokemon table */

print '' print '*** creating pokemon table'
GO
CREATE TABLE [dbo].[Pokemon] (
	[PokemonID]		[int] IDENTITY(1000,1)	NOT NULL,
	[PokemonName]		[nvarchar](50)		NOT NULL,
    [PokemonDescription] [char]             Not NULL,
    [StatID] [int] NOT NULL,
	CONSTRAINT [pk_PokemonID] PRIMARY KEY([PokemonID]),
    CONSTRAINT [fk_StatID] FOREIGN KEY([StatID])
        REFERENCES [dbo].[Stats] ([StatID])
)
GO

print '' print '*** creating type table'
GO
CREATE TABLE [dbo].[Type](
    [TypeID]    [int] IDENTITY(100,1) NOT NULL,
    [TypeName] [nvarchar](50) NOT NULL,
    [TypeDescription] [char] NOT NULL,
    CONSTRAINT [pk_TypeID] PRIMARY KEY([TypeID])
)

print '' print '*** creating weakness table'
GO
CREATE TABLE [dbo].[Weakness](
    [WeaknessID] [int] IDENTITY(100,1) NOT NULL,
    [WeaknessName] [nvarchar](50) NOT NULL,
    [WeaknessDescription] [char] NOT NULL,
    CONSTRAINT [pk_WeaknessID] PRIMARY KEY([WeaknessID])
)

print '' print '*** creating pokemon stat table'
GO
CREATE TABLE [dbo].[Stats](
    [StatID] [int] IDENTITY(100,1) NOT NULL,
    [Attack] [int] NOT NULL,
    [SpecialAttack] [int] NOT NULL,
    [Defense] [int] NOT NULL,
    [SpecialDefense] [int] NOT NULL,
    [Speed] [int] NOT NULL,
    [HP] [int] NOT NULL,
    CONSTRAINT [pk_StatsID] Primary KEY([StatID]),
)

print '' print '*** creating Pokemon Type joint table'
GO
CREATE TABLE [dbo].[PokemonType](
    [PokemonID] [int] NOT NULL,
    [TypeID] [int] NOT NULL,
    CONSTRAINT [pk_PokemonID] PRIMARY KEY([PokemonID]),
    CONSTRAINT [pk_TypeID] PRIMARY KEY([TypeID]),
    CONSTRAINT [fk_PokemonID] FOREIGN KEY([PokemonID])
        REFERENCES [dbo].[Pokemon] ([PokemonID]),
    CONSTRAINT [fk_Type] FOREIGN KEY([TypeID])
        REFERENCES [dbo].[Type] ([TypeID])
)

print '' print '*** creating Pokemon Weakness Joint table'
GO
CREATE TABLE [dbo].[PokemonWeakness](
    [PokemonID] [int] NOT NULL,
    [WeaknessID] [int] NOT NULL,
    CONSTRAINT [pk_PokemonID] PRIMARY KEY([PokemonID]),
    CONSTRAINT [pk_WeaknessID] PRIMARY KEY([WeaknessID]),
    CONSTRAINT [fk_PokemonID] FOREIGN KEY([PokemonID])
        REFERENCES [dbo].[Pokemon] ([PokemonID]),
    CONSTRAINT [fk_WeaknessID] FOREIGN KEY([WeaknessID])
        REFERENCES [dbo].[Weakness] ([WeaknessID])
)
