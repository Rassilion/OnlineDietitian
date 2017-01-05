USE [OnlineDietitian]
GO
/****** Object:  Table [dbo].[Diet]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diet](
	[DietID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Dietitian]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dietitian](
	[DietitianID] [int] IDENTITY(1,1) NOT NULL,
	[DietitianLicense] [text] NULL,
	[CV] [text] NULL,
	[DietitianPhone] [nvarchar](50) NULL,
	[DietitianName] [nvarchar](50) NULL,
	[DietitianSurname] [nvarchar](50) NULL,
	[DietitianEmail] [nvarchar](50) NOT NULL,
	[DietitianPassword] [nvarchar](50) NOT NULL,
	[Address] [text] NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dietitian] PRIMARY KEY CLUSTERED 
(
	[DietitianID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DietRequest]    Script Date: 5.01.2017 21:20:40 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserSurname] [nvarchar](50) NOT NULL,
	[UserPhone] [nvarchar](50) NULL,
	[UserBirth] [datetime] NOT NULL,
	[BodyPhoto] [nvarchar](50) NULL,
	[UserAddress] [text] NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MedicalReport]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalReport](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[DietID] [int] NULL,
	[UserID] [int] NULL,
	[Date] [datetime] NULL,
	[UsedDrugs] [nvarchar](50) NOT NULL,
	[Disease] [nvarchar](50) NOT NULL,
	[Height] [nvarchar](50) NOT NULL,
	[Weight] [nvarchar](50) NOT NULL,
	[UrineTest] [nvarchar](50) NOT NULL,
	[BloodTest] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MedicalReport] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[DietView]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DietView]
AS
SELECT        dbo.Diet.DietID, dbo.Dietitian.DietitianID, dbo.DietRequest.RequestID, dbo.MedicalReport.ReportID, dbo.[User].UserID, dbo.[User].UserEmail, dbo.[User].UserName, dbo.[User].UserSurname, dbo.[User].UserBirth,
                          dbo.[User].BodyPhoto, dbo.[User].Gender, dbo.DietRequest.RequestContent, dbo.DietRequest.Health, dbo.DietRequest.Fitness, dbo.DietRequest.WeightGain, dbo.DietRequest.WeightLoss, dbo.Diet.DietContent, 
                         dbo.MedicalReport.UsedDrugs, dbo.MedicalReport.Disease, dbo.MedicalReport.Height, dbo.MedicalReport.Weight, dbo.MedicalReport.UrineTest, dbo.MedicalReport.BloodTest
FROM            dbo.Diet INNER JOIN
                         dbo.MedicalReport ON dbo.Diet.DietID = dbo.MedicalReport.DietID INNER JOIN
                         dbo.[User] ON dbo.Diet.UserID = dbo.[User].UserID INNER JOIN
                         dbo.DietRequest ON dbo.Diet.DietRequestID = dbo.DietRequest.RequestID INNER JOIN
                         dbo.Dietitian ON dbo.Diet.DietitianID = dbo.Dietitian.DietitianID

GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentID] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentDate] [datetime] NULL,
	[AppointmentStatus] [nvarchar](50) NULL,
	[UserID] [int] NOT NULL,
	[DietitianID] [int] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 5.01.2017 21:20:40 ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 5.01.2017 21:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PayID] [int] IDENTITY(1,1) NOT NULL,
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
ALTER TABLE [dbo].[BlogPost] ADD  CONSTRAINT [DF_BlogPost_PostDate]  DEFAULT (sysdatetime()) FOR [PostDate]
GO
ALTER TABLE [dbo].[MedicalReport] ADD  CONSTRAINT [DF_MedicalReport_Date]  DEFAULT (sysdatetime()) FOR [Date]
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
ALTER TABLE [dbo].[MedicalReport]  WITH CHECK ADD  CONSTRAINT [FK_MedicalReport_Diet] FOREIGN KEY([DietID])
REFERENCES [dbo].[Diet] ([DietID])
GO
ALTER TABLE [dbo].[MedicalReport] CHECK CONSTRAINT [FK_MedicalReport_Diet]
GO
ALTER TABLE [dbo].[MedicalReport]  WITH CHECK ADD  CONSTRAINT [FK_MedicalReport_User] FOREIGN KEY([UserID])
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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Diet"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Dietitian"
            Begin Extent = 
               Top = 181
               Left = 235
               Bottom = 311
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "DietRequest"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 136
               Right = 641
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "MedicalReport"
            Begin Extent = 
               Top = 69
               Left = 1187
               Bottom = 199
               Right = 1357
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 185
               Left = 986
               Bottom = 315
               Right = 1156
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DietView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DietView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DietView'
GO
