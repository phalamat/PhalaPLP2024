-- creating a database called 'PLPEmpDB'
Create database PLPEmpDB;

-- creating a table called 'Employees'
Use PLPEmpDB;
Create table Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);

-- inserting test data into the 'Employees' table
insert into Employees (FirstName, LastName, Salary, BonusPercentage)
values ('Jackson', 'Michael', 40000, 6),
       ('Pani', 'Mandela', 90000, 20),
       ('Warthog', 'Bricks', 55000, 18),
       ('Brian', 'Hirsch', 65000, 7);
       

Alter table Employees
add TotalCompensation decimal(10, 2);

update Employees
set TotalCompensation = case
                            when BonusPercentage is null then Salary
                            else Salary + (Salary * (BonusPercentage / 100))
                        end;
                        
select *
from Employees
where TotalCompensation > 80000;


update Employees
set FirstName = 'LowCompensation'
where TotalCompensation < 60000;

select * from Employees