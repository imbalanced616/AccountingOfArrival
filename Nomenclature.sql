USE master;
CREATE DATABASE Nomenclature;
USE Nomenclature;
CREATE TABLE Types (
	idType int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX)
);
CREATE TABLE Materials (
	idMaterial int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    DrawingNumber NVARCHAR(MAX),
    idType INT REFERENCES Types (idType)
);
CREATE TABLE Warehouses (
	idWarehouse INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    Address NVARCHAR(MAX)
);
CREATE TABLE Storage (
	idStorage INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idWarehouse INT REFERENCES Warehouses (idWarehouse),
    idMaterial INT REFERENCES Materials (idMaterial),
    Quantity INT
);
CREATE TABLE Hierarchy (
	idHierarchy INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idParent INT REFERENCES Materials (idMaterial),
    idChild INT REFERENCES Materials (idMaterial),
    Quantity INT
);

--DROP DATABASE Nomenclature