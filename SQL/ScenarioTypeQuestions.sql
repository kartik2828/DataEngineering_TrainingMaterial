-- QUESTIONS 1

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);

INSERT INTO Orders VALUES
(1,101,'2024-01-10',500),
(2,101,'2024-01-15',700),
(3,102,'2024-02-01',300),
(4,101,'2024-03-10',400),
(5,103,'2024-01-20',900);

/*  ==== EXPECTED OUTPUT =======

OrderID | CustomerID | OrderDate  | Amount | PurchaseType
----------------------------------------------------------
1       | 101        | 2024-01-10 | 500    | FirstPurchase
2       | 101        | 2024-01-15 | 700    | RepeatPurchase
4       | 101        | 2024-03-10 | 400    | RepeatPurchase
3       | 102        | 2024-02-01 | 300    | FirstPurchase
5       | 103        | 2024-01-20 | 900    | FirstPurchase

*/

with CTE as (
select orderID, customerID, OrderDate, Amount, Dense_rank() over (order by customerID) as customer_rank from Orders
)
select *, case 
when customer_rank =  lag(customer_rank) over (order by customerID) then 'RepeatPurchase'
else 'FirstPurchase'
end 
from CTE

-- ==========================================================================================
--  QUESTION 2
CREATE TABLE DailySales (
    SaleDate DATE,
    Amount INT
);

INSERT INTO DailySales VALUES
('2024-01-01',100),
('2024-01-02',150),
('2024-01-10',200),
('2024-02-01',300),
('2024-02-05',100);

/* ==== EXPECTED OUTPUT ======= PART 1
SaleDate	Amount	    LastAmountTotal
-----------------------------------------
2024-01-01	  100	        100
2024-01-02	  150	        250
2024-01-10	  200	        350
2024-02-01	  300	        500
2024-02-05	  100	        400
*/

/* ==== EXPECTED OUTPUT ======= PART 2
SaleDate   | Amount | MonthlyRunningTotal
-----------------------------------------
2024-01-01 | 100    | 100
2024-01-02 | 150    | 250
2024-01-10 | 200    | 450
2024-02-01 | 300    | 300
2024-02-05 | 100    | 400
*/

select * from DailySales

-- part 1
with CTE as (
select *, Lag(amount,1,0) over (order by SaleDate) as temp_sales from DailySales
)
select SaleDate,Amount, (amount+temp_sales) as LastAmountTotal from CTE;

-- part2 

select *, sum(amount) over (partition by month(saleDate) order by SaleDate) as temp_sales from DailySales

-- ==========================================================================================
-- QUESTION 3
-- Find the longest consecutive login streak

CREATE TABLE UserLogins (
    UserID INT,
    LoginDate DATE
);

INSERT INTO UserLogins VALUES
(1,'2024-01-01'),
(1,'2024-01-02'),
(1,'2024-01-04'),
(2,'2024-02-10'),
(2,'2024-02-11'),
(2,'2024-02-12');

select * from UserLogins


/* ==== EXPECTED OUTPUT ======= 
UserID | MaxConsecutiveDays
---------------------------
1      | 2
2      | 3
*/

with CTE as (
select userID, LoginDate, dateadd(day, -row_number() over(partition by userID order by LoginDate),Logindate) as grp
from UserLogins
)
select userID, max(cnt) as MaxConsecutiveDays from (
select UserID, grp, count(*) as cnt from CTE group by userID, grp
) X group by UserID

-- ==========================================================================================
-- QUESTION 4
--latest price per product
CREATE TABLE ProductPrice (
    ProductID INT,
    Price INT,
    PriceDate DATE
);

INSERT INTO ProductPrice VALUES
(1,100,'2024-01-01'),
(1,120,'2024-02-01'),
(2,200,'2024-01-10'),
(2,180,'2024-03-01');

/* ==== EXPECTED OUTPUT ======= 
ProductID | Price | PriceDate
-----------------------------
1         | 120   | 2024-02-01
2         | 180   | 2024-03-01
*/


select b.* from Productprice b Left join ProductPrice a on b.PriceDate<a.Pricedate and b.ProductId = a.productID
where a.ProductId is null

-- ==========================================================================================
-- QUESTION 5
--Count how many employees share the same last name
CREATE TABLE Employees (
    EmpID INT,
    FullName VARCHAR(100)
);

INSERT INTO Employees VALUES
(1,'Amit Sharma'),
(2,'Amit Verma'),
(3,'Neha Sharma'),
(4,'Rohit Singh');

