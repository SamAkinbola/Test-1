-- Create a table named "employees" with columns for ID, name, department, and salary
CREATE OR REPLACE TABLE FINANCE.CREDIT.Manager (
    id INT,
    name VARCHAR(255),
    gender VARCHAR(7),
    department VARCHAR(255),
    salary DECIMAL(10, 2)
);

-- Insert data into the "employees" table
INSERT INTO FINANCE.CREDIT.Manager (id, name, department, salary) VALUES
    (1, 'John Doe', 'male', 'Sales', 50000.00),
    (2, 'Jane Smith','female', 'Marketing', 60000.00),
    (3, 'Bob Johnson', 'male', 'Engineering', 75000.00),
    (4, 'Alice Brown', 'female', 'Sales', 55000.00),
    (5, 'Mike Davis', 'male', 'Engineering', 80000.00);