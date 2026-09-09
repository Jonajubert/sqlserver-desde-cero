/*
==========================================
SQL SERVER DESDE CERO
Capítulo 008 - INSERT
==========================================
*/


-- Seleccionamos la base de datos.
USE TiendaDB;
GO


-- Insertamos nuestro primer producto.
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Mouse', 15000.00, 10);
GO


-- Insertamos varios productos.
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Teclado', 25000.00, 8),
    ('Monitor', 180000.00, 5),
    ('Auriculares', 32000.00, 12);
GO


-- Consultamos los registros guardados.
SELECT *
FROM Productos;
GO
