USE master;
CREATE DATABASE Nomenclature;
USE Nomenclature;
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

--DROP DATABASE AccountingOfArrival2