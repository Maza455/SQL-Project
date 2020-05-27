-- FOR CUSTOMER TABLE

INSERT INTO CustomersTable(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (1, 'John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa');

INSERT INTO CustomersTable(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (2, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa');

INSERT INTO CustomersTable(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (3, 'Leon', 'Glen', 'Male', '81 Everton Rd Gillits', 0820832830, 'Leon@gmail.com', 'Durban', 'South Africa');

INSERT INTO CustomersTable(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (4, 'Charl', 'Muller', 'Male', '290A Dorset Ecke', 44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany');

INSERT INTO CustomersTable(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (5, 'Julia', 'Stein', 'Female',	'2 Wernerring', 448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany');

-- FOR EMPLOYEE TABLE

INSERT INTO EmloyeesTable(EmployeeID ,FirstName ,LastName,Email ,JobTitle)
VALUES (1, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager');

INSERT INTO EmloyeesTable(EmployeeID ,FirstName ,LastName ,Email ,JobTitle)
VALUES (2, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk');

INSERT INTO EmloyeesTable(EmployeeID ,FirstName ,LastName ,Email ,JobTitle)
VALUES (3, 'Gideon', 'Maduku', 'm@gmail.com','Accountant');

-- FOR ORDERS TABLE

INSERT INTO OrdersTable(OrderId, ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES (1, 1, 1, 2, '2018-09-05', Null, 'Not shipped');

INSERT INTO OrdersTable(OrderId, ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES (2, 1, 2, 2, '2018-09-04', '2018-09-03', 'Shipped');

INSERT INTO OrdersTable(OrderId, ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES (3, 3, 3, 3, '2018-09-06', Null,'Not shipped');

-- FOR PAYMENTS TABLE 

INSERT INTO PaymentsTable (CustomerId, PaymentID, PaymentDate, Amount)
VALUES (1, 1, '2018-09-01', 150.75);

INSERT INTO PaymentsTable (CustomerId, PaymentID, PaymentDate, Amount)
VALUES (5, 2, '2018-09-03', 150.75);

INSERT INTO PaymentsTable (CustomerId, PaymentID, PaymentDate, Amount)
VALUES (4, 3, '2018-09-03', 700.60);

-- FOR PRODUCTS TABLE

INSERT INTO ProductsTable(ProductID, ProductName, Description, BuyPrice)
VALUES (1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75);

INSERT INTO ProductsTable(ProductID, ProductName, Description, BuyPrice)
VALUES (2, 'Classic Car', 'Turnable front wheels, steering function', 550.75);

INSERT INTO ProductsTable(ProductID, ProductName, Description, BuyPrice)
VALUES (3, 'Sports car', 'Turnable front wheels, steering function', 700.60);