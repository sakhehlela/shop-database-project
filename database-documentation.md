# Shop Database Documentation

## Tables and Information

### Customers Table
- **ID**: Primary key, auto-incremented
- **FirstName**: First name of the customer
- **LastName**: Last name of the customer
- **Gender**: Gender of the customer
- **Address**: Address of the customer
- **Phone**: Phone number of the customer
- **Email**: Email address of the customer
- **City**: City of residence
- **Country**: Country of residence

### Employees Table
- **ID**: Primary key, auto-incremented
- **FirstName**: First name of the employee
- **LastName**: Last name of the employee
- **Email**: Email address of the employee
- **JobTitle**: Job title of the employee

### Products Table
- **ID**: Primary key, auto-incremented
- **ProductName**: Name of the product
- **Description**: Description of the product
- **BuyPrice**: Price of the product

### Orders Table
- **ID**: Primary key, auto-incremented
- **ProductID**: Foreign key referencing Products(ID)
- **PaymentID**: Foreign key referencing Payments(ID)
- **FulfilledByEmployeeID**: Foreign key referencing Employees(ID)
- **DateRequired**: Date the order is required
- **DateShipped**: Date the order was shipped
- **Status**: Status of the order (e.g., Shipped, Not shipped)

### Payments Table
- **ID**: Primary key, auto-incremented
- **CustomerID**: Foreign key referencing Customers(ID)
- **PaymentDate**: Date of payment
- **Amount**: Amount paid

## Relationships Between Tables
- Orders table references Products, Payments, and Employees tables via ProductID, PaymentID, and FulfilledByEmployeeID
