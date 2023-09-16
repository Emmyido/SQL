use kangaroo
 CREATE TABLE CUSTOMER (
  CustomerID int NOT NULL,
  LastName varchar(50) NOT NULL,
  FirstName varchar(25) NOT NULL,
  Email varchar(255) NOT NULL,
  PhoneNumber INT NOT NULL,
  PRIMARY KEY (CustomerID)); 
  SELECT *
  FROM CUSTOMER;

  CREATE TABLE Drivers (DriverID int NOT NULL AUTO_INCREMENT,
  Name varchar(255) NOT NULL,
  Salary int NOT NULL, Email varchar(255) NOT NULL, Manager varchar(255) NOT NULL,
  DrivingLicenseNumber varchar(255) NOT NULL,
  IssueDate date NOT NULL,
  CountryOfIssue varchar(255) NOT NULL,
  ExpiryDate date NOT NULL,
  PRIMARY KEY (DriverID)      );
SELECT *
FROM DRIVERS;

-- Create Restaurants table
CREATE TABLE Restaurants (
  RestaurantID int NOT NULL AUTO_INCREMENT,
  RestaurantName varchar(255) NOT NULL,
  Address varchar(255) NOT NULL,
  PRIMARY KEY (RestaurantID)
);
SELECT *
FROM Restaurants


-- Create Orders table
CREATE TABLE Orders (
  OrderID int NOT NULL AUTO_INCREMENT,
  OrderDate date NOT NULL,
  CustomerID int NOT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE
);
SELECT *
FROM ORDERS



-- Create Orders table
CREATE TABLE Orders (
  OrderID int NOT NULL,
  OrderDate date NOT NULL,
  CustomerID int NOT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) 
  REFERENCES Customers(CustomerID) ON DELETE CASCADE
);



-- Create Order Details table
CREATE TABLE OrderDetails (
  OrderID int NOT NULL,
  ItemID int NOT NULL,
  Quantity int NOT NULL,
  PRIMARY KEY (OrderID, ItemID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID) ON DELETE CASCADE
);
SELECT *
FROM OrderDetails

-- Create Items table
CREATE TABLE Items (
  ItemID int NOT NULL AUTO_INCREMENT,
  ItemName varchar(255) NOT NULL,
  ItemPrice int NOT NULL,
  Category varchar(255) NOT NULL,
  PRIMARY KEY (ItemID)
);
select *
from items

-- Create Vehicle table
CREATE TABLE Vehicle (
  DriverID int NOT NULL,
  RegistrationNumber varchar(255) NOT NULL,
  Colour varchar(255) NOT NULL,
  DateOfPurchase date NOT NULL,
  EngineSize int NOT NULL,
  PRIMARY KEY (DriverID),
  FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID) ON DELETE CASCADE
  );
  Select * from Vehicle

-- Create Item Prices table
CREATE TABLE ItemPrices (
  ItemID int NOT NULL,
  RestaurantID int NOT NULL,
  Price int NOT NULL,
  PRIMARY KEY (ItemID, RestaurantID),
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID) ON DELETE CASCADE,
  FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID) ON DELETE CASCADE
);
SELECT * FROM ItemPrices


INSERT INTO CUSTOMER
 VALUES  (101,	'MASON',	'JOHN',	'MJ@LIVE.COM',	078223456);
INSERT INTO CUSTOMER (CustomerID , LastName , FirstName ,Email ,PhoneNumber)
VALUES	
(102,	"FAN",	"ALANDRO",	"MUSI@GMAIL.COM",	077865438),
(103,	"VITUS",	"VANDU",	"VSQUARE@YAHOO.COM",	076345679),
(104,	"EMPITO",	"ITALINO",	"EMT@GMAIL.COM",	073453228),
(105,	"OLA",	"ABDUL",	"ONTO@HOTMAIL.COM",	072345987),
(106,	"TRUMP",	"BIDEN",	"TB@YAHOO.COM",	0732334564),
(107,	"IBRO",	"GOLD",	"GOLD@GMAIL.COM",	074568794),
(108,	"FISH",	"DRINKWATER",	"MKV@GMAIL.COM",	0734567654),
(109,	"DANNY",	"BELLS",	"BELLSDAN@LIVE.COM",	075654323),
(110,	"JAOU",	"ALLANS",	"JA@GMAILCOM", 072345678)
;





INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(123,	'EMMI SANS',	'5230',	'EMS@GMAIL.COM',	'BINU KAYS',	'23456AQ',	'2019-12-12',	'ENGLAND',	'2024-12-11')

INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(124,	'CHUKWU FRED',	'6432',	'FRED@GMAIL.COM',	'ALFRED KENNEDY',	'23124BC',	'2018-05-08',	'ENGLAND',	'2023-05-07')
INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(125,	'SHAYS DATFORD',	'5233',	'SHAYS@GMAIL.COM',	'ALFRED KENNEDY',	'98763DF',	'2021-10-20',	'ENGLAND',	'2026-10-19')
INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(126,	'Richmond may',	'5450',	'May@gmail.com',	'ERIC TAG',	'20203RC',	'2021-01-20', 'ENGLAND',	'2026-01-13')
INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(127,	'CHESTER STAURT',	'4890',	'CST@GMAIL.COM',	'BINU KAYS',	'34567KL',	'2019-10-31',	'ENGLAND',	'2024-10-20')
INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(128,	'ELIZABETH MASON',	'5890',	'MASON@LIVE.COM',	'ERIC TAG',	'49845HH',	'2020-02-01',	'ENGLAND',	'2025-01-31')
;
INSERT INTO DRIVERS (DriverID,  Name, Salary, Email, Manager, DrivingLicenseNumber, IssueDate, CountryOfIssue, ExpiryDate)
VALUES
(129,	'JOHN STONE',	'6757',	'STONE@LIVE.COM',	'RASHFORD MANT',	'89797MN',	'2019-08-08',	'ENGLAND', '2024-08-07'),
(130,	'JIGAWA SHINZU',	'7854',	'JS@YAHOOMAIL.COM',	'BINU KAYS',	'89793KK', '2020-08-06',	'ENGLAND', '2025-08-05'),
(131,	'NORTH WEST',	'5590',	'WENO@GMAIL.COM',	'ERIC TAG',	'23490LO',	'2021-01-05',	'ENGLAND', '2026-01-04'),
(132,	'WALTER NINJA', '4564',	'NINJA@GMAIL.COM',	'RASHFORD MANT',	'65432BR', '2021-09-13',		'ENGLAND', '2026-09-12');



