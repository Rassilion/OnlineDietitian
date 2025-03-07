USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserEmail]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteAppointment]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteBlogPost]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteDiet]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteDietitian]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteDietRequest]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteMedicalReport]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[getAppointmentByDietitianID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create PROCEDURE [dbo].[getAppointmentByDietitianID] @id int
AS
BEGIN
	SELECT *
	FROM Appointment 
	WHERE DietitianID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[getAppointmentByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getAppointmentByID] @id int
AS
BEGIN
	SELECT *
	FROM Appointment 
	WHERE AppointmentID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getBlogPostByBlogID]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[getDietByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getDietByID] @id int
AS
BEGIN
	SELECT *
	FROM Diet 
	WHERE DietID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getDietitianByDietitianID]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[getDietitianByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getDietitianByID] @id int
AS
BEGIN
	SELECT *
	FROM Dietitian 
	WHERE DietitianID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getDietitianName]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[getDietRequestByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getDietRequestByID] @id int
AS
BEGIN
	SELECT *
	FROM DietRequest 
	WHERE RequestID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getDietViewByDietID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getDietViewByDietID] @id int
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM [OnlineDietitian].[dbo].[DietView] DV
	WHERE DV.DietID=@id
END


GO
/****** Object:  StoredProcedure [dbo].[getDietViewByDietitianID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getDietViewByDietitianID] @id int
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM [OnlineDietitian].[dbo].[DietView] DV
	WHERE DV.DietitianID=@id
END


GO
/****** Object:  StoredProcedure [dbo].[getMedicalReportByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getMedicalReportByID] @id int
AS
BEGIN
	SELECT *
	FROM MedicalReport 
	WHERE ReportID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getMedicalReportByUserID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getMedicalReportByUserID] @id int
AS
BEGIN
	SELECT TOP 1 *
	FROM MedicalReport 
	WHERE MedicalReport.UserID = @id
	ORDER BY [Date]
END

GO
/****** Object:  StoredProcedure [dbo].[getPaymentByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getPaymentByID] @id int
AS
BEGIN
	SELECT *
	FROM Payment 
	WHERE PayID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getPaymentWithNullByUserID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getPaymentWithNullByUserID] @id int
AS
BEGIN
	SELECT *
	FROM Payment 
	WHERE UserID = @id AND PayDate is null
END


GO
/****** Object:  StoredProcedure [dbo].[getRequestIDByUserID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getRequestIDByUserID] @id int
AS
BEGIN
	SELECT Diet.DietRequestID
	FROM Diet
	WHERE Diet.UserID = @id
	
END

GO
/****** Object:  StoredProcedure [dbo].[getUserByID]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getUserByID] @id int
AS
BEGIN
	SELECT *
	FROM [User] 
	WHERE UserID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertAppointment]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAppointment] @dietitianID int, @userID int, @appointmentContent text, @appointmentDate datetime
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Appointment(DietitianID, UserID, AppointmentContent, AppointmentDate) values(@dietitianID, @userID,  @appointmentContent, @appointmentDate)
	
	SELECT SCOPE_IDENTITY()

END

GO
/****** Object:  StoredProcedure [dbo].[InsertDiet]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDiet] @dietitianID int, @userID int, @dietRequestID int, @dietContent text 
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Diet(DietitianID, UserID, DietRequestID, DietContent) values(@dietitianID, @userID, @dietRequestID, @dietContent)

		SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[InsertDietRequest]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDietRequest] @requestContent text, @health bit, @fitness bit, @weightGain bit,  @WeightLoss bit
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO DietRequest(RequestContent, Health, Fitness, WeightGain, WeightLoss) values(@requestContent, @health, @fitness, @weightGain,  @WeightLoss)
	
	SELECT SCOPE_IDENTITY()

END

GO
/****** Object:  StoredProcedure [dbo].[InsertLog]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[InsertLog] @type nvarchar(50), @message text
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Log]([type], [message]) values(@type, @message)
	
	SELECT SCOPE_IDENTITY()

END


GO
/****** Object:  StoredProcedure [dbo].[InsertMedicalReport]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertMedicalReport] @dietID int, @userID int, @usedDrugs varchar(50),  @disease varchar(50),@height varchar(50),@weight varchar(50),@urineTest varchar(50), @bloodTest varchar(50)
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO MedicalReport(DietID, UserID,  UsedDrugs, Disease, Height, [Weight], UrineTest, BloodTest) values(@dietID, @userID,  @usedDrugs,  @disease,@height,@weight,@urineTest,@bloodTest)


	SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[InsertPayment]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPayment] @dietitianID int, @userID int, @fee nvarchar(50), @payDate datetime,  @bankCart bit
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Payment(DietitianID, UserID, PayDate, Fee, BankCard) values(@dietitianID, @userID,  @payDate, @fee,  @bankCart)
	
	SELECT SCOPE_IDENTITY()

END


GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 7.01.2017 18:23:52 ******/
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
	SELECT SCOPE_IDENTITY()
