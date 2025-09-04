-- Crear tablas de ejemplo
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Insertar datos de ejemplo
INSERT INTO clientes VALUES (1, 'Juan Pérez', 'juan@example.com');
INSERT INTO clientes VALUES (2, 'María López', 'maria@example.com');

INSERT INTO pedidos VALUES (101, 1, '2024-01-15', 150.00);
INSERT INTO pedidos VALUES (102, 1, '2024-01-16', 200.00);
INSERT INTO pedidos VALUES (103, 2, '2024-01-17', 80.00);

-- Consulta: Todos los pedidos de un cliente específico (Juan Pérez)
SELECT p.id_pedido, p.fecha, p.total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
WHERE c.nombre = 'Juan Pérez';

-- Consulta: Total de pedidos por cliente
SELECT c.nombre, COUNT(p.id_pedido) AS cantidad_pedidos, SUM(p.total) AS total_gastado
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nombre;