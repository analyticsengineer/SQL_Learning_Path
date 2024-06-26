-- CREATE DATABASE
CREATE DATABASE sales_data;

-- CREATE CUSTOMERS TABLE
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    City VARCHAR(50),
    Country VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE
);

-- INSERT INTO TABLES

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, City, Country, Gender, DateOfBirth) VALUES
(1, 'John', 'Doe', 'johndoe@email.com', '+1234567890', 'New York', 'USA', 'Male', '1990-05-15'),
(2, 'Jane', 'Smith', 'janesmith@email.com', '+1987654321', 'London', 'UK', 'Female', '1985-08-20'),
(3, 'Michael', 'Johnson', 'michaeljohnson@email.com', '+1765432890', 'Los Angeles', 'USA', 'Male', '1988-12-10'),
(4, 'Emily', 'Brown', 'emilybrown@email.com', '+1456728901', 'Toronto', 'Canada', 'Female', '1995-02-28'),
(5, 'David', 'Martinez', 'davidmartinez@email.com', '+1678901234', 'Paris', 'France', 'Male', '1979-10-05'),
(6, 'Sarah', 'Garcia', 'sarahgarcia@email.com', '+1345678902', 'Berlin', 'Germany', 'Female', '1992-03-18'),
(7, 'James', 'Lopez', 'jameslopez@email.com', '+1887654321', 'Sydney', 'Australia', 'Male', '1983-07-25'),
(8, 'Emma', 'Hernandez', 'emmahernandez@email.com', '+1567890234', 'Rome', 'Italy', 'Female', '1976-11-30'),
(9, 'Daniel', 'Gonzalez', 'danielgonzalez@email.com', '+1123456789', 'Tokyo', 'Japan', 'Male', '1980-04-12'),
(10, 'Olivia', 'Wilson', 'oliviawilson@email.com', '+1778902345', 'Seoul', 'South Korea', 'Female', '1998-09-22'),
(11, 'Liam', 'Anderson', 'liamanderson@email.com', '+1998765432', 'Moscow', 'Russia', 'Male', '1987-06-14'),
(12, 'Ava', 'Taylor', 'avataylor@email.com', '+1789023456', 'Mexico City', 'Mexico', 'Female', '1993-01-08'),
(13, 'Noah', 'White', 'noahwhite@email.com', '+1890234567', 'São Paulo', 'Brazil', 'Male', '1982-02-03'),
(14, 'Isabella', 'Martinez', 'isabellamartinez@email.com', '+1445678901', 'Cairo', 'Egypt', 'Female', '1984-04-20'),
(15, 'William', 'Lopez', 'williamlopez@email.com', '+1789023456', 'Cape Town', 'South Africa', 'Male', '1991-11-11'),
(16, 'Sophia', 'Harris', 'sophiaharris@email.com', '+1345678901', 'Bangkok', 'Thailand', 'Female', '1989-08-17'),
(17, 'Alexander', 'Clark', 'alexanderclark@email.com', '+1987654321', 'Singapore', 'Singapore', 'Male', '1977-07-01'),
(18, 'Mia', 'Lewis', 'mialewis@email.com', '+1678902345', 'Dubai', 'UAE', 'Female', '1996-06-25'),
(19, 'James', 'Turner', 'jamesturner@email.com', '+1567890234', 'Hong Kong', 'China', 'Male', '1981-03-05'),
(20, 'Charlotte', 'King', 'charlotteking@email.com', '+1345678902', 'Jakarta', 'Indonesia', 'Female', '1994-10-29');


-- CREATE SALES TABLE
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    ShippingID INT,
    SalesDate DATE,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2),
    Discount DECIMAL(5, 2),
    Tax DECIMAL(5, 2),
    ShippingCost DECIMAL(8, 2),
    PaymentMethod VARCHAR(50),
    DeliveryAddress VARCHAR(255),
    DeliveryStatus VARCHAR(50),
    SalespersonID INT
);


