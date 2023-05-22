------------------ Data Insertion Scripts----------------------
USE Airline_Reservation_System_Group_1

----------Airline Company
INSERT dbo.AIRLINE_COMPANY
VALUES ( 'AA' , 'American Airlines'),
       ( 'BA' , 'British Airways'),
	   ( 'EX' , 'Atlantic Airlines'),
	   ( 'JET' , 'Jet Airways'),
	   ( 'SJ' , 'Spice Jet'),
	   ( 'TA' , 'Turkish Airlines'),
	   ( 'JA', 'Japanese Airlines'),
	   ( 'QA', 'Qatar Airlines'),
	   ( 'AI', 'Air India'),
	   ( 'CP', 'Cathay Pacific');

--------Airplane_Specs
INSERT dbo.Airplane_Specs
VALUES ('AIRBUS-A220','200','JET AA-1'),
       ('AIRBUS-A320','300','JET AA-3'),
	   ('BOEING-777','340','AVGAS 100LL'),
	   ('AIRBUS-A350','350','AVGAS 100SL'),
	   ('AIRBUS-A325','240','JET AA-2'),
	   ('AIRBUS-NEO','200','JET AA-1'),
	   ('AIRBUS-A458','300','JET AA-3'),
	   ('BOEING-748','340','AVGAS 100LL'),
	   ('AIRBUS-A992','380','AVGAS 100SL'),
	   ('AIRBUS-A874','310','JET AA-2');

-------Airplane
INSERT dbo.Airplane
VALUES ('AA751' , 'AA', 'AIRBUS-A220'),
       ('AA851' , 'AA', 'AIRBUS-A320'),
	   ('EX100' , 'EX', 'BOEING-777'),
	   ('JET785', 'JET', 'AIRBUS-A350'),
	   ('BA747' , 'BA', 'AIRBUS-A325'),
	   ('BAGA6','TA',  'AIRBUS-A220'),
	   ( 'CD724' ,'JA', 'AIRBUS-A320'),
	   ( 'FC665' ,'QA', 'BOEING-777'),
	   ( 'AB942','AI',  'AIRBUS-A350'),
	   ( 'RA224','CP' , 'AIRBUS-A325');

	 

--------Airport
INSERT dbo.Airport
VALUES ('DFW' , 'Dallas/Fort Worth International Airport'),
       ('RDU' , 'Raleigh-Durham International Airport'),
	   ('BOS' , 'Boston Logan International Airport'),
	   ('CLT' , 'Charlotte Douglas International Airport'),
	   ('LAX' , 'Los Angeles International Airport'),
	   ('DPS',  'Bali Airport'),
	   ('LVIV', 'Lviv International Airport'),
	   ('TPA',  'Tampa International Aiport'),
	   ('TIA',  'Tokyo International Airport'),
	   ('HKG',  'Hong Kong International Airport');


--------Airport_Address
INSERT dbo.Airport_Address
VALUES ('DAL-TX', 'DFW' , 75261, '3200 E Airfield Dr', 'Dallas', 'Texas', 'USA'),
       ('BOS-MA', 'BOS' , 02128, '1 Harborside Dr', 'Boston', 'Massachusetts', 'USA'),
	   ('RAL-NC', 'RDU' , 27560, '2400 John Brantley Blvd, Morrisville','Raleigh','North Carolina','USA'),
	   ('CLT-NC', 'CLT' , 28208, '5501 R C Josh Birmingham Pkwy','Charlotte','North Carolina','USA'),
	   ('LAX-CA', 'LAX' , 90045, '1 WorldWay','Los Angels','California','USA'),
	   ('DPS-BA',  'DPS', 45775, '7 Storrow Dr','Thomba','Bali','Indonesia'),
	   ('LVIV-UK', 'LVIV', 45784, 'Smith Field RI','Harta','Poltava','Ukraine'),
	   ('TPA-FL',  'TPA', 36587,  'Miami Gardens','Tampa','Miami','Florida'),
	   ('TIA-TK',  'TIA', 35457, 'Fukushima Road','Tokyo City','Tokyo','Japan'),
	   ('HKG-CHI', 'HKG', 24587, 'Belmomnte Road','Hong Kong City','Hong kong','China');



--------Seat
INSERT dbo.Seat
VALUES ('WIN-27', 'AIRBUS-A220', '27', 'True', 'Economy'),
       ('AIL-32', 'AIRBUS-A320', '32', 'True', 'Business'),
	   ('MID-45', 'BOEING-777', '45', 'True', 'First'),
	   ('WIN-51', 'AIRBUS-A350', '51', 'True', 'Premium'),
	   ('AIL-79', 'AIRBUS-A325', '79', 'True', 'Premium Economy'),
	   ('WIN-21', 'AIRBUS-NEO', '21', 'True', 'Economy'),
	   ('MID-24', 'AIRBUS-A458', '24', 'True', 'Premium'),
	   ('AIL-62', 'BOEING-748', '62', 'True', 'First'),
	   ('WIN-85', 'AIRBUS-A992', '85', 'True', 'Business'),
	   ('MID-99', 'AIRBUS-A874', '99', 'True', 'First');



