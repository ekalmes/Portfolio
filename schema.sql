/* Database example for CS 314 - Fall 2020
Instructor: Andrew Shallue
Credit: design due to Abdu Alawini
*/

CREATE TABLE Drinks(
  name text,
  manufacture text
);

CREATE TABLE Cafe(
  name text,
  addr text,
  license float
);

CREATE TABLE Customers(
  cid int,
  name text,
  addr text,
  phone int
);

CREATE TABLE Likes(
  customer int,
  drink text,
  foreign key (customer) references Customers(cid)
);

CREATE TABLE Sells(
  cafe text,
  drink text,
  price int
);

CREATE TABLE Frequents(
  customer int,
  cafe text
);
