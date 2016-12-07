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
