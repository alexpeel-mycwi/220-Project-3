-- Create Database
USE master;
DROP DATABASE [IF EXISTS] disk_inventory;
CREATE DATABASE disk_inventory;

USE disk_inventory;

-- Create Tables
CREATE TABLE CD_type (
  type_ID INT PRIMARY KEY IDENTITY,
  type    VARCHAR(15) NOT NULL,
)

CREATE TABLE CD (
  CD_ID     INT PRIMARY KEY IDENTITY,
  type_ID      INT         NOT NULL REFERENCES CD_type (type_ID),
  title        VARCHAR(50) NOT NULL,
  status       VARCHAR(15) NOT NULL,
  release_year CHAR(4)
)

CREATE TABLE Artist (
  Artist_ID INT PRIMARY KEY IDENTITY,
  type_ID        INT         NOT NULL,
  first_name     VARCHAR(50) NOT NULL,
  last_name      VARCHAR(50)
)

CREATE TABLE CD_Artist (
  CD_ID        INT REFERENCES CD (CD_ID),
  Artist_ID INT REFERENCES Artist (Artist_ID),
  UNIQUE (CD_ID, Artist_ID)
)

CREATE TABLE Borrower (
  Borrower_ID INT PRIMARY KEY IDENTITY,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL
)

CREATE TABLE CD_Borrowed (
  CD_ID      INT REFERENCES CD (CD_ID),
  borrower_ID   INT REFERENCES borrower (borrower_ID),
  borrowed_date DATETIME NOT NULL,
  returned_date DATETIME,
  UNIQUE (CD_ID, borrower_ID, borrowed_date)
)

CREATE TABLE Genre_Type (
  type_ID INT PRIMARY KEY IDENTITY,
  type    VARCHAR(15) NOT NULL,
)

CREATE TABLE Genre (
  genre_ID     INT PRIMARY KEY IDENTITY,
  type_ID      INT REFERENCES genre_type (type_ID),
  name         VARCHAR(25) NOT NULL,
  parent_genre INT REFERENCES genre (genre_ID)
)

CREATE TABLE CD_genre (
  CD_ID INT REFERENCES CD (CD_ID),
  genre_ID INT REFERENCES genre (genre_ID),
  UNIQUE (CD_ID, genre_ID)
)