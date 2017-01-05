USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 4.01.2017 16:48:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE InsertDiet @dietitianID int, @userID int, @dietRequestID int, @dietContent text 
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Diet(DietitianID, UserID, DietRequestID, DietContent) values(@dietitianID, @userID, @dietRequestID, @dietContent)
END