-- insert table
INSERT INTO Sales (SalesID, CustomerID, ProductID, ShippingID, SalesDate, Quantity, UnitPrice, TotalAmount, Discount, Tax, ShippingCost, PaymentMethod, DeliveryAddress, DeliveryStatus, SalespersonID) VALUES
(1, 101, 201, 301, '2024-06-01', 2, 50.00, 100.00, 5.00, 2.00, 10.00, 'Credit Card', '123 Main St, Lagos', 'Delivered', 501),
(2, 102, 202, 302, '2024-06-02', 1, 75.00, 75.00, 0.00, 3.50, 5.00, 'PayPal', '456 Elm St, Lagos', 'Shipped', 502),
(3, 103, 203, NULL, '2024-06-03', 3, 30.00, 90.00, 10.00, 1.80, 8.00, 'Cash On Delivery', '789 Pine St, Lagos', 'Delivered', 503),
(4, 104, 204, 303, '2024-06-04', 2, 100.00, 200.00, 15.00, 4.00, 12.00, 'Credit Card', '101 Oak St, Lagos', 'In Transit', 504),
(5, 105, 205, NULL, '2024-06-05', 1, 150.00, 150.00, 0.00, 7.50, 7.50, 'Bank Transfer', '321 Maple St, Lagos', 'Delivered', 505),
(6, 106, 206, 304, '2024-06-06', 4, 40.00, 160.00, 8.00, 2.40, 10.00, 'Credit Card', '543 Cedar St, Lagos', 'Delivered', 506),
(7, 107, 207, 305, '2024-06-07', 1, 200.00, 200.00, 0.00, 10.00, 5.00, 'PayPal', '876 Birch St, Lagos', 'Shipped', 507),
(8, 108, 208, NULL, '2024-06-08', 3, 50.00, 150.00, 5.00, 3.00, 8.00, 'Credit Card', '987 Walnut St, Lagos', 'Delivered', 508),
(9, 109, 209, 306, '2024-06-09', 2, 80.00, 160.00, 0.00, 4.80, 6.00, 'Cash On Delivery', '654 Pineapple St, Lagos', 'Delivered', 509),
(10, 110, 210, 307, '2024-06-10', 1, 120.00, 120.00, 0.00, 6.00, 7.50, 'Credit Card', '321 Coconut St, Lagos', 'In Transit', 510),
(11, 111, 211, NULL, '2024-06-11', 3, 70.00, 210.00, 10.00, 5.25, 9.00, 'PayPal', '456 Mango St, Lagos', 'Delivered', 511),
(12, 112, 212, 308, '2024-06-12', 2, 90.00, 180.00, 5.00, 5.40, 7.00, 'Credit Card', '789 Papaya St, Lagos', 'Shipped', 512),
(13, 113, 213, NULL, '2024-06-13', 1, 110.00, 110.00, 0.00, 5.50, 7.00, 'Bank Transfer', '101 Guava St, Lagos', 'Delivered', 513),
(14, 114, 214, 309, '2024-06-14', 4, 60.00, 240.00, 12.00, 4.80, 10.00, 'Credit Card', '321 Kiwi St, Lagos', 'Delivered', 514),
(15, 115, 215, 310, '2024-06-15', 1, 130.00, 130.00, 0.00, 6.50, 8.00, 'Cash On Delivery', '543 Orange St, Lagos', 'In Transit', 515),
(16, 116, 216, NULL, '2024-06-16', 3, 80.00, 240.00, 15.00, 7.20, 9.50, 'Credit Card', '876 Lemon St, Lagos', 'Delivered', 516),
(17, 117, 217, 311, '2024-06-17', 2, 150.00, 300.00, 20.00, 9.00, 12.00, 'PayPal', '987 Lime St, Lagos', 'Shipped', 517),
(18, 118, 218, NULL, '2024-06-18', 1, 200.00, 200.00, 0.00, 10.00, 5.00, 'Credit Card', '654 Grape St, Lagos', 'Delivered', 518),
(19, 119, 219, 312, '2024-06-19', 2, 120.00, 240.00, 0.00, 12.00, 7.50, 'Cash On Delivery', '321 Berry St, Lagos', 'Delivered', 519),
(20, 120, 220, 313, '2024-06-20', 1, 180.00, 180.00, 0.00, 9.00, 6.50, 'Credit Card', '543 Apple St, Lagos', 'In Transit', 520);

