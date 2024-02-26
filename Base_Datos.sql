CREATE DATABASE IF NOT EXISTS Base_Datos;

USE Base_Datos;

-- Tabla Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    clave INT,
    nombre_cliente VARCHAR(50),
    direccion_cliente VARCHAR(50),
    correo_cliente VARCHAR(50),
    telefono_cliente VARCHAR(50),
    PRIMARY KEY (id_cliente)
) ENGINE=INNODB;

-- Tabla Producto
CREATE TABLE IF NOT EXISTS Producto (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(45),
    precio_producto INT,
    descripcion_producto VARCHAR(250),
    cantidad_disponible INT,
    id_cliente INT,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB;
