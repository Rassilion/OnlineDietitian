USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserEmail]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckUserEmail]
	-- Add the parameters for the stored procedure here
	@email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @UserId INT   
    -- Insert statements for procedure here
	SELECT @UserId = UserID 
	FROM [User]
	Where @email = [User].UserEmail

	IF @UserId IS NOT NULL
      BEGIN            
           SELECT @UserId -- User Valid
      END
      ELSE
      BEGIN
            SELECT -1 -- User invalid.
      END
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteAppointment]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAppointment] @id int
AS
BEGIN
		DELETE FROM Appointment
		WHERE AppointmentID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteBlogPost]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteBlogPost] @blogID int
AS
BEGIN
		DELETE FROM BlogPost
		WHERE BlogID = @blogID
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteDiet]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDiet] @id int
AS
BEGIN
		DELETE FROM Diet
		WHERE DietID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteDietitian]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDietitian] @id int
AS
BEGIN
		DELETE FROM Dietitian
		WHERE DietitianID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[DeleteDietRequest]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDietRequest] @id int
AS
BEGIN
		DELETE FROM DietRequest
		WHERE RequestID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteMedicalReport]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteMedicalReport] @id int
AS
BEGIN
		DELETE FROM MedicalReport
		WHERE ReportID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePayment] @id int
AS
BEGIN
		DELETE FROM Payment
		WHERE PayID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser] @id int
AS
BEGIN
		DELETE FROM [User]
		WHERE UserID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[getBlogPostByBlogID]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getBlogPostByBlogID] @blogID int
AS
BEGIN
	SELECT *
	FROM BlogPost 
	WHERE BlogID = @blogID
END

