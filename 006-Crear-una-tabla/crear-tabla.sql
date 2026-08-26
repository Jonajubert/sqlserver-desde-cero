/*
==========================================
SQL SERVER DESDE CERO
Capítulo 006 - Crear una tabla
==========================================
*/


-- Seleccionamos la base de datos.
USE TiendaDB;
GO


-- Creamos la tabla Productos.
CREATE TABLE Productos
(
    -- Identificador único del producto.
    -- IDENTITY genera el número automáticamente.
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,

    -- Nombre del producto.
    -- Puede contener hasta 100 caracteres.
    Nombre VARCHAR(100) NOT NULL,

    -- Precio con dos posiciones decimales.
    Precio DECIMAL(10,2) NOT NULL,

    -- Cantidad disponible.
    Stock INT NOT NULL
);
GO