-- CREATE ORDERS TABLE
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    SalesID INT,
    OrderDate DATE,
    OrderStatus VARCHAR(50)
);


-- insert data
INSERT INTO Orders (OrderID, CustomerID, SalesID, OrderDate, OrderStatus) VALUES
(1, 101, 1, '2024-06-01', 'Delivered'),
(2, 102, 2, '2024-06-02', 'Shipped'),
(3, 103, 3, '2024-06-03', 'Delivered'),
(4, 104, 4, '2024-06-04', 'In Transit'),
(5, 105, 5, '2024-06-05', 'Delivered'),
(6, 106, 6, '2024-06-06', 'Delivered'),
(7, 107, 7, '2024-06-07', 'Shipped'),
(8, 108, 8, '2024-06-08', 'Delivered'),
(9, 109, 9, '2024-06-09', 'Delivered'),
(10, 110, 10, '2024-06-10', 'In Transit'),
(11, 111, 11, '2024-06-11', 'Delivered'),
(12, 112, 12, '2024-06-12', 'Shipped'),
(13, 113, 13, '2024-06-13', 'Delivered'),
(14, 114, 14, '2024-06-14', 'Delivered'),
(15, 115, 15, '2024-06-15', 'In Transit'),
(16, 116, 16, '2024-06-16', 'Delivered'),
(17, 117, 17, '2024-06-17', 'Shipped'),
(18, 118, 18, '2024-06-18', 'Delivered'),
(19, 119, 19, '2024-06-19', 'Delivered'),
(20, 120, 20, '2024-06-20', 'In Transit');

-- CREATE ORDERS DETAILS TABLE
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2)
);

-- INSERT DATA
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice, TotalAmount) VALUES
(1, 1, 201, 2, 50.00, 100.00),
(2, 2, 202, 1, 75.00, 75.00),
(3, 3, 203, 3, 30.00, 90.00),
(4, 4, 204, 2, 100.00, 200.00),
(5, 5, 205, 1, 150.00, 150.00),
(6, 6, 206, 4, 40.00, 160.00),
(7, 7, 207, 1, 200.00, 200.00),
(8, 8, 208, 3, 50.00, 150.00),
(9, 9, 209, 2, 80.00, 160.00),
(10, 10, 210, 1, 120.00, 120.00),
(11, 11, 211, 3, 70.00, 210.00),
(12, 12, 212, 2, 90.00, 180.00),
(13, 13, 213, 1, 110.00, 110.00),
(14, 14, 214, 4, 60.00, 240.00),
(15, 15, 215, 1, 130.00, 130.00),
(16, 16, 216, 3, 80.00, 240.00),
(17, 17, 217, 2, 150.00, 300.00),
(18, 18, 218, 1, 200.00, 200.00),
(19, 19, 219, 2, 120.00, 240.00),
(20, 20, 220, 1, 180.00, 180.00);

-- CREATE SHIPPING TABLE
CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    Carrier VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ShippingMethod VARCHAR(50),
    ShippingDate DATE,
    DeliveryDate DATE
);

