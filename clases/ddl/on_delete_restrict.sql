CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Pedido (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES Cliente(id) ON DELETE RESTRICT
);

-- Insertar datos
INSERT INTO Cliente (nombre) VALUES ('Laura');
INSERT INTO Pedido (cliente_id) VALUES (1);

-- Intentar eliminar cliente
DELETE FROM Cliente WHERE id = 1;
-- ERROR: update or delete on table "cliente" violates foreign key constraint