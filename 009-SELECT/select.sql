/*
==========================================
SQL SERVER DESDE CERO
Capítulo 009 - SELECT
==========================================
*/


-- Seleccionamos la base de datos.
USE TiendaDB;
GO


-- 1. Consultamos todas las columnas.
SELECT *
FROM Productos;
GO


-- 2. Consultamos columnas específicas.
SELECT Nombre, Precio
FROM Productos;
GO


-- 3. Utilizamos alias.
SELECT
    Nombre AS Producto,
    Precio AS PrecioUnitario
FROM Productos;
GO


-- 4. Filtramos registros.
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
GO


-- 5. Ordenamos los resultados.
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC;
GO
