# 📚 Online Book Store SQL Project

## Project Overview

This project demonstrates SQL concepts by analyzing an **Online Book Store** database. The database consists of three related tables imported from CSV files.

### Dataset

* **Books.csv**
* **Customers.csv**
* **Orders.csv**

The tables are connected using common columns with the same name and data type:

* **Book_ID** → Books ↔ Orders
* **Customer_ID** → Customers ↔ Orders

---

# Database Schema

### Books

* Book_ID
* Title
* Author
* Genre
* Published_Year
* Price
* Stock

### Customers

* Customer_ID
* Name
* City
* Country

### Orders

* Order_ID
* Customer_ID
* Book_ID
* Order_Date
* Quantity
* Total_Amount

---

# SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* INNER JOIN
* LEFT JOIN
* Aggregate Functions

  * SUM()
  * COUNT()
  * AVG()
  * MIN()
  * MAX()
* DISTINCT
* LIMIT
* COALESCE()

---

# Basic SQL Queries Solved

### 1. Retrieve all books in the Fiction genre.

### 2. Find books published after 1950.

### 3. List all customers from Canada.

### 4. Show orders placed in November 2023.

### 5. Retrieve the total stock of books available.

### 6. Find the details of the most expensive book.

### 7. Show customers who ordered more than one quantity of a book.

### 8. Retrieve all orders where the total amount exceeds $20.

### 9. List all genres available in the Books table.

### 10. Find the book with the lowest stock.

### 11. Calculate the total revenue generated from all orders.

---

# Advanced SQL Queries Solved

### 1. Retrieve the total number of books sold for each genre.

### 2. Find the average price of books in the Fantasy genre.

### 3. List customers who have placed at least two orders.

### 4. Find the most frequently ordered book.

### 5. Show the top three most expensive books in the Fantasy genre.

### 6. Retrieve the total quantity of books sold by each author.

### 7. List the cities where customers spent more than $30.

### 8. Find the customer who spent the most on book orders.

### 9. Calculate the remaining stock after fulfilling all customer orders.

---

# Learning Outcomes

Through this project, I practiced:

* Database creation and table relationships
* Importing CSV files into MySQL
* Writing basic and advanced SQL queries
* Using JOINs to combine multiple tables
* Performing data aggregation and analysis
* Solving business-oriented SQL problems
* Inventory and sales analysis using SQL

---

# Repository Structure

```text
📁 Online-Book-Store-SQL-Project
│── Books.csv
│── Customers.csv
│── Orders.csv
│── SQL PROJECT.sql
```

---

# Tools Used

* MySQL
* MySQL Workbench
* SQL
* Git
* GitHub

---

# Author

**Samarth Mirajkar**

If you found this project helpful, feel free to ⭐ star the repository.
