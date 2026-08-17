# Day 2: SQL Coding Challenge – Online Bookstore 📚
 
This repository contains SQL practice queries for building and managing a simple online bookstore database — covering table creation with constraints, `ALTER TABLE`, `INSERT`/`UPDATE`, and `DELETE` vs `TRUNCATE`.
 
---
 
## Question 1: CREATE TABLE with PRIMARY & FOREIGN KEY
 
**Scenario:** You are creating a database for an online bookstore.
 
**Task:**
- Create a table `Books` with columns:
  - `BookID` → INTEGER, PRIMARY KEY
  - `Title` → VARCHAR(100), NOT NULL
  - `Author` → VARCHAR(50), NOT NULL
  - `ISBN` → VARCHAR(20), UNIQUE
  - `Price` → DECIMAL(8,2), CHECK(Price > 0)
- Create a table `Orders` with columns:
  - `OrderID` → INTEGER, PRIMARY KEY
  - `BookID` → INTEGER, FOREIGN KEY REFERENCES Books(BookID)
  - `OrderDate` → DATE, NOT NULL
  - `Quantity` → INTEGER, CHECK(Quantity > 0)
**Expected Output:** Tables are created successfully with all constraints applied.
 
```sql
CREATE TABLE Books (
    BookID  INTEGER PRIMARY KEY,
    Title   VARCHAR(100) NOT NULL,
    Author  VARCHAR(50) NOT NULL,
    ISBN    VARCHAR(20) UNIQUE,
    Price   DECIMAL(8,2) CHECK (Price > 0)
);
 
CREATE TABLE Orders (
    OrderID   INTEGER PRIMARY KEY,
    BookID    INTEGER,
    OrderDate DATE NOT NULL,
    Quantity  INTEGER CHECK (Quantity > 0),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
```
 
---
 
## Question 2: ALTER TABLE – Add Default Constraint
 
**Scenario:** The bookstore wants to make sure ISBN is unique/default-enforced for every book.
 
**Task:** Alter the `Books` table to add a constraint to the `ISBN` column.
 
**Expected Output:** The `ISBN` column enforces uniqueness.
 
```sql
ALTER TABLE Books
ADD CONSTRAINT UQ_ISBN UNIQUE (ISBN);
```
 
> Note: `UNIQUE` is the appropriate constraint here since `ISBN` values must be distinct per book. A `DEFAULT` constraint would instead auto-fill a value when none is provided — for example:
```sql
ALTER TABLE Books
ALTER COLUMN ISBN SET DEFAULT 'N/A';
```
 
---
 
## Question 3: INSERT, RETRIEVE & UPDATE with Constraints
 
**Scenario:** You want to add sample book data and update certain records.
 
**Task:**
- Insert at least 5 records into the `Books` table, respecting all constraints.
- Retrieve all records to verify entries.
- Update the `Price` (or `Quantity`) for a specific record while maintaining the `CHECK` constraints.
**Expected Output:** All entries and updates comply with constraints and are displayed correctly.
 
```sql
-- Insert sample records
INSERT INTO Books (BookID, Title, Author, ISBN, Price) VALUES
(201,'Maths','William',979 ,100),
(202,'Science','Jhon',980,120),
(203,'History','Peeter',981,150),
(204, 'English', 'Merry',982,130),
(205,'Physics', 'Jacap',983,170);

-- Retrieve all records
SELECT * FROM Books;
 

```
```sql
-- orders data
insert into orders (OrderID,BookID,Orderdate,Quantity) values
(1,202,'2026-02-08',5),
(2,205,'2026-03-06',4),
(3,203,'2026-05-04',8),
(4,201,'2026-06-17',11),
(5,202,'2026-03-22',3);
 
```
 
## Question 4: DELETE vs TRUNCATE
 
**Scenario:** The bookstore wants to manage orders by removing some rows or clearing all data.
 
**Task:**
- Use `DELETE` with a `WHERE` clause to remove specific rows from the `Orders` table.
- Use `TRUNCATE` to remove all rows while keeping the table structure intact.
**Expected Output:**
- `DELETE` removes selected rows.
- `TRUNCATE` clears all rows quickly but keeps the table structure.
```sql
-- Remove specific rows
DELETE FROM Orders
where bookid = 202;

 
-- Clear all rows but keep table structure
TRUNCATE TABLE Orders;
```
 
> **DELETE vs TRUNCATE:**
> - `DELETE` can use a `WHERE` clause to remove specific rows, is logged row-by-row, can be rolled back (within a transaction), and fires triggers.
> - `TRUNCATE` removes all rows at once, is minimally logged (faster), typically cannot target specific rows, and resets identity/auto-increment counters — but keeps the table schema intact.
 
---
 
## ✅ Topics Covered
 
- `CREATE TABLE` with `PRIMARY KEY` and `FOREIGN KEY`
- Column constraints: `NOT NULL`, `UNIQUE`, `CHECK`
- `ALTER TABLE` to add constraints
- `INSERT INTO` and `SELECT` for data entry & retrieval
- `UPDATE` while preserving constraints
- `DELETE ... WHERE` vs `TRUNCATE TABLE`
---
 
*Part of a daily SQL practice series — Day 2 of the SQL Coding Challenge.*
