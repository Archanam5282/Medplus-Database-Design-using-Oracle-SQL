
---------------------------------------------------------------
--	File: create_orderdrug.sql
--	Date Nov 17, 2019
--	Purpose: Create orderdrug topics table for medplus online pharmacy
---------------------------------------------------------------



PROMPT ... Creating table OrderDrug

CREATE TABLE ORDERDRUG
(OrderID	NUMERIC(6),
 DrugID	NUMERIC(6),
 Cost NUMERIC(7),
 CONSTRAINT orderdrug_pk_Ordid_drugid PRIMARY KEY (OrderID,DrugID)
 )
/

