CREATE TABLE airport (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(255) NOT NULL,
    Planes BIGINT,
    city VARCHAR(255),
    state VARCHAR(255),
    plane_id VARCHAR(255) UNIQUE,
    plane_type VARCHAR(255),
    airport_area DECIMAL
);


CREATE TABLE Planes (
    plane_id VARCHAR(255) PRIMARY KEY,
    plane_type VARCHAR(255),
    plane_cost DECIMAL,
    passenger_capacity INT,
    Pilot_name VARCHAR(255),
    pilot_id INT
);


CREATE TABLE Pilot (
    pilot_id INT PRIMARY KEY,
    pilot_name VARCHAR(255),
    age INT,
    experience INT,
    salary DECIMAL
);



CREATE TABLE passenger (
    pass_id INT PRIMARY KEY,
    airport_id INT NOT NULL,
    plane_id VARCHAR(255) NOT NULL,
    pass_name VARCHAR(255),
    age INT,
    ticket_price DECIMAL,
    Dest_city VARCHAR(255),
    Dest_state VARCHAR(255)
);



INSERT INTO airport (airport_id, airport_name, Planes, city, state, plane_id, plane_type, airport_area) VALUES
(1, 'John F. Kennedy International Airport', 120, 'New York', 'New York', 'JFK123', 'Boeing 747', 4930),
(2, 'Los Angeles International Airport', 105, 'Los Angeles', 'California', 'LAX456', 'Airbus A380', 3500),
(3, 'Chicago O Hare International Airport', 90, 'Chicago', 'Illinois', 'ORD789', 'Boeing 777', 7627),
(4, 'Hartsfield-Jackson Atlanta International Airport', 130, 'Atlanta', 'Georgia', 'ATL012', 'Airbus A320', 4700),
(5, 'Dallas/Fort Worth International Airport', 110, 'Dallas', 'Texas', 'DFW345', 'Boeing 737', 18076),
(6, 'Denver International Airport', 95, 'Denver', 'Colorado', 'DEN678', 'Airbus A350', 33531),
(7, 'San Francisco International Airport', 80, 'San Francisco', 'California', 'SFO901', 'Boeing 787', 5207),
(8, 'Seattle-Tacoma International Airport', 85, 'Seattle', 'Washington', 'SEA234', 'Airbus A330', 2500),
(9, 'Orlando International Airport', 75, 'Orlando', 'Florida', 'MCO567', 'Boeing 767', 13000),
(10, 'McCarran International Airport', 100, 'Las Vegas', 'Nevada', 'LAS890', 'Airbus A321', 2800),
(11, 'Miami International Airport', 115, 'Miami', 'Florida', 'MIA123', 'Boeing 747', 3230),
(12, 'Phoenix Sky Harbor International Airport', 98, 'Phoenix', 'Arizona', 'PHX456', 'Airbus A380', 3400),
(13, 'Detroit Metropolitan Airport', 88, 'Detroit', 'Michigan', 'DTW789', 'Boeing 777', 4850),
(14, 'Minneapolis-St. Paul International Airport', 82, 'Minneapolis', 'Minnesota', 'MSP012', 'Airbus A320', 2930),
(15, 'Logan International Airport', 78, 'Boston', 'Massachusetts', 'BOS345', 'Boeing 737', 2384),
(16, 'LaGuardia Airport', 65, 'New York', 'New York', 'LGA678', 'Airbus A350', 680),
(17, 'Newark Liberty International Airport', 70, 'Newark', 'New Jersey', 'EWR901', 'Boeing 787', 2027),
(18, 'Philadelphia International Airport', 68, 'Philadelphia', 'Pennsylvania', 'PHL234', 'Airbus A330', 2386),
(19, 'Baltimore/Washington International Airport', 62, 'Baltimore', 'Maryland', 'BWI567', 'Boeing 767', 3160),
(20, 'San Diego International Airport', 60, 'San Diego', 'California', 'SAN890', 'Airbus A321', 661),
(21, 'Tampa International Airport', 58, 'Tampa', 'Florida', 'TPA123', 'Boeing 757', 3300),
(22, 'Portland International Airport', 55, 'Portland', 'Oregon', 'PDX456', 'Airbus A340', 3300),
(23, 'Honolulu International Airport', 50, 'Honolulu', 'Hawaii', 'HNL789', 'Boeing 767', 4220),
(24, 'Anchorage International Airport', 45, 'Anchorage', 'Alaska', 'ANC012', 'Airbus A319', 4607),
(25, 'Austin-Bergstrom International Airport', 52, 'Austin', 'Texas', 'AUS345', 'Boeing 737', 4242),
(26, 'Nashville International Airport', 53, 'Nashville', 'Tennessee', 'BNA678', 'Airbus A320', 3900),
(27, 'Raleigh-Durham International Airport', 51, 'Raleigh', 'North Carolina', 'RDU901', 'Boeing 757', 5000),
(28, 'Cincinnati/Northern Kentucky International Airport', 48, 'Cincinnati', 'Ohio', 'CVG234', 'Airbus A318', 7700),
(29, 'Kansas City International Airport', 47, 'Kansas City', 'Missouri', 'MCI567', 'Boeing 737', 10800),
(30, 'St. Louis Lambert International Airport', 46, 'St. Louis', 'Missouri', 'STL890', 'Airbus A320', 2790),
(31, 'Cleveland Hopkins International Airport', 44, 'Cleveland', 'Ohio', 'CLE123', 'Boeing 737', 1700),
(32, 'Indianapolis International Airport', 43, 'Indianapolis', 'Indiana', 'IND456', 'Airbus A319', 7700),
(33, 'Milwaukee Mitchell International Airport', 42, 'Milwaukee', 'Wisconsin', 'MKE789', 'Boeing 737', 2180),
(34, 'Jacksonville International Airport', 41, 'Jacksonville', 'Florida', 'JAX012', 'Airbus A320', 8000),
(35, 'Sacramento International Airport', 40, 'Sacramento', 'California', 'SMF345', 'Boeing 737', 5000),
(36, 'San Jose International Airport', 39, 'San Jose', 'California', 'SJC678', 'Airbus A319', 1050),
(37, 'Oakland International Airport', 38, 'Oakland', 'California', 'OAK901', 'Boeing 737', 2600),
(38, 'Albuquerque International Airport', 37, 'Albuquerque', 'New Mexico', 'ABQ234', 'Airbus A320', 2000),
(39, 'Tucson International Airport', 36, 'Tucson', 'Arizona', 'TUS567', 'Boeing 737', 3079),
(40, 'El Paso International Airport', 35, 'El Paso', 'Texas', 'ELP890', 'Airbus A318', 7100),
(41, 'Omaha Eppley Airfield', 34, 'Omaha', 'Nebraska', 'OMA123', 'Boeing 737', 2700),
(42, 'Oklahoma City Will Rogers World Airport', 33, 'Oklahoma City', 'Oklahoma', 'OKC456', 'Airbus A320', 8081),
(43, 'Wichita Dwight D. Eisenhower National Airport', 32, 'Wichita', 'Kansas', 'ICT789', 'Boeing 737', 3200),
(44, 'Tulsa International Airport', 31, 'Tulsa', 'Oklahoma', 'TUL012', 'Airbus A319', 4164),
(45, 'Little Rock National Airport', 30, 'Little Rock', 'Arkansas', 'LIT345', 'Boeing 737', 2000),
(46, 'Memphis International Airport', 29, 'Memphis', 'Tennessee', 'MEM678', 'Airbus A321', 3900),
(47, 'Birmingham-Shuttlesworth International Airport', 28, 'Birmingham', 'Alabama', 'BHM901', 'Boeing 737', 2450),
(48, 'Mobile Regional Airport', 27, 'Mobile', 'Alabama', 'MOB234', 'Airbus A319', 1700),
(49, 'Montgomery Regional Airport', 26, 'Montgomery', 'Alabama', 'MGM567', 'Boeing 737', 1500),
(50, 'Huntsville International Airport', 25, 'Huntsville', 'Alabama', 'HSV890', 'Airbus A320', 6600);

