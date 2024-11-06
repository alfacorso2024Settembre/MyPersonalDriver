DROP DATABASE IF EXISTS myPersonalDriver;

CREATE DATABASE myPersonalDriver;

USE myPersonalDriver;

create table if not exists roles(
	idRole int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists accountStatus(
	idStatus int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists accounts(
	idAccount int not null auto_increment primary key,
	email varchar(255) not null,
	password varchar(255) not null,
	idRole int not null,
	idStatus int not null,
	foreign key(idRole) references roles(idRole),
	foreign key(idStatus) references accountStatus(idStatus)
);

create table if not exists deposits(
	idDeposit int not null auto_increment primary key,
	amount float not null
);

create table if not exists positions(
	idPosition int not null auto_increment primary key,
	latitude varchar(255) not null,
	longitude varchar(255) not null
);

create table if not exists users(
	idUser int not null auto_increment primary key,
	idAccount int not null,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	phone varchar(10) not null,
	birthDate date not null,
	profilePicture blob not null,
	gender varchar(255) not null,
	foreign key(idAccount) references accounts(idAccount)
);

create table if not exists reviews(
	idReview int not null auto_increment primary key,
	idUser int not null,
	rating int check(rating>0 and rating<6) not null,
	notes varchar(255),
	foreign key(idUser) references users(idUser)
);

create table if not exists reservationStatus(
	idStatus int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists reservations(
	idReservation int not null auto_increment primary key,
	idUser int not null,
	idDeparture int not null,
	idDestination int not null,
	idDriver int not null,
	idStatus int not null,
	idDeposit int not null,
	time datetime not null,
	foreign key(idUser) references users(idUser),
	foreign key(idDriver) references users(idUser),
	foreign key(idStatus) references reservationStatus(idStatus),
	foreign key(idDeposit) references deposits(idDeposit),
	foreign key(idDeparture) references positions(idPosition),
	foreign key(idDestination) references positions(idPosition)
);

create table if not exists rideStatus(
	idStatus int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists rides(
	idRide int not null auto_increment primary key,
	timeArrival datetime not null,
	timeDeparture datetime not null,
	idStatus int not null,
	idReservation int,
	totalKm float,
	foreign key(idReservation) references reservations(idReservation),
	foreign key(idStatus) references rideStatus(idStatus)
);

create table if not exists payments(
	idPayment int not null auto_increment primary key,
	amount float not null,
	completed boolean not null,
	date date not null,
	idRide int not null,
	foreign key(idRide) references rides(idRide)
);

create table if not exists reportStatus(
	idStatus int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists reportType(
	idtype int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists reports(
	idReport int not null auto_increment primary key,
	description varchar(255) not null,
	idType int not null,
	idStatus int not null,
	idRide int not null,
	foreign key(idStatus) references reportStatus(idStatus),
	foreign key(idRide) references rides(idRide),
	foreign key(idType) references reportType(idType)
);

create table if not exists gearType(
	idtype int not null auto_increment primary key,
	type varchar(255)
);

create table if not exists documentType(
	idType int not null auto_increment primary key,
	type varchar(255)
);


create table if not exists documents(
	idDocument int not null auto_increment primary key,
	isValid boolean not null,
	expiryDate date not null,
	photo blob not null,
	idType int not null,
	idUser int not null,
	foreign key(idUser) references users(idUser),
	foreign key(idType) references documentType(idType)	
);

create table if not exists cars(
	plate varchar(255) not null primary key,
	brand varchar(255) not null,
	model varchar(255) not null,
	vehicleDisplacement int not null,
	idGearShift int not null,
	idUser int not null,
	idInsurance int not null,
	foreign key(idGearShift) references gearType(idtype),
	foreign key(idUser) references users(idUser),
	foreign key(idInsurance) references documents(idDocument)
);


