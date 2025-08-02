# Test-No-1-SQL
A beginner-friendly SQL practice set covering SELECT, WHERE, JOINs, GROUP BY, HAVING, and subqueries. Includes real-world queries on employee and department data for skill-building and interview prep.
# 📚 SQL Bookstore Project

A hands-on SQL project to practice core concepts like filtering, joins, aggregation, grouping, and subqueries using a virtual bookstore dataset. Ideal for beginners and students preparing for interviews or assignments.

---

## 🗂️ Tables Used

### 1. `Books`
Contains information about books including:
- `book_id`, `title`, `author`, `genre`, `price`, and `stock`.

### 2. `Author`
Contains information about authors:
- `author_id`, `author_name`, and `country`.

---

## ✅ Key SQL Concepts Practiced

### 🔎 Data Filtering
- Books priced above ₹500 and in stock
- Books by genre like `Self-help`
- Book titles containing the word **"The"**

### 📊 Aggregations
- Total stock across all books
- Count of books available per title

### 📈 Sorting
- Books with low stock ordered by highest price

### 🔁 Updating Data
- Increase prices of all `Fiction` genre books by 10%

### 💰 Subqueries
- Fetch the **most expensive book** using a nested `SELECT`

### 🔗 Joins
- Join `Books` and `Author` to show title, author, and country

---

## 💻 Example Query

```sql
SELECT B.title AS Book_Name, B.Author AS Author_Name, A.country AS Author_Country 
FROM Books AS B 
JOIN Author AS A ON B.book_id = A.author_id;