select * from Employees
/* ==== EXPECTED OUTPUT ======= 
EmpID | FullName      | LastName | LastNameCount
------------------------------------------------
1     | Amit Sharma   | Sharma   | 2
3     | Neha Sharma   | Sharma   | 2
2     | Amit Verma    | Verma    | 1
4     | Rohit Singh   | Singh    | 1
*/

select * from Employees;

with CTE as (
    select EmpID, FullName, f.value,
           row_number() over(partition by EmpID order by (select 1)) as a
    from Employees
    cross apply string_split(FullName, ' ') f
),
CTE2 as (
    select EmpID, FullName, value as LastName
    from CTE
    where a = 2
),
CTE3 as (
    select LastName, count(*) as LastNameCount
    from CTE2
    group by LastName
)
select c2.EmpID, c2.FullName, c2.LastName, c3.LastNameCount
from CTE2 c2
join CTE3 c3
on c2.LastName = c3.LastName;

-- ==========================================================================================
-- QUESTION 6
--Return employees whose salary is greater than their department average

CREATE TABLE EmpDept (
    EmpID INT,
    Dept VARCHAR(20),
    Salary INT
);

INSERT INTO EmpDept VALUES
(1,'IT',80000),
(2,'IT',60000),
(3,'HR',50000),
(4,'HR',70000),
(5,'IT',90000);

/* ==== EXPECTED OUTPUT ======= 
EmpID | Dept | Salary
--------------------
1     | IT   | 80000
5     | IT   | 90000
4     | HR   | 70000
*/


with CTE1 as(
select Dept, avg(salary) as avg_salary from EmpDept group by Dept 
) select EMpdept.* from EmpDept Inner join CTE1 on EmpDept.dept = CTE1.Dept where Empdept.salary>CTE1.avg_salary order by  Dept desc

-- OR 
select EmpID, Dept, Salary
from (
    select *, avg(Salary) over(partition by Dept) as avg_salary
    from EmpDept
) x
where Salary > avg_salary order by Dept desc;

-- ==========================================================================================
-- QUESTION 7
--Find missing dates
CREATE TABLE Attendance (
    AttendDate DATE
)

INSERT INTO Attendance VALUES
('2024-01-01'),
('2024-01-02'),
('2024-01-04'),
('2024-01-07');


/* ==== EXPECTED OUTPUT ======= 
MissingDate
-----------
2024-01-03
2024-01-05
2024-01-06
*/

select * from Attendance

WITH cte AS (
    SELECT AttendDate,
           LAG(AttendDate) OVER (ORDER BY AttendDate) AS prev_date
    FROM Attendance
),
cte2 AS (
    SELECT DATEADD(day, 1, prev_date) AS MissingDate,
           AttendDate
    FROM cte
    WHERE DATEDIFF(day, prev_date, AttendDate) > 1
),
cte3 AS (
    SELECT MissingDate, AttendDate
    FROM cte2
    UNION ALL
    SELECT DATEADD(day, 1, MissingDate), AttendDate
    FROM cte3
    WHERE DATEADD(day, 1, MissingDate) < AttendDate
)
SELECT MissingDate
FROM cte3
ORDER BY MissingDate;

-- ==========================================================================================
-- QUESTION11: Track salary updates
-- GIVEN:

CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(50),
    Salary INT
);

CREATE TABLE SalaryAudit (
    EmpID INT,
    OldSalary INT,
    NewSalary INT,
    UpdatedOn DATE
);

INSERT INTO Employee VALUES
(1,'Amit',50000),
(2,'Rohit',60000);

-- Salary of EmpID = 1 is updated from 50000 to 55000

/* ==== EXPECTED OUTPUT =======
EmpID | OldSalary | NewSalary | UpdatedOn
-----------------------------------------
1     | 50000     | 55000     | 2024-01-10
*/
-- Answer







-- ==========================================================================================
-- QUESTION12: Customers with 3 consecutive purchase days
-- GIVEN:

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE
);

INSERT INTO Orders VALUES
(1,101,'2024-01-01'),
(2,101,'2024-01-02'),
(3,101,'2024-01-03'),
(4,102,'2024-01-01'),
(5,102,'2024-01-04');

/* ==== EXPECTED OUTPUT =======
CustomerID
----------
101
*/
-- Answer






-- ==========================================================================================
-- QUESTION13: Employees earning more than their manager
-- GIVEN:

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    ManagerID INT,
    Salary INT
);

INSERT INTO Employees VALUES
(1,'CEO',NULL,150000),
(2,'Manager',1,90000),
(3,'Dev1',2,95000),
(4,'Dev2',2,80000);

