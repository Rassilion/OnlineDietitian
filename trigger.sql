SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER newBlogPostTrigger 
   ON  BlogPost
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	declare @id int,@dietitianID int

	select @dietitianID=DietitianID,@id=BlogID from inserted
    -- Insert statements for trigger here
	insert into [Log]([type],[message]) values('newBlogPost','DietitanID: '+ Cast(@dietitianID AS VARCHAR(16))+ ' BlogPostID: '+Cast(@id AS VARCHAR(16)))


END
GO
