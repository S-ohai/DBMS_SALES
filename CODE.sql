USE project;
-- 1	Show all columns and rows in the table.
SELECT * FROM project.data;

-- 2	Show ALL columns WITH LIMIT BY AMOUNT
SELECT ID, OrderDate,CustomerName, State,City,OrderID,Amount,Profit,
Quantity,Category,SubCategory,PaymentMode FROM project.data
ORDER BY Amount Desc
LIMIT 3;

-- 3	Show the number of employees in the table.
SELECT COUNT(*) FROM project.data;

-- 4	Show the unique job CATEGORY in the table.
SELECT distinct Category FROM project.data;

-- 5	Show the ID, OrderDate,CustomerName, State,City,Amount FROM project.data
-- WHERE Amount IS GREATER THAN200
SELECT ID, OrderDate,CustomerName, State,City,Amount FROM project.data
WHERE Amount > 200
ORDER BY Quantity desc;

-- 6	Show the average for all employees. 
SELECT AVG(Amount), AVG(Profit), AVG(Quantity) from project.data;

-- 7	Show the top 3 highest paid AMOUNT employees.
SELECT ID, OrderDate,CustomerName, State,City,OrderID,Amount,Profit,
Quantity,Category,SubCategory,PaymentMode FROM project.data
order by Amount desc
limit 3;

-- 8	Show the top 3 lowest paid AMOUNT employees.
SELECT ID, OrderDate,CustomerName, State,City,OrderID,Amount,Profit,
Quantity,Category,SubCategory,PaymentMode FROM project.data
order by Amount asc
limit 3;

-- 9	Show the average of BasePay, OvertimePay, and OtherPay for each employee:
SELECT ID, CustomerName, (Amount+Profit)/2 as TOTAL_AVERAGE 
from project.data;

-- 10	Show all employees who have the word "BOOKS" in their job title.
SELECT ID,OrderDate, CustomerName,Amount,Profit,PaymentMode,Quantity
 from project.data
WHERE Category LIKE '%Books%';
DESC


-- 11	Show all employees with a AMOUNT>=500 AND PROFIT<3000.
SELECT * from project.data
where Amount>=500 and Profit<3000
ORDER BY Quantity desc
LIMIT 3;

-- 12	Show all employees ordered by their AMOUNT in descending order.
select * from project.data
order by Amount desc
LIMIT 3;

-- 13. SHOW ORDERDATE,Quantity,Profit,Amount IN DESCENDING ORDER
SELECT ORDERDATE,Quantity,Profit,Amount FROM project.data
ORDER BY Quantity desc;

-- 14. SHOW PaymentMode,Amount,Profit>10
SELECT PaymentMode,Amount FROM project.data
where Profit>10 
ORDER BY Amount desc;

-- 14. SHOW PaymentMode,Profit,Amount>10
SELECT PaymentMode,Profit FROM project.data
where Amount>10 
ORDER BY Profit desc;

-- 15. SHOW State,City,Profit ORDER BY PROFIT IN desc
SELECT State,City,Profit FROM project.data
ORDER BY Profit desc;

-- 16. SHOW State,City,AMOUNT ORDER BY PROFIT IN desc
SELECT State,City,Amount FROM project.data
ORDER BY Profit desc;

-- 17. SHOW OrderID,Amount,Profit,PaymentMode,Quantity ,PROFIT IN desc
SELECT OrderID,Amount,Profit,PaymentMode,Quantity FROM project.data
ORDER BY Profit desc;

-- 18. SHOW Category,Amount,Profit,PaymentMode,Quantity ORDER BY PROFITIN desc
SELECT  Category,Amount,Profit,PaymentMode,Quantity FROM project.data
ORDER BY Profit 
desc;

-- 19. SHOW SUB-Category,Amount,Profit,PaymentMode,Quantity ORDER BY PROFITIN desc
SELECT  SubCategory,Amount,Profit,PaymentMode,Quantity FROM project.data
ORDER BY Profit desc;

