SELECT [ID_METRICA], COUNT ([IN_VALUE]) _VALUE
FROM [DWH_WWBI].dbo.[FACT_WWBI]
WHERE 2000 is not null
GROUP BY ([ID_METRICA])

