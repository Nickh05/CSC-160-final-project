ECHO off

sqlcmd -S localhost -E -i pokemon_db_am.sql

rem server is localhost

ECHO .
ECHO if no errors appear DB was created
PAUSE