--- consultas-sql-martes.sql
--- BLOQUE A:
--- Muestra todas las columnas de Invoice
SELECT*
FROM Invoice;

--- Muestra solo CustomerId, InvoiceDate y Total

SELECT CustomerId, InvoiceDate, Total, BillingCountry
FROM Invoice;

--- Muestra facturas con Total > 10
SELECT total
FROM Invoice
WHERE Total > 10;

--- mostras usa

SELECT *
FROM Invoice
WHERE BillingCountry = 'USA';

--- Bloque B
--- Ordena las facturas por Total de mayor a menor

FROM invoices
ORDER BY Total DESC