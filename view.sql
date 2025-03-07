USE [OnlineDietitian]
GO
/****** Object:  View [dbo].[DietView]    Script Date: 7.01.2017 18:23:05 ******/
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
