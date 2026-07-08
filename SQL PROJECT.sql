select * from books;
select * from customers;
select * from orders;

-- 1) Retrieve all books in the "Fiction" genre
select * from books where Genre='Fiction';

-- 2) Find books published after the year 1950
select * from books where Published_Year>1950;

-- 3) List all customers from the Canada
select Name from customers where Country='Canada';

-- 4) Show orders placed in November 2023
select * from orders where Order_Date between '2023-11-1' and '2023-11-30';

-- 5) Retrieve the total stock of books available
select sum(Stock) from books;

-- 6) Find the details of the most expensive book
select * from books where Price>=49.98;
select * from books order by Price desc limit 1;

-- 7) Show all customers who ordered more than 1 quantity of a book
select * from orders where Quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20
select * from orders where Total_Amount>=20;

-- 9) List all genres available in the Books table
select Genre from books group by Genre;
select distinct Genre from books;

-- 10) Find the book with the lowest stock
select * from books where Stock<1;


-- 11) Calculate the total revenue generated from all orders
select sum(Total_Amount) as revenue from orders;

-- advanced queestions
-- 12) Retrieve the total number of books sold for each genre

select books.Genre,sum(Quantity) as total_books
from books join orders on books.Book_ID=orders.Book_ID
group by Genre;

-- 2) Find the average price of books in the "Fantasy" genre
select avg(Price) as avg_fantacy
from books where Genre='Fantasy';
 
-- 3) List customers who have placed at least 2 orders
select o.Customer_ID,c.Name,count(o.Order_ID) as order_count
from orders o join customers c on o.Customer_ID=c.Customer_ID
group by o.Customer_ID,c.Name
having count(o.Customer_ID)>=2;

-- 4) Find the most frequently ordered book
select Book_ID,count(Order_ID) as most_book
from orders group by Customer_ID most_book order by desc;
 
-- 5) Show the top 3 most expensive books of 'Fantasy' Genre 
select * from books where Genre='Fantasy' order by Price desc limit 3;

-- 6) Retrieve the total quantity of books sold by each author
select b.Author,sum(o.Quantity) as book_sold
from books b join orders o on b.Book_ID=o.Book_ID
group by Author;

-- 7) List the cities where customers who spent over $30 are located
select distinct c.City, o.Total_Amount
from Orders o join customers c on c.Customer_ID=o.Customer_ID
where o.Total_Amount >30;

-- 8) Find the customer who spent the most on orders
select c.Customer_ID,c.Name,sum(o.Total_Amount) as total_spent
from orders o join customers c  on o.Customer_ID=c.Customer_ID
group by c.Customer_ID ,c.Name
order by total_spent desc limit 1;

-- 9) Calculate the stock remaining after fulfilling all orders
SELECT
    b.Book_ID,
    b.Title,
    b.Stock,
    COALESCE(SUM(o.Quantity), 0) AS order_quantity,
    b.Stock - COALESCE(SUM(o.Quantity), 0) AS remaining_quantity
FROM books b
LEFT JOIN orders o
    ON b.Book_ID = o.Book_ID
GROUP BY
    b.Book_ID,
    b.Title,
    b.Stock;