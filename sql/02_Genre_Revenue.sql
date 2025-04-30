SELECT 
	ge.Name, 
	ROUND(SUM(il.Unitprice * il.quantity), 2) as TotalRevenue
FROM 
	InvoiceLine il
INNER JOIN Track t on il.TrackId = t.TrackId
INNER JOIN Genre ge on t.GenreId  = ge.GenreId
GROUP BY 
	ge.Name
ORDER BY 
	TotalRevenue DESC;