-------Traveller
INSERT dbo.Traveller
VALUES  ('T-223','Amanpreet','Singh','Male','123-093-0099','a.singh@gmail.com'),
        ('T-123','Shreyas','Singh','Male','234-534-2342','s.singh@gmail.com'),
        ('T-987','Raj','Khatri','Male','546-984-3403','r.khatri@gmail.com'),
        ('T-112','Nand','Dave','Male','434-988-6786','n.dave@gmail.com'),
        ('T-009','Sushant','Mahadik','Male','894-090-1313','s.mahadik@gmail.com'),
        ('T-453','Jaimeen','Patel','Male','490-090-0800','j.patel@gmail.com'),
        ('T-324','Miti','Dawda','Female','133-343-3432','m.dawda@gmail.com'),
        ('T-485','Hema','Selvan','Female','475-365-8469','h.selvan@gmail.com'),
		('T-664','Ashutosh','Ranjane','Male','784-668-5478','a.ranjane@gmail.com'),
		('T-294','Dev','Patel','Male','665-745-5248','d.patel@gmail.com');



--------Feedback
INSERT dbo.Feedback
VALUES ('F-101','FT-101','T-223','Amanpreet','Singh','4.5'),
       ('F-325','FT-325','T-123','Shreyas','Singh','5'),
       ('F-456','FT-456','T-987','Raj','Khatri','4.7'),
       ('F-006','FT-006','T-112','Nand','Dave','4.9'),
       ('F-897','FT-897','T-009','Sushant','Mahadik','4.3'),
       ('F-754','FT-754','T-453','Jaimeen','Patel','4.2'),
       ('F-332','FT-332','T-324','Miti','Dawda','4.4'),
       ('F-675','FT-675','T-485','Hema','Selvan','4.8'),
	   ('F-478','FT-478','T-664','Ashutosh','Ranjane','4.7'),
	   ('F-224','FT-224','T-294','Dev','Patel','4');



---------Fare
INSERT dbo.Fare
VALUES ('T-223',499.95,6.25,10,'USD'),
	   ('T-123',485.52,7.25,10,'USD'),
	   ('T-987',510,6.25,10,'USD'),
	   ('T-112',556,5.25,20,'USD'),
	   ('T-009',854,9,10,'USD'),
	   ('T-453',300,8,10,'USD'),
	   ('T-324',259.36,7.45,15,'USD'),
	   ('T-485',399.99,4.25,10,'USD'),
	   ('T-664',430.45,6.25,10,'USD'),
	   ('T-294',790,7.25,15,'USD');


------Flight_Trip
INSERT dbo.Flight_Trip
VALUES ('FT-101','T-223','F-101','T-223',1,Current_Timestamp,Current_Timestamp),	
	   ('FT-325','T-123','F-325','T-123',1,Current_Timestamp,Current_Timestamp),
	   ('FT-456','T-987','F-456','T-987',1,Current_Timestamp,Current_Timestamp),
	   ('FT-006','T-112','F-006','T-112',1,Current_Timestamp,Current_Timestamp),
	   ('FT-897','T-009','F-897','T-009',1,Current_Timestamp,Current_Timestamp),
	   ('FT-754','T-453','F-754','T-453',1,Current_Timestamp,Current_Timestamp),
	   ('FT-332','T-324','F-332','T-324',1,Current_Timestamp,Current_Timestamp),
	   ('FT-675','T-485','F-675','T-485',1,Current_Timestamp,Current_Timestamp),
	   ('FT-478','T-664','F-478','T-664',1,Current_Timestamp,Current_Timestamp),
	   ('FT-224','T-294','F-224','T-294',1,Current_Timestamp,Current_Timestamp);



-------Arrival
INSERT dbo.Arrival
VALUES ('AR-101','FT-101',Current_Timestamp,'DFW - Dallas/Fort Worth International Airport','T2','Dallas'),
	   ('AR-325','FT-325',Current_Timestamp,'RDU - Raleigh-Durham International Airport','T1','Raleigh'),
	   ('AR-456','FT-456',Current_Timestamp,'BOS - Boston Logan International Airport','T3','Boston'),
	   ('AR-006','FT-006',Current_Timestamp,'CLT - Charlotte Douglas International Airport','T1','Charlotte'),
	   ('AR-897','FT-897',Current_Timestamp,'LAX - Los Angeles International Airport','T4','Los Angeles'),
	   ('AR-754','FT-754',Current_Timestamp,'DFW - Dallas/Fort Worth International Airport','T1','Dallas'),
	   ('AR-332','FT-332',Current_Timestamp,'RDU - Raleigh-Durham International Airport','T2','Raleigh'),
	   ('AR-675','FT-675',Current_Timestamp,'BOS - Boston Logan International Airport','T3','Boston'),
	   ('AR-478','FT-478',Current_Timestamp,'BOS - Boston Logan International Airport','T2','Boston'),
	   ('AR-224','FT-224',Current_Timestamp,'CAI - Changi International Airport','T1','Singapore');


