USE master;
CREATE DATABASE AccountingOfArrival3;
USE AccountingOfArrival3;
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
CREATE TABLE TypesOfMaterials
(
    idTypeOfMaterial INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100)
);
CREATE TABLE InvoicesOnArrival (
	idInvoice INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idCounterparty INT REFERENCES Counterparties (idCounterparty),
    idUser INT REFERENCES Users (idUser),
    idWarehouse INT,
	DeliveryDate DATE
);
CREATE TABLE CompositionsOfInvoice (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idMaterial INT,
    idTypeOfMaterial INT REFERENCES TypesOfMaterials (idTypeOfMaterial),
    Quantity INT,
	PricePerUnit FLOAT
);

--DROP DATABASE AccountingOfArrival