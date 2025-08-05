use AdventureWorks2012

--
SELECT * FROM [HumanResources].[Department]

-- SHOW ME ALL THE DEPARTMENT NAMES
SELECT NAME FROM HumanResources.Department

-- Show me all the groups

select GroupName from [HumanResources].[Department]

--Show me all the distinct GroupName
select distinct GroupName from [HumanResources].[Department]

-- Show me all the department names that are a part of manufaturing
select * from [HumanResources].[Department]
where GroupName like 'Manufacturing'

-- Give me all the employee from employee table
select * from [HumanResources].[Employee]

-- Give me a list of all employee who have orglevel = 2
select * from [HumanResources].[Employee] where OrganizationLevel = 2

-- Give me a list of all employees who have orglevel = 2 or 3
select * from [HumanResources].[Employee] where OrganizationLevel in (2,3)

-- Give me a list of employees who have a title facilities manager
select * from [HumanResources].[Employee] where JobTitle like 'Facilities Manager'


-- Give me a list  of employees who are managers
select * from [HumanResources].[Employee] where JobTitle like '%Manager'
-- Here giving all the datas in job titles which contains manager(anything before the word manager is shown not after the word manager)

-- Give me a list  of employees who have word control in it
select * from [HumanResources].[Employee] where JobTitle like '%control%'
-- Here giving all the datas in job titles which contains control(anything before the word control is shown after the word control)

--Give me all employees who are born after Jan 1 1980
select * from [HumanResources].[Employee] where BirthDate > '1/1/1980'

--Give me all employees who are born between Jan 1 1970 and Jan 1 1980 
select * from [HumanResources].[Employee] where BirthDate > '1/1/1970' and BirthDate < '1/1/1980'

select * from [HumanResources].[Employee] where BirthDate between '1/1/1970' and '1/1/1980'

--Calculated Columns
select Name, ListPrice from [Production].[Product]

select Name, ListPrice, ListPrice + 10  as AdjustedListPrice from [Production].[Product]

-- Into
select Name, ListPrice, ListPrice + 10  as AdjustedListPrice into Production.Product_2 from [Production].[Product]

select * from Production.Product_2

--Delete data from table
Delete from [Production].[Product_2] where Name like 'Bearing Ball'

select * from Production.Product_2

--Update

update [Production].[Product_2] 
set Name = 'New Blade'
where Name like 'Blade'