-- using plpempdb database created in assignment 14
USE plpempdb;
CREATE TABLE EmployeesA (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE EmployeesB (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO EmployeesA VALUES (1, 'Ben', 'Baloyi', 3800);
INSERT INTO EmployeesA VALUES (2, 'Betty', 'Wright', 35000);
INSERT INTO EmployeesA VALUES (3, 'Bob', 'Mabena', 3300);

INSERT INTO EmployeesB VALUES (2, 'Brighton', 'Mhlongo', 764700);
INSERT INTO EmployeesB VALUES (3, 'Bobbie', 'Johnson', 55334000);
INSERT INTO EmployeesB VALUES (5, 'Bob', 'Mabena', 3300);



-- Use the UNION operator to retrieve a list of unique employees from both tables.
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesA
UNION
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesB;

-- Use the INTERSECT operator to find employees who are common in both tables.
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesA
INTERSECT  
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesB;

-- Use the EXCEPT operator to identify employees present in EmployeesA but not in EmployeesB.
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesA
EXCEPT
SELECT EmployeeID, FirstName, LastName, Salary
FROM EmployeesB;