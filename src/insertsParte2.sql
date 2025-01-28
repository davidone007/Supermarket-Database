-- Factura 1
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000001', TO_DATE('2023-11-07', 'YYYY-MM-DD'), 0, '001', '6677889900', '001');

-- Detalles de compra para Factura 1
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000001', '123456789012', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000001', '234567890123', 2);

-- Factura 2
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000002', TO_DATE('2023-11-08', 'YYYY-MM-DD'), 0, '002', '7788990011', '002');

-- Detalles de compra para Factura 2
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000002', '234567890123', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000002', '345678901234', 1);

-- Factura 3
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000003', TO_DATE('2023-11-09', 'YYYY-MM-DD'), 0, '001', '8899001122', '003');

-- Detalles de compra para Factura 3
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000003', '345678901234', 4);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000003', '456789012345', 2);

-- Factura 4
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000004', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 0, '002', '9900112233', '004');

-- Detalles de compra para Factura 4
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000004', '456789012345', 5);

-- Factura 5
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000005', TO_DATE('2023-11-11', 'YYYY-MM-DD'), 0, '003', '0011223344', '005');

-- Detalles de compra para Factura 5
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000005', '567890123456', 2);

-- Factura 6
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000006', TO_DATE('2023-11-12', 'YYYY-MM-DD'), 0, '004', '0011223344', '006');

-- Detalles de compra para Factura 6
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000006', '678901234567', 3);

-- Factura 7
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000007', TO_DATE('2023-11-13', 'YYYY-MM-DD'), 0, '005', '1122334456', '007');

-- Detalles de compra para Factura 7
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000007', '789012345678', 4);

-- Factura 8
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000008', TO_DATE('2023-11-14', 'YYYY-MM-DD'), 0, '006', '2233445567', '008');

-- Detalles de compra para Factura 8
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000008', '890123456789', 2);

-- Factura 9
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('1000000009', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 0, '007', '3344556678', '009');

-- Detalles de compra para Factura 9
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('1000000009', '901234567890', 5);

-- Factura 11
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000111', TO_DATE('2023-11-17', 'YYYY-MM-DD'), 0, '001', '6677889900', '001');

-- Detalles de compra para Factura 11
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000111', '123456789012', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000111', '234567890123', 3);

-- Factura 12
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000112', TO_DATE('2023-11-18', 'YYYY-MM-DD'), 0, '002', '7788990011', '002');

-- Detalles de compra para Factura 12
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000112', '234567890123', 1);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000112', '345678901234', 2);

-- Factura 13
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000113', TO_DATE('2023-11-19', 'YYYY-MM-DD'), 0, '001', '8899001122', '003');

-- Detalles de compra para Factura 13
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000113', '345678901234', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000113', '456789012345', 1);

-- Factura 14
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000114', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '9900112233', '004');

-- Detalles de compra para Factura 14
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000114', '456789012345', 4);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000114', '567890123456', 2);

-- Factura 15
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000115', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '1122334456', '004');

-- Detalles de compra para Factura 15
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000115', '456789012345', 4);

-- Factura 16
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000116', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '0011223344', '004');

-- Detalles de compra para Factura 16
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000116', '456789012345', 4);

-- Factura 17
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000117', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '3344556678', '004');

-- Detalles de compra para Factura 17
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000117', '456789012345', 4);

-- Factura 18
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000118', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '2233445567', '004');

-- Detalles de compra para Factura 18
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000118', '456789012345', 4);

-- Factura 19
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000119', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '002', '6677889900', '004');

-- Detalles de compra para Factura 19
INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000119', '456789012345', 4);

-- codigo para actualizar el atributo monto de la tabla FACTURA, dependiendo de la cantidad y precios de producto en sus DETALLE_COMPRA
UPDATE factura
SET monto = (
    SELECT SUM(precio * dc.cantidad)
    FROM detalle_compra dc
    JOIN producto p ON dc.producto_codigobarras = p.codigobarras
    WHERE dc.factura_idfactura = factura.idfactura
)
WHERE EXISTS (
    SELECT 1
    FROM detalle_compra dc
    WHERE dc.factura_idfactura = factura.idfactura
);
