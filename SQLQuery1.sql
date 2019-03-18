CREATE DATABASE dbNuiLunchBox

USE dbNuiLunchBox

CREATE TABLE tblCustomer_Info
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [User_ID] VARCHAR(30) NULL, 
    [User_Passwd] VARCHAR(30) NULL, 
    [User_Name] VARCHAR(20) NULL, 
    [User_Email] VARCHAR(50) NULL, 
    [User_Mobile] VARCHAR(15) NULL,
)
SET IDENTITY_INSERT tblCustomer_Info OFF
INSERT INTO tblCustomer_Info VALUES ('Admin','Admin','Manager','default@NuiLunchbox.com','12345678')
SELECT User_ID FROM tblCustomer_Info
SELECT * FROM tblCustomer_Info
DELETE tblCustomer_Info where User_id='yye2942'

CREATE TABLE tblNoImage
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Group] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
)
SET IDENTITY_INSERT tblNoImage OFF
INSERT INTO tblNoImage VALUES ('NoImage1','0','./Files/NoMenu/NoMenu1.jpg')
INSERT INTO tblNoImage VALUES ('NoImage2','0','./Files/NoMenu/NoMenu2.jpg')
INSERT INTO tblNoImage VALUES ('NoImage3','0','./Files/NoMenu/NoMenu3.jpg')
INSERT INTO tblNoImage VALUES ('NoImage4','0','./Files/NoMenu/NoMenu4.jpg')
INSERT INTO tblNoImage VALUES ('NoImage5','0','./Files/NoMenu/NoMenu5.jpg')
INSERT INTO tblNoImage VALUES ('NoImage6','0','./Files/NoMenu/NoMenu6.jpg')
INSERT INTO tblNoImage VALUES ('NoImage7','0','./Files/NoMenu/NoMenu7.jpg')
INSERT INTO tblNoImage VALUES ('NoImage8','0','./Files/NoMenu/NoMenu8.jpg')
INSERT INTO tblNoImage VALUES ('NoImage9','0','./Files/NoMenu/NoMenu9.jpg')
INSERT INTO tblNoImage VALUES ('NoImage10','0','./Files/NoMenu/NoMenu10.jpg')
SELECT * FROM tblNoImage
DELETE tblNoImage
DROP TABLE tblNoImage

CREATE TABLE tblDisplayMenu
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Group] VARCHAR(10) NULL, 
	[Image_Path] VARCHAR(500) NULL, 
)
SET IDENTITY_INSERT tblDisplayMenu OFF
SELECT * FROM tblDisplayMenu
DELETE tblDisplayMenu
DROP TABLE tblDisplayMenu

CREATE TABLE tblSelectMenu
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Group] VARCHAR(10) NULL,  
)
SET IDENTITY_INSERT tblSelectMenu OFF
SELECT * FROM tblSelectMenu
DELETE tblSelectMenu

CREATE TABLE tblCartMenu
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Group] VARCHAR(10) NULL,  
	[Image_Path] VARCHAR(500) NULL, 
	[Menu_Count] VARCHAR(10) NULL,
	[Menu_Price] VARCHAR(10) NULL,
)
SET IDENTITY_INSERT tblCartMenu OFF
SELECT * FROM tblCartMenu
DELETE tblCartMenu

CREATE TABLE tblOrder
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[User_ID] VARCHAR(30) NULL,
    [Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Count] VARCHAR(10) NULL,
)
SET IDENTITY_INSERT tblOrder OFF
SELECT * FROM tblOrder
DELETE tblOrder

CREATE TABLE tblSalad
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblSalad OFF
SELECT * FROM tblSalad
DELETE tblSalad

CREATE TABLE tblRiceRoll
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblRiceRoll OFF
SELECT * FROM tblRiceRoll
DELETE tblRiceRoll

CREATE TABLE tblFullPackage
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL,  
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblFullPackage OFF
SELECT * FROM tblFullPackage
DELETE tblFullPackage

CREATE TABLE tblRice
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblRiceRoll OFF

CREATE TABLE tblSideDish
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblSideDish OFF
SELECT * FROM tblSideDish
DELETE tblSideDish

CREATE TABLE tblSandwich
(
	[Id]  INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Menu_Name] VARCHAR(30) NOT NULL,
	[Menu_Price] VARCHAR(10) NULL,
    [Image_Path] VARCHAR(500) NULL, 
	[Menu_Description] VARCHAR(500) NULL,
)
SET IDENTITY_INSERT tblSandwich OFF