-- INSERT DATA
INSERT INTO Shipping (ShippingID, OrderID, Carrier, TrackingNumber, ShippingMethod, ShippingDate, DeliveryDate) VALUES
(301, 1, 'FedEx', 'FED123456789', 'Standard', '2024-06-01', '2024-06-05'),
(302, 2, 'UPS', 'UPS987654321', 'Express', '2024-06-02', '2024-06-06'),
(303, 4, 'DHL', 'DHL567890123', 'Standard', '2024-06-04', '2024-06-08'),
(304, 6, 'FedEx', 'FED234567890', 'Express', '2024-06-06', '2024-06-10'),
(305, 7, 'UPS', 'UPS765432109', 'Standard', '2024-06-07', '2024-06-11'),
(306, 9, 'DHL', 'DHL678901234', 'Express', '2024-06-09', '2024-06-13'),
(307, 10, 'FedEx', 'FED345678901', 'Standard', '2024-06-10', '2024-06-14'),
(308, 12, 'UPS', 'UPS654321098', 'Express', '2024-06-12', '2024-06-16'),
(309, 14, 'DHL', 'DHL789012345', 'Standard', '2024-06-14', '2024-06-18'),
(310, 15, 'FedEx', 'FED456789012', 'Express', '2024-06-15', '2024-06-19'),
(311, 17, 'UPS', 'UPS543210987', 'Standard', '2024-06-17', '2024-06-21'),
(312, 19, 'DHL', 'DHL890123456', 'Express', '2024-06-19', '2024-06-23'),
(313, 20, 'FedEx', 'FED567890123', 'Standard', '2024-06-20', '2024-06-24'),
(314, 22, 'UPS', 'UPS432109876', 'Express', '2024-06-22', '2024-06-26'),
(315, 24, 'DHL', 'DHL901234567', 'Standard', '2024-06-24', '2024-06-28'),
(316, 26, 'FedEx', 'FED678901234', 'Express', '2024-06-26', '2024-06-30'),
(317, 28, 'UPS', 'UPS321098765', 'Standard', '2024-06-28', '2024-07-02'),
(318, 30, 'DHL', 'DHL012345678', 'Express', '2024-06-30', '2024-07-04'),
(319, 32, 'FedEx', 'FED789012345', 'Standard', '2024-07-02', '2024-07-06'),
(320, 34, 'UPS', 'UPS210987654', 'Express', '2024-07-04', '2024-07-08');

-- CREATE INVENTORY TABLE
CREATE TABLE Inventory (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    CategoryID INT,
    SupplierID INT,
    UnitPrice DECIMAL(10, 2),
    QuantityInStock INT,
    ReorderLevel INT,
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    Location VARCHAR(255)
);

-- INSERT DATA
INSERT INTO Inventory (ProductID, ProductName, CategoryID, SupplierID, UnitPrice, QuantityInStock, ReorderLevel, Status, Location) VALUES
(201, 'Widget A', 1, 1, 50.00, 100, 20, 'Active', 'Warehouse A'),
(202, 'Widget B', 1, 2, 75.00, 150, 30, 'Active', 'Warehouse B'),
(203, 'Gadget X', 2, 3, 30.00, 200, 40, 'Active', 'Warehouse C'),
(204, 'Gadget Y', 2, 4, 100.00, 75, 15, 'Active', 'Warehouse D'),
(205, 'Tool Z', 3, 5, 150.00, 50, 10, 'Active', 'Warehouse E'),
(206, 'Equipment M', 3, 6, 40.00, 120, 25, 'Active', 'Warehouse F'),
(207, 'Accessory P', 4, 7, 200.00, 90, 18, 'Active', 'Warehouse G'),
(208, 'Accessory Q', 4, 8, 50.00, 180, 36, 'Active', 'Warehouse H'),
(209, 'Part R', 5, 9, 80.00, 60, 12, 'Active', 'Warehouse I'),
(210, 'Part S', 5, 10, 120.00, 45, 9, 'Active', 'Warehouse J'),
(211, 'Component T', 6, 11, 70.00, 100, 20, 'Active', 'Warehouse K'),
(212, 'Component U', 6, 12, 90.00, 85, 17, 'Active', 'Warehouse L'),
(213, 'Material V', 7, 13, 110.00, 70, 14, 'Active', 'Warehouse M'),
(214, 'Material W', 7, 14, 60.00, 110, 22, 'Active', 'Warehouse N'),
(215, 'Product X', 8, 15, 130.00, 40, 8, 'Active', 'Warehouse O'),
(216, 'Product Y', 8, 16, 80.00, 95, 19, 'Active', 'Warehouse P'),
(217, 'Item Z', 9, 17, 150.00, 55, 11, 'Active', 'Warehouse Q'),
(218, 'Item A', 9, 18, 200.00, 30, 6, 'Active', 'Warehouse R'),
(219, 'Device B', 10, 19, 120.00, 70, 14, 'Active', 'Warehouse S'),
(220, 'Device C', 10, 20, 180.00, 25, 5, 'Active', 'Warehouse T');

