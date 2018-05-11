DROP DATABASE QAC_SHOP_XQ9X3WV31;

CREATE DATABASE QAC_SHOP_XQ9X3WV31;
SHOW DATABASES;
USE QAC_SHOP_XQ9X3WV31;

CREATE TABLE Vendor_XQ9X3WV31 (
	vendorID 		INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, /* PK */
	name 			VARCHAR(32),
	vendorType 		VARCHAR(32),
	phoneNumber 	VARCHAR(10),
	address 		VARCHAR(32),
	postalCode 		VARCHAR(4)
);

CREATE TABLE Customer_XQ9X3WV31 (
	customerID 		INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, /* PK */
	name 			VARCHAR(32),
	customerType 	VARCHAR(32),
	phoneNumber 	VARCHAR(10),
	address 		VARCHAR(32),
	postalCode 		VARCHAR(4)
);

CREATE TABLE Inventory_XQ9X3WV31 (
	itemID 			INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, /* PK */
	itemType 		VARCHAR(32),
	description 	VARCHAR(128),
	pricePerUnit 	FLOAT,
	markup		 	FLOAT,
	numberInStock 	INTEGER,
	itemSize 		INTEGER NULL,
	colour 			VARCHAR(16) NULL,
	stockLimit 		INTEGER,
	vendor  		INTEGER,
	
	FOREIGN KEY (vendor) /* FK */
    REFERENCES Vendor_XQ9X3WV31(vendorID)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Sale_XQ9X3WV31 (
	saleID 			INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, /* PK */
	dateOfSale 		DATE,
	customer 		INTEGER,

	FOREIGN KEY (customer) /* FK */
    REFERENCES Customer_XQ9X3WV31(customerID)
    ON UPDATE CASCADE ON DELETE CASCADE	
);

CREATE TABLE Sale_Item_XQ9X3WV31 (
	saleID 			INTEGER NOT NULL, /* PK */
	itemID 			INTEGER NOT NULL, /* PK */
	numberPurchesed INTEGER,

	PRIMARY KEY(saleID, itemID),
	
	FOREIGN KEY (saleID) /* FK */
    REFERENCES Sale_XQ9X3WV31(saleID)
    ON UPDATE CASCADE ON DELETE CASCADE,
	
	FOREIGN KEY (itemID) /* FK */
    REFERENCES Inventory_XQ9X3WV31(itemID)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE StockOrder (
	orderID		 	INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, /* PK */
	orderDate 		DATE,
	itemID 			INTEGER,
	
	FOREIGN KEY (itemID) /* FK */
    REFERENCES Inventory_XQ9X3WV31(itemID)
    ON UPDATE CASCADE ON DELETE CASCADE	
);

SHOW TABLES;

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode)
VALUES ('Valint & Balk', 'distributor', '0826776601', '56 Main Road', '7975');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('E-Corp', 'wholeSale_XQ9X3WV31r', '0826756601', '76 Hill Street', '2343');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Sam Jacobs', 'individual', '0218954842', '73 Berg Street', '6456');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Bob MacDavid', 'individual', '0826456601', '45 Berg Street', '6456');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Shavon Custard', 'individual', '0837991047', '10 East Street', '8069');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode)
VALUES ('Rebekah Veal', 'individual', '0796471078', '78 Harrison Avenue', '0232');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Elmer Triplett', 'individual', '0794221043', '62 Devonshire Drive', '6523');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Elton Beauchesne', 'individual', '0793171012', '28 Cypress Court', '5411');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Anibal Alsop', 'individual', '0794501014', '32 Pine Street', '4538');

INSERT INTO Vendor_XQ9X3WV31 (name, vendorType, phoneNumber, address, postalCode) 
VALUES ('Isaura Brumfield', 'individual', '0831651082',  '62 Devonshire Drive', '5621');


INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Joe Soap', 'Indvidual', '0217824465', '53 Main Road', '7974');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Anibal Alsop', 'Indvidual', '0794501014', '60 Chestnut Street', '3454'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Andre Brumm', 'Indvidual', '0795091027', '65 Cross Street', '5434'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Tomoko Ringgold', 'Indvidual', '0831701054', '97 Hartford Road', '2343'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Sherise Fagin', 'Indvidual', '0796611068', '76 Brown Street', '6657'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Emmett Hausmann', 'Indvidual', '0794201068', '7 King Street', '2433'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Margarita Culpepper', 'Indvidual', '0839691029', '46 Route 100', '4234'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Owen Hersh', 'Indvidual', '0837591013', '71 Hillside Avenue', '4645'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Jean Villani', 'Indvidual', '0799531014', '97 Deerfield Drive', '8978'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Luna Mulkey', 'Indvidual', '0838811032', '86 Grove Street', '2343'); 

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Mikes B&B', 'B&B', '0834811032', '45 Grove Street', '2253');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Bed with Sally', 'B&B', '0838816732', '44 Adam Street', '2353');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Vally Stop', 'B&B', '0728841032', '67 Heney Street', '7746');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Darell Um', 'Interior Designer', '0834819364', '24 Street West', '5536');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Matthew Rank', 'Interior Designer', '0835624732', '67 New Street', '5252');

