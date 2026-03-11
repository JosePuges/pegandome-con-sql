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

SELECT COUNT(*) AS Total_facturas FROM invoice;

SELECT CustomerId, COUNT(*) AS Cantidad_facturas 
FROM invoice 
GROUP BY CustomerId;

SELECT BillingCountry, AVG(Total) AS Ticket_medio 
FROM invoice 
GROUP BY BillingCountry 
ORDER BY Ticket_medio DESC;

-- Bloque D — Filtros Avanzados y Agregación

SELECT * FROM invoice WHERE Total BETWEEN 5 AND 15;

SELECT * FROM invoice WHERE BillingCountry IN ('USA', 'Canada');

SELECT BillingCountry, SUM(Total) AS Gasto_total 
FROM invoice 
GROUP BY BillingCountry;

SELECT BillingCountry, COUNT(*) AS Numero_facturas 
FROM invoice 
GROUP BY BillingCountry 
HAVING COUNT(*) > 10;

--Bloque E — Análisis y Funciones de Fecha
SELECT CustomerId, SUM(Total) AS Gasto_acumulado
FROM invoice 
GROUP BY CustomerId 
ORDER BY Gasto_acumulado DESC 
LIMIT 10;

SELECT BillingCountry, COUNT(*) AS Total_facturas, ROUND(AVG(Total)2) AS Ticket_medio 
FROM invoice 
GROUP BY BillingCountry;

SELECT * FROM invoice 
WHERE strftime('%Y', InvoiceDate) = '2012';

SELECT * FROM invoice 
ORDER BY Total DESC, InvoiceDate DESC 
LIMIT 5;