/*
==========================================
SQL SERVER DESDE CERO
Capítulo 010 - WHERE
==========================================
*/

USE TiendaDB;
GO


-- Todos los productos.
SELECT *
FROM Productos;
GO


-- Productos con precio mayor a 20000.
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
GO


-- Productos con stock igual a 10.
SELECT Nombre, Stock
FROM Productos
WHERE Stock = 10;
GO


-- Productos con precio menor o igual a 30000.
SELECT Nombre, Precio
FROM Productos
WHERE Precio <= 30000;
GO


-- Producto con un nombre específico.
SELECT *
FROM Productos
WHERE Nombre = 'Mouse';
GO


-- Productos cuyo stock sea distinto de 5.
SELECT Nombre, Stock
FROM Productos
WHERE Stock <> 5;
GO
