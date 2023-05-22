--Creating the database
CREATE DATABASE Airline_Reservation_System_Group_1

USE Airline_Reservation_System_Group_1

--Creating tables in the database
CREATE TABLE dbo.Airline_Company
(
Company_ID varchar(25) NOT NULL PRIMARY KEY ,
Company_Name varchar(50) NOT NULL
);

CREATE TABLE dbo.Airplane_Specs
(
Airplane_Model varchar(25) NOT NULL PRIMARY KEY ,
Seating_Capacity integer NOT NULL,
Fuel_Type varchar(40)
);


CREATE TABLE dbo.Airplane
(
Airplane_No varchar(50) NOT NULL PRIMARY KEY ,
Company_ID varchar(25) NOT NULL
REFERENCES Airline_Company(Company_ID),
Airplane_Model varchar(25) NOT NULL
REFERENCES Airplane_Specs(Airplane_Model)
);


CREATE TABLE dbo.Airport
(
Airport_Code varchar(25) NOT NULL PRIMARY KEY ,
Airport_Name varchar(50) NOT NULL,
);


CREATE TABLE dbo.Airport_Address
(
Address_Code varchar(25) NOT NULL PRIMARY KEY ,
Airport_Code varchar(25) NOT NULL
REFERENCES Airport(Airport_Code),
Zip integer NOT NULL,
Location varchar(50) NOT NULL,
City varchar(50) NOT NULL,
State varchar(50) NOT NULL,
Country varchar(50) NOT NULL
);


CREATE TABLE dbo.Seat
(
Seat_ID varchar(25) NOT NULL PRIMARY KEY ,
Airplane_Model varchar(25) NOT NULL
REFERENCES Airplane_Specs(Airplane_Model),
Seat_No varchar(25) NOT NULL,
Availability varchar(25) Default'True',
Seat_Class varchar(25) NOT NULL
);


CREATE TABLE dbo.Traveller
(
Traveller_ID varchar(25) NOT NULL PRIMARY KEY ,
First_Name varchar (25) NOT NULL,
Last_Name varchar(25) NOT NULL,
Gender varchar(5) NOT NULL,
Phone integer NOT NULL,
Email varchar(25) NOT NULL
);

ALTER TABLE Traveller ALTER COLUMN Phone varchar(15);
ALTER TABLE Traveller ALTER COLUMN Gender varchar(15);
------------------------

CREATE TABLE dbo.Feedback
(
Feedback_ID varchar(25) NOT NULL PRIMARY KEY ,
Flight_Trip_ID varchar(25) NOT NULL,
Traveller_ID varchar(25) NOT NULL
REFERENCES Traveller(Traveller_ID),
Customer_First_Name varchar (25) NOT NULL,
Customer_Last_Name varchar(25) NOT NULL,
Customer_Rating varchar(25) NOT NULL
);


CREATE TABLE dbo.Flight_Trip
(
Flight_Trip_ID varchar(25) NOT NULL PRIMARY KEY ,
Traveller_ID varchar(25) NOT NULL 
REFERENCES Traveller(Traveller_ID),
Feedback_ID varchar(25) NOT NULL
REFERENCES Feedback(Feedback_ID),
Fare_ID varchar(25) NOT NULL 
REFERENCES Traveller(Traveller_ID),
No_of_Travellers integer NOT NULL,
Departure_Time datetime DEFAULT Current_Timestamp,
Arrival_Time datetime DEFAULT Current_Timestamp
);


ALTER TABLE Feedback drop CONSTRAINT FK_FlightTripFeedback 
--FOREIGN KEY (Flight_Trip_ID)
--REFERENCES Flight_Trip(Flight_Trip_ID)


CREATE TABLE dbo.Arrival
(
Arrival_ID varchar(25) NOT NULL PRIMARY KEY ,
Flight_Trip_ID varchar(25) NOT NULL
REFERENCES Flight_Trip(Flight_Trip_ID),
Arrival_Time datetime DEFAULT Current_Timestamp,
Arrival_Airport varchar(50) NOT NULL,
Arrival_Terminal varchar(25) NOT NULL,
Arrival_City varchar(25) NOT NULL
);

CREATE TABLE dbo.Departure
(
Departure_ID varchar(25) NOT NULL PRIMARY KEY ,
Flight_Trip_ID varchar(25) NOT NULL
REFERENCES Flight_Trip(Flight_Trip_ID),
Departure_Time datetime DEFAULT Current_Timestamp,
Departure_Airport varchar(50) NOT NULL,
Departure_Terminal varchar(25) NOT NULL,
Departure_City varchar(25) NOT NULL
);

CREATE TABLE dbo.Hop
(
Hop_ID varchar(25) NOT NULL PRIMARY KEY,
Distance int NOT NULL
);

CREATE TABLE dbo.Fare
(
Fare_ID varchar(25) NOT NULL PRIMARY KEY ,
Amount integer NOT NULL,
Tax varchar(25) NOT NULL,
Discount varchar(25) NOT NULL,
Currency Money NOT NULL
);
ALTER TABLE Fare ALTER COLUMN Amount Money  
ALTER TABLE Fare ALTER COLUMN Tax DECIMAL(5,2)
ALTER TABLE Fare ALTER COLUMN Discount DECIMAL(5,2)
ALTER TABLE Fare ALTER COLUMN Currency varchar(5)

CREATE TABLE dbo.Employee
(
Employee_ID integer NOT NULL PRIMARY KEY ,
Traveller_ID varchar(25) NOT NULL
REFERENCES Traveller(Traveller_ID),
First_Name varchar (25) NOT NULL,
Last_Name varchar(25) NOT NULL,
Phone varchar(25) NOT NULL,
Email varchar(25) NOT NULL,
);



CREATE TABLE dbo.Hotel
(
Hotel_ID varchar(25) NOT NULL PRIMARY KEY ,
Hotel_Name varchar(40) NOT NULL,
City varchar(25) NOT NULL,
No_of_Travellers integer NOT NULL,
Price DECIMAL(10,2),
Rating varchar(15) NOT NULL
);


CREATE TABLE dbo.Restaurants
(
Restaurant_ID varchar(25) NOT NULL PRIMARY KEY ,
Restaurant_Name varchar(40) NOT NULL,
City varchar(25) NOT NULL,
Rating varchar(15) NOT NULL
);


CREATE TABLE dbo.Taxi
(
Taxi_ID varchar(25) NOT NULL PRIMARY KEY ,
Taxi_Type varchar(25) NOT NULL,
Fare DECIMAL(10,2) NOT NULL
);



CREATE TABLE dbo.Packages
(
Package_ID integer NOT NULL PRIMARY KEY ,
Traveler_ID varchar(25) NOT NULL
REFERENCES Traveller(Traveller_ID),
Hotel_ID varchar(25) NOT NULL
REFERENCES Hotel(Hotel_ID),
Taxi_ID varchar(25) NOT NULL
REFERENCES Taxi(Taxi_ID),
Restaurant_ID varchar(25) NOT NULL
REFERENCES Restaurants(Restaurant_ID)
);









































