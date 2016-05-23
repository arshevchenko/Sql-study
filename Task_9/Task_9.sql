USE master;
CREATE DATABASE dimAero
ON PRIMARY(
	NAME = N'dimAero', 
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dimAero.mdf', 
	SIZE = 51200KB, 
	FILEGROWTH = 10240KB
)
LOG ON(
	NAME = N'dimAero_log', 
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dimAero_log.ldf', 
	SIZE = 10240KB, 
	FILEGROWTH = 10%
)
COLLATE Cyrillic_General_100_CI_AI
GO
ALTER DATABASE dimAero SET RECOVERY SIMPLE WITH NO_WAIT;
GO
ALTER DATABASE dimAero SET AUTO_SHRINK OFF;
GO
ALTER DATABASE dimAero ADD FILEGROUP Fast_growth;
GO
ALTER DATABASE dimAero ADD FILE(
	NAME = N'dimAero_fastGrowth', 
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dimAero_fastGrowth.mdf', 
	SIZE = 3584000KB, 
	FILEGROWTH = 51200KB
)
TO FILEGROUP Fast_growth;
GO

USE dimAero;

CREATE TABLE [factAero](
	data_id INT NOT NULL,
	flight_id INT NOT NULL,
	class_name VARCHAR(255) NOT NULL,
	country_name VARCHAR(255) NOT NULL,
	airport_name VARCHAR(255) NOT NULL,
	sell_date INT NOT NULL,
	pay_price INT NOT NULL,
	client_data INT NOT NULL,
	CONSTRAINT [PK_FACTS] PRIMARY KEY CLUSTERED([data_id] ASC) 
	WITH (IGNORE_DUP_KEY = OFF)
);
GO

CREATE TABLE [dimSaleDate](
	id INT NOT NULL,
	day INT NOT NULL,
	month INT NOT NULL,
	year INT NOT NULL,
	CONSTRAINT [PK_DATE] PRIMARY KEY CLUSTERED ([id] ASC) 
	WITH (IGNORE_DUP_KEY = OFF)
);
GO

CREATE TABLE [dimClientData](
	id INT NOT NULL, 
	firstName VARCHAR(255) NOT NULL,
	lastName VARCHAR(255) NOT NULL,
	fathersName VARCHAR(255) NOT NULL,
	birthdayDate DATETIME NOT NULL,
	CONSTRAINT [PK_CLIENT] PRIMARY KEY CLUSTERED ([id] ASC) 
	WITH (IGNORE_DUP_KEY = OFF)
);
GO

CREATE TABLE [dimFlight](
	id INT NOT NULL,
	date_begin DATETIME NOT NULL,
	date_end DATETIME NOT NULL,
	CONSTRAINT [PK_FLIGHT] PRIMARY KEY CLUSTERED ([id] ASC) 
	WITH (IGNORE_DUP_KEY = OFF)
);
GO

ALTER TABLE [factAero] WITH CHECK ADD 
CONSTRAINT [fact_flightId] 
FOREIGN KEY ([flight_id]) 
REFERENCES  [dimFlight]([id])
ON UPDATE CASCADE
GO

ALTER TABLE [factAero] CHECK CONSTRAINT [fact_flightId]
GO

ALTER TABLE [factAero] WITH CHECK ADD 
CONSTRAINT [fact_sellDate] 
FOREIGN KEY ([sell_date]) 
REFERENCES  [dimSaleDate]([id])
ON UPDATE CASCADE
GO

ALTER TABLE [factAero] CHECK CONSTRAINT [fact_sellDate]
GO

ALTER TABLE [factAero] WITH CHECK ADD 
CONSTRAINT [fact_clientData] 
FOREIGN KEY ([client_data]) 
REFERENCES  [dimClientData]([id])
ON UPDATE CASCADE
GO

ALTER TABLE [factAero] CHECK CONSTRAINT [fact_clientData]
GO

CREATE PARTITION FUNCTION slidingWindowDate (INT)
AS RANGE RIGHT FOR VALUES (20150101, 20161231)

CREATE PARTITION SCHEME slidingWindowDateScheme 
AS PARTITION slidingWindowDate TO ([Fast_growth])

SELECT * FROM Sys.partitions