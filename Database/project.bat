ECHO off

sqlcmd -S 127.0.0.1 -E -i pokemon_db_am.sql

rem server is 127.0.0.1

ECHO .
ECHO if no errors appear DB was created
PAUSE