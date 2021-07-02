USE [Yoda]
GO
/****** Object:  View [CLO].[vw_CurrentActiveSecurityOverrides]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_CurrentActiveSecurityOverrides]
GO
/****** Object:  View [CLO].[vw_CurrentActiveSecurityOverrides]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_CurrentActiveSecurityOverrides]  WITH SCHEMABINDING 
	AS 		
	SELECT SecurityId,OverrideValue,FieldName
		from [CLO].SecurityOverride so  with (nolock)
		join [CLO].Field f with(nolock) on so.FieldId = f.FieldId
		where	(so.IsDeleted IS NULL OR so.IsDeleted =0)
		AND	(so.EffectiveFrom IS NULL OR so.EffectiveFrom <= CONVERT(date, getdate()))
		AND (so.EffectiveTo IS NULL OR so.EffectiveTo > CONVERT(date, getdate()))

GO
