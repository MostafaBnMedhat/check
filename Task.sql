create table Customer1 
(
  	CustomerID int,
	Name varchar(50),
	Email varchar(50), 
	Address varchar(50),
	Phone varchar(50),
    primary key (CustomerID)
);
insert into Customer1 values 
  (1, 'Alice Smith', 'alice@email.com', '123 Main St', '123-456-7890'),
 (2, 'Bob Johnson', 'bob@email.com', '456 Oak Ave', '987-654-3210'),

 (3, 'Charlie Brown', 'charlie@email.com', '789 Elm St', '111-222-3333'),
 (4, 'David Lee', 'david@email.com', '321 Maple Dr', '444-555-6666'),
 (5, 'Eva Garcia', 'eva@email.com', '555 Pine Ave', '777-888-9999'),
 (6, 'Frank White', 'frank@email.com', '678 Walnut Ln', '333-222-1111'),
 (7, 'Grace Turner', 'grace@email.com', '901 Cedar St', '555-444-3333'),
 (8, 'Hannah Baker', 'hannah@email.com', '234 Birch Ave', '999-888-7777'),
 (9, 'Ian Foster', 'ian@email.com', '765 Spruce Dr', '222-333-4444'),
 (10, 'Jennifer Hall', 'jennifer@email.com', '543 Cherry Rd', '888-999-0000'), 
 (11, 'Kevin Young', 'kevin@email.com', '876 Oakwood Blvd', '777-666-5555'),
 (12, 'Lily Adams', 'lily@email.com', '432 Elmwood Ave', '666-777-8888'),
 (13, 'Mike Clark', 'mike@email.com', '789 Pinecone Ln', '444-333-2222'),
 (14, 'Nancy Green', 'nancy@email.com', '210 Maplewood Dr', '333-444-5555'),
 (15, 'Olivia King', 'olivia@email.com', '987 Cedarwood Dr', '222-111-0000'),
 (16, 'Paul Miller', 'paul@email.com', '654 Oakhurst Rd', '111-222-3333'),
 (17, 'Quinn Harris', 'quinn@email.com', '345 Pine Ridge', '999-888-7777'),
 (18, 'Rachel Scott', 'rachel@email.com', '543 Birchwood Ave', '888-777-6666'),
 (19, 'Sam Taylor', 'sam@email.com', '876 Elmwood Blvd', '777-666-5555'),
(20, 'Tina Wright', 'tina@email.com', '234 Spruceland Dr', '666-555-4444');
create table Product 

( 
  	ProductID int,
	Name varchar(50),
	Description varchar(50),
	Price int,
	StockQuantity int,
	primary key (ProductID)
);
insert into Product values 

 (101, 'T-Shirt', 'Cotton t-shirt, black', 19.99, 50        ),
 (102, 'Jeans', 'Blue denim jeans, slim fit', 39.99, 30     ),
 (103, 'Sneakers', 'White canvas sneakers', 29.99, 25       ),
 (104, 'Backpack', 'Nylon backpack, black', 49.99, 20       ),
 (105, 'Watch', 'Stainless steel watch, analog', 99.99, 15  ),
 (106, 'Dress', 'Floral print dress, knee-length', 59.99, 20),
 (107, 'Jacket', 'Leather jacket, brown', 79.99, 10         ),
 (108, 'Running Shoes', 'Mesh running shoes, red', 49.99, 25),
 (109, 'Hoodie', 'Cotton hoodie, gray', 34.99, 30           ),
 (110, 'Skirt', 'Pleated skirt, navy blue', 39.99, 25       ),
 (111, 'Sweater', 'Knit sweater, striped', 44.99, 20        ),
 (112, 'Blouse', 'Silk blouse, white', 29.99, 25            ),
 (113, 'Boots', 'Leather boots, black', 69.99, 15           ),
 (114, 'Scarf', 'Cashmere scarf, plaid', 24.99, 40          ),
 (115, 'Shorts', 'Cargo shorts, khaki', 19.99, 35           ),
 (116, 'Polo Shirt', 'Collared polo shirt, blue', 24.99, 30 ),
 (117, 'Sunglasses', 'Polarized sunglasses, aviator', 59.99, 20),
 (118, 'Handbag', 'Leather handbag, tan', 89.99, 15         ),
 (119, 'Earrings', 'Diamond stud earrings', 149.99, 10      ),
 (120, 'Necklace', 'Gold-plated necklace, pendant', 199.99, 5);
 create table Cart 
