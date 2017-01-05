
CREATE PROCEDURE getBlogPostByBlogID @blogID int
AS
BEGIN
	SELECT *
	FROM BlogPost 
	WHERE BlogID = @blogID
END
GO
