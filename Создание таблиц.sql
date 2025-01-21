CREATE DATABASE ComputerShop;
USE ComputerShop;

CREATE TABLE Product
(
ProductID int primary key auto_increment,
Name varchar(50),
Description varchar(500),
Price int,
QuantityInStock int
);


CREATE TABLE Seller
(
SellerID int primary key auto_increment, 
FirstName varchar(50),
LastName varchar (50),
Email varchar (50),
Phone varchar (50)
);


CREATE TABLE Customer
(
CustomerID int primary key auto_increment, 
FirstName varchar(50),
LastName varchar (50),
Email varchar (50),
Phone varchar (50),
Address varchar (100)
);


CREATE TABLE Sale
(
SaleID int primary key auto_increment, 
SellerID int not null,
foreign key (SellerID)
references Seller (SellerID),
CustomerID int not null,
foreign key (CustomerID)
references Customer (CustomerID),
SaleDate date
);


CREATE TABLE SoldProduct
(
SoldProductID int primary key auto_increment, 
SaleID int not null,
foreign key (SaleID)
references Sale (SaleID),
ProductID int not null,
foreign key (ProductID)
references Product (ProductID),
Quantity int,
TotalPrice int
);

INSERT INTO Product (Name, Description, Price, QuantityInStock) VALUES 
('Laptop', 'High performance laptop', 800, 5),
('Desktop', 'Gaming desktop', 1200, 3),
('Mouse', 'Wireless mouse', 25, 20),
('Keyboard', 'Mechanical keyboard', 70, 15),
('Monitor', '27 inch monitor', 300, 7),
('Headphones', 'Noise cancelling headphones', 150, 10),
('Webcam', '1080p HD webcam', 60, 12),
('Microphone', 'USB microphone', 80, 8),
('Graphics Card', 'NVIDIA RTX 3080', 700, 2),
('SSD', '1TB SSD', 120, 10);
select * from Product;
INSERT INTO Seller (FirstName, LastName, Email, Phone) VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901'),
('Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012'),
('Bob', 'Brown', 'bob.brown@example.com', '456-789-0123'),
('Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234'),
('David', 'Wilson', 'david.wilson@example.com', '678-901-2345'),
('Eve', 'Martinez', 'eve.martinez@example.com', '789-012-3456'),
('Frank', 'Garcia', 'frank.garcia@example.com', '890-123-4567'),
('Grace', 'Lopez', 'grace.lopez@example.com', '901-234-5678'),
('Hank', 'Miller', 'hank.miller@example.com', '012-345-6789');
select * from Seller;
INSERT INTO Customer (FirstName, LastName, Email, Phone, Address) VALUES 
('Michael', 'Smith', 'michael.smith@example.com', '321-654-9870', '123 Elm St'),
('Sarah', 'Johnson', 'sarah.johnson@example.com', '432-765-8901', '456 Oak St'),
('Jessica', 'Williams', 'jessica.williams@example.com', '543-876-9012', '789 Pine St'),
('Daniel', 'Jones', 'daniel.jones@example.com', '654-987-0123', '101 Maple St'),
('Laura', 'Brown', 'laura.brown@example.com', '765-098-1234', '202 Birch St'),
('James', 'Davis', 'james.davis@example.com', '876-109-2345', '303 Cedar St'),
('Emily', 'Miller', 'emily.miller@example.com', '987-210-3456', '404 Walnut St'),
('David', 'Garcia', 'david.garcia@example.com', '098-321-4567', '505 Cherry St'),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '109-432-5678', '606 Ash St'),
('Lucas', 'Hernandez', 'lucas.hernandez@example.com', '210-543-6789', '707 Fir St');
select * from Customer;
INSERT INTO Sale (SellerID, CustomerID, SaleDate) VALUES 
(1, 1, '2013-05-04'),
(2, 2, '2018-09-07'),
(3, 3, '2019-08-12'),
(4, 4, '2015-05-11'),
(5, 5, '2020-09-09'),
(6, 6, '2021-10-10'),
(7, 7, '2022-08-08'),
(8, 8, '2023-11-01'),
(9, 9, '2024-12-03'),
(10, 10, '2025-01-01');
select * from Sale;
INSERT INTO SoldProduct (SaleID, ProductID, Quantity, TotalPrice) VALUES 
(1, 1, 1, 800),   -- Laptop
(1, 3, 2, 50),    -- Mouse
(2, 2, 1, 1200),  -- Desktop
(2, 4, 1, 70),    -- Keyboard
(3, 5, 1, 300),   -- Monitor
(3, 6, 1, 150),   -- Headphones
(4, 7, 1, 60),    -- Webcam
(4, 8, 1, 80),    -- Microphone
(5, 9, 1, 700),   -- Graphics Card
(5, 10, 2, 240);   -- SSD
select * from SoldProduct;


