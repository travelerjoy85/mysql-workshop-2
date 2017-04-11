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

INSERT INTO `Entry` (`addressBookId`,`firstName`,`lastName`,`birthday`,`type`,`subtype`,`contentLineOne`)
VALUES (52,"Herrod","Conrad","1973-04-16 13:58:42","home","phone","(884) 661-8280"),(96,"Keane","Browning","1962-04-07 20:22:24","home","phone","(727) 361-3316"),(43,"Zoe","Jacobson","1955-01-26 17:54:47","home","phone","(702) 505-0434"),(78,"Herrod","Ross","1998-12-05 09:27:56","home","phone","(794) 218-6784"),(11,"Sybill","Francis","1972-07-17 12:23:57","home","phone","(548) 671-7981"),(33,"Tad","Higgins","1956-06-02 07:00:50","home","phone","(123) 567-0045"),(73,"Brenna","Willis","1981-01-24 02:19:14","home","phone","(881) 505-1685"),(24,"Veda","Pierce","1989-05-03 09:57:04","home","phone","(993) 716-7246"),(51,"Aidan","Gilliam","1946-08-01 05:01:45","home","phone","(967) 513-0552"),(20,"Miriam","Greene","1971-09-30 15:30:55","home","phone","(582) 917-7690"),
	   (98,"Cole","Hamilton","1980-08-26 06:23:46","work","phone","(226) 404-8621"),(93,"Marvin","George","1986-03-01 06:57:12","work","phone","(882) 390-6472"),(70,"Sacha","Villarreal","1951-08-30 15:03:35","work","phone","(474) 843-1419"),(93,"Whilemina","Gould","1973-10-28 05:04:04","work","phone","(971) 564-6772"),(24,"Stuart","Mcmillan","1953-10-06 19:45:34","work","phone","(412) 392-2355"),(27,"Mallory","Silva","1982-03-09 17:25:57","work","phone","(946) 745-7814"),(70,"Kai","Mills","1976-05-09 07:34:52","work","phone","(651) 955-1564"),(7,"Gabriel","Alford","1997-01-09 02:35:20","work","phone","(374) 698-9200"),(67,"Daphne","Gomez","1989-01-07 15:14:54","work","phone","(701) 304-5743"),(65,"Mollie","Dillon","1985-05-31 14:00:51","work","phone","(228) 204-0653"),
	   (57,"Irene","Holcomb","1969-04-11 23:11:08","other","phone","(337) 172-8634"),(90,"Clare","Bell","1967-06-15 08:40:03","other","phone","(773) 494-5132"),(54,"Julie","Drake","1971-01-12 22:22:12","other","phone","(975) 881-4204"),(53,"Latifah","Lane","1962-12-20 14:41:31","other","phone","(272) 138-1797"),(85,"Aretha","Miles","1983-11-24 09:39:36","other","phone","(668) 141-1244"),(97,"Amelia","Saunders","1991-09-20 20:28:20","other","phone","(448) 722-4384"),(41,"Baker","Michael","1999-03-25 02:17:20","other","phone","(737) 890-6070"),(40,"Preston","Burch","1965-10-24 18:15:45","other","phone","(899) 710-4709"),(52,"Orla","Trevino","1945-11-17 13:22:50","other","phone","(744) 863-8107"),(84,"Blythe","Elliott","1999-01-25 12:15:40","other","phone","(252) 860-2078");
	   
	   
UPDATE Entry
    SET firstName = (case when addressBookId = 52 then 'Joy'
                         when addressBookId = 96 then 'Yumi'
                         when addressBookId = 43 then 'Izzie'
                    end),
        subtype = 'phone'
    WHERE id IN (1, 2, 3);