-- CREATE PRODUCT TABLE
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    CategoryID INT,
    SupplierID INT,
    UnitPrice DECIMAL(10, 2),
    QuantityInStock INT,
    ReorderLevel INT,
    ProductDescription TEXT
);

-- INSERT TABLE
INSERT INTO Products (ProductID, ProductName, CategoryID, SupplierID, UnitPrice, QuantityInStock, ReorderLevel, ProductDescription) VALUES
(201, 'Widget A', 1, 1, 50.00, 100, 20, 'A high-quality widget designed for various applications.'),
(202, 'Widget B', 1, 2, 75.00, 150, 30, 'A versatile widget with advanced features for industrial use.'),
(203, 'Gadget X', 2, 3, 30.00, 200, 40, 'An innovative gadget that simplifies everyday tasks.'),
(204, 'Gadget Y', 2, 4, 100.00, 75, 15, 'A compact gadget with powerful capabilities.'),
(205, 'Tool Z', 3, 5, 150.00, 50, 10, 'A durable tool suitable for professional use.'),
(206, 'Equipment M', 3, 6, 40.00, 120, 25, 'Essential equipment for various industrial processes.'),
(207, 'Accessory P', 4, 7, 200.00, 90, 18, 'An accessory that complements many electronic devices.'),
(208, 'Accessory Q', 4, 8, 50.00, 180, 36, 'A stylish accessory with practical functionality.'),
(209, 'Part R', 5, 9, 80.00, 60, 12, 'A critical part used in mechanical assemblies.'),
(210, 'Part S', 5, 10, 120.00, 45, 9, 'A precision part designed for specific applications.'),
(211, 'Component T', 6, 11, 70.00, 100, 20, 'An essential component used in electronic devices.'),
(212, 'Component U', 6, 12, 90.00, 85, 17, 'A reliable component with compatibility across systems.'),
(213, 'Material V', 7, 13, 110.00, 70, 14, 'A versatile material suitable for various manufacturing processes.'),
(214, 'Material W', 7, 14, 60.00, 110, 22, 'A cost-effective material with excellent durability.'),
(215, 'Product X', 8, 15, 130.00, 40, 8, 'A premium product offering superior performance.'),
(216, 'Product Y', 8, 16, 80.00, 95, 19, 'A reliable product designed for long-term use.'),
(217, 'Item Z', 9, 17, 150.00, 55, 11, 'A versatile item suitable for various applications.'),
(218, 'Item A', 9, 18, 200.00, 30, 6, 'An essential item with practical functionality.'),
(219, 'Device B', 10, 19, 120.00, 70, 14, 'A sophisticated device offering advanced features.'),
(220, 'Device C', 10, 20, 180.00, 25, 5, 'A compact device with powerful capabilities.');

-- CREATE SALES PERSON TABLE
CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    City VARCHAR(50),
    Country VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    HireDate DATE,
    Position VARCHAR(50),
    ManagerID INT
);


