REM ================================================================
REM 		FILE:	drop_tablespace.sql
REM 		Date:	17 Nov 2019
REM 		PURPOSE:  To Drop tablespace for medplus online pharmacy
REM		This should only be done by the system manager.
REM ================================================================

PROMPT ... ARE YOU LOGGED IN AS THE SYSTEM MANAGER?...Hit Enter if yes...
PAUSE

DROP TABLESPACE medplus_data INCLUDING CONTENTS AND DATAFILES
/

prompt  Don't forget to drop medplus_dba and check to see if the dbf file called medplus_data.dbf is gone from the data folder.