select * from airport




INSERT INTO Planes (plane_id, plane_type, plane_cost, passenger_capacity, Pilot_name, pilot_id) VALUES
('BOE747-101', 'Boeing 747', 250000000.00, 416, 'Alice Johnson', 101),
('AIR320-202', 'Airbus A320', 110000000.00, 180, 'Bob Williams', 102),
('BOE777-303', 'Boeing 777', 320000000.00, 396, 'Charlie Brown', 103),
('AIR380-404', 'Airbus A380', 445000000.00, 853, 'Diana Miller', 104),
('BOE737-505', 'Boeing 737', 89000000.00, 149, 'Ethan Davis', 105),
('AIR350-606', 'Airbus A350', 317000000.00, 325, 'Fiona Green', 106),
('BOE787-707', 'Boeing 787', 248000000.00, 242, 'George White', 107),
('AIR330-808', 'Airbus A330', 264000000.00, 277, 'Hannah Black', 108),
('BOE767-909', 'Boeing 767', 186000000.00, 269, 'Isaac Taylor', 109),
('AIR321-110', 'Airbus A321', 115000000.00, 200, 'Julia Anderson', 110),
('BOE747-111', 'Boeing 747', 255000000.00, 416, 'Kevin Thomas', 111),
('AIR320-212', 'Airbus A320', 112000000.00, 180, 'Linda Jackson', 112),
('BOE777-313', 'Boeing 777', 325000000.00, 396, 'Michael Harris', 113),
('AIR380-414', 'Airbus A380', 450000000.00, 853, 'Nancy Martinez', 114),
('BOE737-515', 'Boeing 737', 90000000.00, 149, 'Oliver Robinson', 115),
('AIR350-616', 'Airbus A350', 320000000.00, 325, 'Patricia Clark', 116),
('BOE787-717', 'Boeing 787', 250000000.00, 242, 'Robert Young', 117),
('AIR330-818', 'Airbus A330', 266000000.00, 277, 'Susan Lewis', 118),
('BOE767-919', 'Boeing 767', 188000000.00, 269, 'David Lee', 119),
('AIR321-120', 'Airbus A321', 117000000.00, 200, 'Karen Hall', 120),
('BOE747-121', 'Boeing 747', 260000000.00, 416, 'John Smith', 121),
('AIR320-222', 'Airbus A320', 114000000.00, 180, 'Mary Jones', 122),
('BOE777-323', 'Boeing 777', 330000000.00, 396, 'James Brown', 123),
('AIR380-424', 'Airbus A380', 455000000.00, 853, 'Patricia Wilson', 124),
('BOE737-525', 'Boeing 737', 91000000.00, 149, 'Robert Davis', 125),
('AIR350-626', 'Airbus A350', 325000000.00, 325, 'Linda Garcia', 126),
('BOE787-727', 'Boeing 787', 255000000.00, 242, 'Christopher Rodriguez', 127),
('AIR330-828', 'Airbus A330', 270000000.00, 277, 'Angela Williams', 128),
('BOE767-929', 'Boeing 767', 190000000.00, 269, 'Brian Martinez', 129),
('AIR321-130', 'Airbus A321', 119000000.00, 200, 'Nicole Robinson', 130),
('BOE747-131', 'Boeing 747', 265000000.00, 416, 'Jason Clark', 131),
('AIR320-232', 'Airbus A320', 116000000.00, 180, 'Stephanie Young', 132),
('BOE777-333', 'Boeing 777', 335000000.00, 396, 'Matthew Lewis', 133),
('AIR380-434', 'Airbus A380', 460000000.00, 853, 'Kimberly Hall', 134),
('BOE737-535', 'Boeing 737', 92000000.00, 149, 'Justin Allen', 135),
('AIR350-636', 'Airbus A350', 330000000.00, 325, 'Sarah Scott', 136),
('BOE787-737', 'Boeing 787', 260000000.00, 242, 'Brandon Green', 137),
('AIR330-838', 'Airbus A330', 275000000.00, 277, 'Michelle Baker', 138),
('BOE767-939', 'Boeing 767', 192000000.00, 269, 'Ryan King', 139),
('AIR321-140', 'Airbus A321', 121000000.00, 200, 'Jessica Wright', 140),
('BOE747-141', 'Boeing 747', 270000000.00, 416, 'Timothy Lopez', 141),
('AIR320-242', 'Airbus A320', 118000000.00, 180, 'Elizabeth Hill', 142),
('BOE777-343', 'Boeing 777', 340000000.00, 396, 'Adam Carter', 143),
('AIR380-444', 'Airbus A380', 465000000.00, 853, 'Laura Phillips', 144),
('BOE737-545', 'Boeing 737', 93000000.00, 149, 'Aaron Mitchell', 145),
('AIR350-646', 'Airbus A350', 335000000.00, 325, 'Kelly Reed', 146),
('BOE787-747', 'Boeing 787', 265000000.00, 242, 'Jose Perez', 147),
('AIR330-848', 'Airbus A330', 280000000.00, 277, 'Sarah Roberts', 148),
('BOE767-949', 'Boeing 767', 194000000.00, 269, 'Eric Turner', 149),
('AIR321-150', 'Airbus A321', 123000000.00, 200, 'Melissa Foster', 150);


