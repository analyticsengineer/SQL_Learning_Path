-- Creating a simple database for simple SQL Analysis 
-- Create the Orders table
CREATE TABLE Orders (
    order_number_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    product_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10, 2)
);

-- Insert 20 rows into Orders table
INSERT INTO Orders VALUES
(1, 1, 'John Doe', 101, 'Laptop', 1, 1200.00),
(2, 2, 'Jane Smith', 102, 'Smartphone', 2, 800.00),
(3, 3, 'Tom Brown', 103, 'Tablet', 1, 400.00),
(4, 4, 'Lucy Gray', 104, 'Monitor', 3, 900.00),
(5, 5, 'Mark White', 105, 'Keyboard', 5, 250.00),
(6, 6, 'Sarah Black', 106, 'Mouse', 4, 200.00),
(7, 7, 'Michael Green', 107, 'Printer', 2, 350.00),
(8, 8, 'Linda Blue', 108, 'Scanner', 1, 150.00),
(9, 9, 'Chris Red', 109, 'Headphones', 3, 180.00),
(10, 10, 'Patricia Yellow', 110, 'Speakers', 2, 220.00),
(11, 11, 'David Brown', 111, 'Webcam', 1, 130.00),
(12, 12, 'Susan White', 112, 'Hard Drive', 2, 400.00),
(13, 13, 'Kevin Black', 113, 'USB Drive', 10, 100.00),
(14, 14, 'Jessica Green', 114, 'Charger', 5, 125.00),
(15, 15, 'Paul Gray', 115, 'Router', 2, 250.00),
(16, 1, 'John Doe', 116, 'Modem', 1, 150.00),
(17, 2, 'Jane Smith', 117, 'Graphics Card', 1, 300.00),
(18, 3, 'Tom Brown', 118, 'RAM', 4, 320.00),
(19, 4, 'Lucy Gray', 119, 'Power Supply', 1, 100.00),
(20, 5, 'Mark White', 120, 'Motherboard', 1, 500.00);

-- Create the Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    company VARCHAR(100),
    sales_rep_id INT,
    amount DECIMAL(10, 2)
);

-- Insert 15 rows into Customer table
INSERT INTO Customer VALUES
(1, 'John Doe', 'ABC Corp', 1, 1500.00),
(2, 'Jane Smith', 'XYZ Inc', 2, 1100.00),
(3, 'Tom Brown', 'Tech Solutions', 3, 720.00),
(4, 'Lucy Gray', 'Innovate Ltd', 4, 1400.00),
(5, 'Mark White', 'Web Services', 5, 750.00),
(6, 'Sarah Black', 'Design Studio', 6, 680.00),
(7, 'Michael Green', 'Print Masters', 7, 910.00),
(8, 'Linda Blue', 'ScanTech', 8, 450.00),
(9, 'Chris Red', 'Audio Pros', 1, 180.00),
(10, 'Patricia Yellow', 'SoundWorks', 2, 220.00),
(11, 'David Brown', 'CamNet', 3, 130.00),
(12, 'Susan White', 'Storage Solutions', 4, 400.00),
(13, 'Kevin Black', 'DriveWorld', 5, 100.00),
(14, 'Jessica Green', 'PowerTech', 6, 125.00),
(15, 'Paul Gray', 'NetworkHub', 7, 250.00);

-- Create the Office table
CREATE TABLE Office (
    office_id INT PRIMARY KEY,
    city VARCHAR(100),
    region VARCHAR(100),
    target DECIMAL(10, 2),
    sales DECIMAL(10, 2)
);

-- Insert 6 rows into Office table
INSERT INTO Office VALUES
(1, 'New York', 'East', 5000.00, 4500.00),
(2, 'Los Angeles', 'West', 6000.00, 5800.00),
(3, 'Chicago', 'Midwest', 5500.00, 5300.00),
(4, 'Houston', 'South', 5200.00, 5100.00),
(5, 'Miami', 'Southeast', 4800.00, 4600.00),
(6, 'San Francisco', 'West', 6200.00, 6100.00);

-- Create the Sales Rep table
CREATE TABLE Sales_Rep (
    sales_rep_id INT PRIMARY KEY,
    sales_rep_name VARCHAR(100),
    office_id INT,
    quota DECIMAL(10, 2),
    sales_amount DECIMAL(10, 2)
);

-- Insert 8 rows into Sales Rep table
INSERT INTO Sales_Rep VALUES
(1, 'Alice Johnson', 1, 3000.00, 2900.00),
(2, 'Bob Williams', 2, 3200.00, 3100.00),
(3, 'Charlie Davis', 3, 3100.00, 3000.00),
(4, 'Diana Roberts', 4, 2800.00, 2700.00),
(5, 'Edward King', 5, 2600.00, 2500.00),
(6, 'Fiona Scott', 6, 3400.00, 3300.00),
(7, 'George Lewis', 1, 2500.00, 2400.00),
(8, 'Hannah Turner', 2, 2700.00, 2600.00);
