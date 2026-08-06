Create database Online_Bookstore;

use Online_Bookstore;
-- Books Table
Create table Books (
BookID int Primary key,
Title VARCHAR(100) NOT NULL,
Author VARCHAR(50) NOT NULL,
ISBN VARCHAR(20) UNIQUE,
Price DECIMAL(8,2) CHECK(Price > 0)
);

Alter table Books
modify column ISBN varchar(20) Default 'Unknown';

-- Orders Table
Create table Orders (

OrderID  int PRIMARY KEY,
BookID  int,
OrderDate DATE NOT NULL,
Quantity int CHECK(Quantity > 0),

FOREIGN KEY (BookID)
REFERENCES Books(BookID)

);

-- Books data
insert into Books ( BookId,Title,Author,ISBN, Price) Values
(201,'Maths','William',979 ,100),
(202,'Science','Jhon',980,120),
(203,'History','Peeter',981,150),
(204, 'English', 'Merry',982,130),
(205,'Physics', 'Jacap',983,170);

Select* from Books;
-- orders data
insert into orders (OrderID,BookID,Orderdate,Quantity) values
(1,202,'2026-02-08',5),
(2,205,'2026-03-06',4),
(3,203,'2026-05-04',8),
(4,201,'2026-06-17',11),
(5,202,'2026-03-22',3);

select * from orders;

Select* from Books;
-- update books table
update books
SET price = 150
where price = 100;

select * from books;

-- update Orders table
update Orders
SET Quantity = 150
where Quantity = 3;

select * from orders;

-- delete from orders table

delete from orders 
where bookid = 202;

-- truncate orders table

truncate  table orders;   




