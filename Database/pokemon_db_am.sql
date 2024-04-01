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

