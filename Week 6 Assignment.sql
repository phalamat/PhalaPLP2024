-- Question 1 Answer
CREATE DATABASE IF NOT EXISTS UniversityDB; -- Create a new MySQL database named "UniversityDB"
 
-- Question 2 Answer
USE universitydb;
CREATE TABLE IF NOT EXISTS Students ( -- Create a table named "Students" with the attributes
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT(50),
    Major VARCHAR(50)
    );
    
-- Question 3 Answer
USE universitydb;
INSERT INTO Students (FirstName, LastName, Age, Major) VALUES 
('Jabu', 'Mahlangu', '33', 'Biology'),
('jackson', 'Kekana', '18', 'Maths'),
('David', 'Mandela', '40', 'Science'),
('Lucy', 'Mahlangu', '22', 'History'),
('Lotoya', 'Jackson', '39', 'Biology');

-- Question 4 Answer
USE universitydb;
ALTER TABLE Students; -- Empty table named "Students"

-- Question 5 Answer

-- Question 6 Answer
USE universitydb;
RENAME TABLE 'city' TO 'EnrolledStudents';

-- Question 7 Answer
USE universitydb;
CREATE TABLE IF NOT EXISTS Courses ( -- Create a table named "Courses" with the attributes
    CoursesID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT(50)
    );
       
-- Question 8 Answer
USE universitydb;
INSERT INTO Courses (CourseName, Instructor, Credits) VALUES 
('Bibst', 'Shane Mahlangu', '10'),
('Maths', 'Greg Gregory', '9'),
('Science', 'Gant Gentler', '8'); -- Inserting 3 records on the courses table.

-- Question 9 Answer
USE universitydb;
DROP TABLE EnrolledStudents -- Deleting the EnrolledStudents table from the database.