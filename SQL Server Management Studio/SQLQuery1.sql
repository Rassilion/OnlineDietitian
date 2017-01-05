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