select * from planes


INSERT INTO Pilot (pilot_id, pilot_name, age, experience, salary) VALUES
(101, 'Alice Johnson', 35, 10, 90000.00),
(102, 'Bob Williams', 42, 15, 110000.00),
(103, 'Charlie Brown', 28, 5, 75000.00),
(104, 'Diana Miller', 45, 20, 125000.00),
(105, 'Ethan Davis', 31, 8, 85000.00),
(106, 'Fiona Green', 38, 12, 100000.00),
(107, 'George White', 29, 6, 80000.00),
(108, 'Hannah Black', 40, 14, 115000.00),
(109, 'Isaac Taylor', 33, 9, 95000.00),
(110, 'Julia Anderson', 27, 4, 70000.00),
(111, 'Kevin Thomas', 36, 11, 92000.00),
(112, 'Linda Jackson', 41, 16, 112000.00),
(113, 'Michael Harris', 30, 7, 82000.00),
(114, 'Nancy Martinez', 44, 19, 120000.00),
(115, 'Oliver Robinson', 32, 8, 88000.00),
(116, 'Patricia Clark', 39, 13, 105000.00),
(117, 'Robert Young', 28, 5, 77000.00),
(118, 'Susan Lewis', 43, 17, 118000.00),
(119, 'David Lee', 34, 10, 93000.00),
(120, 'Karen Hall', 26, 3, 68000.00),
(121, 'John Smith', 37, 12, 97000.00),
(122, 'Mary Jones', 40, 15, 108000.00),
(123, 'James Brown', 29, 6, 81000.00),
(124, 'Patricia Wilson', 46, 21, 130000.00),
(125, 'Robert Davis', 31, 7, 86000.00),
(126, 'Linda Garcia', 38, 11, 102000.00),
(127, 'Christopher Rodriguez', 27, 4, 72000.00),
(128, 'Angela Williams', 42, 16, 114000.00),
(129, 'Brian Martinez', 33, 9, 91000.00),
(130, 'Nicole Robinson', 25, 2, 65000.00),
(131, 'Jason Clark', 36, 10, 94000.00),
(132, 'Stephanie Young', 41, 14, 106000.00),
(133, 'Matthew Lewis', 30, 7, 83000.00),
(134, 'Kimberly Hall', 45, 20, 123000.00),
(135, 'Justin Allen', 32, 8, 89000.00),
(136, 'Sarah Scott', 39, 13, 104000.00),
(137, 'Brandon Green', 28, 5, 79000.00),
(138, 'Michelle Baker', 44, 18, 122000.00),
(139, 'Ryan King', 34, 10, 96000.00),
(140, 'Jessica Wright', 26, 3, 69000.00),
(141, 'Timothy Lopez', 37, 11, 98000.00),
(142, 'Elizabeth Hill', 40, 15, 111000.00),
(143, 'Adam Carter', 29, 6, 84000.00),
(144, 'Laura Phillips', 46, 21, 132000.00),
(145, 'Aaron Mitchell', 31, 7, 87000.00),
(146, 'Kelly Reed', 38, 12, 103000.00),
(147, 'Jose Perez', 27, 4, 73000.00),
(148, 'Sarah Roberts', 42, 17, 116000.00),
(149, 'Eric Turner', 33, 9, 92000.00),
(150, 'Melissa Foster', 25, 2, 66000.00);