-- INSERT DATA
INSERT INTO Salesperson (SalespersonID, FirstName, LastName, Email, PhoneNumber, City, Country, Gender, DateOfBirth, HireDate, Position, ManagerID) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '+1234567890', 'New York', 'USA', 'Male', '1980-05-15', '2020-01-01', 'Sales Manager', NULL),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '+1987654321', 'Los Angeles', 'USA', 'Female', '1985-08-20', '2021-02-15', 'Senior Sales Executive', 1),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '+1654321987', 'Chicago', 'USA', 'Male', '1990-10-10', '2021-03-20', 'Sales Executive', 1),
(4, 'Emily', 'Brown', 'emily.brown@example.com', '+1765432198', 'Houston', 'USA', 'Female', '1988-03-25', '2021-04-05', 'Sales Representative', 2),
(5, 'David', 'Martinez', 'david.martinez@example.com', '+1876543219', 'San Francisco', 'USA', 'Male', '1992-07-05', '2021-05-10', 'Sales Representative', 3),
(6, 'Sophia', 'Garcia', 'sophia.garcia@example.com', '+1987654321', 'Miami', 'USA', 'Female', '1987-12-12', '2020-06-15', 'Sales Associate', 2),
(7, 'William', 'Wilson', 'william.wilson@example.com', '+1543219876', 'Dallas', 'USA', 'Male', '1983-09-18', '2020-07-20', 'Sales Associate', 3),
(8, 'Olivia', 'Lopez', 'olivia.lopez@example.com', '+1321987654', 'Atlanta', 'USA', 'Female', '1995-01-30', '2020-08-25', 'Sales Intern', 4),
(9, 'James', 'Harris', 'james.harris@example.com', '+1234567890', 'Seattle', 'USA', 'Male', '1993-06-08', '2020-09-30', 'Sales Intern', 4),
(10, 'Ava', 'King', 'ava.king@example.com', '+1987654321', 'Phoenix', 'USA', 'Female', '1989-04-22', '2020-10-05', 'Sales Intern', 5),
(11, 'Alexander', 'Taylor', 'alexander.taylor@example.com', '+1876543219', 'Boston', 'USA', 'Male', '1991-11-15', '2021-11-01', 'Sales Manager', NULL),
(12, 'Mia', 'Clark', 'mia.clark@example.com', '+1654321987', 'Denver', 'USA', 'Female', '1986-02-28', '2022-01-15', 'Senior Sales Executive', 11),
(13, 'Ethan', 'Lewis', 'ethan.lewis@example.com', '+1765432198', 'Las Vegas', 'USA', 'Male', '1984-07-10', '2022-02-20', 'Sales Executive', 11),
(14, 'Isabella', 'Allen', 'isabella.allen@example.com', '+1876543219', 'Philadelphia', 'USA', 'Female', '1990-10-03', '2022-03-05', 'Sales Representative', 12),
(15, 'Daniel', 'Young', 'daniel.young@example.com', '+1987654321', 'Austin', 'USA', 'Male', '1994-03-18', '2022-04-10', 'Sales Representative', 13),
(16, 'Amelia', 'White', 'amelia.white@example.com', '+1321987654', 'San Diego', 'USA', 'Female', '1996-06-20', '2022-05-15', 'Sales Associate', 14),
(17, 'Jackson', 'Scott', 'jackson.scott@example.com', '+1234567890', 'Portland', 'USA', 'Male', '1992-09-05', '2022-06-20', 'Sales Associate', 15),
(18, 'Charlotte', 'Green', 'charlotte.green@example.com', '+1543219876', 'Nashville', 'USA', 'Female', '1988-12-10', '2022-07-25', 'Sales Intern', 16),
(19, 'Liam', 'Adams', 'liam.adams@example.com', '+1876543219', 'San Antonio', 'USA', 'Male', '1987-04-28', '2022-08-30', 'Sales Intern', 16),
(20, 'Sophie', 'Mitchell', 'sophie.mitchell@example.com', '+1987654321', 'Orlando', 'USA', 'Female', '1991-11-12', '2022-09-05', 'Sales Intern', 17);

-- CREATE CATEGORY TABLE
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255),
    ParentCategoryID INT,
    Description TEXT
);

-- INSERT DATA
INSERT INTO Category (CategoryID, CategoryName, ParentCategoryID, Description) VALUES
(1, 'Electronics', NULL, 'Category for electronic devices and accessories'),
(2, 'Clothing', NULL, 'Category for clothing and apparel'),
(3, 'Home Appliances', NULL, 'Category for home appliances and gadgets'),
(4, 'Books', NULL, 'Category for books and reading materials'),
(5, 'Electronics Accessories', 1, 'Accessories for electronic devices'),
(6, 'Men''s Clothing', 2, 'Clothing items for men'),
(7, 'Women''s Clothing', 2, 'Clothing items for women'),
(8, 'Kitchen Appliances', 3, 'Appliances for kitchen and cooking'),
(9, 'Fiction Books', 4, 'Books belonging to the fiction genre'),
(10, 'Non-Fiction Books', 4, 'Books belonging to the non-fiction genre'),
(11, 'Mobile Phones', 1, 'Category for mobile phones and smartphones'),
(12, 'Laptops', 1, 'Category for laptops and notebooks'),
(13, 'T-Shirts', 6, 'Casual t-shirts for men'),
(14, 'Dresses', 7, 'Dresses for women'),
(15, 'Refrigerators', 3, 'Refrigeration appliances for homes'),
(16, 'Cookware', 3, 'Cooking utensils and cookware'),
(17, 'Mystery Books', 9, 'Books belonging to the mystery genre'),
(18, 'Biographies', 10, 'Biographical books about famous personalities'),
(19, 'Headphones', 5, 'Audio headphones and earphones'),
(20, 'Tablets', 1, 'Tablets and portable computing devices');