( 
  	CartID int,
	CustomerID int,
	CreationDate date,
	primary key (CartID),
	foreign key (CustomerID) REFERENCES Customer1 (CustomerID)

);
insert into Cart values 
(501, 1, '2023-11-23'),
(502, 2, '2023-11-22'),
(503, 3, '2023-11-21'),
(504, 4, '2023-11-20'),
(505, 5, '2023-11-19'),
(506, 6, '2023-11-18'),
(507, 7, '2023-11-17'),
(508, 8, '2023-11-16'),
(509, 9, '2023-11-15'),
(510, 10, '2023-11-14'),
(511, 11, '2023-11-13'),
(512, 12, '2023-11-12'),
(513, 13, '2023-11-11'),
(514, 14, '2023-11-10'),
(515, 15, '2023-11-09'),
(516, 16, '2023-11-08'),
(517, 17, '2023-11-07'),
(518, 18, '2023-11-06'),
(519, 19, '2023-11-05'),
(520, 20, '2023-11-04');
create table Order_table
(
OrderID int,
CustomerID int,
OrderDate date,
TotalAmount int,
primary key (OrderID),
foreign key (CustomerID) references Customer1 (CustomerID)
);
insert into Order_table values 
(701, 1, '2023-11-15', 39.98),
(702, 2, '2023-11-16', 109.97),
(703, 3, '2023-11-17', 59.97),
(704, 4, '2023-11-18', 99.99),
(705, 5, '2023-11-19', 149.97),
(706, 6, '2023-11-20', 119.98),
(707, 7, '2023-11-21', 179.97),
(708, 8, '2023-11-22', 89.99),
(709, 9, '2023-11-23', 169.97),
(710, 10, '2023-11-24', 259.95),
(711, 11, '2023-11-25', 219.96),
(712, 12, '2023-11-26', 129.98),
(713, 13, '2023-11-27', 299.94),
(714, 14, '2023-11-28', 69.97),
(715, 15, '2023-11-29', 249.95),
(716, 16, '2023-11-30', 159.96),
(717, 17, '2023-12-01', 119.97),
(718, 18, '2023-12-02', 199.95),
(719, 19, '2023-12-03', 189.96),
(720, 20, '2023-12-04', 279.94);
create table Order_Details
(
	OrderDetailID int ,
	OrderID int,
	ProductID int,
	Quantity int,
	UnitPrice int,
	primary key (OrderDetailID),
	foreign key (OrderID) references Order_table (OrderID),
	foreign key (ProductID) references Product (ProductID)
);
insert into Order_Details values 
(901, 701, 101, 2, 19.99),
(902, 702, 103, 1, 29.99),
(903, 702, 102, 3, 39.99),
(904, 703, 105, 1, 99.99),
(905, 704, 104, 1, 49.99),
(906, 706, 106, 2, 59.99),
(907, 706, 107, 1, 79.99),
(908, 707, 108, 3, 49.99),
(909, 708, 109, 2, 34.99),
(910, 709, 110, 3, 119.97),
(911, 710, 111, 2, 89.98),
(912, 711, 112, 1, 29.99),
(913, 711, 113, 1, 69.99),
(914, 712, 114, 4, 99.96),
(915, 713, 115, 3, 59.97),
(916, 714, 116, 1, 24.99),
(917, 715, 117, 2, 119.98),
(918, 716, 118, 1, 89.99),
(919, 717, 119, 2, 299.98),
(920, 718, 120, 1, 199.99);

--1
SELECT DISTINCT Name FROM Product;
--2
SELECT Address, COUNT(DISTINCT CustomerID) AS CustomerCount
FROM Customer1
GROUP BY Address;
--3
SELECT SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
--4
SELECT Name, AVG(Price) AS AveragePrice
FROM Product
GROUP BY Name;
--5
SELECT CustomerID, COUNT(OrderID) AS OrderCount
FROM Order_table
GROUP BY CustomerID;
--6
SELECT c.Name, SUM(ProductID) AS OrderTotal
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Customer1 c ON o.CustomerID = c.CustomerID
GROUP BY c.Name
--7
SELECT MIN(Price) AS MinimumPrice, MAX(Price) AS MaximumPrice
FROM Product;
--8
SELECT Top 5 p.Name, SUM(od.Quantity) AS TotalQuantityOrdered
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Product p ON od.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalQuantityOrdered DESC  ;
--9
SELECT Name
FROM Customer1
WHERE Name LIKE 'A%';
--10
SELECT COUNT(OrderID) AS OrderCount
FROM Order_table
WHERE OrderDate BETWEEN '2023-11-15'AND  '2023-12-04';
--11
SELECT p.Name, SUM(od.Quantity) AS TotalQuantitySold
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Product p ON od.ProductID = p.ProductID
GROUP BY p.Name;
--12
SELECT c.Name
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Customer1 c ON o.CustomerID = c.CustomerID
WHERE od.ProductID IN (101,103,105);
--13
SELECT COUNT(o.OrderID) AS OrderCount
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID

where od.OrderDetailID > 3;

--14
SELECT o.OrderID, AVG(SUM(od.Quantity)) AS AverageQuantityOrdered
FROM Order_table o
JOIN Order_Details od ON o.OrderID = od.OrderID
JOIN Customer1 c ON o.CustomerID = c.CustomerID
GROUP BY o.OrderID;
--15
SELECT Name  FROM Product WHERE Price between 50 AND 100 ;
--17
SELECT c.Address, COUNT(DISTINCT o.CustomerID) AS CustomerCount
FROM Customer1 c
JOIN Order_table o ON c.CustomerID = o.CustomerID
GROUP BY c.Address;

