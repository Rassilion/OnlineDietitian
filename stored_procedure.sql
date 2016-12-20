USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[DeleteBlogPost]    Script Date: 7.12.2016 20:21:28 ******/
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
/****** Object:  StoredProcedure [dbo].[getDietitianName]    Script Date: 7.12.2016 20:21:28 ******/
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
/****** Object:  StoredProcedure [dbo].[NewBlogPost]    Script Date: 7.12.2016 20:21:28 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBlogPostByDietitian]    Script Date: 7.12.2016 20:21:28 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectBlogPosts]    Script Date: 7.12.2016 20:21:28 ******/
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


GO

/****** Object:  StoredProcedure [dbo].[UpdateBlogPost]    Script Date: 7.12.2016 20:34:40 ******/
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



CREATE PROCEDURE getBlogPostByBlogID @blogID int
AS
BEGIN
	SELECT *
	FROM BlogPost 
	WHERE BlogID = @blogID
END
GO




GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE getDietitianByDietitianID @dietitianID int
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
/****** Object:  StoredProcedure [dbo].[getDietitianName]    Script Date: 7.12.2016 20:21:28 ******/
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



USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserEmail]    Script Date: 20.12.2016 15:28:24 ******/
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
