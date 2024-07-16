DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Address VARCHAR(200),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    City VARCHAR(20),
    Country VARCHAR(50)
);

CREATE TABLE Employees (
    ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(20)
);

CREATE TABLE Products (
    ID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Description VARCHAR(300),
    BuyPrice DECIMAL
);

CREATE TABLE Payments (
    ID SERIAL PRIMARY KEY,
    CustomerID INT,
    PaymentDate TIMESTAMP,
    Amount DECIMAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);

CREATE TABLE Orders (
    ID SERIAL PRIMARY KEY,
    ProductID INT,
    PaymentID INT,
    FulfilledByEmployeeID INT,
    DateRequired TIMESTAMP,
    DateShipped TIMESTAMP,
    Status VARCHAR(20),
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (PaymentID) REFERENCES Payments(ID),
    FOREIGN KEY (FulfilledByEmployeeID) REFERENCES Employees(ID)
);
