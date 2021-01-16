# Medplus-Database-Design-using-Oracle-SQL

### SUMMARY:

•	MedPlus is an Online Pharmacy Application database.

•	It can be used by the customers by registering to it with a username and a password. 

•	The customer who registers to the website gets a unique Customer ID.

•	The application keeps track of all the users and their orders.

•	Information such as of first name, last name, phone number, age, email id and so on. 

•	It requires the bank information that includes the Bank account number, Bank name and the Amount deducted for each order.

•	Customers can purchase one or more drugs with one or more quantity of each drug. Every drug has unique drug ID. 

•	It also keeps record of the shipper’s information like shipper name and phone number. 

•	Customer’s order date and delivery date are also recorded. 

•	Moreover, if any order fails or if any item is not delivered, the customers’ amount will be refunded to their respective bank account. Hence, all refund information is recorded.

•	In addition, some of the drugs are applicable for discounts. 

•	All the information can be seen in the 6 user views in the next page.


### Normalisation :

The Steps for Normalisation is explained in the Report.pdf file

### Entity-Relationship Diagram

![Alt text](E-R.png?raw=true "Entity-Relationship Diagram")

### Steps to run the SQL queries:

1.  Create a folder for MedPLus.

2.  Create two folders in your MedPlus folder.
    Call them sql and data.   (The sql folder is for all the sql files that will create your application.  The data folder 
     will house the database.)

3.  Go into the data folder and copy the path to this folder by right clicking on the path at the top of the data folder.
     Select Copy Address.

4.  You need to edit the create_tablespace.sql file.  Right click on this file and choose "open with".  Choose notepad to open
     this file.  In the CREATE TABLESPACE command, edit the second line that contains a string. That line looks like this:

    DATAFILE 'F:\Archana\SHU\DBD\oracle_files\MedPlus\data\medplus_data.dbf'

    You don't have a folder called Archana, Erase part of my path within the quote that says:  
		F:\Archana\SHU\DBD\oracle_files\MedPlus\data and paste the path that you copied in step 4.  This is the path to your medplus data folder.  
     Add the following text to the end of the copied path, inside the close quote: medplus_data.dbf'

     Save the create_tablespace.sql file, replacing the old one in the sql folder.
     
     The second line in the CREATE TABLESPACE  should now read: DATAFILE 'C:\....\medplus\data\medplus_data.dbf'
     
     where  \... \   contains the path to your medplus folder. (Make certain that you have the start and end single quotes.)
     
     The end of this string contains the name of this datafile that you are creating, namely  medplus_data.dbf.

     Look in the   medplus\data  folder.  You should now see a large file called:     medplus_data.dbf

5.  Go back to the sql folder and create a shortcut to sqlplus, by right clicking
    somewhere inside on the sql folder.  Choose New, Shortcut. 
    Click on the Browse button to find the location of the file sqlplus.exe.  
    Find sqlplus.exe in the START and copy the shortcut to the folder yoy want 

6.  Right click on the sqlplus short cut in your sql folder.  Select properties.
    Using your mouse select the text to the right of Start in:
    Using the backspace key, delete the selected text in Start in:

7.  Click the Apply button at the bottom of this dialog box and then click the OK button.  

8.   Double click on the sqlplus file that is found in the sql folder, to open sqlplus.
     Login as the system administrator with username   system , and whatever you gave as a password when you installed Oracle.
     My password is admin for the system account.  You can type system/admin all at once if you want to.

9.  When you are at the sql prompt, run the createTablespace and createUser 
      command files by typing the following after the   SQL>   prompt:

      SQL>  @create_Tablespace.sql  [ENTER]

      SQL>  @create_User.sql  [ENTER]

10.  Connect as the new user you just created by typing:

      SQL> CONN medplus_dba/medplus_dba  [ENTER]
	
      The SQL-Plus command CONN is short for CONNECT.

11.  As the medplus college dba, you can create all the tables and insert records into these
     tables by typing the following:

      SQL>  @create_tables  [ENTER]

      Now you can play with the database tables.

12.  Later,  when you do not have a need for this database and you are logged in as medplus_dba, type the following:

      SQL>  @DROP_TABLES   [ENTER]

      SQL>  CONN system/admin  [ENTER]	 {Use your own system password.  Mine is admin}

      SQL>  @DROP_TABLESPACE   [ENTER] 

      SQL>  @DROP_USER   [ENTER]

13.   Now, go to the data folder in your medplus folder and check to see that  the file medplus_data.dbf is gone from this folder!



