USE [OnlineDietitian]
GO
/****** Object:  StoredProcedure [dbo].[UpdateBlogPost]    Script Date: 8.12.2016 22:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[UpdateBlogPost] @blogID int, @dietitianID int,
								@title nvarchar(50), @content text
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE BlogPost
		SET DietitianID = ISNULL(@dietitianID,DietitianID),
		Title = ISNULL(@title,Title),
		BlogContent = ISNULL(@content, BlogContent),
		PostDate = getDate()
		WHERE BlogID = @blogID
END