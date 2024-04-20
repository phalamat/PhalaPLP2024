-- Create a new MySQL database named "PLPStudents"
CREATE DATABASE IF NOT EXISTS PLPStudents; 
 
-- Design a table named "Students" with the attributes
USE PLPStudents;
CREATE TABLE IF NOT EXISTS Students ( 
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    Age INT(50),
    Grade VARCHAR(50)
    );
    
-- Populating Students table with sample data.
USE PLPStudents;
INSERT INTO Students (FirstName, Age, Grade) VALUES 
('Lucy', 26,  'A'),
('Lucky', 30,  'C'),
('Lorraine', 31,  'F'),
('Lamda', 40,  'B');

-- Retrieve all students who are older than 25 years.
USE PLPStudents;
SELECT * FROM Students
WHERE AGE > 25

-- Find students with a grade of 'A' or 'B' in the Grade column.
USE PLPStudents;
SELECT * FROM Students
WHERE GRADE IN ('A','B')

-- Display the distinct age values of students
USE PLPStudents;
SELECT DISTINCT(AGE) FROM Students