INSERT INTO Customer_XQ9X3WV31 (name, customerType, phoneNumber, address, postalCode) 
VALUES ('Rodolfo Mose', 'Interior Designer', '0746241032', '78 Harrison Avenue', '2413');


INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'Victorian coin collection', 95, 10, 1, null, null, 0, 3);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'assorted coin collection', 52, 25, 1, null, null, 0, 3);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'wizard of Oz original printing', 44, 45, 1, null, null, 0, 3);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'vintage car', 500, 25, 1, null, null, 0, 4);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'Chair and table set', 50, 125, 1, null, null, 0, 4);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'old lamp', 52, 10, 1, null, null, 0, 4);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'Spanish  coin collection', 60, 30, 1, null, null, 0, 4);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('antique', 'wooden lamp', 52, 10, 1, null, null, 0, 4);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('new item', 'table cloth', 78, 65, 20, 2, 'black', 5, 1);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('new item', 'table cloth', 8, 125, 20, 3, 'green', 5, 1);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('new item', 'table cloth', 57, 30, 20, 2, 'white', 5, 1);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('new item', 'table cloth', 20, 30, 20, 5, 'brown', 5, 2);

INSERT INTO Inventory_XQ9X3WV31 (itemType, description, pricePerUnit, markup, numberInStock, itemSize, colour, stockLimit, vendor) 
VALUES ('new item', 'table cloth', 60, 45, 20, 2, 'brown', 1, 2);


INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-05-25', 1);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2017-03-05', 2);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-06-30', 1);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2010-01-01', 1);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2015-11-30', 2);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2015-11-30', 2);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2013-03-03', 3);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2013-01-25', 4);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2016-02-23', 3);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2013-05-25', 5);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-12-16', 6);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2015-05-30', 7);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-11-26', 8);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2010-05-17', 9);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2001-11-09', 10);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2003-07-28', 11);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-02-25', 12);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2009-12-26', 13);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2014-02-04', 14);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2011-12-23', 15);

INSERT INTO Sale_XQ9X3WV31 (dateOfSale, customer) 
VALUES ('2006-11-20', 16);


INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (1, 9, 5);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (2, 13, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (4, 10, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (3, 11, 7);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (5, 13, 6);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (7, 10, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (6, 11, 3);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (5, 12, 6);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (6, 9, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (7, 10, 4);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (7, 13, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (7, 12, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (8, 10, 3);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (9, 9, 4);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (10, 13, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (11, 11, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (12, 13, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (12, 12, 3);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (13, 11, 4);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (13, 9, 2);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (14, 10, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (14, 1, 1);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (15, 10, 8);

INSERT INTO Sale_Item_XQ9X3WV31 (saleID, itemID, numberPurchesed) 
VALUES (16, 12, 1);

/* View Tables */ 
SELECT * FROM Vendor_XQ9X3WV31;
SELECT * FROM Customer_XQ9X3WV31;
SELECT * FROM Inventory_XQ9X3WV31;
SELECT * FROM Sale_XQ9X3WV31;
SELECT * FROM Sale_Item_XQ9X3WV31;
SELECT * FROM StockOrder_XQ9X3WV31;


/* Triggers */
delimiter //

CREATE TRIGGER Table2insert AFTER UPDATE ON Sale_Item_XQ9X3WV31 
FOR EACH ROW 
BEGIN
	UPDATE Inventory_XQ9X3WV31 SET numberInStock = numberInStock - NEW.numberPurchesed WHERE itemID = NEW.itemID;
END; //

delimiter ;
delimiter //

CREATE TRIGGER Table1insert AFTER UPDATE ON Inventory_XQ9X3WV31 
FOR EACH ROW 
BEGIN
    IF NEW.numberInStock<NEW.stockLimit THEN
		INSERT INTO StockOrder (orderDate, itemID) VALUES (NOW(), NEW.itemID);
    END IF;
END;//

delimiter ;
delimiter //

CREATE PROCEDURE generateBill_XQ9X3WV31(_saleID INTEGER) 
BEGIN 
	SELECT Inventory_XQ9X3WV31.description, Inventory_XQ9X3WV31.itemType, Inventory_XQ9X3WV31.itemSize, Inventory_XQ9X3WV31.colour 
	FROM Inventory_XQ9X3WV31 JOIN Sale_Item_XQ9X3WV31 ON Inventory_XQ9X3WV31.itemID = Sale_Item_XQ9X3WV31.itemID WHERE Sale_Item_XQ9X3WV31.saleID = _saleID;
	
	SELECT SUM(pricePerUnit + (pricePerUnit * (markup / 100))) AS 'Total Cost' 
	FROM Inventory_XQ9X3WV31 JOIN Sale_Item_XQ9X3WV31 ON Inventory_XQ9X3WV31.itemID = Sale_Item_XQ9X3WV31.itemID WHERE Sale_Item_XQ9X3WV31.saleID = _saleID;
END; //

delimiter ;
delimiter //

CREATE PROCEDURE checkAvalibility_XQ9X3WV31() 
BEGIN 
	SELECT description, colour, itemSize AS 'size', (pricePerUnit + (pricePerUnit * (markup / 100)))
	AS 'Cost per Unit', numberInStock FROM Inventory_XQ9X3WV31 WHERE numberInStock > 0;
END; //

delimiter ;
