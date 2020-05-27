-- 1* records from table Customers.
SELECT * from CustomersTable;

-- 2. Name column in the table Customers.
SELECT FirstName, LastName from CustomersTable;

-- 3. show the name of the customer whose CustomerID = 1
SELECT FirstName, LastName FROM CustomersTable 
WHERE CustomerID = 1;

-- 4. Update Lerato Mabitso 
UPDATE CustomersTable 
SET FirstName = 'Lerato', LastName = 'Mabitso' 
WHERE CustomerID = 1;

-- 5. Delete the record from the customers table for customer 2.
DELETE FROM CustomersTable 
WHERE CustomerID = 2;

-- 6. Select all Unique statues
SELECT Distinct Status From OrdersTable;

-- 7. Return the maximum payment made on the Payments table.
SELECT MAX(Amount) AS LargestPayment FROM PaymentsTable;

-- 8. Sorted by the "Country" column.
SELECT FirstName, LastName FROM CustomersTable ORDER BY Country ASC;

-- 9. Price range R100 - R600
SELECT * FROM ProductsTable 
WHERE BuyPrice BETWEEN 100 and 600;

-- 10. Germany & Berlin
SELECT * FROM Customers 
WHERE Country = 'Germany' and City = 'Berlin';

-- 11. Cape Town or Durban
SELECT * FROM CustomersTable 
WHERE City= 'Cape town' OR City='Durban';

-- 12. Price range is GREATER than R500.
SELECT * FROM ProductsTable 
WHERE BuyPrice > 500;

-- 13. Return the Sum of payments
SELECT SUM(Amount) FROM PaymentsTable;

-- 14. Number of orders
SELECT COUNT(Status) FROM OrdersTable
WHERE status = 'Shipped';

-- 15 Return the Average price
SELECT AVG(BuyPrice/ 12.0) AS  Average_Dollars, AVG(BuyPrice) AS  Average_Rand FROM ProductsTable;

-- 16 Using Inner Join
SELECT * FROM CustomersTable 
INNER JOIN Customers ON PaymentsTable.CustomerID = CustomersTable.CustomerID;

-- 17 Select all products that have Turnable Front Wheels
SELECT * FROM ProductsTable 
WHERE Description = 'Turnable front wheels, steering function'