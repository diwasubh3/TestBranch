USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetFields]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetFields]
GO
/****** Object:  StoredProcedure [CLO].[spGetFields]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetFields]
	@paramFieldGroupName VARCHAR(100)
AS
	if(@paramFieldGroupName = 'Matrix Point Based Fund Restrictions Fields')
	begin
		SELECT * FROM [CLO].[Field] f WITH(NOLOCK) 
		JOIN [CLO].[FieldGroup] fg ON f.FieldGroupId = fg.FieldGroupId 
		WHERE 
		f.FieldTitle in ('WARF', 'SPREAD', 'DIVERSITY')
		AND fg.FieldGroupName = 'Fund Restrictions'
		AND f.FieldName LIKE ('WSO%')
		ORDER BY f.SortOrder
	end
	else 
	begin
		SELECT * FROM [CLO].[Field] f WITH(NOLOCK) 
		JOIN [CLO].[FieldGroup] fg ON f.FieldGroupId = fg.FieldGroupId 
		WHERE 
	
		fg.FieldGroupName = @paramFieldGroupName
		ORDER BY f.SortOrder
	end
RETURN 0


GO
