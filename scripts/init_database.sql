/*
===============================================================
Create Databae and Schemas
===============================================================
Scripts Purpose:
  This script creates a new database named 'datawarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

Warning:
  Running this script will drop the entire 'datawarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'datawarehouse' database
-- Make sure no one is connected to the database
-- Connect to another database (like 'postgres') first:
  
\c postgres

-- Drop the database if it exists
DROP DATABASE IF EXISTS datawarehouse;


-- Create the 'datawarehouse' database
CREATE DATABASE datawarehouse;

\c datawarehouse;

-- Create Schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
