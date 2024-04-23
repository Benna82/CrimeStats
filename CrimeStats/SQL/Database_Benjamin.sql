USE [master]
GO
/****** Object:  Database [Benjamin]    Script Date: 4/23/2024 3:51:13 PM ******/
CREATE DATABASE [Benjamin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Benjamin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Benjamin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Benjamin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Benjamin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Benjamin] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Benjamin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Benjamin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Benjamin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Benjamin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Benjamin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Benjamin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Benjamin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Benjamin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Benjamin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Benjamin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Benjamin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Benjamin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Benjamin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Benjamin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Benjamin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Benjamin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Benjamin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Benjamin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Benjamin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Benjamin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Benjamin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Benjamin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Benjamin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Benjamin] SET RECOVERY FULL 
GO
ALTER DATABASE [Benjamin] SET  MULTI_USER 
GO
ALTER DATABASE [Benjamin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Benjamin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Benjamin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Benjamin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Benjamin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Benjamin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Benjamin', N'ON'
GO
ALTER DATABASE [Benjamin] SET QUERY_STORE = ON
GO
ALTER DATABASE [Benjamin] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Benjamin]
GO
/****** Object:  Table [dbo].[SAPS_CrimeStats]    Script Date: 4/23/2024 3:51:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAPS_CrimeStats](
	[Country] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[Crime_Category] [varchar](100) NOT NULL,
	[Sub_Crime_Category] [varchar](100) NOT NULL,
	[Financial_Year] [varchar](20) NOT NULL,
	[Incidents] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 27699)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 25597)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 23429)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 24486)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 23174)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 24277)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 24188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 21068)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 23395)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 25440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 1061)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 785)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 679)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 748)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 605)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 666)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 560)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 592)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 583)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 27361)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 25431)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 24818)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 23241)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 23133)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 24125)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 23376)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 20238)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 22933)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 24218)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 1853)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 1832)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 2052)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 2110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 2232)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 2305)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 2409)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 2104)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 2155)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 2519)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 509)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 430)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 301)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 318)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 388)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 396)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 320)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 361)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 419)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2013_2014', 5)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2014_2015', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2016_2017', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2017_2018', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2018_2019', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2020_2021', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2021_2022', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Bank robbery', N'TRIO Crime', N'FY2022_2023', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 7642)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 7810)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 7470)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 7755)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 7446)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 7691)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 7477)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 7717)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 6725)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 7698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 24643)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 24329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 23901)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 24385)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 23758)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 23393)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 22233)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 18521)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 18471)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 18916)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 773)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 769)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 955)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 999)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 1048)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 1111)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 996)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 1342)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Carjacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 1866)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 6766)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 5546)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 6155)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 6567)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 6437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 7283)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 8396)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 8665)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 10140)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 10295)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 13330)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 11848)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 11475)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 11100)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 11171)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 11943)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 12527)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 11399)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 13930)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 15095)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3988)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3753)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3690)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3707)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3463)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3769)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3663)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 2736)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 2836)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 2903)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 203)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 214)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 183)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 160)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 148)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 134)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 120)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 118)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 12674)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 12399)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 11819)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 12062)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 11422)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 12040)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 12055)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 11113)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 12574)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 12874)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3441)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3321)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3628)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3815)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3965)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3879)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3713)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 4407)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 5150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 8212)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 7934)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 7437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 6836)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 6821)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 7305)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 7282)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 6114)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 6969)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 6829)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2013_2014', 2441)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2014_2015', 2474)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2015_2016', 2218)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2016_2017', 2369)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2017_2018', 2395)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2018_2019', 2373)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2019_2020', 2382)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2020_2021', 1954)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2021_2022', 2314)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at non-residential premises', N'Some subcategories of aggravated robbery', N'FY2022_2023', 2205)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2013_2014', 1924)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2014_2015', 1811)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2015_2016', 2054)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2016_2017', 2171)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2017_2018', 2184)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2018_2019', 2188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2019_2020', 2120)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2020_2021', 2101)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2021_2022', 1891)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery at residential premises', N'Some subcategories of aggravated robbery', N'FY2022_2023', 2154)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2013_2014', 8)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2014_2015', 10)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2015_2016', 19)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2016_2017', 11)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2017_2018', 23)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2018_2019', 46)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2019_2020', 21)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2020_2021', 32)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2021_2022', 37)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery of cash in transit', N'TRIO Crime', N'FY2022_2023', 45)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 13443)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 13245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 12777)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 13688)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 13485)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 13578)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 13983)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 11458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 11916)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 13021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 692)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 636)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 747)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 753)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 805)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 890)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 891)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 913)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 9616)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 9224)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 8797)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 8050)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 8094)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 8731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 8708)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 7445)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 8404)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 8269)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 6260)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 6045)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 5654)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 5408)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 4645)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 4711)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 4896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 3266)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 3007)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 3768)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5808)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 6087)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5809)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6023)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6217)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6736)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6800)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 6399)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 5363)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 5561)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 3376)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 3276)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2678)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2739)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2443)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 2384)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2135)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1529)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 1868)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 1693)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 11841)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 12034)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 11225)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 12195)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 11649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 11671)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 10931)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 8349)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 8160)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 8681)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2013_2014', 31)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2014_2015', 34)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2015_2016', 54)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2016_2017', 82)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2017_2018', 92)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2018_2019', 110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2019_2020', 124)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2020_2021', 159)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2021_2022', 136)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Eastern Cape', N'Truck hijacking', N'TRIO Crime', N'FY2022_2023', 176)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 18522)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 17180)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 16341)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 15623)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 13604)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 14989)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 14584)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 12375)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 15040)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 16985)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 287)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 265)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 164)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 123)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 148)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 127)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 171)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 142)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 14465)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 13458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 13116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 11702)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 10842)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 11120)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 10887)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 9550)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 10933)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 12030)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 906)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 816)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 787)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 694)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 617)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 844)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 736)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 727)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 890)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1326)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 226)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 208)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 232)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 154)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 153)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 173)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 163)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 140)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 157)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 163)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 4875)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5210)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 5011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 4963)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 5171)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 5417)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 4751)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4233)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 5008)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 16314)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 15618)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 15323)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 14635)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 13463)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 13244)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 12494)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 10241)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 11008)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 11659)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 270)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 258)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 234)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 235)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 236)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 241)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 199)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 230)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 271)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 4329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 3806)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 3986)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 4511)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 3756)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 4162)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 4255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 4074)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 4698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 4351)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 17064)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 15243)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 15194)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 13568)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 12701)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 13032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 12649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 12184)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 14006)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 15541)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 2637)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 2521)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 2304)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 2192)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 2195)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 2087)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1983)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1410)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1738)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1945)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 176)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 155)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 153)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 158)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 123)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 107)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 84)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 97)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 93)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 8080)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 7655)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 7551)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 6652)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 6068)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 5993)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 5592)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 5642)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 6635)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 6985)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 942)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 943)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 993)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 950)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 1054)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 1000)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 939)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 834)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 992)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 979)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 3629)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 3290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 3059)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 2702)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 2573)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 2646)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 2936)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 2258)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 2595)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 2671)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 989)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 852)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 756)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 973)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 886)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 955)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 876)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 796)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 831)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 871)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 753)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 718)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 773)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 875)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 864)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 851)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 725)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 710)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 726)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 638)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 4)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 9)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 5)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 17)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 8)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 11)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 7)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 5347)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 5239)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4778)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 5147)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 5032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 5339)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 5119)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3992)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 4381)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 4603)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 553)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 441)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 484)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 474)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 435)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 517)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 540)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 489)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 567)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 488)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 4584)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 4094)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3928)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3488)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3284)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3457)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3746)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 2971)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 3416)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 3415)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 3191)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 3148)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 3175)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 3214)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 2875)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 2855)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 2792)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 2259)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 2137)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 2513)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 4051)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 3527)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 3466)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 3677)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 4032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 4066)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 3785)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 3317)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 3259)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 3024)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2022)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 1743)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 1745)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 1588)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 1596)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 1413)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 1344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 836)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 865)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 793)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5686)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 5399)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 4878)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 4822)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 4599)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 4884)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 4527)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 3481)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 3535)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 4147)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 71)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 89)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 65)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 41)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 32)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 39)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 44)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 45)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 77)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Free State', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 53)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 110545)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 109422)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 102599)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 97633)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 90739)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 87065)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 82595)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 62985)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 68983)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 75296)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 1172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 1042)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 992)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 724)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 495)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 532)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 476)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 443)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 505)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 41182)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 41830)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 42790)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 39684)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 39552)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 39805)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 38362)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 33605)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 37731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 38031)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3866)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 4202)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4574)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 4872)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4462)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4455)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 4639)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4312)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 5309)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 6161)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 429)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 431)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 353)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 286)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 314)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 332)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 249)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 229)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 273)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 11)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 9)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 6)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 16452)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 16983)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 16412)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 17173)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 16220)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 15985)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 15582)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 14326)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 12559)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 13599)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 67988)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 66172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 64968)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 63661)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 56255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 53092)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 48980)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 33815)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 34363)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 35899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 6056)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 6867)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 7367)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 8610)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 8269)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 7776)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 9025)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 8458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 10964)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 11248)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 26639)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 23836)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 23680)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 24147)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 24912)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 28479)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 28941)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 28557)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 33783)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 37581)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 44159)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 42918)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 44255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 42083)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 43587)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 45590)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 47356)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 42621)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 47031)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 50891)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 15579)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 17379)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 18051)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 17367)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 16984)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 17757)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 18088)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 13436)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 14507)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 15682)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 445)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 327)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 338)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 303)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 229)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 270)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 277)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 238)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 153)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 34585)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 34805)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 34320)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 33299)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 31961)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 30743)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 28756)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 24553)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 28894)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 28767)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3325)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3671)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3842)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 4101)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4233)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4495)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 4555)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4079)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 5570)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 6411)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 8141)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 7916)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 7605)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 7700)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 8062)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 8417)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 8509)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 7525)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 8675)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 8708)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 6014)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 6329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 6910)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 7187)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 6679)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 6662)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 6989)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 5992)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 6455)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 6312)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 7438)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 8174)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 7896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 8731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 8333)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 8644)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 7695)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 6933)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 7497)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 7728)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 60)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 39)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 32)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 33)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 80)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 62)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 61)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 87)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 72)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 88)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 42506)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 47362)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 49792)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 53793)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 51706)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 52040)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 53927)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 44109)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 49700)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 53633)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 1249)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 1228)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 1214)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 1277)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 1511)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 1733)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 1775)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 1750)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 2010)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 1863)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 10264)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 9902)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 9510)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 9566)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 10116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 10752)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 10810)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 9749)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 11178)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10997)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 22201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 22562)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 22157)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 21194)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 19436)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 18729)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 18160)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 15347)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 13206)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 15659)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 784)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 801)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 818)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 987)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 998)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 994)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 988)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1020)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 886)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 1112)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 27436)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 27147)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 26646)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 27674)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 25705)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 24321)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 23819)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 18219)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 19465)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 19530)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 42722)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 44809)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 42111)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 45266)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 41298)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 39171)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 37475)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 23526)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 23802)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 23931)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 547)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 804)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 695)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 668)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 708)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 647)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 629)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 774)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 1043)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Gauteng', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 1219)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 49846)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 47622)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 43573)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 42577)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 39615)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 40193)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 39647)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 32442)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 34876)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 37292)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 854)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 825)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 699)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 679)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 754)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 762)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 619)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 1048)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 690)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 28982)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 29201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 28665)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 26824)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 26693)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 26878)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 27418)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 23531)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 26518)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 26397)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3835)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3918)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4041)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3914)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4099)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4203)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 4161)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4391)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 5917)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 6307)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 274)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 271)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 226)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 204)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 235)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 251)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 180)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 236)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 394)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 11194)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 11032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 11656)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 11253)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 10756)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 10863)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 10844)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 10566)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 13268)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 8882)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 43969)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 43274)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 42429)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 41013)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 38545)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 38790)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 35290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 28735)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 26006)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 26578)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 2262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 2190)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 2493)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 3029)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 2698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 2764)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 3041)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 2669)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 3279)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 3731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 12431)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 11227)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 11395)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 12405)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 12308)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 14899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 14343)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 13872)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 16451)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 18247)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 26307)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 24011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 23703)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 22285)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 22842)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 23521)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 24900)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 21480)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 24843)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 25965)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 8397)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 7857)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 7524)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 7305)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 6596)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7090)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7183)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 5459)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 6438)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 7562)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 240)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 212)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 187)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 164)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 140)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 174)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 164)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 139)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 14954)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 14605)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 14709)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 14010)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 12958)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 13704)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 13358)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 12608)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 15464)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 14083)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3616)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3810)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3929)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 4014)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4382)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4395)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 4859)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4825)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 6495)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 6947)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 8001)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 7427)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 7307)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 7032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 7243)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 7667)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 8017)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 6685)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 7966)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 8433)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 2696)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 2750)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 2825)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 2951)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 3047)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 3055)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 3072)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 3303)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 3403)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 3531)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 4099)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 3958)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 4082)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 4255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 4174)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 4182)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 4575)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 4820)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 5221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 5991)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 37)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 18)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 21)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 25)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 30)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 16)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 22)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 41)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 33)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 20957)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 20881)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 21061)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 22327)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 21543)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 22110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 22824)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 20964)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 23897)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 26798)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 1336)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 1138)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 1157)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 1039)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 1148)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 1266)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 1367)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 1172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 1294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 1140)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 9889)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 9079)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 8947)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 8484)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 8759)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 9308)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 9809)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 8201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 9617)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10106)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 13378)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 14118)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 13648)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 12302)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 11620)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 10878)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 10138)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 7631)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 6967)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 8033)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5754)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 5956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 5959)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6322)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6380)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6252)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 6059)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 6084)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 5665)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 8674)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 8404)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 8673)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 8413)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 8240)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 8050)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 8030)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 6073)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 6151)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 6343)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 18655)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 18148)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 17896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 16854)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 16344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 14912)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 14388)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 10621)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 10299)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 11813)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 46)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 63)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 71)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 81)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 52)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 80)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 70)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 77)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 83)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Kwa-Zulu Natal', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 105)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 18239)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 19010)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 19866)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 20717)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 17339)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 17508)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 15709)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 13024)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 14679)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 17452)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 565)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 584)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 612)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 484)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 431)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 390)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 354)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 260)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 340)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Arson', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 12631)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 13501)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 14132)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 12934)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 11998)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 12116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 11368)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 9976)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 12192)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 13205)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 748)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 791)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 872)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 827)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 883)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 834)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 794)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 741)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1102)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1068)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 299)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 258)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 195)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 193)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 196)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 190)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 177)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 211)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 229)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 6990)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 7042)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 7382)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 7281)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6711)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6315)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6703)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 5784)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 5403)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 6007)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 16458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 16430)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 16199)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 15956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 14319)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 14634)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 14502)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 11577)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 11754)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 11768)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 248)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 447)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 582)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 474)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 426)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 537)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 569)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 3999)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 3495)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 3731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 4021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 3734)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 4118)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 4275)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 4324)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 5095)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 5853)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 9040)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 9067)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 9833)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 8365)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7512)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7428)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7381)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 7645)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 9534)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10889)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3198)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3381)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3544)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3224)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 2838)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 2908)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 2899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 2216)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 2618)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 3232)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 86)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 80)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 135)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 71)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 63)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 71)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 48)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 59)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 42)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 48)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 6566)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 6944)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 7603)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6859)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6805)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6771)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6589)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 6606)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 7428)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Malicious damage to property', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 7808)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 727)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 775)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 895)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 813)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 910)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 914)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 882)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 717)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1012)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1013)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 3768)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 3725)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 3728)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 3317)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 3300)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 3501)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 3436)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 3126)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 3625)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 4021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 1374)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 1521)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 1800)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 1749)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 1820)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 1838)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 2165)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 1560)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 1821)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 1943)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 958)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 1115)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 1185)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 1178)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 1487)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 1300)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 1209)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 1108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 1134)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 1354)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 7)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 9)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 10)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 14)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 13)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 13)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 25)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 24)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 5156)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 6116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 6707)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 6735)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7039)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7006)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7466)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 6105)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 6923)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 8004)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 269)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 244)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 240)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 303)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 292)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 316)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 358)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 431)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 391)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 4422)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 4312)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4365)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3823)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3859)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4060)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3990)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3720)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 4309)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 4689)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 3899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 3909)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 3799)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 3742)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 3259)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 3455)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 3796)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 2784)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 2899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 3350)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 1541)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 1642)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 1729)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 1920)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2141)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 2396)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2331)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1970)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 2274)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 2539)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 976)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 988)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 1150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 1014)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 1021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 861)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 787)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 614)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 821)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 777)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5475)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 5489)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5555)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 4983)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 4440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 4262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 4126)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 3048)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 3188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 3412)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 26)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 25)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 32)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 25)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 18)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 31)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Limpopo', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 38)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 19630)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 18934)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 18465)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 18498)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 17071)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 16858)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 15884)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 13447)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 13359)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 13682)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 260)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 292)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 287)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 260)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 254)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 235)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 206)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 288)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 270)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 10726)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 10788)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 11370)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 10910)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 10697)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 11407)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 11250)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 9682)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 10588)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10766)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 764)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 705)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 800)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 953)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 898)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 1090)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1016)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1401)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1417)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 198)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 174)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 161)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 146)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 117)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 105)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 99)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 100)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 103)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 5294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 5547)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 6018)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6165)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 5985)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6034)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 5731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 5505)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4799)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 5279)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 18508)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 18219)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 18180)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 18535)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 17597)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 16533)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 16040)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 12555)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 11604)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 12285)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 360)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 510)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 632)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 811)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 898)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 917)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 999)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 967)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 1467)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 1271)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 5066)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 4499)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 4735)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 5152)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 5180)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 5188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 5104)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 5126)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 5924)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 5990)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 7471)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 7516)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 7654)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 7720)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7648)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 8204)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 8423)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 7857)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 8481)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 8810)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 2981)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 2935)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 2747)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 2954)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 2542)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 2627)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 2610)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1860)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 2011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 2007)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 105)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 79)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 82)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 99)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 85)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 66)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 66)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 62)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 73)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 45)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 5726)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 5854)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 5836)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 5583)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 5529)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 5796)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 5955)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 5497)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 5984)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 5761)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 807)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 833)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 862)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 954)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 923)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 996)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1046)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 935)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 3252)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 3000)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 2847)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 2712)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 2713)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 2903)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 2971)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 2611)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 3016)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 2772)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 1257)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 1367)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 1564)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 1765)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 1625)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 1758)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 1783)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 1662)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 1978)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 1947)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 1120)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 1114)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 1085)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 1141)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 1128)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 1069)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 1184)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 1271)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 1475)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 1582)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 9)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 14)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 19)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 22)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 24)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 16)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 17)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 21)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 21)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 5259)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 5663)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 6012)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 6712)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 6766)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7091)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7672)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 7004)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 8864)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 8948)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 243)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 264)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 282)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 384)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 371)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 362)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 364)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 374)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3798)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3474)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3335)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3470)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3513)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3134)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 3553)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 3294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 3151)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 3494)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 3397)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 3454)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 3290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 3189)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 3379)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 2698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 2631)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 3048)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2208)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 2216)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2364)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2903)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 3181)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 3255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2987)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 2706)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 2780)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 2722)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2341)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 2303)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2223)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2211)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2209)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 2290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2304)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1655)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 1676)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 1484)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 7785)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 8011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 7388)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6938)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6837)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6896)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 5973)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 4816)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4317)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 4490)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 198)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 156)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 194)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 180)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 144)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 111)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 210)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Mpumalanga', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 229)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 18042)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 17943)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 16751)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 15677)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 14268)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 14610)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 14579)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 12619)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 14054)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 16088)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 348)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 314)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 323)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 347)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 246)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 228)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 268)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 250)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 13464)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 13334)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 13614)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 12731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 13131)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 13250)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 12712)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 11003)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 13029)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 14377)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 1069)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 984)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 898)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 864)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 857)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 765)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 799)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 872)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1039)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 368)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 315)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 284)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 246)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 261)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 214)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 192)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 217)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 4861)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 5080)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5313)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6042)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 5563)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 5732)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 5204)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 4903)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 4996)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 15388)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 15687)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 15568)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 15908)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 15267)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 15436)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 14156)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 11469)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 11393)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 11850)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 242)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 278)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 370)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 390)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 425)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 478)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 493)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 366)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 519)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 612)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 5658)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 4016)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 4212)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 3914)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 3744)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 5155)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 3768)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 3792)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 5885)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 7110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 6750)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 6930)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 6942)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 7021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7828)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 8611)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 8733)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 8098)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 9391)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10622)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 2341)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 2419)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 2417)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 2589)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 2824)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 2764)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 2581)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 2007)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 2232)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 2539)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 118)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 189)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 142)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 146)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 95)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 90)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 81)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 53)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 85)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 49)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 5853)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 5902)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 5762)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 5774)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 5821)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 6285)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 5964)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 5760)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 6471)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 6903)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 824)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 853)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 907)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 901)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 950)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 961)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 864)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 734)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1029)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 3829)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 3771)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 3433)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 3615)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 3479)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 3374)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 3136)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 2661)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 3098)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 3218)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 1366)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 1419)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 1394)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 1493)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 1263)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 1329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 1307)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 1172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 1389)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 1394)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 1004)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 1110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 1065)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 1290)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 1145)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 1291)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 1076)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 1034)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 1080)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 1093)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 5)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 4)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 4)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 23)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 10)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 11)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 5)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 8)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 5409)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 5977)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 6281)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 7017)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 6825)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7023)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 6807)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 5733)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 6492)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 7108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 301)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 310)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 305)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 319)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 347)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 343)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 345)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 356)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 337)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 387)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 4616)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 4585)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4164)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 4326)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4182)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4021)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3824)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 3737)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 3899)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 2364)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 2270)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 2188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 2176)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 2008)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 2075)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 2011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 1834)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 1708)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 1918)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2388)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 2574)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2605)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 3192)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 3447)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 3557)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 3005)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 2693)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 2772)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 2955)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2039)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 1984)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2070)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2068)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2112)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 1999)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 1929)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1452)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 1652)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 1723)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 6023)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 6349)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 5913)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6293)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 5866)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6315)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 5583)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 4730)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4554)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 4396)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 46)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 45)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 42)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 48)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 41)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 54)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 36)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 37)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 68)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'North West', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 67)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 7016)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 7437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 7316)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 7104)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 6871)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 7492)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 7804)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 6457)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 7286)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 8652)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 163)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 149)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 156)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 162)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 137)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 179)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 196)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 8716)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 8813)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 8889)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 8173)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7723)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7790)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7594)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 6356)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 7017)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 6810)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 603)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 562)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 658)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 550)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 480)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 532)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 468)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 474)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 780)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1700)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 153)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 128)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 147)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 154)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 130)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 142)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 101)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 144)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2373)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 2270)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2203)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2403)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 2722)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2315)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 2344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 2352)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 2759)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 6013)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 6204)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 6469)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 6518)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 6228)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6325)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6208)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 5543)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 5280)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 6363)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 28)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 47)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 29)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 37)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 39)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 34)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 20)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 23)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 38)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 1035)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 997)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 1037)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 1108)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 1097)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 1088)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 1188)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 1186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 1666)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 1872)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 4777)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 4803)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 4598)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 4440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 4375)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 4481)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 4533)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4301)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 5045)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 5761)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 1277)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 1262)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 1348)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 1506)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 1285)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 1408)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1170)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 999)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1107)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 62)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 41)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 45)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 55)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 63)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 52)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 50)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 38)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 52)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 39)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 3087)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 3209)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 3084)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 2954)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 2927)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 3243)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 3104)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 3034)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 3614)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 4077)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 413)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 372)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 340)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 322)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 326)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 287)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 366)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 392)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 1267)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 1181)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 1287)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 1143)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 1100)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 1121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 1125)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 908)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 952)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 1099)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 282)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 240)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 258)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 304)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 299)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 332)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 198)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 225)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 211)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 269)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 110)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 123)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 106)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 142)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 159)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 157)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 132)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 151)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 141)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 157)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 1402)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 1446)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 1387)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 1505)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 1639)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 1780)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1643)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1426)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1323)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1569)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 249)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 228)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 240)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 235)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 245)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 255)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 229)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 207)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 212)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 253)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 1731)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 1578)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 1719)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 1587)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 1538)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 1578)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 1590)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 1295)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 1317)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 1535)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 1302)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 1360)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 1276)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 1407)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 1309)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 1344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 1546)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 1134)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 990)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 1345)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 1211)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 1331)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 1332)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 1356)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 1558)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 1313)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 1259)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 1221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 861)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 987)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 321)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 327)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 246)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 219)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 233)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 215)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 214)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 134)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 172)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 162)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 2976)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 2898)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 2962)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 2911)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 2609)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 2845)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 2739)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 2186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 2117)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 2227)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 4)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 3)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Northern Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 2)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 93978)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 97396)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 92032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 85957)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 79975)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 77465)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 67827)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 49928)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 57543)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'All theft not mentioned elsewhere', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 64565)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 782)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 757)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 781)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 762)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 842)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 749)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 674)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 711)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Arson', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 711)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 24806)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 26200)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 25539)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 24417)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 23583)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 24488)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 23753)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 19452)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 21901)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Assault with the intent to inflict grievous bodily harm', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 23540)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 3345)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3727)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3444)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3387)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3698)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3860)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3555)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 4143)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 3669)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 3594)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 441)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 409)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 365)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 372)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 341)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 274)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 321)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 389)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Attempted sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 406)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2013_2014', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2014_2015', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2015_2016', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2016_2017', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2017_2018', 1)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2018_2019', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2019_2020', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2020_2021', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2021_2022', 7)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Bank robbery', N'Some subcategories of aggravated robbery', N'FY2022_2023', 0)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 13472)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 13719)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 13344)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 12535)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 11379)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 10711)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 10440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 9612)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 8209)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at non-residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 8360)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 50503)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 47783)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 47569)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 46043)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 42662)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 39418)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 36056)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 27265)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 26291)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Burglary at residential premises', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 28175)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2013_2014', 956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2014_2015', 1530)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2015_2016', 2032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2016_2017', 2201)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2017_2018', 2182)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2018_2019', 2294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2019_2020', 2760)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2020_2021', 2630)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2021_2022', 2562)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Carjacking', N'TRIO Crime', N'FY2022_2023', 3096)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 10821)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 10408)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 10986)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 11725)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 12109)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 13451)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 13599)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 13294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 18415)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Commercial crime', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 21293)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 37183)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 39150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 41304)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 39868)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 38579)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 39202)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 38992)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 33857)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 37702)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common assault', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 41800)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 13107)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 13420)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 12485)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 12574)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 12003)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 11355)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 11381)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 7354)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 8221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Common robbery', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 10080)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2013_2014', 364)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2014_2015', 369)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2015_2016', 317)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2016_2017', 309)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2017_2018', 249)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2018_2019', 296)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2019_2020', 242)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2020_2021', 234)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2021_2022', 304)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Contact sexual offences', N'Sexual Offences - Breakdown', N'FY2022_2023', 185)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2013_2014', 26458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2014_2015', 29289)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2015_2016', 29217)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2016_2017', 29216)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2017_2018', 28001)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2018_2019', 28514)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2019_2020', 27088)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2020_2021', 24218)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2021_2022', 26339)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Malicious damage to property', N'CONTACT-RELATED CRIMES', N'FY2022_2023', 27860)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 2904)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 3186)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 3224)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 3311)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 3729)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 3974)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 3975)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 3848)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 4109)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Murder', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 4150)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2013_2014', 5250)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2014_2015', 4951)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2015_2016', 4800)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2016_2017', 4771)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2017_2018', 4744)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2018_2019', 4649)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2019_2020', 4877)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2020_2021', 4442)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2021_2022', 4843)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Rape', N'Sexual Offences - Breakdown', N'FY2022_2023', 5029)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2013_2014', 2154)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2014_2015', 2218)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2015_2016', 1973)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2016_2017', 1889)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2017_2018', 2033)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2018_2019', 1689)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2019_2020', 1879)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2020_2021', 1567)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2021_2022', 1610)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at non-residential premises', N'TRIO Crime', N'FY2022_2023', 1582)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2013_2014', 1878)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2014_2015', 2158)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2015_2016', 2574)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2016_2017', 2560)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2017_2018', 2787)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2018_2019', 2749)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2019_2020', 2414)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2020_2021', 2742)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2021_2022', 2667)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery at residential premises', N'TRIO Crime', N'FY2022_2023', 2368)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2013_2014', 18)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2014_2015', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2015_2016', 24)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2016_2017', 35)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2017_2018', 26)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2018_2019', 15)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2019_2020', 12)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2020_2021', 17)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2021_2022', 14)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery of cash in transit', N'Some subcategories of aggravated robbery', N'FY2022_2023', 11)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 19484)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 23116)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 23732)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 24032)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 24329)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 24065)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 24549)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 19050)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 19292)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Robbery with aggravating circumstances', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 22441)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2013_2014', 1705)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2014_2015', 1640)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2015_2016', 1576)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2016_2017', 1670)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2017_2018', 1710)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2018_2019', 1757)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2019_2020', 1910)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2020_2021', 1440)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2021_2022', 1627)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual assault', N'Sexual Offences - Breakdown', N'FY2022_2023', 1674)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2013_2014', 7760)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2014_2015', 7369)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2015_2016', 7130)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2016_2017', 7115)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2017_2018', 7075)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2018_2019', 7043)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2019_2020', 7303)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2020_2021', 6437)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2021_2022', 7163)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Sexual offences', N'CONTACT CRIMES (CRIMES AGAINST THE  PERSON)', N'FY2022_2023', 7294)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2013_2014', 14741)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2014_2015', 14421)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2015_2016', 13492)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2016_2017', 14557)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2017_2018', 13738)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2018_2019', 12931)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2019_2020', 13165)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2020_2021', 10378)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2021_2022', 9004)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Shoplifting', N'OTHER SERIOUS CRIMES', N'FY2022_2023', 10063)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 789)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 831)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 861)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 885)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 953)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 975)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 1011)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 925)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 722)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Stock-theft', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 690)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 9460)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 8918)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 8378)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 7381)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 7104)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 6791)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 6359)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 4511)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 4732)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft of motor vehicle and motorcycle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 4956)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2013_2014', 42638)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2014_2015', 42221)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2015_2016', 41458)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2016_2017', 37910)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2017_2018', 35532)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2018_2019', 34120)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2019_2020', 32471)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2020_2021', 22426)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2021_2022', 21532)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Theft out of or from motor vehicle', N'PROPERTY-RELATED CRIMES', N'FY2022_2023', 24076)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2013_2014', 40)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2014_2015', 62)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2015_2016', 46)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2016_2017', 58)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2017_2018', 121)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2018_2019', 117)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2019_2020', 129)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2020_2021', 173)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2021_2022', 93)
GO
INSERT [dbo].[SAPS_CrimeStats] ([Country], [Province], [Crime_Category], [Sub_Crime_Category], [Financial_Year], [Incidents]) VALUES (N'South Africa', N'Western Cape', N'Truck hijacking', N'Some subcategories of aggravated robbery', N'FY2022_2023', 106)
GO
/****** Object:  StoredProcedure [dbo].[SAPS_SP_Total_PerProvince]    Script Date: 4/23/2024 3:51:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin van Staden
-- Create date: 2024-04-23
-- Description:	Select Total Incidents per Province for last year
-- =============================================
CREATE PROCEDURE [dbo].[SAPS_SP_Total_PerProvince]
AS
BEGIN

SET NOCOUNT ON;

	SELECT
		[Province],
		[Financial_Year],
		SUM([Incidents]) AS [Total_Incidents]
	FROM 
		[Benjamin].[dbo].[SAPS_CrimeStats]
	GROUP BY
		[Province],
		[Financial_Year]
	ORDER BY
		2,1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SAPS_SP_Total_PerProvince_LatestYear]    Script Date: 4/23/2024 3:51:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin van Staden
-- Create date: 2024-04-23
-- Description:	Select Total Incidents per Province for last year
-- =============================================
CREATE PROCEDURE [dbo].[SAPS_SP_Total_PerProvince_LatestYear]
AS
BEGIN

SET NOCOUNT ON;

		SELECT
			[Province],
			SUM([Incidents]) AS [Total_Incidents]
		FROM 
			[Benjamin].[dbo].[SAPS_CrimeStats]
		WHERE
			Financial_Year = (SELECT MAX(Financial_Year) FROM [Benjamin].[dbo].[SAPS_CrimeStats])
		GROUP BY
			[Province]
		ORDER BY
			2 DESC
END
GO
USE [master]
GO
ALTER DATABASE [Benjamin] SET  READ_WRITE 
GO
