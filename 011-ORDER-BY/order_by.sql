/*
==========================================
SQL SERVER DESDE CERO
Capítulo 011 - ORDER BY
==========================================
*/

USE TiendaDB;
GO


-- Orden ascendente por precio.
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio ASC;
GO


-- Orden descendente por precio.
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC;
GO


-- Orden alfabético.
SELECT Nombre, Precio
FROM Productos
ORDER BY Nombre ASC;
GO


-- Podemos combinar WHERE y ORDER BY.
SELECT Nombre, Precio, Stock
FROM Productos
WHERE Precio > 20000
ORDER BY Precio DESC;
GO


-- También podemos ordenar por varias columnas.
SELECT Nombre, Precio, Stock
FROM Productos
ORDER BY Stock ASC, Precio DESC;
GO
