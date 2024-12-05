-- Popolamento della tabella `roles`
INSERT INTO roles (idRole,type) VALUES
(1,'User'),
(2,'Driver'),
(3,'Admin');

-- Popolamento della tabella `accountStatus`
INSERT INTO accountStatus (idStatus ,type) VALUES
(1,'Active'),
(2,'Inactive'),
(3,'Suspended');

-- Popolamento della tabella `accounts`
INSERT INTO accounts (email, password, idRole, idStatus) VALUES
('admin@example.com', 'adminpass', 1, 1),
('driver@example.com', 'driverpass', 2, 1),
('passenger@example.com', 'passengerpass', 3, 1);

-- Popolamento della tabella `users`
INSERT INTO users (idAccount, firstname, lastname, phone, birthDate, profilePicture, gender) VALUES
(1, 'Admin', 'User', '1234567890', '1980-01-01', 'admin-profile.jpg', 'Male'),
(2, 'John', 'Doe', '2345678901', '1990-02-15', 'driver-profile.jpg', 'Male'),
(3, 'Jane', 'Smith', '3456789012', '1995-05-25', 'passenger-profile.jpg', 'Female');

-- Popolamento della tabella `deposits`
INSERT INTO deposits (amount) VALUES
(100.0),
(200.0),
(50.0);

-- Popolamento della tabella `positions`
INSERT INTO positions (latitude, longitude) VALUES
('40.712776', '-74.005974'), -- New York
('34.052235', '-118.243683'), -- Los Angeles
('51.507351', '-0.127758'); -- London

-- Popolamento della tabella `reservationStatus`
INSERT INTO reservationStatus (type) VALUES
('Pending'),
('Confirmed'),
('Completed'),
('Cancelled');

-- Popolamento della tabella `reservations`
INSERT INTO reservations (idUser, idDeparture, idDestination, idDriver, idStatus, idDeposit, time) VALUES
(3, 1, 2, 2, 1, 1, '2024-12-01 10:00:00'),
(3, 2, 3, 2, 2, 2, '2024-12-05 12:30:00');

-- Popolamento della tabella `rideStatus`
INSERT INTO rideStatus (idStatus ,type) VALUES
(1,'STARTED'),
(2,'IN_PROGRESS'),
(3,'COMPLETED'),
(4,'PENDING');

-- Popolamento della tabella `rides`
INSERT INTO rides (timeArrival, timeDeparture, idStatus, idReservation, totalKm) VALUES
('2024-12-01 12:00:00', '2024-12-01 10:30:00', 1, 1, 500.5),
('2024-12-05 14:00:00', '2024-12-05 13:00:00', 2, 2, 1000.0);

-- Popolamento della tabella `reviews`
INSERT INTO reviews (idRide, rating, notes, authorIsDriver) VALUES
(1, 5, 'Great ride, very comfortable!', true),
(2, 4, 'Good ride, but a bit late.', false);

-- Popolamento della tabella `payments`
INSERT INTO payments (amount, completed, date, idRide) VALUES
(100.0, true, '2024-12-01', 1),
(200.0, true, '2024-12-05', 2);

-- Popolamento della tabella `reportStatus`
INSERT INTO reportStatus (type) VALUES
('Open'),
('Resolved'),
('Closed');

-- Popolamento della tabella `reportType`
INSERT INTO reportType (type) VALUES
('Driver Behavior'),
('Vehicle Condition'),
('Fare Issue');

-- Popolamento della tabella `reports`
INSERT INTO reports (description, idType, idStatus, idRide) VALUES
('The driver was rude', 1, 1, 1),
('The car was dirty', 2, 1, 2);

-- Popolamento della tabella `gearType`
INSERT INTO gearType (idtype,type) VALUES
(1,'MANUAL'),
(2,'AUTOMATIC'),
(3,'SEMIAUTOMATIC');

-- Popolamento della tabella `documentType`
INSERT INTO documentType (type) VALUES
('Driver License'),
('Insurance');

-- Popolamento della tabella `documents`
INSERT INTO documents (status, isValid, number, expiryDate, photo, idType, idUser) VALUES
('ACCEPTED', true, 'D1234567', '2025-12-31', 'driver-license.jpg', 1, 2),
('REFUSE', true, 'I1234567', '2025-12-31', 'car-insurance.jpg', 2, 2),
('PENDING', true, 'L7634507', '2026-10-11', 'car-insurance.jpg', 2, 2);

-- Popolamento della tabella `cars`
INSERT INTO cars (plate, brand, model, vehicleDisplacement, idGearShift, idUser, idInsurance) VALUES
('ABC123', 'Toyota', 'Corolla', 1600, 1, 1, 1),
('DEF123', 'Fiat', 'Punto', 1200, 2, 1, 2),
('BEL700', 'Fiat', 'Punto', 1200, 2, 1, 4);
