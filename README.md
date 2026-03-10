# 📝 Ejercicios de Consultas SQL - Martes 10 de Marzo

**Base de Datos:** Chinook.db  
**Herramienta:** DB Browser for SQLite  
**Archivo de salida:** `consultas-sql-martes.sql`

---

## 🛠️ Instrucciones Previas
1. Abre el archivo `Chinook.db` en DB Browser for SQLite.
2. Ve a la pestaña **Execute SQL**.
3. Escribe las consultas correspondientes a cada bloque.
4. Recuerda terminar cada instrucción con punto y coma (`;`).

---

## 📂 Bloque A — Lectura y Filtrado
En este bloque practicaremos la selección básica de columnas y el uso de filtros simples.

1. **Muestra todas las columnas** de la tabla `invoices`.
2. **Muestra solo tres columnas:** `CustomerId`, `InvoiceDate` y `Total`.
3. **Filtro numérico:** Muestra todas las facturas cuyo `Total` sea estrictamente mayor a 10.
4. **Filtro de texto:** Muestra todas las facturas cuyo país de envío (`BillingCountry`) sea 'USA'.

---

## 📈 Bloque B — Orden y Exploración
En este bloque aprenderemos a organizar la información y limitar los resultados.

1. **Ordenación:** Muestra todas las facturas ordenadas por la columna `Total` de mayor a menor.
2. **Top 5:** Muestra únicamente las 5 facturas que tengan el `Total` más alto de toda la tabla.
3. **Valores únicos:** Lista todos los países de facturación (`BillingCountry`) sin que aparezcan duplicados.



---

## 🔬 Bloque C — Resumen Analítico
Uso de funciones de agregado (`COUNT`, `AVG`) y agrupación de datos.

1. **Conteo global:** Calcula cuántas facturas hay en total en la base de datos.
2. **Conteo por grupo:** Muestra cuántas facturas tiene cada cliente (`CustomerId`). 
3. **Promedios:** Calcula el ticket medio (`AVG(Total)`) por cada país (`BillingCountry`) y ordena los resultados de mayor a menor promedio.



---
