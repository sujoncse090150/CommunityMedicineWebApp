USE [CommunityMedicineDB]
GO
/****** Object:  Table [dbo].[TreatmentTBL]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TreatmentTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[MedicineId] [int] NOT NULL,
	[Dose] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Note] [varchar](150) NOT NULL,
	[ObservationId] [int] NOT NULL,
	[TakenTime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TreatmentTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TreatmentTBL] ON
INSERT [dbo].[TreatmentTBL] ([Id], [DiseaseId], [MedicineId], [Dose], [Quantity], [Note], [ObservationId], [TakenTime]) VALUES (1, 1, 4, N'0+0+1', 21, N'swss', 1, N'After Meal')
SET IDENTITY_INSERT [dbo].[TreatmentTBL] OFF
/****** Object:  Table [dbo].[thana_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thana_table](
	[thana_id] [int] IDENTITY(1,1) NOT NULL,
	[thana_name] [varchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_thana_table] PRIMARY KEY CLUSTERED 
(
	[thana_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_thana_table] UNIQUE NONCLUSTERED 
(
	[thana_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[thana_table] ON
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (1, N'Dhanmondi', 1)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (2, N'Kolabagan', 1)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (3, N'Gulshan', 1)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (4, N'Uttra', 1)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (5, N'NgSadar', 2)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (6, N'Sonargaow', 2)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (7, N'Mithapukur', 3)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (8, N'Pirgang', 3)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (9, N'Vinnojagat', 3)
INSERT [dbo].[thana_table] ([thana_id], [thana_name], [district_id]) VALUES (10, N'Pairaband', 3)
SET IDENTITY_INSERT [dbo].[thana_table] OFF
/****** Object:  Table [dbo].[stockmedicine_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stockmedicine_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thana_id] [int] NOT NULL,
	[center_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_stock.medicine_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[stockmedicine_table] ON
INSERT [dbo].[stockmedicine_table] ([id], [thana_id], [center_id], [medicine_id], [quantity]) VALUES (1, 2, 7, 3, 200)
INSERT [dbo].[stockmedicine_table] ([id], [thana_id], [center_id], [medicine_id], [quantity]) VALUES (2, 2, 7, 3, 700)
INSERT [dbo].[stockmedicine_table] ([id], [thana_id], [center_id], [medicine_id], [quantity]) VALUES (3, 2, 7, 4, 400)
INSERT [dbo].[stockmedicine_table] ([id], [thana_id], [center_id], [medicine_id], [quantity]) VALUES (4, 2, 7, 1, 200)
INSERT [dbo].[stockmedicine_table] ([id], [thana_id], [center_id], [medicine_id], [quantity]) VALUES (5, 1, 1, 3, 115)
SET IDENTITY_INSERT [dbo].[stockmedicine_table] OFF
/****** Object:  Table [dbo].[PatientTBL]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatientTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VoterId] [varchar](50) NOT NULL,
	[ServiceTimes] [int] NOT NULL,
 CONSTRAINT [PK_PatientTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PatientTBL] ON
INSERT [dbo].[PatientTBL] ([Id], [VoterId], [ServiceTimes]) VALUES (1, N'8918861165742', 23)
SET IDENTITY_INSERT [dbo].[PatientTBL] OFF
/****** Object:  Table [dbo].[ObservationTBL]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObservationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Observation] [varchar](max) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[PatientId] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
 CONSTRAINT [PK_ObservationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ObservationTBL] ON
INSERT [dbo].[ObservationTBL] ([Id], [Observation], [Date], [PatientId], [CenterId], [DoctorId]) VALUES (1, N'wdsdsd', N'', 1, 7, 2)
SET IDENTITY_INSERT [dbo].[ObservationTBL] OFF
/****** Object:  Table [dbo].[medicine_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medicine_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_medicine_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_medicine_table] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[medicine_table] ON
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (3, N'Abc')
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (4, N'ABCD')
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (2, N'Alatrol 500mg')
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (6, N'Indever .5')
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (1, N'Napa Extra 500mg')
INSERT [dbo].[medicine_table] ([id], [name]) VALUES (5, N'Test')
SET IDENTITY_INSERT [dbo].[medicine_table] OFF
/****** Object:  Table [dbo].[doctor_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctor_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctorname] [varchar](50) NOT NULL,
	[degree] [varchar](50) NOT NULL,
	[specilization] [varchar](50) NOT NULL,
	[Center_id] [int] NULL,
 CONSTRAINT [PK_doctor_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[doctor_table] ON
INSERT [dbo].[doctor_table] ([id], [doctorname], [degree], [specilization], [Center_id]) VALUES (1, N'A', N'A', N'A', 5)
INSERT [dbo].[doctor_table] ([id], [doctorname], [degree], [specilization], [Center_id]) VALUES (2, N'B', N'C', N'D', 7)
SET IDENTITY_INSERT [dbo].[doctor_table] OFF
/****** Object:  Table [dbo].[district_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[district_table](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_district_table] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_district_table] UNIQUE NONCLUSTERED 
(
	[district_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[district_table] ON
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (9, N'Bandorban')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (10, N'Bhola')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (1, N'Dhaka')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (4, N'Dinajpur')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (8, N'Gazipur')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (5, N'Khulna')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (7, N'Manikginj')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (2, N'Narangong')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (11, N'Pabna')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (3, N'Rangpur')
INSERT [dbo].[district_table] ([district_id], [district_name]) VALUES (6, N'Sylet')
SET IDENTITY_INSERT [dbo].[district_table] OFF
/****** Object:  Table [dbo].[disease_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disease_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[treatment] [varchar](max) NOT NULL,
 CONSTRAINT [PK_disease_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[disease_table] ON
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (1, N'Malaria', N'It is a very Dangerous ', N'Firstly you need to take')
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (3, N'Cholera ', N'Cholera is an acute intestinal infection caused by ingestion', N'Vomiting also occurs in most patients')
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (4, N'Typhoid ', N'Typhoid fever, also known simply as typhoid, is a symptomatic bacterial infection', N'The cause is the bacteria Salmonella Typhi, also known as Salmonella enterica serotype')
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (5, N'Dengue ', N'Dengue is transmitted by several species of mosquito within the genus', N' species of mosquito within the genus')
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (6, N'Colera', N'sss', N'sss')
INSERT [dbo].[disease_table] ([id], [name], [description], [treatment]) VALUES (7, N'Pain ', N'Very painful', N'can take physical exercise or medicine')
SET IDENTITY_INSERT [dbo].[disease_table] OFF
/****** Object:  Table [dbo].[CenterPatientRelationTBL]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenterPatientRelationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
 CONSTRAINT [PK_CenterPatientRelationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CenterPatientRelationTBL] ON
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (13, 6, 7)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (14, 7, 11)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (15, 7, 11)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (16, 7, 11)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (17, 7, 11)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (18, 7, 11)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId]) VALUES (19, 1, 7)
SET IDENTITY_INSERT [dbo].[CenterPatientRelationTBL] OFF
/****** Object:  Table [dbo].[CenterMedicineRelationTBL]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenterMedicineRelationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CenterId] [int] NOT NULL,
	[MedicineId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CenterMedicineRelationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CenterMedicineRelationTBL] ON
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (11, 7, 8, 2990)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (12, 7, 4, 947)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (13, 7, 10, 500)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (14, 10, 8, 180)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (15, 10, 9, 200)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (16, 10, 10, 200)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (17, 11, 10, 430)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (18, 11, 9, 470)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (19, 11, 8, 450)
SET IDENTITY_INSERT [dbo].[CenterMedicineRelationTBL] OFF
/****** Object:  Table [dbo].[center_table]    Script Date: 07/03/2015 03:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[center_table](
	[center_id] [int] IDENTITY(1,1) NOT NULL,
	[center_name] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[thana_id] [int] NOT NULL,
 CONSTRAINT [IX_center_table] UNIQUE NONCLUSTERED 
(
	[center_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[center_table] ON
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (1, N'Dhanmondi Helth Center', N'Dhanmondi-Community Helth Center', N'rVgDqbjg', 1)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (2, N'Kolabagan Helth Center', N'Kolabagan-Community.Center', N'&Mv48cQ7', 3)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (3, N'Gulshan Helth Center', N'Gulsan_Community Center', N'0ix.20BG', 7)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (4, N'Tejgaong Helth Center', N'Mirpur_fM0.tnNW', N'fM0.tnNW', 5)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (5, N'Banani Health Center', N'Gulshan_CDHQZ', N'>*kK8TVm', 3)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (6, N'FarmGate Helth Center', N'Dhanmondi_UXFFV', N'GVDGWd8I', 1)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (7, N'Kolabagan Center', N'Kolabagan_VMYDK', N'Yz6*s1U@', 2)
INSERT [dbo].[center_table] ([center_id], [center_name], [code], [password], [thana_id]) VALUES (8, N'Nakhal Para Centre', N'NgSadar_EPQNW', N'gHwjJLzZ', 5)
SET IDENTITY_INSERT [dbo].[center_table] OFF
