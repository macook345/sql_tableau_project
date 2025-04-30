SELECT 
	BillingCountry, ROUND(SUM(total), 2) as TotalSales
FROM 
	Invoice i 
GROUP BY
	i.BillingCountry 
ORDER BY 
	TotalSales DESC 
LIMIT 5;
