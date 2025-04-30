SELECT  
	 strftime('%Y-%m', InvoiceDate) as YearMonth, 
	 ROUND(SUM(Total), 2) AS MonthlySales
FROM 
	Invoice  
GROUP BY 
	YearMonth 
ORDER BY 
	YearMonth DESC
LIMIT 24;