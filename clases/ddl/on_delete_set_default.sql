DROP TABLE IF EXISTS Producto CASCADE;
DROP TABLE IF EXISTS Categoria CASCADE;

CREATE TABLE Categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria_id INT DEFAULT 1
        REFERENCES Categoria(id) ON DELETE SET DEFAULT
);

-- Insertar datos
INSERT INTO Categoria (nombre) VALUES ('General'); -- id = 1
INSERT INTO Categoria (nombre) VALUES ('Electrónica'); -- id = 2
INSERT INTO Producto (nombre, categoria_id) VALUES ('Laptop', 2);

-- Eliminar categoría 2
DELETE FROM Categoria WHERE id = 2;
-- Laptop ahora queda con categoria_id = 1 (General)