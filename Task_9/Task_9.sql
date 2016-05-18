USE [master]
GO
IF DB_ID(N'Airticket') IS NOT NULL
DROP DATABASE [Airticket];
GO

CREATE DATABASE [Airticket]
CONTAINMENT = NONE
ON PRIMARY
( NAME = N'Airticket', FILENAME = N'C:\Airticket.mdf' , SIZE = 51200KB ,
MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB )
LOG ON
( NAME = N'Airticket_log', FILENAME = N'C:\Airticket_log.ldf' , SIZE = 10240KB ,
MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Airticket] SET COMPATIBILITY_LEVEL = 110
GO

ALTER DATABASE [Airticket] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [Airticket] SET RECOVERY SIMPLE WITH NO_WAIT
GO
