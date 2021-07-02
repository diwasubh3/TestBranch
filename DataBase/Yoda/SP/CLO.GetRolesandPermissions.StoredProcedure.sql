USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[GetRolesandPermissions]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[GetRolesandPermissions]
GO
/****** Object:  StoredProcedure [CLO].[GetRolesandPermissions]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[GetRolesandPermissions]
(
    @Username NVARCHAR(100)
)
AS
BEGIN
	DECLARE @USerId INT
	SELECT @USerId = UserId from [CLO].[User] where USerNAme = @Username

	--select if te user is Admin/Not
	SELECT b.RoleDescription AS [Permission] from [CLO].[UserApplicationRole] a
	join [CLO].[ApplicationRole] b
	on a.ApplicationRoleId = b.ApplicationRoleId
	where USerId = @USerId
	UNION
	--Get permissions for particular user
	select b.TabName AS [Permission]  from [CLO].[UserApplicationTab] a
	join CLO.ApplicationTab b
	on a.ApplicationTabId = b.ApplicationTabId
	where USerId = @USerId
END


GO