GO
/****** Object:  StoredProcedure [dbo].[getDietitianByDietitianID]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDietitianByDietitianID] @dietitianID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Dietitian
	WHERE DietitianID = @dietitianID
END

GO
/****** Object:  StoredProcedure [dbo].[getDietitianName]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getDietitianName] @dietitianID int
as
begin
Select DietitianName,DietitianSurname from Dietitian where DietitianID=@dietitianID
end


GO
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getUserName] @userID int
as
begin
Select UserName,UserSurname from [User] where UserID=@userID
end


GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUser] @address text, @name varchar(50), @surname varchar(50), @phone varchar(50), @birthdate datetime, @email varchar(50), @password varchar(50), @bodyPhoto varchar(50) 
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [User](UserAddress, UserEmail, UserName, UserSurname, UserPhone, UserBirth, UserPassword,BodyPhoto) values(@address, @email, @name, @surname, @phone, @birthdate, @password,@bodyPhoto)
END

GO
/****** Object:  StoredProcedure [dbo].[NewBlogPost]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewBlogPost] @dietitianID int, @title nvarchar(50), @content text
AS
BEGIN
		INSERT INTO BlogPost(DietitianID,Title,BlogContent) values(@dietitianID, @title, @content)
END



GO
/****** Object:  StoredProcedure [dbo].[SelectAppointments]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAppointments]
AS
BEGIN
		select * from Appointment
END




GO
/****** Object:  StoredProcedure [dbo].[SelectBlogPostByDietitian]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectBlogPostByDietitian] @dietitianID int
AS
BEGIN
		select * from BlogPost
		where BlogPost.DietitianID = @dietitianID
END



GO
/****** Object:  StoredProcedure [dbo].[SelectBlogPosts]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectBlogPosts]
AS
BEGIN
		select * from BlogPost
END



GO
/****** Object:  StoredProcedure [dbo].[SelectDietitians]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDietitians]
AS
BEGIN
		select * from Dietitian
END




GO
/****** Object:  StoredProcedure [dbo].[SelectDietRequests]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDietRequests]
AS
BEGIN
		select * from DietRequest
END




GO
/****** Object:  StoredProcedure [dbo].[SelectDiets]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDiets]
AS
BEGIN
		select * from Diet
END




GO
/****** Object:  StoredProcedure [dbo].[SelectMedicalReports]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectMedicalReports]
AS
BEGIN
		select * from MedicalReport
END




GO
/****** Object:  StoredProcedure [dbo].[SelectPayments]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectPayments]
AS
BEGIN
		select * from Payment
END




GO
/****** Object:  StoredProcedure [dbo].[SelectUsers]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUsers]
AS
BEGIN
		select * from [User]
END




GO
/****** Object:  StoredProcedure [dbo].[UpdateAppointment]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateAppointment] @id int, @dietitianID int,@userID int,
								@appointmentStatus nvarchar(50), @appointmentDate datetime
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE Appointment
		SET UserID = ISNULL(@userID, UserID),
		DietitianID = ISNULL(@dietitianID, DietitianID),
		AppointmentStatus = ISNULL(@appointmentStatus, AppointmentStatus),
		AppointmentDate = ISNULL(@appointmentDate, AppointmentDate)
		WHERE AppointmentID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateBlogPost]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateBlogPost] @blogID int, @dietitianID int,
								@title nvarchar(50), @content text
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE BlogPost
		SET DietitianID = ISNULL(@dietitianID, DietitianID),
		Title = ISNULL(@title, Title),
		BlogContent = ISNULL(@content, BlogContent)
		WHERE BlogID = @blogID
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateDiet]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDiet] @id int, @dietitianID int,@userID int,
								@dietRequestID int, @dietContent text
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE Diet
		SET UserID = ISNULL(@userID, UserID),
		DietitianID = ISNULL(@dietitianID, DietitianID),
		DietRequestID = ISNULL(@dietRequestID, DietRequestID),
		DietContent = ISNULL(@dietContent, DietContent)
		WHERE DietID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateDietRequest]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDietRequest] @id int, @requestContent text,@health bit,
								@fitness bit, @weightGain bit,@weightLoss bit
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE DietRequest
		SET RequestContent = ISNULL(@requestContent, RequestContent),
		Health = ISNULL(@health, Health),
		Fitness = ISNULL(@fitness, Fitness),
		WeightGain = ISNULL(@weightGain, WeightGain),
		WeightLoss = ISNULL(@weightLoss, WeightLoss)
		WHERE RequestID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateMedicalReport]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateMedicalReport] @id int, @dietID int,@userID int,@date datetime,
					@usedDrugs nvarchar(50),@height nvarchar(50),@weight nvarchar(50),@urineTest nvarchar(50),@bloodTest nvarchar(50),@disease nvarchar(50)
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE MedicalReport
		SET DietID = ISNULL(@dietID, DietID),
		UserID = ISNULL(@userID, UserID),
		[Date] = ISNULL(@date, [Date]),
		UsedDrugs = ISNULL(@usedDrugs, UsedDrugs),
		Height = ISNULL(@height, Height),
		[Weight] = ISNULL(@weight, [Weight]),
		UrineTest = ISNULL(@urineTest, UrineTest),
		BloodTest = ISNULL(@bloodTest, BloodTest),
		Disease = ISNULL(@disease, Disease)
		WHERE ReportID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePayment] @id int, @dietitianID int,@userID int,@payDate datetime,
					@fee nvarchar(50),@bankCard nvarchar(50)
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE Payment
		SET DietitianID = ISNULL(@dietitianID, DietitianID),
		UserID = ISNULL(@userID, UserID),
		PayDate = ISNULL(@payDate, PayDate),
		Fee = ISNULL(@fee,Fee),
		BankCard = ISNULL(@bankCard, BankCard)
		WHERE PayID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUser] @id int, @gender nvarchar(50),@userAddress text,@birthdate datetime,
					@bodyPhoto nvarchar(50),@userPhone nvarchar(50),@userSurname nvarchar(50),@userPassword nvarchar(50),@userEmail nvarchar(50),@userName nvarchar(50)
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE [User]
		SET Gender = ISNULL(@gender, Gender),
		UserAddress = ISNULL(@userAddress, UserAddress),
		UserBirth = ISNULL(@birthdate, UserBirth),
		BodyPhoto = ISNULL(@bodyPhoto,BodyPhoto),
		UserPhone = ISNULL(@userPhone, UserPhone),
		UserSurname = ISNULL(@userSurname, UserSurname),
		UserName = ISNULL(@userName, UserName),
		UserPassword = ISNULL(@userPassword, UserPassword),
		UserEmail = ISNULL(@userEmail, UserEmail)
		WHERE UserID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 20.12.2016 19:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidateUser]
      @Email NVARCHAR(50),
      @Password NVARCHAR(50)
AS
BEGIN
      SET NOCOUNT ON;    
      SELECT *
      FROM [dbo].[User] WHERE UserEmail = @Email AND UserPassword = @Password
     
END
GO
