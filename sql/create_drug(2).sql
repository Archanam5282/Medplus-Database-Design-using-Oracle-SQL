
---------------------------------------------------------------
--	File: create_drug.sql
--	Date Nov 17, 2019
--	Purpose: Create drug table for medplus online pharmacy
---------------------------------------------------------------

PROMPT... Creating drug

CREATE TABLE DRUG
(DrugID	NUMERIC(6),
DrugType VARCHAR(10),
 DrugName	VARCHAR2(40),
 Discount	NUMERIC(3),
CONSTRAINT drug_pk_drugid PRIMARY KEY (DrugID)
)
/