USE [OnlineDietitian]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] NOT NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Apartment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentID] [int] NOT NULL,
	[AppointmentDate] [datetime] NULL,
	[AppointmentStatus] [nvarchar](50) NULL,
	[UserID] [int] NULL,
	[DietitianID] [int] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPost](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[DietitianID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[BlogContent] [text] NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_BlogPost] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diet]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diet](
	[DietID] [int] NOT NULL,
	[DietitianID] [int] NULL,
	[UserID] [int] NULL,
	[DietRequestID] [int] NULL,
	[DietContent] [text] NULL,
 CONSTRAINT [PK_Diet] PRIMARY KEY CLUSTERED 
(
	[DietID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dietitian]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dietitian](
	[DietitianID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[DietitianLicense] [text] NULL,
	[CV] [text] NULL,
	[DietitianPhone] [nvarchar](50) NULL,
	[DietitianName] [nvarchar](50) NULL,
	[DietitianSurname] [nvarchar](50) NULL,
	[DietitianEmail] [nvarchar](50) NOT NULL,
	[DietitianPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dietitian] PRIMARY KEY CLUSTERED 
(
	[DietitianID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DietRequest]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DietRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestContent] [text] NULL,
	[Health] [bit] NULL,
	[Fitness] [bit] NULL,
	[WeightGain] [bit] NULL,
	[WeightLoss] [bit] NULL,
 CONSTRAINT [PK_DietRequest] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MedicalReport]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalReport](
	[ReportID] [int] NOT NULL,
	[DietID] [int] NULL,
	[UserID] [int] NULL,
	[Date] [timestamp] NULL,
	[UsedDrugs] [nvarchar](50) NULL,
	[Disease] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Weight] [nvarchar](50) NULL,
	[UrineTest] [image] NULL,
	[BloodTest] [image] NULL,
 CONSTRAINT [PK_MedicalReport] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PayID] [int] NOT NULL,
	[DietitianID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[PayDate] [datetime] NULL,
	[Fee] [nvarchar](50) NOT NULL,
	[BankCard] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 7.12.2016 20:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[AddressID] [int] NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserSurname] [nvarchar](50) NULL,
	[UserPhone] [nvarchar](50) NULL,
	[BodyPhoto] [image] NULL,
	[UserBirth] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[BlogPost] ADD  CONSTRAINT [DF_BlogPost_PostDate]  DEFAULT (sysdatetime()) FOR [PostDate]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Dietitian] FOREIGN KEY([DietitianID])
REFERENCES [dbo].[Dietitian] ([DietitianID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Dietitian]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_User]
GO
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost_Dietitian] FOREIGN KEY([DietitianID])
REFERENCES [dbo].[Dietitian] ([DietitianID])
GO
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_BlogPost_Dietitian]
GO
ALTER TABLE [dbo].[Diet]  WITH CHECK ADD  CONSTRAINT [FK_Diet_Dietitian] FOREIGN KEY([DietitianID])
REFERENCES [dbo].[Dietitian] ([DietitianID])
GO
ALTER TABLE [dbo].[Diet] CHECK CONSTRAINT [FK_Diet_Dietitian]
GO
ALTER TABLE [dbo].[Diet]  WITH CHECK ADD  CONSTRAINT [FK_Diet_DietRequest] FOREIGN KEY([DietRequestID])
REFERENCES [dbo].[DietRequest] ([RequestID])
GO
ALTER TABLE [dbo].[Diet] CHECK CONSTRAINT [FK_Diet_DietRequest]
GO
ALTER TABLE [dbo].[Diet]  WITH CHECK ADD  CONSTRAINT [FK_Diet_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Diet] CHECK CONSTRAINT [FK_Diet_User]
GO
ALTER TABLE [dbo].[Dietitian]  WITH CHECK ADD  CONSTRAINT [FK_Dietitian_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Dietitian] CHECK CONSTRAINT [FK_Dietitian_Address]
GO
ALTER TABLE [dbo].[MedicalReport]  WITH CHECK ADD  CONSTRAINT [FK_MedicalReport_Diet] FOREIGN KEY([DietID])
REFERENCES [dbo].[Diet] ([DietID])
GO
ALTER TABLE [dbo].[MedicalReport] CHECK CONSTRAINT [FK_MedicalReport_Diet]
GO
ALTER TABLE [dbo].[MedicalReport]  WITH CHECK ADD  CONSTRAINT [FK_MedicalReport_User] FOREIGN KEY([ReportID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[MedicalReport] CHECK CONSTRAINT [FK_MedicalReport_User]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Dietitian] FOREIGN KEY([DietitianID])
REFERENCES [dbo].[Dietitian] ([DietitianID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Dietitian]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Address]
GO
