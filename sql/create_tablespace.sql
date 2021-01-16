REM ================================================================
REM fILE:	create_tablespace.sql
REM Date: 17 Nov  2019
REM PURPOSE:To create tablespace for MedPlus Online database
REM ================================================================

PROMPT ... CREATING TABLESPACE FOR Medplus Online Pharmacy
CREATE TABLESPACE medplus_data
DATAFILE 'F:\Archana\SHU\DBD\oracle_files\MedPlus\data\medplus_data.dbf'
SIZE 2M
DEFAULT STORAGE (INITIAL 8k PCTINCREASE 0)
/

PROMPT .. Don't forget to create the user for medplus....
