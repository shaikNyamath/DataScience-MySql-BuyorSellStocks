CREATE TABLE `Bajaj Auto` (
    `Date` DATE,
    `Open Price` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(10 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

# Importing Bajaj Auto csv to the table

LOAD DATA INFILE 'Bajaj Auto.csv' 
INTO TABLE `Bajaj Auto` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);

CREATE TABLE `Eicher Motors` (
    `Date` DATE,
    `OpenPrice` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(12 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

# Importing Eicher Motors csv to the table

LOAD DATA INFILE 'Eicher Motors.csv' 
INTO TABLE `Eicher Motors` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`OpenPrice`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);


CREATE TABLE `Hero Motocorp` (
    `Date` DATE,
    `OpenPrice` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(12 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

LOAD DATA INFILE 'Hero Motocorp.csv' 
INTO TABLE `Hero Motocorp` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`OpenPrice`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);


CREATE TABLE Infosys (
    `Date` DATE,
    `OpenPrice` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(12 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

LOAD DATA INFILE 'Infosys.csv' 
INTO TABLE Infosys 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`OpenPrice`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);


CREATE TABLE TCS (
    `Date` DATE,
    `OpenPrice` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(12 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

LOAD DATA INFILE 'TCS.csv' 
INTO TABLE TCS 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`OpenPrice`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);

CREATE TABLE `TVS Motors` (
    `Date` DATE,
    `OpenPrice` FLOAT(10 , 2 ),
    `High Price` FLOAT(10 , 2 ),
    `Low Price` FLOAT(10 , 2 ),
    `Close Price` FLOAT(10 , 2 ),
    `WAP` FLOAT(12 , 6 ),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` BIGINT,
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` FLOAT(10 , 2 ),
    `Spread High-Low` FLOAT(10 , 2 ),
    `Spread Close-Open` FLOAT(10 , 2 )
);

LOAD DATA INFILE 'TVS Motors.csv' 
INTO TABLE `TVS Motors`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`OpenPrice`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,`No. of Trades`,`Total Turnover (Rs.)`,@var2,
 @var3,`Spread High-Low`,`Spread Close-Open`)
SET `Date` = STR_TO_DATE(@var1,'%d-%M-%Y'),
	`Deliverable Quantity` = IF(CHAR_LENGTH(TRIM(@var2)) = 0, NULL, @var2),
    `% Deli. Qty to Traded Qty` = IF(CHAR_LENGTH(TRIM(@var3)) = 0, NULL, @var3);

