CREATE TABLE CustomersTable(
  CustomerID int(11) SERIAL PRIMARY KEY,
  FirstName varchar(50),
  LastName varchar(50),
  Gender varchar(45),
  Address varchar(200),
  Phone bigint(20),
  Email varchar(100),
  City varchar(20),
  Country varchar(50)
);

CREATE TABLE EmployeesTable(
  EmployeeID int(11) SERIAL PRIMARY KEY,
  FirstName varchar (50),
  LastName varchar (50),
  Email varchar (100),
  JobTitle varchar (20)
);

CREATE TABLE ProductsTable(
  ProductID int(11) SERIAL PRIMARY KEY,
  ProductName varchar (100),
  Description varchar (300),
  BuyPrice decimal
);

CREATE TABLE PaymentsTable(
  CustomerId int(11),
  PaymentID int(11), SERIAL PRIMARY KEY,
  PaymentDate date,
  Amount decimal(10.2),
  FOREIGN KEY (CustomerId) REFERENCES CustomersTable(CustomerId)
);

CREATE TABLE OrdersTable(
  OrderId int(11) SERIAL PRIMARY KEY,
  ProductID int(11),
  PaymentID int(11),
  FulfilledByEmployeeID int(11),
  DateRequired date,
  DateShipped date,
  Status varchar (20),
  FOREIGN KEY (ProductID) REFERENCES ProductsTable(ProductID),
  FOREIGN KEY (PaymentID) REFERENCES PaymentsTable(PaymentID),
  FOREIGN KEY (FulfilledByEmployeeID) REFERENCES EmployeesTable(EmployeeID)
  CONSTRAINT Orders_fk1 FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
  CONSTRAINT Orders_fk2 FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
  CONSTRAINT Orders_fk3 FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
  CONSTRAINT Orders_fk4 FOREIGN KEY (FulfilledByEmployeeID) REFERENCES Employees (EmployeeID)
  );