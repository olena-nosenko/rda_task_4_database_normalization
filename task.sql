-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Warehouse (
    ID INT AUTO_INCREMENT,
    WarehouseName VARCHAR(50),
    WarehouseAmount INT,
    WarehouseAddress VARCHAR(100), 
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    ProductName VARCHAR(50),
    CountryID INT,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE CASCADE,
    WarehouseID INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID) ON DELETE CASCADE,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Countries (Name)
	VALUES ('Country1');
INSERT INTO Countries (Name)
	VALUES ('Country2');

INSERT INTO Warehouse (WarehouseName, WarehouseAmount, WarehouseAddress)
    VALUES('ATB', 1000, 'Ukraine, Dnipro, Naberegna Zavodska 93');
INSERT INTO Warehouse (WarehouseName, WarehouseAmount, WarehouseAddress)
    VALUES('Silpo', 5000, 'Latviya, Riga, Prospect Mega 17');
    
INSERT INTO ProductInventory (ProductName, CountryID, WarehouseID)
	VALUES ('AwersomeProduct', 1, 1);
INSERT INTO ProductInventory (ProductName, CountryID, WarehouseID)
	VALUES ('AwersomeProduct', 2, 2);