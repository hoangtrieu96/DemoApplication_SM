USE [DemoApplication_Migration]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/15/2019 3:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Gender] [varchar](6) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Money] [numeric](12, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (1, N'Trieu', N'Nguyen', N'Male', CAST(N'1989-06-20' AS Date), N'65 Bell Street', CAST(10.20 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (2, N'Richard', N'Nguyen', N'Male', CAST(N'1988-04-23' AS Date), N'27 Pullman Hill', CAST(302.45 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (3, N'Adam', N'Levine', N'Male', CAST(N'2000-10-20' AS Date), N'33 Arena Walk', CAST(302.22 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (4, N'Ragnar', N'Lothbrok', N'Male', CAST(N'1997-07-27' AS Date), N'45 Rine Place', CAST(43949.02 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (6, N'Jadabaoth', N'Quin', N'Male', CAST(N'1983-09-23' AS Date), N'7 Nazarick', CAST(30492.84 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (7, N'Helen', N'Hellgradon', N'Female', CAST(N'1997-12-26' AS Date), N'73/23 Hell', CAST(0.20 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (10, N'Ranero', N'Ohtu', N'Male', CAST(N'2091-10-10' AS Date), N'jd', CAST(94.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (11, N'Brida', N'Lothbrok', N'Female', CAST(N'1945-10-10' AS Date), N'Ireland Isle', CAST(4048.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (12, N'Floki', N'Builder', N'Male', CAST(N'1988-02-21' AS Date), N'23 Renha', CAST(23.23 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (13, N'Edward', N'Rex', N'Male', CAST(N'2019-01-10' AS Date), N'10 Winchester', CAST(92.23 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (15, N'Wolfgang', N'Mozart', N'Male', CAST(N'2019-01-13' AS Date), N'84 Ringe Rong', CAST(54.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (17, N'Ludwig', N'Beethoven', N'Male', CAST(N'2019-04-10' AS Date), N'837 Hani', CAST(3123.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (18, N'Franz', N'Lizst', N'Male', CAST(N'2019-04-12' AS Date), N'92 Onue', CAST(301.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (19, N'Frederic', N'Chopin', N'Male', CAST(N'2019-03-13' AS Date), N'91 Warsaw', CAST(210.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (20, N'Handel', N'Bartok', N'Male', CAST(N'2019-04-12' AS Date), N'133 Une', CAST(22.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (21, N'Jonhan', N'Bach', N'Male', CAST(N'1962-05-29' AS Date), N'27 Quater', CAST(91.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (22, N'Robert', N'Schuman', N'Male', CAST(N'1923-03-06' AS Date), N'91 Wena', CAST(7461.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (23, N'Ed', N'Sheeran', N'Male', CAST(N'2001-07-01' AS Date), N'63 Vienna', CAST(29383.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (24, N'Moon', N'Rider', N'Male', CAST(N'1987-10-20' AS Date), N'222 Yune', CAST(292.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (26, N'Test', N'TestToo', N'Male', CAST(N'2011-10-10' AS Date), N'202 Ona', CAST(2323.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (31, N'Sword', N'Dane', N'Male', CAST(N'1944-12-01' AS Date), N'281 Denmark', CAST(44.30 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (32, N'Ali', N'Lee', N'Male', CAST(N'2001-01-19' AS Date), N'23 Aue', CAST(2312312323.00 AS Numeric(12, 2)))
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Gender], [DOB], [Address], [Money]) VALUES (33, N'Test', N'Last', N'Male', CAST(N'1982-03-21' AS Date), N'Nowhere', CAST(941.00 AS Numeric(12, 2)))
SET IDENTITY_INSERT [dbo].[Customers] OFF
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO
