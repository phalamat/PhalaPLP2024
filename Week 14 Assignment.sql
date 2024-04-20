use plpempdb;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Employees VALUES (1, 'mandela', 3000);
INSERT INTO Employees VALUES (2, 'Tutu', 6000);
INSERT INTO Employees VALUES (3, 'Trump', NULL);

INSERT INTO Departments VALUES (3000, 'Sales');
INSERT INTO Departments VALUES (6000, 'Marketing');

INSERT INTO Salaries VALUES (1, 50000);
INSERT INTO Salaries VALUES (2, 60000);

-- Retrieve a list of employees with their corresponding department names using an appropriate join.
SELECT Employees.Name, Departments.Name AS DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Calculate the average salary for each department.
SELECT Departments.Name, AVG(Salaries.Salary) AS AverageSalary
FROM Departments
JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
GROUP BY Departments.Name;

-- Identify employees who do not belong to any department.
SELECT Employees.Name
FROM Employees
WHERE Employees.DepartmentID IS NULL;