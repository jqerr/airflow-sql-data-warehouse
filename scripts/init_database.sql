
/*
=======
create database and schema
=======
scripr purpose:
the script creates a new database named datawarehouse after checking if it already exists.
if the database exists, it is dropped and recreated. additionally, the script sets up three schemas within the database:
bronze, silver, and gold.
warning:
running this script will drop the entire datawarehouse if exists. 
*/

USE master;
GO
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
