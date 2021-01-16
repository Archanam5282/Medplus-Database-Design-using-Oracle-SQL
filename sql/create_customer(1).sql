
---------------------------------------------------------------
--	File: create_customer(1).sql
--	Date 17 Nov 2019
--	Purpose: Create customer table for MedPlus Online database
---------------------------------------------------------------


CREATE TABLE customer
(CustomerID NUMERIC(3),
 CustFname VARCHAR2(10),
 CustLname VARCHAR2(10),
 CustPhNum NUMERIC(12),
 Email VARCHAR (30),
 Age NUMERIC(3),
 Address VARCHAR(25),
 City VARCHAR2(15),
 Zip NUMERIC(7),
CONSTRAINT customer_pk_custid PRIMARY KEY (CustomerID))
/