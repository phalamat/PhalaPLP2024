-- Create a new MySQL database named "Books"
CREATE DATABASE IF NOT EXISTS Library; 

-- Create a table named "Students" with the attributes
USE Library;
CREATE TABLE IF NOT EXISTS Books ( 
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(50),
    Author VARCHAR(50),
    Genre VARCHAR(50),
    PublicationYear YEAR(50)
    );

-- Insert records into the Books table in Library database
USE Library;
INSERT INTO Books (Author, Genre, PublicationYear) VALUES 
('Jabu', 'Mahlangu',  2019),
('jackson', 'Kekana',  2018),
('David', 'Mandela',  2030),
('Lucy', 'Mahlangu',  2040);

-- Retrieve all books in the table and order by published year in ascending order.
USE Library;
SELECT * FROM Books
ORDER BY PublicationYear ASC 