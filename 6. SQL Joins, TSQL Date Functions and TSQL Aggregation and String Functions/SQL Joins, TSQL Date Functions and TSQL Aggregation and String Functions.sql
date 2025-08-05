----------------------------------------
----------------------------------------
-----------------JOINS------------------
----------------------------------------
----------------------------------------

create table MyEmployee (EmployeeID int,FirstName varchar(20),LastName varchar(20))

insert into MyEmployee values (1,'Michael','Scott')
insert into MyEmployee values (2,'Philip','Beesly')
insert into MyEmployee values (3,'Dwight','Schrute')

select * from MyEmployee

create table Salary (EmployeeID int,Salary float)

insert into Salary values (1,10000)
insert into Salary values (2,8000)
insert into Salary values (3,6000)

select * from Salary


----Inner Join------

select * from MyEmployee
select * from Salary

select A.EmployeeID, A.FirstName, A.LastName, B.Salary 
from MyEmployee A inner join Salary B on A.EmployeeID = B.EmployeeID


----Left Outer Join------

CREATE TABLE MyPhone (EmployeeID INT, PhoneNumber INT)

INSERT INTO MyPhone VALUES (1, 0481234565)
INSERT INTO MyPhone VALUES (2, 0481236565)

SELECT * FROM MyPhone

SELECT * FROM MyEmployee
SELECT * FROM MyPhone

SELECT A.EmployeeID, A.FirstName, A.LastName, B.PhoneNumber 
FROM MyEmployee A LEFT JOIN MyPhone B on A.EmployeeID = B.EmployeeID


----Right Outer Join------

CREATE TABLE MyParking (EmployeeID INT, ParkingSpot VARCHAR(20))

INSERT INTO MyParking VALUES (1, 'A1')
INSERT INTO MyParking VALUES (2, 'A2')


SELECT * FROM MyParking

SELECT * FROM MyParking
SELECT * FROM MyEmployee

SELECT   B.EmployeeID, A.ParkingSpot, B.FirstName,B.LastName
FROM MyParking A RIGHT JOIN MyEmployee B ON A.EmployeeID = B.EmployeeID


----Full Outer Join------

CREATE TABLE MyCustomer (Customer_ID INT, Customer_Name VARCHAR(20))

INSERT INTO MyCustomer VALUES (1, 'Rakesh')
INSERT INTO MyCustomer VALUES (3, 'John')
SELECT * FROM MyCustomer

CREATE TABLE MyOrder (Order_No INT, Order_Name VARCHAR(20), Customer_ID INT)

INSERT INTO MyOrder VALUES (1, 'SameOrder1', 1)
INSERT INTO MyOrder VALUES (2, 'SameOrder2', 2)
INSERT INTO MyOrder VALUES (3, 'SameOrder3', 7)
INSERT INTO MyOrder VALUES (4, 'SameOrder4', 8)
SELECT * FROM MyOrder

SELECT * FROM MyCustomer
SELECT * FROM MyOrder

SELECT A.Customer_ID,A.Customer_Name, B.Order_No, B.Order_Name 
FROM MyCustomer A FULL OUTER JOIN MyOrder B ON A.Customer_ID = B.Customer_ID


----Full Outer Join------

SELECT * FROM MyCustomer
SELECT * FROM Salary

SELECT * FROM MyCustomer CROSS JOIN Salary

SELECT * FROM MyCustomer, Salary





----Date Functions


SELECT GETDATE()

SELECT GETDATE() - 2

---DATEPART-----

SELECT DATEPART(yyyy, GETDATE())  AS YEARNUMBER

SELECT DATEPART(mm, GETDATE())

SELECT DATEPART(dd, GETDATE())



------DATEADD---
SELECT DATEADD(DD, 4, GETDATE())

SELECT DATEADD(day, 4, '04/15/2002')

SELECT DATEADD(month, 4, GETDATE())

SELECT DATEADD(year, 4, GETDATE())



SELECT TOP 10 * FROM [Production].[WorkOrder]

SELECT [WorkOrderID], [ProductID], [StartDate], [EndDate], DATEDIFF(DAY, StartDate, EndDate)
FROM [Production].[WorkOrder]

SELECT DATEADD(DD, -(DATEPART(DAY, GETDATE()) -1), GETDATE())




----AGGREGATE FUNCTION-----

SELECT * FROM Salary

SELECT AVG(Salary) FROM Salary

SELECT COUNT(Salary) FROM Salary

SELECT COUNT(*) FROM Salary

SELECT SUM(Salary) FROM Salary
SELECT * FROM Salary
SELECT MIN(Salary) AS MIN_SALARY FROM Salary

SELECT MAX(Salary) FROM Salary



----STRING FUNCTIONS-----

SELECT * FROM MyOrder

--CONCAT---
PRINT CONCAT('String 1', ' String 2')

SELECT Order_No, Order_Name, CONCAT(Order_Name, ' ', Order_Name) AS CONCATED_TEXT
FROM MyOrder

SELECT Order_No, Order_Name, CONCAT(Order_Name, ' ', RAND()) AS CONCATED_TEXT
FROM MyOrder


---LEFT FUNCTION---
SELECT Order_No, Order_Name, LEFT(Order_Name, 5) FROM MyOrder


---RIGHT FUNCTION---
SELECT Order_No, Order_Name, RIGHT(Order_Name, 5) FROM MyOrder

---SUB STRING----
SELECT Order_No, Order_Name, SUBSTRING(Order_Name, 2, 5) FROM MyOrder

---LOWERCASE
SELECT Order_No, Order_Name, LOWER(Order_Name) FROM MyOrder

--UPPERCASE---
SELECT Order_No, Order_Name, UPPER(Order_Name) FROM MyOrder

---LENGTH---
SELECT Order_No, Order_Name, LEN(Order_Name) FROM MyOrder

--MAKE FIRST LETTER ONLY CAPITAL OF ORDERNAME
SELECT Order_No, Order_Name, CONCAT(UPPER(LEFT(Order_Name,1)),LOWER(SUBSTRING(Order_Name, 2,LEN(Order_Name)))) FROM MyOrder

--TRIM--
--------

--LTRIM--
SELECT LTRIM('            MYTEXT         ')

--RTRIM--
SELECT RTRIM('            MYTEXT         ')

--LTRIM--
SELECT LTRIM(RTRIM('            MYTEXT         '))