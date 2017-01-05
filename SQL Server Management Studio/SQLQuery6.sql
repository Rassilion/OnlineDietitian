USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[NewBlogPost]    Script Date: 14.12.2016 18:22:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE InsertUser @addressID int, @name varchar(50), @surname varchar(50), @phone varchar(50), @birthdate datetime, @email varchar(50), @password varchar(50)
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [User](AddressID, UserEmail, UserName, UserSurname, UserPhone, UserBirth, UserPassword) values(@addressID, @email, @name, @surname, @phone, @birthdate, @password)
END
GO
