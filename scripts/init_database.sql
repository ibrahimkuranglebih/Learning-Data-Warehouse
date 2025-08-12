USE master;
GO

-- drop and recreate 'DataWarehouse' database
IF EXISTS (SELECT 1 sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- create 'DataWarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE DataWarehouse;

-- create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
