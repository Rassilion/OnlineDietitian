



-- create select blogpost

CREATE PROCEDURE SelectBlogPosts
AS
BEGIN
		select * from BlogPost
END
GO

-- create insert blogpost

CREATE PROCEDURE NewBlogPost @dietitianID int, @title nvarchar(50), @content nvarchar(50)
AS
BEGIN
		INSERT INTO BlogPost(DietitianID,Title,BlogContent) values(@dietitianID, @title, @content)
		--		SELECT SCOPE_IDENTITY()

END
GO




-- create delete blogpost

CREATE PROCEDURE DeleteBlogPost @blogID int
AS
BEGIN
		DELETE FROM BlogPost
		WHERE BlogID = @blogID
END
GO



CREATE PROCEDURE SelectBlogPostByDietitian @dietitianID int
AS
BEGIN
		select * from BlogPost
		where BlogPost.DietitianID = @dietitianID
END
GO




