USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 4.01.2017 16:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE InsertMedicalReport @dietID int, @userID int, @date datetime, @usedDrugs varchar(50),  @disease varchar(50),@height varchar(50),@weight varchar(50),@urineTest varchar(50), @bloodTest varchar(50)
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO MedicalReport(DietID, UserID, [Date], UsedDrugs, Disease, Height, [Weight], UrineTest, BloodTest) values(@dietID, @userID, @date, @usedDrugs,  @disease,@height,@weight,@urineTest,@bloodTest)
END
