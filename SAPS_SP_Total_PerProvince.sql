
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin van Staden
-- Create date: 2024-04-23
-- Description:	Select Total Incidents per Province for last year
-- =============================================
CREATE PROCEDURE SAPS_SP_Total_PerProvince
AS
BEGIN

SET NOCOUNT ON;

	SELECT
		[Province],
		[Financial_Year],
		SUM([Incidents]) AS [Total_Incidents]
	FROM 
		[Benjamin].[dbo].[SAPS_CrimeStats]
	GROUP BY
		[Province],
		[Financial_Year]
	ORDER BY
		2,1 DESC
END
GO
