CREATE DATABASE IF NOT EXISTS Library; -- Create a new MySQL database named "Books"
 
-- Question 2 Answer
USE Library;
CREATE TABLE IF NOT EXISTS Books ( -- Create a table named "Students" with the attributes
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(50),
    Author VARCHAR(50),
    Genre VARCHAR(50),
    PublicationYear VARCHAR(50)
    );
    
USE Library;
INSERT INTO Books (Author, Genre, PublicationYear) VALUES 
('Jabu', 'Mahlangu',  '2019'),
('jackson', 'Kekana',  '2018'),
('David', 'Mandela',  '2030'),
('Lucy', 'Mahlangu',  '2040');

-- Retrieve all columns for books published in the year 2020.
USE Library;
SELECT * FROM Books
WHERE PublicationYear = '2020'

-- Find the distinct genres available in the Books table.
USE Library;
SELECT DISTINCT(genre) FROM Books

-- Alias the column Author as BookAuthor in a query result.
USE Library;
SELECT Author AS BookAuthor FROM Books
