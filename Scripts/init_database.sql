/*
================================================================================================================
CREATE DATABASE AND SCHEMA
================================================================================================================
Script purpose: This script is used to create database name "Datawarehouse" after checking it already exists.
If the database exists its DROP and recreated . Additionally this script consists three schemas within tha 
database : "bronze" , "silver" , "gold"
Warning:
Running the script will drop the entire database if it exists. All data in the database will permanentely deleted
proceed with caution and enusre you have proper backup before running the script
*/







-- CREATE WAREHOUSE DATABASE

creating the database for the project


DROP DATABASE IF EXIST Datawarehouse 
  WARINIG: this will drop the database if it exsist and you cannot access anymore 

  
-- CREATE DATABASE Datawarehouse; 
  
-- USE Datawarehouse  #THIS IS THE QUERY TO USE THE DATABASE WHICH WE ARE WORKING ON IN MYSQL 

  
  #CREATING SCHEMA
CREATE SCHEMA Bronze  ;  

CREATE SCHEMA silver   ;

CREATE SCHEMA gold   ;    