INSERT INTO Restaurants (RestaurantID, RestaurantName, Address)
VALUES
(1001,	'LEWISHAM GRILL',	'SE24 5GB'),
(1002,	'LESCOTT EAT',	'GA24 7HN'),
(1003,	'AMADI LICK&CHOPS',	'MN23 7BN');

INSERT INTO Restaurants (RestaurantID, RestaurantName, Address)
VALUES
(1004,	'DARTFORD EAT',	'NR12 23TR'),
(1005,	'LONDON RESTAURANT',	'E1 5YI'),
(1006,	'FT FINGER BITE',	'TR45 3RH'),
(1007,	'BET CHOPS',	'SE76 4TH'),
(1008,	'CHI CHI FOODS',	'SM34 9PP'),
(1009,	'O2 FAST GRILL',	'YT60 6TT'),
(1010,	'BOW BAR AND FOOD',	'EE2 4RF');





INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES
(1111,	'2021-03-03',	101),
(1121,	'2021-04-03',	102),
(1131,	'2021-03-06',	103),
(1141,	'2021-03-08',	104),
(1151,	'2021-03-15',	105);
INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES
(1161,	'2021-03-18',	106),
(1171,	'2021-03-19',	107),
(1181,	'2021-03-25',	108),
(1191,	'2021-03-26',	109),
(1201,	'2021-03-28',	110),
(1211,	'2021-03-29',	109),
(1221,	'2021-03-29',	101),
(1231,	'2021-03-30',	110),
(1241,	'2021-03-30',	108),
(1251,	'2021-03-03',	106)
;

INSERT INTO OrderDetails (OrderID, ItemID, Quantity)
VALUES
(1111,	1102,	1),
(1121,	1103,	2),
(1131,	1104,	1),
(1141,	1105,	4),
(1151,	1111,	2),
(1161,	1106,	3),
(1171,	1107,	4),
(1181,	1108,	2),
(1191,	1109,	1),
(1201,	1110,	2),
(1211,	1103,	3),
(1221,	1104,	2),
(1231,	1105,	2),
(1241,	1111,	1),
(1251,	1106,	3);


INSERT INTO Items (ItemID, ItemName, ItemPrice, Category)
VALUES 
(1102,	'GELATO ICE CREAM',	'10',	'DESERT')
INSERT INTO Items (ItemID, ItemName, ItemPrice, Category)
VALUES 
(1103,	'RICE AND SAUCE',	'12',	'MAIN COURSE'),
(1104,	'CHICKEN WINGS',	'8',	'STARTER'),
(1105,	'PAPRIKA RICE AND TURKEY',	'13',	'MAIN COURSE'),
(1111,	'ONIONED SAUCE AND JOLLOF RICE',	'7',	'MAIN COURSE'),
(1106,	'STRAWBERRY CREAM',	'8',	'DESERT'),
(1107,	'WHOLEMILK ICE CREAM',	'5',	'STARTER'),
(1108,	'MOCKTAIL AND CHICKEN WINGS',	'9',	'STARTER'),
(1109,	'SALTED PEANUTS AND TURKEY',	'5',	'STARTER'),
(1110,	'MOI MOI',	'6',	'MAIN COURSE')
	;		
    
 INSERT INTO Vehicle ( DriverID, RegistrationNumber, Colour, DateOfPurchase, EngineSize)   
VALUES
(123,	12344,	'RED',	'2018-12-12',	10001),
(124,	98762,	'BLACK',	'2019-09-12',	10002),
(125,	90876,	'GREY',	'2020-08-03',	10002),
(126,	83736,	'WHITE',	'2020-09-09',	10004),
(127,	82723,	'BLUE',	'2021-04-14',	10001),
(128,	72625,	'BROWN',	'2018-05-03',	10005)
;
INSERT INTO Vehicle ( DriverID, RegistrationNumber, Colour, DateOfPurchase, EngineSize)   
VALUES
(129,	'98768',	'ORANGE', '2019-04-04',	'10005'),
(130,	'23345',	'YELLOW',	'2020-08-09',	'10003'),
(131,	'67890',	'PINK',	'2021-08-07',	'10003'),
(132,	'28908',	'PURPLE',	'2021-12-12',	'10004');



INSERT INTO ItemPrices (ItemID,  RestaurantID,  Price)
VALUES
(1102,	1001,	10),
(1103,	1002,	12),
(1104,	1003,	8),
(1105,	1002,	13),
(1111,	1001,	7),
(1106,	1001,	8),
(1107,	1002,	5),
(1108,	1003,	9),
(1109,	1002,	5),
(1110,	1003,	6);

SELECT *
FROM Items
WHERE Category = 'MAIN COURSE'
ORDER BY ItemName ASC;

SELECT *
FROM Drivers
WHERE CarColor = 'Blue';

SELECT *
FROM Drivers
JOIN Vehicle ON Drivers.DriverID = Vehicle.DriverID;

SELECT *
FROM Vehicle
WHERE Colour LIKE '%blue%' ;
