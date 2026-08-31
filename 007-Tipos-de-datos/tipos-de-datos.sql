/*
==========================================
SQL SERVER DESDE CERO
Capítulo 007 - Tipos de datos
==========================================
*/


-- Seleccionamos nuestra base de datos.
USE TiendaDB;
GO


-- Creamos una tabla para practicar
-- diferentes tipos de datos.
CREATE TABLE ProductosEjemplo
(
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,

    Nombre VARCHAR(100) NOT NULL,

    Precio DECIMAL(10,2) NOT NULL,

    Stock INT NOT NULL,

    FechaAlta DATE NOT NULL,

    Activo BIT NOT NULL
);
GO


-- Consultamos la tabla.
SELECT *
FROM ProductosEjemplo;
GO