-------------Departure
INSERT dbo.Departure
VALUES ('DP-101','FT-101',Current_Timestamp,'BOS - Boston Logan International Airport','T3','Boston'),
	   ('DP-325','FT-325',Current_Timestamp,'DFW - Dallas/Fort Worth International Airport','T1','Dallas'),
	   ('DP-456','FT-456',Current_Timestamp,'CLT - Charlotte Douglas International Airport','T1','Char,lotte'),
	   ('DP-006','FT-006',Current_Timestamp,'LAX - Los Angeles International Airport','T4','Los Angeles'),
	   ('DP-897','FT-897',Current_Timestamp,'BOS - Boston Logan International Airport','T3','Boston'),
	   ('DP-754','FT-754',Current_Timestamp,'RDU - Raleigh-Durham International Airport','T1','Raleigh'),
	   ('DP-332','FT-332',Current_Timestamp,'LAX - Los Angeles International Airport','T4','Los Angeles'),
	   ('DP-675','FT-675',Current_Timestamp,'CLT - Charlotte Douglas International Airport','T1','Charlotte'),
	   ('DP-478','FT-478',Current_Timestamp,'CAI - Changi International Airport','T1','Singapore'),
	   ('DP-224','FT-224',Current_Timestamp,'BOS - Boston Logan International Airport','T2','Boston');



-------------Employee
CREATE SEQUENCE Employee_ID_INCREMENT
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

INSERT dbo.Employee
VALUES (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-223', 'John','Travor', '123-093-0099', 'j.travor@gmail.com'), 
       (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-123',	'James','Bell', '234-534-2342', 'j.bell@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-987',	'Christian','Smith', '546-984-3403','c.smith@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-112',	'David','Warner', '434-988-6786','d.warner@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-009',	'Kieron','Pollard', '894-090-1313','k.pollard@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-453',	'Will','Smith', '490-090-0800','w.smith@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-324',	'Chris','Rock', '133-343-3432','c.rock@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-485', 'Cristiano','Ronaldo', '587-875-8954','c.ronaldo@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-664', 'Wayne','Rooney', '662-245-9878','w.rooney@gmail.com'),
	   (NEXT VALUE FOR Employee_ID_INCREMENT, 'T-294', 'Dan','Smith', '557-815-8944','d.smith@gmail.com');



----------Hotel
INSERT dbo.Hotel
VALUES ('H1','Pan Pacific','Boston',3,100.99,4),
       ('H2','Sherton','New York',4,89.50,5),
       ('H3','JW Marriot','Philadelphia',7,200,4.5),
       ('H4','Sea Blues','Washington',8,124.35,4.9),
       ('H5','Ocean','New Jersey',2,225,3.5),
       ('H6','Majenta Central','Denver',6,65,3),
	   ('H7','Hotel Bliss','Colorado',7,69,3.8),
	   ('H8','Ramada','Houston',10,80,4.2),
	   ('H9','Four Seasons','Atlanta',2,87,4.5),
	   ('H10','The Breakers','Miami',5,88,4.9);

---------Restaurants
INSERT dbo.Restaurants
VALUES ('R1','TAVERN','BOSTON',4.1),
	   ('R2','WILDROVER','NEW YORK',4.7),
	   ('R3','TUNISIA','PHILADELPHIA',4.6),
	   ('R4','NATURALS','WASHINGTON',4.9),
	   ('R5','CHEESECAKE','NEW JERSEY',3.5),
	   ('R6','BASTIAN','DENVER',3),
	   ('R7','Emerald Grill','Miami',4.1),
	   ('R8','Blue Plates','Rhode Island',2),
	   ('R9','Food Island','New Orleans',2.3),
	   ('R10','Pandora','San Diego',3.9);
	   
----------Taxi
INSERT dbo.Taxi
VALUES ('T1','Economy',40.5),
	   ('T2','Premium',41),
	   ('T3','SUV',50),
	   ('T4','Sedan',55),
	   ('T5','Luxury',60.5),
	   ('T6','Hatch Back',70),
	   ('T7','Mini',72),
	   ('T8','Pool',49),
	   ('T9','Limo',140),
	   ('T10','First',90);


----------Packages
CREATE SEQUENCE Package_ID_INCREMENT
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

INSERT dbo.Packages
VALUES (NEXT VALUE FOR Package_ID_INCREMENT, 'T-223', 'H1','T1', 'R1'),
       (NEXT VALUE FOR Package_ID_INCREMENT, 'T-123', 'H2','T2', 'R2'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-987', 'H3','T3', 'R3'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-112', 'H4','T4', 'R4'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-009', 'H5','T5', 'R5'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-453', 'H6','T2', 'R6'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-324', 'H2','T1', 'R1'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-485', 'H1','T3', 'R2'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-664', 'H9','T7', 'R7'),
	   (NEXT VALUE FOR Package_ID_INCREMENT, 'T-294', 'H10','T10','R9');
	    


INSERT dbo.Hop
VALUES ('HP1',4574),
	   ('HP2',4584),
	   ('HP3',3545),
	   ('HP4',7854),
	   ('HP5',5647),
	   ('HP6',2457),
	   ('HP7',6587),
	   ('HP8',3254),
	   ('HP9',2545),
	   ('HP10',7845);