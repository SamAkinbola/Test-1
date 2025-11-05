
CREATE OR REPLACE TABLE FINANCE.PUBLIC.DepartmentttsGGDG (
    EmployeeID INT PRIMARY KEY, -- Unique identifier for each employee
    FirstName VARCHAR(50),      -- Employee's first name
    LastName VARCHAR(50),       -- Employee's last name
    Email VARCHAR(100) UNIQUE,  -- Employee's email address (must be unique)
    Department VARCHAR(50),     -- Department the employee works in
    Salary DECIMAL(10, 2)       -- Employee's salary
);

-- 2. Insert Data into the Base Table
-- Let's add some sample employee records.
INSERT INTO FINANCE.PUBLIC.Departments (EmployeeID, FirstName, LastName, Email, Department, Salary) VALUES
(1, 'Alice', 'Smith', 'alice.smith@example.com', 'Engineering', 75000.00),
(2, 'Bob', 'Johnson', 'bob.johnson@example.com', 'Marketing', 65000.00),
(3, 'Charlie', 'Williams', 'charlie.w@example.com', 'Engineering', 80000.00),
(4, 'Diana', 'Brown', 'diana.b@example.com', 'HR', 60000.00);

-- You can verify the data in the base table:
-- SELECT * FROM Employees;

-- 3. Create a Simple View
-- This view will show only the names and email addresses of employees
-- in the Engineering department.
CREATE VIEW EngineeringContacts AS
SELECT
    FirstName,
    LastName,
    Email
FROM
    Departments
WHERE
    Department = 'Engineering';

