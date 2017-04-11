CREATE TABLE Account (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(100),
	password VARCHAR(100),
	createdOn DATETIME,
	modifiedOn DATETIME
);

CREATE TABLE AddressBook (
	id INT AUTO_INCREMENT PRIMARY KEY,
	accountId INT,
	name VARCHAR(100),
	createdOn DATETIME,
	modifiedOn DATETIME
);

CREATE TABLE Entry (
	id INT AUTO_INCREMENT PRIMARY KEY,
	addressBookId INT,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	birthday DATETIME,
	type ENUM('home', 'work', 'other'),
	subtype ENUM('phone', 'email', 'address'),
	contentLineOne VARCHAR(255),
	contentLineTwo VARCHAR(255),
	contentLineThree VARCHAR(255),
	contentLineFour VARCHAR(255),
	contentLineFive VARCHAR(255)
);