-- CREATE SUPPLIERS TABLE
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    Country VARCHAR(50)
);


-- INSERT DATA
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Email, PhoneNumber, Address, Country) VALUES
(1, 'ABC Electronics', 'John Smith', 'john.smith@abcelectronics.com', '+1234567890', '123 Main Street, New York', 'USA'),
(2, 'Fashion Trends', 'Emily Brown', 'emily.brown@fashiontrends.com', '+1987654321', '456 Fashion Avenue, Los Angeles', 'USA'),
(3, 'Kitchen Essentials Co.', 'Michael Johnson', 'michael.johnson@kitchenessentials.com', '+1654321987', '789 Culinary Lane, Chicago', 'USA'),
(4, 'Book House Publishers', 'Sarah Miller', 'sarah.miller@bookhouse.com', '+1765432198', '321 Library Road, Boston', 'USA'),
(5, 'Tech Gadgets Ltd.', 'Daniel White', 'daniel.white@techgadgets.com', '+1876543219', '567 Innovation Drive, San Francisco', 'USA'),
(6, 'Home Appliances Inc.', 'Jessica Lee', 'jessica.lee@homeappliances.com', '+1321987654', '987 Home Avenue, Miami', 'USA'),
(7, 'Fashion Kingdom', 'Olivia Lopez', 'olivia.lopez@fashionkingdom.com', '+1234567890', '246 Style Street, Dallas', 'USA'),
(8, 'Read & Relax Books', 'Nathan Carter', 'nathan.carter@readrelaxbooks.com', '+1543219876', '654 Reading Road, Philadelphia', 'USA'),
(9, 'Tech Supplies Hub', 'James Anderson', 'james.anderson@techsupplies.com', '+1987654321', '321 Tech Street, Seattle', 'USA'),
(10, 'Fashion World', 'Sophia Garcia', 'sophia.garcia@fashionworld.com', '+1654321987', '987 Fashion Avenue, Miami', 'USA'),
(11, 'Kitchen Essentials Ltd.', 'David Martinez', 'david.martinez@kitchenessentials.com', '+1765432198', '789 Cook Street, Chicago', 'USA'),
(12, 'Books R Us', 'Isabella Allen', 'isabella.allen@booksrus.com', '+1876543219', '123 Book Lane, Los Angeles', 'USA'),
(13, 'Gadget Zone', 'Jackson Scott', 'jackson.scott@gadgetzone.com', '+1321987654', '456 Tech Road, San Francisco', 'USA'),
(14, 'Home Comforts Inc.', 'Charlotte Green', 'charlotte.green@homecomforts.com', '+1234567890', '987 Comfort Street, Dallas', 'USA'),
(15, 'Fashion Avenue', 'Liam Adams', 'liam.adams@fashionavenue.com', '+1543219876', '246 Trendy Lane, Seattle', 'USA'),
(16, 'Electronics Unlimited', 'Ava King', 'ava.king@electronicsunlimited.com', '+1987654321', '321 Tech Avenue, Miami', 'USA'),
(17, 'Bookworms Co.', 'Mia Clark', 'mia.clark@bookworms.com', '+1654321987', '123 Reader Road, Chicago', 'USA'),
(18, 'Tech Innovations', 'Ethan Lewis', 'ethan.lewis@techinnovations.com', '+1765432198', '456 Innovation Street, San Francisco', 'USA'),
(19, 'Home Decor Haven', 'William Wilson', 'william.wilson@homedecor.com', '+1876543219', '789 Decor Avenue, Dallas', 'USA'),
(20, 'Book Lovers Paradise', 'Emma Davis', 'emma.davis@booklovers.com', '+1321987654', '246 Book Street, Los Angeles', 'USA');
