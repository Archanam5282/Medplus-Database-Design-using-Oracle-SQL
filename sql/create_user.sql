REM ===============================================
REM FILE:	create_user.sql
REM Date:	 17 Nov 2019
REM PURPOSE:To create a user for medplus online pharmacy database
REM ===============================================

create user medplus_dba identified by medplus_dba default tablespace medplus_data
/
grant dba to medplus_dba
/

PROMPT ... Now login as medplus_dba and create the tables for medplus online pharmacy ...