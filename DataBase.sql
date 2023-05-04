USE [master]
GO
/****** Object:  Database [AccountingOfArrival2]    Script Date: 04.05.2023 10:20:53 ******/
CREATE DATABASE [AccountingOfArrival2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AccountingOfArrival2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\AccountingOfArrival2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AccountingOfArrival2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\AccountingOfArrival2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AccountingOfArrival2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccountingOfArrival2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AccountingOfArrival2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET ARITHABORT OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AccountingOfArrival2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AccountingOfArrival2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AccountingOfArrival2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AccountingOfArrival2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET RECOVERY FULL 
GO
ALTER DATABASE [AccountingOfArrival2] SET  MULTI_USER 
GO
ALTER DATABASE [AccountingOfArrival2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AccountingOfArrival2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AccountingOfArrival2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AccountingOfArrival2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AccountingOfArrival2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AccountingOfArrival2] SET QUERY_STORE = OFF
GO
USE [AccountingOfArrival2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AccountingOfArrival2]
GO
/****** Object:  Table [dbo].[CompositionOfIncomingDetails]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfIncomingDetails](
	[idComposition] [int] IDENTITY(1,1) NOT NULL,
	[idInvoice] [int] NULL,
	[idDetail] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComposition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompositionOfIncomingGoods]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfIncomingGoods](
	[idComposition] [int] IDENTITY(1,1) NOT NULL,
	[idInvoice] [int] NULL,
	[idGood] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComposition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompositionOfIncomingMaterials]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfIncomingMaterials](
	[idComposition] [int] IDENTITY(1,1) NOT NULL,
	[idInvoice] [int] NULL,
	[idMaterial] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComposition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompositionOfIncomingNodes]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfIncomingNodes](
	[idComposition] [int] IDENTITY(1,1) NOT NULL,
	[idInvoice] [int] NULL,
	[idNode] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComposition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counterparties]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counterparties](
	[idCounterparty] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[INN] [nvarchar](12) NULL,
	[Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCounterparty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[idDetail] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DrawingNumber] [nvarchar](max) NULL,
	[idNode] [int] NULL,
	[PricePerUnit] [float] NULL,
 CONSTRAINT [PK__Details__75EC3C065CF65A58] PRIMARY KEY CLUSTERED 
(
	[idDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[idGood] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DrawingNumber] [nvarchar](max) NULL,
	[PricePerUnit] [float] NULL,
 CONSTRAINT [PK__Goods__A4857E8BECD7ECEB] PRIMARY KEY CLUSTERED 
(
	[idGood] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoicesOnArrival]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoicesOnArrival](
	[idInvoice] [int] IDENTITY(1,1) NOT NULL,
	[idCounterparty] [int] NULL,
	[idUser] [int] NULL,
	[idWarehouse] [int] NULL,
	[DeliveryDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInvoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[idMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[idDetail] [int] NULL,
	[PricePerUnit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nodes]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nodes](
	[idNode] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DrawingNumber] [nvarchar](max) NULL,
	[idGood] [int] NULL,
	[PricePerUnit] [float] NULL,
 CONSTRAINT [PK__Nodes__AD40C026CE807269] PRIMARY KEY CLUSTERED 
(
	[idNode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageDetails]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageDetails](
	[idStorage] [int] IDENTITY(1,1) NOT NULL,
	[idWarehouse] [int] NULL,
	[idDetail] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idStorage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageGoods]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageGoods](
	[idStorage] [int] IDENTITY(1,1) NOT NULL,
	[idWarehouse] [int] NULL,
	[idGood] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idStorage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageMaterials]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageMaterials](
	[idStorage] [int] IDENTITY(1,1) NOT NULL,
	[idWarehouse] [int] NULL,
	[idMaterial] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idStorage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageNodes]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageNodes](
	[idStorage] [int] IDENTITY(1,1) NOT NULL,
	[idWarehouse] [int] NULL,
	[idNode] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idStorage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfUsers]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfUsers](
	[idUserTypes] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUserTypes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [image] NULL,
	[Login] [nvarchar](100) NULL,
	[Password] [nvarchar](50) NULL,
	[Surname] [nvarchar](150) NULL,
	[Name] [nvarchar](150) NULL,
	[Patronymic] [nvarchar](150) NULL,
	[DateOfBirthday] [date] NULL,
	[idUserTypes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 04.05.2023 10:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[idWarehouse] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idWarehouse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompositionOfIncomingDetails]  WITH CHECK ADD  CONSTRAINT [FK__Compositi__idDet__534D60F1] FOREIGN KEY([idDetail])
REFERENCES [dbo].[Details] ([idDetail])
GO
ALTER TABLE [dbo].[CompositionOfIncomingDetails] CHECK CONSTRAINT [FK__Compositi__idDet__534D60F1]
GO
ALTER TABLE [dbo].[CompositionOfIncomingDetails]  WITH CHECK ADD FOREIGN KEY([idInvoice])
REFERENCES [dbo].[InvoicesOnArrival] ([idInvoice])
GO
ALTER TABLE [dbo].[CompositionOfIncomingGoods]  WITH CHECK ADD  CONSTRAINT [FK__Compositi__idGoo__4BAC3F29] FOREIGN KEY([idGood])
REFERENCES [dbo].[Goods] ([idGood])
GO
ALTER TABLE [dbo].[CompositionOfIncomingGoods] CHECK CONSTRAINT [FK__Compositi__idGoo__4BAC3F29]
GO
ALTER TABLE [dbo].[CompositionOfIncomingGoods]  WITH CHECK ADD FOREIGN KEY([idInvoice])
REFERENCES [dbo].[InvoicesOnArrival] ([idInvoice])
GO
ALTER TABLE [dbo].[CompositionOfIncomingMaterials]  WITH CHECK ADD FOREIGN KEY([idInvoice])
REFERENCES [dbo].[InvoicesOnArrival] ([idInvoice])
GO
ALTER TABLE [dbo].[CompositionOfIncomingMaterials]  WITH CHECK ADD FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Materials] ([idMaterial])
GO
ALTER TABLE [dbo].[CompositionOfIncomingNodes]  WITH CHECK ADD FOREIGN KEY([idInvoice])
REFERENCES [dbo].[InvoicesOnArrival] ([idInvoice])
GO
ALTER TABLE [dbo].[CompositionOfIncomingNodes]  WITH CHECK ADD  CONSTRAINT [FK__Compositi__idNod__4F7CD00D] FOREIGN KEY([idNode])
REFERENCES [dbo].[Nodes] ([idNode])
GO
ALTER TABLE [dbo].[CompositionOfIncomingNodes] CHECK CONSTRAINT [FK__Compositi__idNod__4F7CD00D]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK__Details__idNode__2F10007B] FOREIGN KEY([idNode])
REFERENCES [dbo].[Nodes] ([idNode])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK__Details__idNode__2F10007B]
GO
ALTER TABLE [dbo].[InvoicesOnArrival]  WITH CHECK ADD FOREIGN KEY([idCounterparty])
REFERENCES [dbo].[Counterparties] ([idCounterparty])
GO
ALTER TABLE [dbo].[InvoicesOnArrival]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[InvoicesOnArrival]  WITH CHECK ADD FOREIGN KEY([idWarehouse])
REFERENCES [dbo].[Warehouses] ([idWarehouse])
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK__Materials__idDet__31EC6D26] FOREIGN KEY([idDetail])
REFERENCES [dbo].[Details] ([idDetail])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK__Materials__idDet__31EC6D26]
GO
ALTER TABLE [dbo].[Nodes]  WITH CHECK ADD  CONSTRAINT [FK__Nodes__idGood__2C3393D0] FOREIGN KEY([idGood])
REFERENCES [dbo].[Goods] ([idGood])
GO
ALTER TABLE [dbo].[Nodes] CHECK CONSTRAINT [FK__Nodes__idGood__2C3393D0]
GO
ALTER TABLE [dbo].[StorageDetails]  WITH CHECK ADD  CONSTRAINT [FK__StorageDe__idDet__3F466844] FOREIGN KEY([idDetail])
REFERENCES [dbo].[Details] ([idDetail])
GO
ALTER TABLE [dbo].[StorageDetails] CHECK CONSTRAINT [FK__StorageDe__idDet__3F466844]
GO
ALTER TABLE [dbo].[StorageDetails]  WITH CHECK ADD FOREIGN KEY([idWarehouse])
REFERENCES [dbo].[Warehouses] ([idWarehouse])
GO
ALTER TABLE [dbo].[StorageGoods]  WITH CHECK ADD  CONSTRAINT [FK__StorageGo__idGoo__37A5467C] FOREIGN KEY([idGood])
REFERENCES [dbo].[Goods] ([idGood])
GO
ALTER TABLE [dbo].[StorageGoods] CHECK CONSTRAINT [FK__StorageGo__idGoo__37A5467C]
GO
ALTER TABLE [dbo].[StorageGoods]  WITH CHECK ADD FOREIGN KEY([idWarehouse])
REFERENCES [dbo].[Warehouses] ([idWarehouse])
GO
ALTER TABLE [dbo].[StorageMaterials]  WITH CHECK ADD FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Materials] ([idMaterial])
GO
ALTER TABLE [dbo].[StorageMaterials]  WITH CHECK ADD FOREIGN KEY([idWarehouse])
REFERENCES [dbo].[Warehouses] ([idWarehouse])
GO
ALTER TABLE [dbo].[StorageNodes]  WITH CHECK ADD  CONSTRAINT [FK__StorageNo__idNod__3B75D760] FOREIGN KEY([idNode])
REFERENCES [dbo].[Nodes] ([idNode])
GO
ALTER TABLE [dbo].[StorageNodes] CHECK CONSTRAINT [FK__StorageNo__idNod__3B75D760]
GO
ALTER TABLE [dbo].[StorageNodes]  WITH CHECK ADD FOREIGN KEY([idWarehouse])
REFERENCES [dbo].[Warehouses] ([idWarehouse])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([idUserTypes])
REFERENCES [dbo].[TypesOfUsers] ([idUserTypes])
GO
USE [master]
GO
ALTER DATABASE [AccountingOfArrival2] SET  READ_WRITE 
GO
