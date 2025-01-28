# Reportes de la base de datos

Ahora, nos adentraremos en la generación de informes y reportes a partir de la base de datos. Estas consultas van más allá de la simple recuperación de datos y se centran en la presentación de información estructurada y relevante a través de agrupamientos, combinación de datos mediante joins, ordenamientos y la inclusión de un límite superior de resultados (TOP). Estos reportes proporcionarán una visión detallada y organizada de los datos almacenados, lo que facilitará la toma de decisiones informadas y el análisis de la información contenida en la base de datos.

# [Archivo Reportes](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/src/consultas.sql)

## REPORTE 1

**Reporte de  Empleados Relacionados con Compras por Clientes de Productos por Encima del Precio Promedio:**

```sql
SELECT e.*
FROM empleado e
WHERE e.idempleado IN (
    SELECT f.empleado_idempleado
    FROM factura f
    WHERE f.persona_cedula IN (
        SELECT persona_cedula
        FROM detalle_compra dc
        WHERE dc.producto_codigobarras IN (
            SELECT producto_codigobarras
            FROM producto
            WHERE precio > (
                SELECT AVG(precio)
                FROM producto
            )
        )
    )
);
```

En este reporte, se utilizan subconsultas anidadas para filtrar empleados relacionados con clientes que hayan comprado productos costosos en la base de datos. El resultado final es un conjunto de empleados que cumplen con este criterio de selección.

## REPORTE 2

**Reporte de Facturas de Clientes con Compras de Productos con IVA y Montos Superiores a 5000:**

```sql
SELECT
    f.idfactura,
    f.fechacompra,
    f.monto,
    f.medio_de_pago_idmediopago,
    'cliente' AS Tipo, -- Agregamos la columna "Tipo" con el valor 'cliente'
    p.nombrecompleto,
    c.*
FROM persona p
JOIN proveedor c ON p.cedula = c.cedula
JOIN factura f ON p.cedula = f.persona_cedula
WHERE p.cedula IN (
    SELECT f.persona_cedula
    FROM factura f
    JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
    JOIN producto pr ON dc.producto_codigobarras = pr.codigobarras
    JOIN detalle_producto dp ON pr.codigobarras = dp.producto_codigobarras
    WHERE dp.iva = 'S'
    GROUP BY f.persona_cedula
    HAVING SUM(pr.precio * dc.cantidad) > 5000
);
```

Este reporte combina datos de facturas, clientes (proveedores) y personas. La consulta selecciona facturas de clientes que han comprado productos con IVA ("S") y cuyo monto total de compras supera los 5000. La información incluye detalles de la factura, la fecha de compra, el monto, el medio de pago, el nombre del cliente y los datos del cliente/proveedor. La columna "Tipo" se agrega para identificar a los clientes en el resultado del reporte.

## REPORTE 3
**Reporte de los Productos Más Vendidos por Empleado:**

```sql
WITH VentasEmpleado AS (
    SELECT
        e.idempleado,
        p.nombreproducto AS ProductoVendido,
        dc.cantidad AS CantidadVendida,
        ROW_NUMBER() OVER (PARTITION BY e.idempleado ORDER BY dc.cantidad DESC) AS RowNumber
    FROM
        empleado e
    JOIN factura f ON e.idempleado = f.empleado_idempleado
    JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
    JOIN producto p ON dc.producto_codigobarras = p.codigobarras
)
SELECT
    idempleado,
    ProductoVendido,
    CantidadVendida
FROM VentasEmpleado
WHERE RowNumber = 1;
```

Este reporte identifica los productos más vendidos por cada empleado. Utiliza una consulta común de tabla (CTE) llamada "VentasEmpleado" para calcular el número de fila (RowNumber) para cada producto vendido por cada empleado, ordenados por cantidad vendida en orden descendente. Luego, selecciona los productos con RowNumber igual a 1, lo que significa los productos más vendidos por cada empleado. El resultado muestra el ID del empleado, el producto más vendido y la cantidad vendida de ese producto.

## REPORTE 4
**Reporte de los 10 Tipos de Producto Más Vendidos:**

```sql
SELECT * FROM (
    SELECT tp.nombretipoproducto, SUM(dc.cantidad) AS cantidad_vendida
    FROM tipo_producto tp
    INNER JOIN producto p ON tp.idtipoproducto = p.tipo_producto_idtipoproducto
    INNER JOIN detalle_compra dc ON p.codigobarras = dc.producto_codigobarras
    GROUP BY tp.nombretipoproducto
    ORDER BY cantidad_vendida DESC
) WHERE ROWNUM <= 10;
```

Este reporte usa un enfoque 'TOP', busca los 10 tipos de productos más vendidos. Utiliza una subconsulta para calcular la suma de la cantidad vendida de productos agrupados por el nombre del tipo de producto. Luego, los resultados se ordenan en orden descendente según la cantidad vendida. La consulta externa selecciona los 10 primeros resultados, lo que proporciona los tipos de producto más vendidos. Los datos mostrados incluyen el nombre del tipo de producto y la cantidad total vendida de ese tipo. 

## REPORTE 5

**Reporte de Total de Ventas por Empleado en un Rango de Fechas:**

```sql
SELECT e.idempleado, SUM(dc.cantidad) AS total_ventas
FROM empleado e
INNER JOIN factura f ON e.idempleado = f.empleado_idempleado
INNER JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
WHERE f.fechacompra BETWEEN TO_DATE('2023-11-07', 'YYYY-MM-DD') AND TO_DATE('2025-11-10', 'YYYY-MM-DD') -- Rango de fechas
GROUP BY e.idempleado
ORDER BY total_ventas DESC;
```

