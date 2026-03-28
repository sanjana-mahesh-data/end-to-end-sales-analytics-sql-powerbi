USE salesdb;

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductDescription VARCHAR(255)
);

CREATE TABLE Regions (
RegionID INT PRIMARY KEY,
RegionName VARCHAR(100)
);

CREATE TABLE Warehouses (
WarehouseCode VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Orders (
OrderNumber VARCHAR(20) PRIMARY KEY,
OrderDate DATE,
CustomerID INT,
Channel VARCHAR(50),
CurrencyCode VARCHAR(10),
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
OrderNumber VARCHAR(20),
ProductID INT,
WarehouseCode VARCHAR(10),
RegionID INT,
OrderQuantity INT,
UnitPrice DECIMAL(10,2),
LineTotal DECIMAL(12,2),
TotalUnitCost DECIMAL(12,2),
FOREIGN KEY (OrderNumber) REFERENCES Orders(OrderNumber),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
FOREIGN KEY (WarehouseCode) REFERENCES Warehouses(WarehouseCode),
FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

SELECT * 
FROM sales_data_customers
LIMIT 20;

SELECT * 
FROM sales_data_regions
LIMIT 20;

SELECT * 
FROM sales_data_products
LIMIT 20;

SELECT * 
FROM salesdb.sales_data_2017_budgets
LIMIT 20;

select * from salesdb.sales_data_final limit 20;
