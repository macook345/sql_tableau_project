Select
	ar.name as ArtistName,
	ROUND(SUM(il.quantity * il.unitPrice), 2) AS TotalSales
FROM
	Invoiceline il
INNER JOIN Track t ON il.trackID = t.TrackId
INNER JOIN Album al on t.AlbumID = al.AlbumId
INNER JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP By 
	ar.Name
ORDER BY 
	TotalSales DESC 
LIMIT 10;