select * from pilot




INSERT INTO passenger (pass_id, airport_id, plane_id, pass_name, age, ticket_price, Dest_city, Dest_state) VALUES
(201, 1, 'JFK123', 'Alice Smith', 30, 250.00, 'Los Angeles', 'California'),
(202, 2, 'LAX456', 'Bob Johnson', 45, 400.00, 'Chicago', 'Illinois'),
(203, 3, 'ORD789', 'Charlie Brown', 24, 180.00, 'Atlanta', 'Georgia'),
(204, 4, 'ATL012', 'Diana Miller', 52, 320.00, 'Dallas', 'Texas'),
(205, 5, 'DFW345', 'Ethan Davis', 29, 275.00, 'Denver', 'Colorado'),
(206, 6, 'DEN678', 'Fiona Green', 38, 350.00, 'San Francisco', 'California'),
(207, 7, 'SFO901', 'George White', 22, 200.00, 'Seattle', 'Washington'),
(208, 8, 'SEA234', 'Hannah Black', 48, 420.00, 'Orlando', 'Florida'),
(209, 9, 'MCO567', 'Isaac Taylor', 33, 300.00, 'Las Vegas', 'Nevada'),
(210, 10, 'LAS890', 'Julia Anderson', 27, 220.00, 'Miami', 'Florida'),
(211, 11, 'MIA123', 'Kevin Thomas', 31, 280.00, 'Phoenix', 'Arizona'),
(212, 12, 'PHX456', 'Linda Jackson', 40, 380.00, 'Detroit', 'Michigan'),
(213, 13, 'DTW789', 'Michael Harris', 26, 210.00, 'Minneapolis', 'Minnesota'),
(214, 14, 'MSP012', 'Nancy Martinez', 55, 450.00, 'Boston', 'Massachusetts'),
(215, 15, 'BOS345', 'Oliver Robinson', 23, 190.00, 'New York', 'New York'),
(216, 16, 'LGA678', 'Patricia Clark', 36, 330.00, 'Newark', 'New Jersey'),
(217, 17, 'EWR901', 'Robert Young', 28, 240.00, 'Philadelphia', 'Pennsylvania'),
(218, 18, 'PHL234', 'Susan Lewis', 47, 410.00, 'Baltimore', 'Maryland'),
(219, 19, 'BWI567', 'David Lee', 32, 290.00, 'San Diego', 'California'),
(220, 20, 'SAN890', 'Karen Hall', 25, 205.00, 'Tampa', 'Florida'),
(221, 21, 'TPA123', 'John Smith', 34, 310.00, 'Portland', 'Oregon'),
(222, 22, 'PDX456', 'Mary Jones', 43, 390.00, 'Honolulu', 'Hawaii'),
(223, 23, 'HNL789', 'James Brown', 21, 170.00, 'Anchorage', 'Alaska'),
(224, 24, 'ANC012', 'Patricia Wilson', 50, 430.00, 'Austin', 'Texas'),
(225, 25, 'AUS345', 'Robert Davis', 30, 260.00, 'Nashville', 'Tennessee'),
(226, 26, 'BNA678', 'Linda Garcia', 37, 340.00, 'Raleigh', 'North Carolina'),
(227, 27, 'RDU901', 'Christopher Rodriguez', 29, 230.00, 'Cincinnati', 'Ohio'),
(228, 28, 'CVG234', 'Angela Williams', 46, 400.00, 'Kansas City', 'Missouri'),
(229, 29, 'MCI567', 'Brian Martinez', 31, 270.00, 'St. Louis', 'Missouri'),
(230, 30, 'STL890', 'Nicole Robinson', 24, 195.00, 'Cleveland', 'Ohio'),
(231, 31, 'CLE123', 'Jason Clark', 33, 305.00, 'Indianapolis', 'Indiana'),
(232, 32, 'IND456', 'Stephanie Young', 42, 385.00, 'Milwaukee', 'Wisconsin'),
(233, 33, 'MKE789', 'Matthew Lewis', 27, 225.00, 'Jacksonville', 'Florida'),
(234, 34, 'JAX012', 'Kimberly Hall', 54, 440.00, 'Sacramento', 'California'),
(235, 35, 'SMF345', 'Justin Allen', 22, 185.00, 'San Jose', 'California'),
(236, 36, 'SJC678', 'Sarah Scott', 35, 325.00, 'Oakland', 'California'),
(237, 37, 'OAK901', 'Brandon Green', 28, 235.00, 'Albuquerque', 'New Mexico'),
(238, 38, 'ABQ234', 'Michelle Baker', 49, 415.00, 'Tucson', 'Arizona'),
(239, 39, 'TUS567', 'Ryan King', 30, 265.00, 'El Paso', 'Texas'),
(240, 40, 'ELP890', 'Jessica Wright', 23, 200.00, 'Omaha', 'Nebraska'),
(241, 41, 'OMA123', 'Timothy Lopez', 32, 295.00, 'Oklahoma City', 'Oklahoma'),
(242, 42, 'OKC456', 'Elizabeth Hill', 41, 375.00, 'Wichita', 'Kansas'),
(243, 43, 'ICT789', 'Adam Carter', 26, 215.00, 'Tulsa', 'Oklahoma'),
(244, 44, 'TUL012', 'Laura Phillips', 53, 435.00, 'Little Rock', 'Arkansas'),
(245, 45, 'LIT345', 'Aaron Mitchell', 29, 255.00, 'Memphis', 'Tennessee'),
(246, 46, 'MEM678', 'Kelly Reed', 39, 345.00, 'Birmingham', 'Alabama'),
(247, 47, 'BHM901', 'Jose Perez', 27, 220.00, 'Mobile', 'Alabama'),
(248, 48, 'MOB234', 'Sarah Roberts', 44, 395.00, 'Montgomery', 'Alabama'),
(249, 49, 'MGM567', 'Eric Turner', 30, 275.00, 'Huntsville', 'Alabama'),
(250, 50, 'HSV890', 'Melissa Foster', 24, 190.00, 'New York', 'New York');



