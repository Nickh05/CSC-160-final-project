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
	[Health]	[int]						NOT NULL,
	[Attack]	[int]						NOT NULL,
	[Defense]	[int]						NOT NULL,
	[SpecialAtttack]	[int]				NOT NULL,
	[SpecialDefense]	[int]				NOT NULL,
	[Speed]	[int]							NOT NULL,
	[Active]		[bit]						NOT NULL DEFAULT 1,
	CONSTRAINT [pk_PokemonID] PRIMARY KEY([PokemonID])
)
GO