USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[UpdateRolesAndTab]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[UpdateRolesAndTab]
GO
/****** Object:  StoredProcedure [CLO].[UpdateRolesAndTab]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CLO].[UpdateRolesAndTab] 'diwakar.singh',1,'1,5,6,7,8,9,10,11,12'
CREATE PROCEDURE [CLO].[UpdateRolesAndTab]
(
    @UserNAme NVARCHAR(200),@IsAdmin bit,@TabIds nvarchar(100)
)
AS
BEGIN
    DECLARE @USerId INT
    SELECT @USerId = UserId from [CLO].[User] where USerNAme = @Username
    if not exists (select * from [CLO].[User] where USerNAme = LOWER(@Username))
    BEGIN 
    print 1
        insert TOP(1) into [CLO].[User](UserName,FullName)
		values
        ( LOWER(@Username),@Username )
    END

 

    SELECT @USerId = UserId from [CLO].[User] where USerNAme = LOWER(@Username)

 

    delete from [CLO].[UserApplicationRole] where UserId = @UserId
    insert into [CLO].[UserApplicationRole] (UserId,ApplicationRoleId)
    values
    (@UserId,case when @IsAdmin = 1 then 1 else 2 end)

 

    delete from [clo].[UserApplicationTab] where UserId = @UserId
    insert into [clo].[UserApplicationTab](UserId,ApplicationTabId)
    SELECT @UserId, CAST(value AS INT)
    FROM  string_split(@TabIds, ',')  

 

END
GO
