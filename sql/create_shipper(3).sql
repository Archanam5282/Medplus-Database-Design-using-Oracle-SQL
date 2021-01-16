
---------------------------------------------------------------
--	File: create_shipper.sql
--	Date Nov 17, 2019
--	Purpose: Create shipper table for medplus online pharmacy
---------------------------------------------------------------

PROMPT ... Creating shipper

CREATE TABLE SHIPPER
(ShipperID	NUMERIC(3),
 ShipperName	VARCHAR(15),
 ShipperPhNo NUMERIC(15),
CONSTRAINT ship_pk_shipid PRIMARY KEY (ShipperID)
 )
/