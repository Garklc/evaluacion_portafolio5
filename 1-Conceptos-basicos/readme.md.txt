# Conceptos Básicos de Bases de Datos Relacionales

En esta carpeta se describen los componentes fundamentales de una base de datos relacional:

- **Tablas**: Estructuras que almacenan datos organizados en filas y columnas.
- **Registros (Filas)**: Cada fila representa un registro individual.
- **Campos (Columnas)**: Cada columna representa un atributo.
- **Clave Primaria**: Campo único que identifica cada registro.
- **Clave Foránea**: Campo que hace referencia a la clave primaria de otra tabla, estableciendo relaciones.

### Ejemplo de relación entre tablas
Supongamos dos tablas:
- `clientes` (id_cliente [PK], nombre, email)
- `pedidos` (id_pedido [PK], id_cliente [FK], fecha, monto)

La clave foránea `id_cliente` en `pedidos` permite relacionar cada pedido con un cliente específico.