CREATE TABLE Customers (
    ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Address VARCHAR(200),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Employees (
    ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(50)
);

CREATE TABLE Products (
    ID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Description VARCHAR(300),
    BuyPrice DECIMAL(10, 2)
);

CREATE TABLE Payments (
    ID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(ID),
    PaymentDate TIMESTAMP,
    Amount DECIMAL(10, 2)
);

CREATE TABLE Orders (
    ID SERIAL PRIMARY KEY,
    ProductID INT REFERENCES Products(ID),
    PaymentID INT REFERENCES Payments(ID),
    FulfilledByEmployeeID INT REFERENCES Employees(ID),
    DateRequired TIMESTAMP,
    DateShipped TIMESTAMP,
    Status VARCHAR(20)
);
