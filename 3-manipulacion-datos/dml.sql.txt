-- Supongamos que tenemos una tabla "clientes" con campo "direccion"
ALTER TABLE clientes ADD COLUMN direccion VARCHAR(200);

-- Insertar nuevo cliente
INSERT INTO clientes (id_cliente, nombre, email, direccion) 
VALUES (3, 'Carlos Gómez', 'carlos@example.com', 'Calle 123 #45-67');

-- Actualizar dirección de un cliente
UPDATE clientes 
SET direccion = 'Avenida Principal #100' 
WHERE nombre = 'Juan Pérez';

-- Eliminar un pedido que no fue procesado
DELETE FROM pedidos 
WHERE id_pedido = 103;