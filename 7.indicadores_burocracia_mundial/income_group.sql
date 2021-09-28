SELECT [Income Group], count([Country Code]) _NUM_COUNTRY
FROM [STG_WWBI].dbo.[STG_COUNTRY]
GROUP BY [Income Group]