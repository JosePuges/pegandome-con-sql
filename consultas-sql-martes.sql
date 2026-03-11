-- Consultas SQL - Martes 10 de Marzo (Parte II)
-- Base de Datos: Chinook.db

-- Bloque A — Lectura y Filtrado

SELECT * FROM invoice;

SELECT CustomerId, InvoiceDate, Total FROM invoice;

SELECT * FROM invoice WHERE Total > 10;

SELECT * FROM invoice WHERE BillingCountry = 'USA';

-- Bloque B — Orden y Exploración

SELECT * FROM invoice ORDER BY Total DESC;

SELECT * FROM invoice ORDER BY Total DESC LIMIT 5;

SELECT DISTINCT BillingCountry FROM invoice;

SELECT COUNT(*) AS TotalFacturas FROM invoice;

SELECT CustomerId, COUNT(*) AS CantidadFacturas 
FROM invoice 
GROUP BY CustomerId;

SELECT BillingCountry, AVG(Total) AS TicketMedio 
FROM invoice 
GROUP BY BillingCountry 
ORDER BY TicketMedio DESC;

-- Bloque D — Filtros Avanzados y Agregación

SELECT * FROM invoice WHERE Total BETWEEN 5 AND 15;

SELECT * FROM invoice WHERE BillingCountry IN ('USA', 'Canada');

SELECT BillingCountry, SUM(Total) AS GastoTotal 
FROM invoice 
GROUP BY BillingCountry;

SELECT BillingCountry, COUNT(*) AS NumeroFacturas 
FROM invoice 
GROUP BY BillingCountry 
HAVING COUNT(*) > 10;

--Bloque E — Análisis y Funciones de Fecha
SELECT CustomerId, SUM(Total) AS GastoAcumulado 
FROM invoice 
GROUP BY CustomerId 
ORDER BY GastoAcumulado DESC 
LIMIT 10;

SELECT BillingCountry, COUNT(*) AS TotalFacturas, AVG(Total) AS TicketMedio 
FROM invoice 
GROUP BY BillingCountry;

SELECT * FROM invoice 
WHERE strftime('%Y', InvoiceDate) = '2012';

SELECT * FROM invoice 
ORDER BY Total DESC, InvoiceDate DESC 
LIMIT 5;