-- reporte 1
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

-- reporte 2
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


-- reporte 3
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


-- reporte 4
SELECT * FROM (
    SELECT tp.nombretipoproducto, SUM(dc.cantidad) AS cantidad_vendida
    FROM tipo_producto tp
    INNER JOIN producto p ON tp.idtipoproducto = p.tipo_producto_idtipoproducto
    INNER JOIN detalle_compra dc ON p.codigobarras = dc.producto_codigobarras
    GROUP BY tp.nombretipoproducto
    ORDER BY cantidad_vendida DESC
) WHERE ROWNUM <= 10;


-- reporte 5
SELECT e.idempleado, SUM(dc.cantidad) AS total_ventas
FROM empleado e
INNER JOIN factura f ON e.idempleado = f.empleado_idempleado
INNER JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
WHERE f.fechacompra BETWEEN TO_DATE('2023-11-07', 'YYYY-MM-DD') AND TO_DATE('2025-11-10', 'YYYY-MM-DD') -- Rango de fechas
GROUP BY e.idempleado
ORDER BY total_ventas DESC;


-- reporte 6
SELECT p.nombrecompleto, pr.codigobarras, pr.nombreProducto AS nombre_producto, SUM(dc.cantidad) AS total_cantidad
FROM persona p
INNER JOIN factura f ON p.cedula = f.persona_cedula
INNER JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
INNER JOIN producto pr ON dc.producto_codigobarras = pr.codigobarras
WHERE pr.codigobarras = '456789012345'
GROUP BY p.nombrecompleto, pr.codigobarras, pr.nombreProducto
ORDER BY total_cantidad DESC;


-- reporte 7
SELECT SUM(f.monto) AS total_ventas
FROM factura f
WHERE f.empleado_idempleado = '001'
AND TO_CHAR(f.fechacompra, 'YYYY-MM-DD') = '2023-11-07';


-- reporte 8
SELECT tp.nombretipoproducto, COUNT(f.idfactura) AS total_ventas, SUM(f.monto) AS ingresos_totales
FROM tipo_producto tp
LEFT JOIN producto p ON tp.idtipoproducto = p.tipo_producto_idtipoproducto
LEFT JOIN detalle_compra dc ON p.codigobarras = dc.producto_codigobarras
LEFT JOIN factura f ON dc.factura_idfactura = f.idfactura
GROUP BY tp.nombretipoproducto
ORDER BY total_ventas DESC;


-- reporte 9
SELECT pr.nombreempresa AS nombre_empresa, per.nombrecompleto AS nombre_proveedor, COUNT(DISTINCT p.codigobarras) AS cantidad_productos
FROM proveedor pr
LEFT JOIN persona per ON pr.cedula = per.cedula
LEFT JOIN factura f ON pr.cedula = f.persona_cedula
LEFT JOIN detalle_compra dc ON f.idfactura = dc.factura_idfactura
LEFT JOIN producto p ON dc.producto_codigobarras = p.codigobarras
GROUP BY pr.nombreempresa, per.nombrecompleto
ORDER BY cantidad_productos DESC;


-- reporte 10
SELECT mp.nombre, COUNT(f.idfactura) AS total_ventas, SUM(f.monto) AS ingresos_totales
FROM medio_de_pago mp
LEFT JOIN factura f ON mp.idmediopago = f.medio_de_pago_idmediopago
GROUP BY mp.nombre
ORDER BY total_ventas DESC;