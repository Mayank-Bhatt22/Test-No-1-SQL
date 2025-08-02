CREATE DATABASE Bookstore ;
USE Bookstore;
CREATE Table books( 
book_id INT Primary Key ,
title VARCHAR(100),
author VARCHAR(50), 
genre VARCHAR(30), 
price DECIMAL(6, 2),
stock INT); 

SELECT * FROM BOOKS;

INSERT INTO BOOKS VALUES(
1 ,"The Alchemist", "Paulo Coelho", "Fiction", 350.50 ,10), 
(2,"Atomic Habits", "James Clear","Self-help" ,499.99, 5), 
(3, "Sapiens" ,"Yuval Noah Harari", "History" , 899.00 ,3),
(4,"Wings of Fire" ,"A.P.J. Abdul Kalam", "Biography", 250.00, 20), 
(5, "The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 300.00,12), 
(6, "Deep Work ", "Cal Newport", "Productivity", 400.75 ,8), 
(7,"Ikigai", "Francesc Miralles", "Self-help" ,450.00 ,15), 
(8 ,"The Monk Who Sold His Ferrari", "Robin Sharma", "Motivation" ,299.99, 6);

-- Write a query to fetch all the books that have a price greater than 500 and stock greater than 5.
select * from books where price>500 and stock>5;
INSERT INTO BOOKS VALUES(9 ,"The Alchemist", "Paulo Coelho", "Fiction", 1000 ,10); 
 
-- 3. Filtering Based on Genre 
-- Write a query to display the title and author of all books belonging to the "Self-help" genre. 
select title,author from books where genre="Self-help";

-- 4. Stock Analysis 
-- Write a query to find books with a stock less than 10 and order them by price in descending order.
SELECT * FROM BOOKS WHERE STOCK<10 ORDER BY PRICE DESC;
SELECT * FROM BOOKS;
-- 5. Aggregation 
-- Write a query to calculate the total number of books available across all genres. 
SELECT sum(stock) as totalbook from books;

-- 6. Grouping and Counting 
-- Write a query to display the number of books available for each genre. 
select title,sum(stock) from books group by title;

-- 7. Updating Prices 
-- Increase the price of all "Fiction" genre books by 10%. Write the query to perform the update and display the updated records.
select price*1.10 from books where genre = "Fiction";

-- 8. Finding Most Expensive Book 
-- Write a query to find the most expensive book and display its title, author, and price. 
select title, author, price from Books where price =(select max(price) from books);

-- 9. Book Search 
-- Write a query to search for books with titles containing the word "The" (case-insensitive). 
select title from books where title like 'The%';

-- 10. Joining Another Table 
-- Add another table authors with the following structure:
CREATE TABLE Author(
author_id INT Primary Key,
author_name VARCHAR(50), 
country VARCHAR(30) 
);

INSERT INTO Author values(
1 ,"Paulo Coelho","Brazil"),
(2 ,"James Clear", "USA"), 
(3, "Yuval Noah Harari" ,"Israel"), 
(4, "A.P.J. Abdul Kalam", "India"), 
(5, "F. Scott Fitzgerald", "USA"), 
(6, "Cal Newport", "USA"),
(7, "Francesc Miralles", "Spain"), 
(8, "Robin Sharma", "Canada"),
(9, "Daniel Kahneman","USA"),
(10, "Robert Kiyosaki", "USA");

-- Write a query to join the books table with the authors table and display the book title, author's name, and country.
select B.title as Book_Name, B.Author as Author_Name, A.country as Author_Country from Books as B join Author as A where B.Book_id = A.author_id ;
