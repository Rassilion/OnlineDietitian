
-- create update blogpost

CREATE PROCEDURE UpdateBlogPost @blogID int, @dietitianID int,
								@title nvarchar(50), @content nvarchar(50)
AS
BEGIN
		SET NOCOUNT ON;
		UPDATE BlogPost
		SET DietitianID = ISNULL(@dietitianID,DietitianID),
		Title = ISNULL(@title,Title),
		BlogContent = ISNULL(@content, BlogContent)
		WHERE BlogID = @blogID
END
GO


