Create table DimCustomer (
    CustomerID INT NOT NULL Primary Key,
    CustomerName Varchar (50) NOT NULL,
    Age INT NOT NULL,
    Gender Varchar (50) NOT NULL,
    City Varchar (50) NOT NULL,
    NoHP Varchar (50) NOT NULL);

Create table DimProduct (
    ProductID INT NOT NULL Primary Key,
    ProductName Varchar (225) NOT NULL,
    ProductCategory Varchar (225) NOT NULL,
    ProductUnitPrice INT);

Create table DimStatusOrder (
    StatusID INT NOT NULL Primary Key,
    StatusOrder Varchar (50) NOT NULL,
    StatusOrderDesc Varchar (50) NOT NULL);

Create table FactSalesOrder (
    OrderID INT NOT NULL Primary Key,
    CustomerID INT NOT NULL Foreign Key References DimCustomer(CustomerID),
    ProductID INT NOT NULL Foreign Key References DimProduct(ProductID),
    Quantity INT NOT NULL,
    Amount INT NOT NULL,
    StatusID INT NOT NULL Foreign Key References DimStatusOrder(StatusID),
    OrderDate Date NOT NULL);