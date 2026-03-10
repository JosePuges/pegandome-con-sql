# 📝 Ejercicios de Consultas SQL - Martes 10 de Marzo (Parte II)

**Base de Datos:** Chinook.db  
**Herramienta:** DB Browser for SQLite  
**Archivo de salida:** `consultas-sql-martes.sql`

---

## 📂 Bloque A — Lectura y Filtrado
1. **Muestra todas las columnas** de la tabla `invoices`.
2. **Muestra solo tres columnas:** `CustomerId`, `InvoiceDate` y `Total`.
3. **Filtro numérico:** Muestra todas las facturas cuyo `Total` sea estrictamente mayor a 10.
4. **Filtro de texto:** Muestra todas las facturas cuyo país de envío (`BillingCountry`) sea 'USA'.

---

## 📈 Bloque B — Orden y Exploración
1. **Ordenación:** Muestra todas las facturas ordenadas por la columna `Total` de mayor a menor.
2. **Top 5:** Muestra únicamente las 5 facturas que tengan el `Total` más alto de toda la tabla.
3. **Valores únicos:** Lista todos los países de facturación (`BillingCountry`) sin que aparezcan duplicados.

---

## 🔬 Bloque C — Resumen Analítico
1. **Conteo global:** Calcula cuántas facturas hay en total en la base de datos.
2. **Conteo por grupo:** Muestra cuántas facturas tiene cada cliente (`CustomerId`). 
3. **Promedios:** Calcula el ticket medio (`AVG(Total)`) por cada país (`BillingCountry`) y ordena los resultados de mayor a menor promedio.

---

## 🛠️ Bloque D — Filtros Avanzados y Agregación
En este bloque profundizamos en rangos, operadores lógicos y filtros sobre grupos.

1. **Rangos:** Muestra las facturas cuyo `Total` se encuentre entre 5 y 15 (usa `BETWEEN`).
2. **Múltiples valores:** Muestra las facturas emitidas para los países 'USA' o 'Canada' (usa `IN` u `OR`).
3. **Suma por grupo:** Calcula el gasto total acumulado (`SUM(Total)`) por cada país (`BillingCountry`).
4. **Filtro sobre grupos:** Muestra solo aquellos países que tengan **más de 10 facturas** registradas (usa `HAVING`).



---

## 🔥 Bloque E — Análisis y Funciones de Fecha
Consultas de nivel avanzado para extraer información específica y formateada.

1. **Ranking de Clientes:** Muestra el Top 10 de clientes (`CustomerId`) que más dinero han gastado en total.
2. **Doble Agregación:** Muestra para cada país: el número total de facturas y su ticket medio en una sola tabla.
3. **Filtro Temporal:** Muestra las facturas realizadas únicamente en el **año 2012** (utiliza la función `strftime('%Y', InvoiceDate)`).
4. **Ordenación Compuesta:** Muestra el Top 5 de facturas con mayor `Total`. En caso de que haya facturas con el mismo importe (empate), ordénalas por la fecha (`InvoiceDate`) más reciente.



---

**Recordatorio:** Una vez finalizados todos los bloques, asegúrate de guardar tu archivo SQL para no perder el progreso del día.
