-- Create a permanent table for customer data gdft
USE DATABASE GITHUB;
USE SCHEMA PUBLIC;


CREATE OR REPLACE TABLE customers (
   customer_id INTEGER PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   email VARCHAR(100) UNIQUE,
   date_of_birth DATE,
   created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);