Este reporte muestra el total de ventas realizadas por cada empleado en un rango de fechas específico. Utiliza una consulta que realiza un INNER JOIN entre las tablas "empleado," "factura," y "detalle_compra" para vincular la información relevante. Luego, se aplica un filtro para seleccionar las ventas que se encuentran dentro del rango de fechas definido. La información se agrupa por el ID del empleado y se calcula la suma de la cantidad vendida (total de ventas) para cada empleado. Los resultados se muestran en orden descendente según el total de ventas.


## REPORTE 6
**Reporte de Total de Cantidad Vendida por Producto y Cliente:**

```sql
SELECT p.nombrecompleto, pr.codigobarras, pr.nombreProducto AS nombre_producto, SUM(dc.cantidad) AS total_cantidad
FROM persona p
INNER JOIN factura f ON p.cedula = f.persona_cedula
INNER JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
INNER JOIN producto pr ON dc.producto_codigobarras = pr.codigobarras
WHERE pr.codigobarras = '456789012345'
GROUP BY p.nombrecompleto, pr.codigobarras, pr.nombreProducto
ORDER BY total_cantidad DESC;
```
Este reporte muestra el total de cantidad vendida de un producto específico ('456789012345') a través de los clientes. Utiliza una consulta que realiza INNER JOIN entre las tablas "persona," "factura," "detalle_compra," y "producto" para vincular la información relevante. Luego, se aplica un filtro para seleccionar las ventas del producto con el código de barras especificado. La información se agrupa por el nombre del cliente, el código de barras del producto y el nombre del producto. Los resultados se presentan en orden descendente según la total cantidad vendida de ese producto a través de los clientes.


## REPORTE 7


**Reporte de Total de Ventas de un Empleado en una Fecha Específica:**

```sql
SELECT SUM(f.monto) AS total_ventas
FROM factura f
WHERE f.empleado_idempleado = '001'
AND TO_CHAR(f.fechacompra, 'YYYY-MM-DD') = '2023-11-07';
```
Este reporte muestra el total de ventas realizadas por un empleado específico con el ID '001' en una fecha particular, en este caso, '2023-11-07'. Utiliza una consulta que selecciona las filas de la tabla "factura" donde el empleado corresponde al ID '001' y la fecha de compra coincide con '2023-11-07'. Luego, se suma el monto de todas estas ventas para obtener el total de ventas realizadas por ese empleado en la fecha especificada.

## REPORTE 8


**Reporte de Ventas por Tipo de Producto:**

```sql
SELECT tp.nombretipoproducto, COUNT(f.idfactura) AS total_ventas, SUM(f.monto) AS ingresos_totales
FROM tipo_producto tp
LEFT JOIN producto p ON tp.idtipoproducto = p.tipo_producto_idtipoproducto
LEFT JOIN detalle_compra dc ON p.codigobarras = dc.producto_codigobarras
LEFT JOIN factura f ON dc.factura_idfactura = f.idfactura
GROUP BY tp.nombretipoproducto
ORDER BY total_ventas DESC;
```
Este reporte muestra el recuento de ventas y los ingresos totales por cada tipo de producto. Utiliza una consulta que realiza múltiples combinaciones de tablas utilizando "LEFT JOIN" para relacionar las tablas "tipo_producto," "producto," "detalle_compra," y "factura." Luego, agrupa los resultados por el nombre del tipo de producto y calcula el número total de ventas y los ingresos totales para cada tipo. El resultado final se presenta ordenado en orden descendente según el total de ventas.

## Reporte 9

**Reporte de Cantidad de Productos por Proveedor:**

```sql
SELECT pr.nombreempresa AS nombre_empresa, per.nombrecompleto AS nombre_proveedor, COUNT(DISTINCT p.codigobarras) AS cantidad_productos
FROM proveedor pr
LEFT JOIN persona per ON pr.cedula = per.cedula
LEFT JOIN factura f ON pr.cedula = f.persona_cedula
LEFT JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
LEFT JOIN producto p ON dc.producto_codigobarras = p.codigobarras
GROUP BY pr.nombreempresa, per.nombrecompleto
ORDER BY cantidad_productos DESC;
```

Este reporte muestra la cantidad de productos suministrados por cada proveedor. Utiliza múltiples combinaciones de tablas mediante "LEFT JOIN" para relacionar las tablas "proveedor," "persona," "factura," "detalle_compra," y "producto." Luego, agrupa los resultados por el nombre de la empresa del proveedor y el nombre del proveedor en sí, y cuenta la cantidad de productos únicos suministrados por cada proveedor. El resultado final se presenta en orden descendente según la cantidad de productos.

## Reporte 10
**Reporte de Ventas por Medio de Pago:**

```sql
SELECT mp.nombre, COUNT(f.idfactura) AS total_ventas, SUM(f.monto) AS ingresos_totales
FROM medio_de_pago mp
LEFT JOIN factura f ON mp.idmediopago = f.medio_de_pago_idmediopago
GROUP BY mp.nombre
ORDER BY total_ventas DESC;
```

Este reporte muestra el resumen de las ventas según el medio de pago utilizado. Se realiza una unión (LEFT JOIN) entre las tablas "medio_de_pago" y "factura" utilizando el campo "idmediopago." Luego, se agrupan los resultados por el nombre del medio de pago y se calcula el total de ventas y los ingresos totales para cada medio. El resultado final se presenta en orden descendente según el total de ventas.







# [Pagina principal (Descripción de caso de estudio)](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/PaginaPrincipal%20(DescripcionCaso).md)


