--БД "Поставки" (AccountingOfArrival)
USE master;
CREATE DATABASE AccountingOfArrival;

USE AccountingOfArrival;
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
CREATE TABLE InvoicesOnArrival (
	idInvoice INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idCounterparty INT REFERENCES Counterparties (idCounterparty),
    idUser INT REFERENCES Users (idUser),
	DeliveryDate DATE,
	DistributedInvoice BIT
);
CREATE TABLE CompositionsOfInvoice (
	idComposition INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    idInvoice INT REFERENCES InvoicesOnArrival (idInvoice),
    idMaterial INT,
    Quantity INT,
	PricePerUnit FLOAT
);

--DROP DATABASE AccountingOfArrival