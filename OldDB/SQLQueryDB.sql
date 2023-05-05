USE master;
CREATE DATABASE AccountingOfArrival2;
USE AccountingOfArrival2;
CREATE TABLE Counterparties
(
    idCounterparty INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
	INN NVARCHAR(12),
	Address NVARCHAR(MAX)
);
CREATE TABLE TypesOfUsers
(
    idUserTypes INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NameType NVARCHAR(100)
);
CREATE TABLE Users
(
    idUser INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Photo IMAGE,
    Login NVARCHAR(100),
    Password NVARCHAR(50),
    Surname NVARCHAR(150),
    Name NVARCHAR(150),
    Patronymic NVARCHAR(150),
    DateOfBirthday DATE,
	idUserTypes INT REFERENCES TypesOfUsers (idUserTypes)
);
CREATE TABLE Goods (
	idGood int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    DrawingNumber NVARCHAR(MAX)
);
CREATE TABLE Nodes (
	idNode int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    DrawingNumber NVARCHAR(MAX),
    idGood INT REFERENCES Goods (idGood)
);
CREATE TABLE Details (
	idDetail int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    DrawingNumber NVARCHAR(MAX),
    idNode INT REFERENCES Nodes (idNode)
);
CREATE TABLE Materials (
	idMaterial int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    idDetail INT REFERENCES Details (idDetail)
);
CREATE TABLE Warehouses (
	idWarehouse INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    Address NVARCHAR(MAX)
);
CREATE TABLE StorageGoods (
	idStorage INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
    idGood INT REFERENCES Goods (idGood),
    Quantity INT
);
CREATE TABLE StorageNodes (
	idStorage INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
    idNode INT REFERENCES Nodes (idNode),
    Quantity INT
);
CREATE TABLE StorageDetails (
	idStorage INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
    idDetail INT REFERENCES Details (idDetail),
    Quantity INT
);
CREATE TABLE StorageMaterials (
	idStorage INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
    idMaterial INT REFERENCES Materials (idMaterial),
    Quantity INT
);
CREATE TABLE InvoicesOnArrival (
	idInvoice INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idCounterparty INT REFERENCES Counterparties (idCounterparty),
    idUser INT REFERENCES Users (idUser),
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
	DeliveryDate DATE
);
CREATE TABLE CompositionOfIncomingGoods (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idGood INT REFERENCES Goods (idGood),
    Quantity INT,
	PricePerUnit FLOAT
);
CREATE TABLE CompositionOfIncomingNodes (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idNode INT REFERENCES Nodes (idNode),
    Quantity INT,
	PricePerUnit FLOAT
);
CREATE TABLE CompositionOfIncomingDetails (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idDetail INT REFERENCES Details (idDetail),
    Quantity INT,
	PricePerUnit FLOAT
);
CREATE TABLE CompositionOfIncomingMaterials (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idMaterial INT REFERENCES Materials (idMaterial),
    Quantity INT,
	PricePerUnit FLOAT
);

--DROP DATABASE AccountingOfArrival2