/* ==== EXPECTED OUTPUT =======
EmpID | EmpName | Salary
-----------------------
3     | Dev1    | 95000
*/
-- Answer





-- ==========================================================================================
-- QUESTION14: Find missing salary values
-- GIVEN:

CREATE TABLE Salaries (
    Salary INT
);

INSERT INTO Salaries VALUES
(30000),
(32000),
(35000);

/* ==== EXPECTED OUTPUT =======
MissingSalary
-------------
31000
33000
34000
*/
-- Answer






-- ==========================================================================================
-- QUESTION15: First and last order per customer
-- GIVEN:

CREATE TABLE CustomerOrders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE
);

INSERT INTO CustomerOrders VALUES
(1,201,'2024-01-01'),
(2,201,'2024-01-05'),
(3,202,'2024-02-01'),
(4,202,'2024-02-10');

/* ==== EXPECTED OUTPUT =======
CustomerID | FirstOrderDate | LastOrderDate
-------------------------------------------
201        | 2024-01-01     | 2024-01-05
202        | 2024-02-01     | 2024-02-10
*/
-- Answer








-- ==========================================================================================
-- QUESTION16: Detect price drop
-- GIVEN:

CREATE TABLE ProductPrice (
    ProductID INT,
    Price INT,
    PriceDate DATE
);

INSERT INTO ProductPrice VALUES
(1,500,'2024-01-01'),
(1,480,'2024-01-10'),
(1,520,'2024-01-20'),
(2,300,'2024-01-01'),
(2,280,'2024-01-15');

/* ==== EXPECTED OUTPUT =======
ProductID | PriceDate  | Price
------------------------------
1         | 2024-01-10 | 480
2         | 2024-01-15 | 280
*/
-- Answer








-- ==========================================================================================
-- QUESTION17: Remove duplicate emails (keep earliest)
-- GIVEN:

CREATE TABLE Users (
    UserID INT,
    Email VARCHAR(100),
    CreatedDate DATE
);

INSERT INTO Users VALUES
(1,'a@gmail.com','2024-01-01'),
(2,'a@gmail.com','2024-01-05'),
(3,'b@gmail.com','2024-01-02');

/* ==== EXPECTED OUTPUT =======
UserID | Email       | CreatedDate
----------------------------------
1      | a@gmail.com | 2024-01-01
3      | b@gmail.com | 2024-01-02
*/
-- Answer









-- ==========================================================================================
-- QUESTION18: Departments with at least 3 employees above average salary
-- GIVEN:

CREATE TABLE EmpDept (
    EmpID INT,
    Dept VARCHAR(20),
    Salary INT
);

INSERT INTO EmpDept VALUES
(1,'IT',90000),
(2,'IT',85000),
(3,'IT',80000),
(4,'HR',60000),
(5,'HR',50000);

/* ==== EXPECTED OUTPUT =======
Dept
----
IT
*/
-- Answer










-- ==========================================================================================
-- QUESTION19: Login gaps of 2 or more days
-- GIVEN:

CREATE TABLE UserLogins (
    UserID INT,
    LoginDate DATE
);

INSERT INTO UserLogins VALUES
(1,'2024-01-01'),
(1,'2024-01-02'),
(1,'2024-01-05'),
(2,'2024-01-01'),
(2,'2024-01-02'),
(2,'2024-01-03');

/* ==== EXPECTED OUTPUT =======
UserID | GapStart   | GapEnd
----------------------------
1      | 2024-01-03 | 2024-01-04
*/
-- Answer










-- ==========================================================================================
-- QUESTION20: Orders placed within 7 days of previous order
-- GIVEN:

CREATE TABLE CustomerOrders2 (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE
);

INSERT INTO CustomerOrders2 VALUES
(1,301,'2024-01-01'),
(2,301,'2024-01-05'),
(3,301,'2024-02-01'),
(4,302,'2024-01-01');

/* ==== EXPECTED OUTPUT =======
OrderID | CustomerID | OrderType
--------------------------------
1       | 301        | New
2       | 301        | Repeat
3       | 301        | New
4       | 302        | New
*/
-- Answer



-- Que) You have one VARCHAR column that contains mixed data, separate numeric values and string values

-- Type1
select  from tableA where TRY_CAST(A as int  ) is not null 

select  from tableA where TRY_CAST(A as int  ) is null 

-- Type 2

select A, 
case 
when try_cast(A as int) is not null then 'integer'
else 'string'
end as value_type
from tableA

-- Type 3

select  from tableA where ISNUMERIC(A)=1  -- int
select  from tableA where ISNUMERIC(A)=0 -- string