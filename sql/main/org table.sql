-- Create a table named "employees" with columns for ID, name, department, and salary
CREATE TABLE FINANCE.CREDIT.employees (
    id IN,
    name VARCHAR(255),
    department VARCHAR(255)
    salary DECIMAL(10, 2)
);

-- Insert data into the "employees" table
INSERT INTO FINANCE.CREDIT.employees (id, name, department, salary) VALUES
    (1, 'John Doe', 'Sales', 50000.00)
    (2, 'Jane Smith', 'Marketing', 60000.00)
    (3, 'Bob Johnson', 'Engineering', 75000.00),
    (4, 'Alice Brown', 'Sales', 55000.00),
    (5, 'Mike Davis', 'Engineering', 80000.00);