END



GO
/****** Object:  StoredProcedure [dbo].[NewBlogPost]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectAppointments]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBlogPostByDietitian]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBlogPosts]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDietitians]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDietRequests]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDiets]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectDietsWithoutNull]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDietsWithoutNull]
AS
BEGIN
		select * from Diet
		where Diet.DietContent is not NULL
END


GO
/****** Object:  StoredProcedure [dbo].[selectDietViews]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectDietViews] 
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM [OnlineDietitian].[dbo].[DietView] DV
	
END


GO
/****** Object:  StoredProcedure [dbo].[selectLogs]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[selectLogs] 
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from [Log]

END


GO
/****** Object:  StoredProcedure [dbo].[SelectMedicalReports]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectPayments]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUsers]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateBlogPost]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateDiet]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateDietitian]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDietitian] @id int, @dietitianLicense text,@cv text,
					@dietitianPhone nvarchar(50),@dietitianName nvarchar(50),@dietitianSurname nvarchar(50),@dietitianEmail nvarchar(50),@dietitianPassword nvarchar(50),@address text
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE Dietitian
		SET DietitianLicense = ISNULL(@dietitianLicense, DietitianLicense),
		CV = ISNULL(@cv, CV),
		DietitianPhone = ISNULL(@dietitianPhone, DietitianPhone),
		DietitianName = ISNULL(@dietitianName,DietitianName),
		DietitianSurname = ISNULL(@dietitianSurname, DietitianSurname),
		DietitianEmail = ISNULL(@dietitianEmail, DietitianEmail),
		DietitianPassword = ISNULL(@dietitianPassword, DietitianPassword),
		[Address] = ISNULL(@address, [Address])
		WHERE DietitianID = @id
END




GO
/****** Object:  StoredProcedure [dbo].[UpdateDietRequest]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateMedicalReport]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 7.01.2017 18:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUser] @id int, @gender nvarchar(50),@userAddress text,@birthdate datetime,
					@bodyPhoto nvarchar(50),@userPhone nvarchar(50),@userSurname nvarchar(50),@userPassword nvarchar(50),@userEmail nvarchar(50),@userName nvarchar(50),@isAdmin bit
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
		UserEmail = ISNULL(@userEmail, UserEmail),
		isAdmin = ISNULL(@isAdmin, isAdmin)
		WHERE UserID = @id
END


GO
/****** Object:  StoredProcedure [dbo].[ValidateDietitian]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidateDietitian]
      @Email NVARCHAR(50),
      @Password NVARCHAR(50)
AS
BEGIN
      SET NOCOUNT ON;    
      SELECT *
      FROM [dbo].[Dietitian] WHERE DietitianEmail = @Email AND DietitianPassword = @Password
     
END


GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 7.01.2017 18:23:52 ******/
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


GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 7.01.2017 18:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDietitian] @address text, @name varchar(50), @surname varchar(50), @phone varchar(50), @license text, @email varchar(50), @password varchar(50), @cv text, @gender nvarchar(50)
	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Dietitian]([Address], DietitianEmail, DietitianName, DietitianSurname, DietitianPhone, DietitianLicense, DietitianPassword, CV, Gender) values(@address, @email, @name, @surname, @phone, @license, @password, @cv, @gender)
	SELECT SCOPE_IDENTITY()

END


GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE getLogsByInput @start int
      
AS
BEGIN
		SET NOCOUNT ON;    
	    SELECT id, [type], [message],[date]
		FROM [Log]
		ORDER BY [date] DESC
		OFFSET @start*30 ROWS
		FETCH NEXT 30 ROWS ONLY

END
GO


GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 7.01.2017 18:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE getDietitianPayment @id int
      
AS
BEGIN
      SET NOCOUNT ON;    
      SELECT SUM(Cast(Fee as int)) 
      FROM [Payment]
      WHERE DietitianID = @id AND PayDate is null
END


GO


GO
/****** Object:  StoredProcedure [dbo].[getDietitianProfit]    Script Date: 7.01.2017 19:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getDietitianProfit] @id int
      
AS
BEGIN
      SET NOCOUNT ON;    
      SELECT SUM(Cast(Fee as int)) 
      FROM [Payment]
      WHERE DietitianID = @id
END



GO
/****** Object:  StoredProcedure [dbo].[getDietitianProfit]    Script Date: 7.01.2017 20:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getDietitianProfit] @id int
      
AS
BEGIN
      SET NOCOUNT ON;    
      SELECT SUM(Cast(Fee as int)) 
      FROM [Payment]
      WHERE DietitianID = @id AND PayDate is not null
END


GO
/****** Object:  StoredProcedure [dbo].[SelectDietsWithoutNull]    Script Date: 7.01.2017 21:11:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SelectDietsWithoutNull] @id int
AS
BEGIN
		select * from Diet
		where Diet.DietContent is not NULL AND UserID = @id
END