select * from passenger  



-- Update airport table:  Increase the number of planes at 'John F. Kennedy International Airport'
UPDATE airport
SET Planes = Planes + 10
WHERE airport_name = 'John F. Kennedy International Airport';

-- Update Planes table:  Change the passenger capacity of the plane with plane_id 'BOE747-101'
UPDATE Planes
SET passenger_capacity = 450
WHERE plane_id = 'BOE747-101';

-- Update Pilot table:  Give 'Alice Johnson' a raise
UPDATE Pilot
SET salary = salary * 10.1 -- Increase salary by 10%
WHERE pilot_name = 'Alice Johnson';

-- Update passenger table: Change the destination city for passenger with pass_id '201'
UPDATE passenger
SET Dest_city = 'New York'
WHERE pass_id = 201;


select * from pilot where pilot_name='Alice Johnson'


ALTER TABLE Pilot
ADD COLUMN country VARCHAR(255);


select * from pilot

ALTER TABLE Planes
ADD CONSTRAINT FK_PilotPlane
FOREIGN KEY (pilot_id) REFERENCES Pilot(pilot_id);



ALTER TABLE Planes
DROP CONSTRAINT FK_PilotPlane;




SELECT p.pass_name, o.plane_type
FROM passenger as p
LEFT JOIN Planes as o ON p.plane_id = o.plane_id;

SELECT p.pass_name, o.plane_type
FROM passenger as p
RIGHT JOIN Planes as o ON p.plane_id = o.plane_id;

SELECT a.airport_name, a.city, p.plane_type
FROM airport a
LEFT JOIN Planes p ON a.plane_id = p.plane_id;



CREATE VIEW PassengerDestinations AS
SELECT pass_name, Dest_city, Dest_state
FROM passenger;


select * from passengerDestinations