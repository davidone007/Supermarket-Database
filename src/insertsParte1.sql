-- registros para MEDIO_DE_PAGO

INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('001', 'Tarjeta de Crédito');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('002', 'Tarjeta de Débito');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('003', 'Efectivo');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('004', 'Nequi');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('005', 'PayPal');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('006', 'DaviPlata');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('007', 'PSE');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('008', 'Apple Pay');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('009', 'Google Pay');
INSERT INTO medio_de_pago (idmediopago, nombre) VALUES ('010', 'Bitcoin');


-- registros para TIPO_PRODUCTO

-- Productos de Limpieza
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('001', 'Productos de Limpieza', 'Productos de limpieza y cuidado');

-- Cuidado Personal
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('002', 'Cuidado Personal', 'Cuidado personal y belleza');

-- Productos de higiene personal
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('003', 'Productos de higiene personal', 'Higiene personal y artículos de papel');

-- Electrónica y Electrodomésticos
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('004', 'Electrónica y Electro', 'Dispositivos electrónicos');

-- Hogar y Decoración
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('005', 'Hogar y Decoración', 'Hogar y decoración');

-- Alimentos Congelados
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('007', 'Alimentos Congelados', 'Alimentos congelados');

-- Bebidas Alcohólicas
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('008', 'Bebidas Alcohólicas', 'Bebidas alcohólicas');

-- Snacks y Dulces
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('009', 'Snacks y Dulces', 'Snacks y dulces');

-- Productos para Mascotas
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('010', 'Productos para Mascotas', 'Productos para mascotas');

-- Frutas y Verduras
INSERT INTO tipo_producto (idtipoproducto, nombretipoproducto, descripcion)
VALUES ('011', 'Frutas y Verduras', 'Frutas y verduras frescas');


-- registros para PERSONA
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('1234567890', 'Juan Perez', '1234567890', 'juan.perez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('2345678901', 'Maria Rodriguez', '2345678901', 'maria.rodriguez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('3456789012', 'Carlos Gonzalez', '3456789012', 'carlos.gonzalez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('4567890123', 'Laura Martinez', '4567890123', 'laura.martinez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('5678901234', 'David Lopez', '5678901234', 'david.lopez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('6789012345', 'Ana Garcia', '6789012345', 'ana.garcia@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('7890123456', 'Diego Hernandez', '7890123456', 'diego.hernandez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('8901234567', 'Sara Diaz', '8901234567', 'sara.diaz@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('9012345678', 'Javier Torres', '9012345678', 'javier.torres@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('0123456789', 'Elena Ramirez', '0123456789', 'elena.ramirez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('1122334455', 'Pablo Silva', '1122334455', 'pablo.silva@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('2233445566', 'Luisa Castro', '2233445566', 'luisa.castro@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('3344556677', 'Miguel Mendez', '3344556677', 'miguel.mendez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('4455667788', 'Monica Vargas', '4455667788', 'monica.vargas@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('5566778899', 'Pedro Morales', '5566778899', 'pedro.morales@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('6677889900', 'Carmen Jimenez', '6677889900', 'carmen.jimenez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('7788990011', 'Raul Reyes', '7788990011', 'raul.reyes@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('8899001122', 'Isabel Nunez', '8899001122', 'isabel.nunez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('9900112233', 'Hector Ortega', '9900112233', 'hector.ortega@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('0011223344', 'Silvia Pena', '0011223344', 'silvia.pena@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('1122334456', 'Daniel Fernandez', '1122334455', 'daniel.fernandez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('2233445567', 'Eva Cruz', '2233445566', 'eva.cruz@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('3344556678', 'Oscar Herrera', '3344556677', 'oscar.herrera@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('4455667789', 'Marta Soto', '4455667788', 'marta.soto@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('5566778890', 'Alberto Cabrera', '5566778899', 'alberto.cabrera@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('6677889901', 'Cristina Fuentes', '6677889900', 'cristina.fuentes@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('7788990012', 'Roberto Gomez', '7788990011', 'roberto.gomez@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('8899001123', 'Laura Navarro', '8899001122', 'laura.navarro@example.com');
INSERT INTO persona (cedula, nombrecompleto, telefono, correoelectronico) VALUES ('9900112234', 'Jose Perez', '9900112233', 'jose.perez@example.com');

-- registros para CLIENTE

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('1234567890', 'Direccion Cliente 1', 1234);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('2345678901', 'Direccion Cliente 2', 2710);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('3456789012', 'Direccion Cliente 3', 482);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('4567890123', 'Direccion Cliente 4', 3675);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('5678901234', 'Direccion Cliente 5', 98);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('6789012345', 'Direccion Cliente 6', 2150);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('7890123456', 'Direccion Cliente 7', 3763);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('8901234567', 'Direccion Cliente 8', 150);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('9012345678', 'Direccion Cliente 9', 4201);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('0123456789', 'Direccion Cliente 10', 762);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('1122334455', 'Direccion Cliente 11', 280);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('2233445566', 'Direccion Cliente 12', 1578);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('3344556677', 'Direccion Cliente 13', 4932);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('4455667788', 'Direccion Cliente 14', 1046);

INSERT INTO cliente (cedula, direccion, puntos)
VALUES ('5566778899', 'Direccion Cliente 15', 322);

-- registros para PROVEEDOR
INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('6677889900', 'Empresa Proveedor 1');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('7788990011', 'Empresa Proveedor 2');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('8899001122', 'Empresa Proveedor 3');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('9900112233', 'Empresa Proveedor 4');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('0011223344', 'Empresa Proveedor 5');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('1122334456', 'Empresa Proveedor 6');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('2233445567', 'Empresa Proveedor 7');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('3344556678', 'Empresa Proveedor 8');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('4455667789', 'Empresa Proveedor 9');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('5566778890', 'Empresa Proveedor 10');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('6677889901', 'Empresa Proveedor 11');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('7788990012', 'Empresa Proveedor 12');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('8899001123', 'Empresa Proveedor 13');

INSERT INTO proveedor (cedula, nombreempresa)
VALUES ('9900112234', 'Empresa Proveedor 14');

-- registros para EMPLEADO

INSERT INTO empleado (idempleado) VALUES ('001');
INSERT INTO empleado (idempleado) VALUES ('002');
INSERT INTO empleado (idempleado) VALUES ('003');
INSERT INTO empleado (idempleado) VALUES ('004');
INSERT INTO empleado (idempleado) VALUES ('005');
INSERT INTO empleado (idempleado) VALUES ('006');
INSERT INTO empleado (idempleado) VALUES ('007');
INSERT INTO empleado (idempleado) VALUES ('008');
INSERT INTO empleado (idempleado) VALUES ('009');
INSERT INTO empleado (idempleado) VALUES ('010');
INSERT INTO empleado (idempleado) VALUES ('011');
INSERT INTO empleado (idempleado) VALUES ('012');
INSERT INTO empleado (idempleado) VALUES ('013');
INSERT INTO empleado (idempleado) VALUES ('014');
INSERT INTO empleado (idempleado) VALUES ('015');
INSERT INTO empleado (idempleado) VALUES ('016');
INSERT INTO empleado (idempleado) VALUES ('017');
INSERT INTO empleado (idempleado) VALUES ('018');
INSERT INTO empleado (idempleado) VALUES ('019');
INSERT INTO empleado (idempleado) VALUES ('020');


-- registros para PRODUCTO

-- Productos de Limpieza
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('123456789012', 'Limpiador Multiusos', 21000, '001');

-- Cuidado Personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('234567890123', 'Champú Revitalizante', 26250, '002');

-- Productos de higiene personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('345678901234', 'Papel Higiénico Suave', 10500, '003');

-- Electrónica y Electrodomésticos
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('456789012345', 'Smart TV 50 Pulgadas', 1750000, '004');

-- Hogar y Decoración
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('567890123456', 'Cojín Decorativo', 45000, '005');

-- Productos de Limpieza
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('678901234567', 'Detergente Concentrado', 14000, '001');

-- Alimentos Congelados
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('789012345678', 'Pizza de Pollo BBQ', 11000, '007');

-- Bebidas Alcohólicas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('890123456789', 'Whisky Escocés 12 años', 117000, '008');

-- Snacks y Dulces
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('901234567890', 'Chocolate con Almendras', 1990, '009');

-- Productos para Mascotas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('012345678901', 'Comida para Gatos', 6990, '010');

-- Frutas y Verduras
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('112233445566', 'Manzanas Frescas', 79, '011');

-- Electrónica y Electrodomésticos
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('223344556677', 'Lavadora de Carga Frontal', 349990, '004');

-- Cuidado Personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('334455667788', 'Jabón en Barra', 1490, '003');

-- Bebidas Alcohólicas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('445566778899', 'Cerveza Artesanal IPA', 2990, '008');

-- Snacks y Dulces
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('556677889900', 'Galletas de Avena', 3490, '009');

-- Productos para Mascotas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('667788990011', 'Collar para Perros', 8990, '010');

-- Frutas y Verduras
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('778899001122', 'Pimiento Rojo', 89, '011');

-- Electrónica y Electrodomésticos
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('889900112233', 'Laptop Ultradelgada', 799990, '004');

-- Cuidado Personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('990011223340', 'Cuchillas de Afeitar', 4990, '002');

-- Electrónica y Electrodomésticos
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('001122334453', 'Máquina de Café Espresso', 149990, '004');

-- Productos de Limpieza
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('112233445562', 'Detergente Líquido', 3990, '001');

-- Cuidado Personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('223344556671', 'Loción Hidratante', 6990, '002');

-- Productos de higiene personal
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('334455667789', 'Toallas de Papel', 1990, '003');

-- Electrónica y Electrodomésticos
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('445566778898', 'Smartphone Android', 299990, '004');

-- Hogar y Decoración
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('556677889907', 'Alfombra de Área', 19990, '005');

-- Productos de Limpieza
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('667788990016', 'Pastillas para Lavavajillas', 9990, '001');

-- Alimentos Congelados
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('778899001125', 'Pizza de Peperoni', 4990, '007');

-- Bebidas Alcohólicas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('889900112234', 'Vino Tinto Reserva', 12990, '008');

-- Snacks y Dulces
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('990011223343', 'Papas Fritas', 1790, '009');

-- Productos para Mascotas
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('001122334452', 'Arena para Gatos', 5990, '010');

-- Frutas y Verduras
INSERT INTO producto (codigobarras, nombreproducto, precio, tipo_producto_idtipoproducto)
VALUES ('112233445561', 'Sandía Fresca', 2490, '011');


-- registros para DETALLE_PRODUCTO

-- Productos de Limpieza
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('123456789012', 'Limpiador Multiusos', 'S', 100, TO_DATE('2024-12-31', 'YYYY-MM-DD'));

-- Cuidado Personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('234567890123', 'Champú Revitalizante', 'S', 150, TO_DATE('2025-06-30', 'YYYY-MM-DD'));

-- Productos de higiene personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('345678901234', 'Papel Higiénico Suave', 'S', 200, TO_DATE('2024-11-30', 'YYYY-MM-DD'));

-- Electrónica y Electrodomésticos
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('456789012345', 'Smart TV 50 Pulgadas', 'S', 20, NULL);

-- Hogar y Decoración
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('567890123456', 'Cojín Decorativo', 'S', 30, TO_DATE('2024-09-30', 'YYYY-MM-DD'));

-- Productos de Limpieza
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('678901234567', 'Detergente Concentrado', 'S', 80, TO_DATE('2024-12-31', 'YYYY-MM-DD'));

-- Alimentos Congelados
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('789012345678', 'Pizza de Pollo BBQ', 'S', 60, TO_DATE('2024-11-30', 'YYYY-MM-DD'));

-- Bebidas Alcohólicas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('890123456789', 'Whisky Escocés 12 años', 'S', 15, TO_DATE('2026-03-31', 'YYYY-MM-DD'));

-- Snacks y Dulces
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('901234567890', 'Chocolate con Almendras', 'S', 40, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Productos para Mascotas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('012345678901', 'Comida para Gatos', 'S', 100, TO_DATE('2024-09-30', 'YYYY-MM-DD'));

-- Frutas y Verduras
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('112233445566', 'Manzanas Frescas', 'S', 200, TO_DATE('2024-11-30', 'YYYY-MM-DD'));

-- Electrónica y Electrodomésticos
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('223344556677', 'Lavadora de Carga Frontal', 'S', 10, NULL);

-- Cuidado Personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('334455667788', 'Jabón en Barra', 'S', 90, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Bebidas Alcohólicas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('445566778899', 'Cerveza Artesanal IPA', 'S', 30, TO_DATE('2024-12-31', 'YYYY-MM-DD'));

-- Snacks y Dulces
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('556677889900', 'Galletas de Avena', 'S', 60, TO_DATE('2024-09-30', 'YYYY-MM-DD'));

-- Productos para Mascotas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('667788990011', 'Collar para Perros', 'S', 45, NULL);

-- Frutas y Verduras
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('778899001122', 'Pimiento Rojo', 'S', 120, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Electrónica y Electrodomésticos
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('889900112233', 'Laptop Ultradelgada', 'S', 15, NULL);

-- Cuidado Personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('990011223340', 'Cuchillas de Afeitar', 'S', 80, NULL);

-- Electrónica y Electrodomésticos
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('001122334453', 'Máquina de Café Espresso', 'S', 10, NULL);

-- Productos de Limpieza
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('112233445562', 'Detergente Líquido', 'S', 70, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Cuidado Personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('223344556671', 'Loción Hidratante', 'S', 50, TO_DATE('2024-11-30', 'YYYY-MM-DD'));

-- Productos de higiene personal
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('334455667789', 'Toallas de Papel', 'S', 100, NULL);

-- Electrónica y Electrodomésticos
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('445566778898', 'Smartphone Android', 'S', 20, NULL);

-- Hogar y Decoración
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('556677889907', 'Alfombra de Área', 'S', 25, NULL);

-- Productos de Limpieza
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('667788990016', 'Pastillas para Lavavajillas', 'S', 60, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Alimentos Congelados
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('778899001125', 'Pizza de Peperoni', 'S', 35, TO_DATE('2024-11-30', 'YYYY-MM-DD'));

-- Bebidas Alcohólicas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('889900112234', 'Vino Tinto Reserva', 'S', 18, TO_DATE('2025-06-30', 'YYYY-MM-DD'));

-- Snacks y Dulces
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('990011223343', 'Papas Fritas', 'S', 75, TO_DATE('2024-10-31', 'YYYY-MM-DD'));

-- Productos para Mascotas
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('001122334452', 'Arena para Gatos', 'S', 90, TO_DATE('2024-12-31', 'YYYY-MM-DD'));

-- Frutas y Verduras
INSERT INTO detalle_producto (producto_codigobarras, descripcion, iva, cantidadstock, fechacaducidad)
VALUES ('112233445561', 'Sandía Fresca', 'S', 50, TO_DATE('2024-09-30', 'YYYY-MM-DD'));



 
-- registros para FACTURA con sus DETALLE_COMPRA
-- Factura 1
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000001', TO_DATE('2023-11-07', 'YYYY-MM-DD'), 0, '001', '1234567890', '001');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000001', '123456789012', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000001', '234567890123', 2);

-- Factura 2
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000002', TO_DATE('2023-11-08', 'YYYY-MM-DD'), 0, '002', '2345678901', '002');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000002', '234567890123', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000002', '345678901234', 1);

-- Factura 3
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000003', TO_DATE('2023-11-09', 'YYYY-MM-DD'), 0, '001', '3456789012', '003');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000003', '345678901234', 4);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000003', '456789012345', 2);

-- Factura 4
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000004', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 0, '002', '4567890123', '004');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000004', '456789012345', 5);

-- Factura 5
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000005', TO_DATE('2023-11-11', 'YYYY-MM-DD'), 0, '003', '5678901234', '005');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000005', '567890123456', 2);

-- Factura 6
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000006', TO_DATE('2023-11-12', 'YYYY-MM-DD'), 0, '004', '6789012345', '006');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000006', '678901234567', 3);

-- Factura 7
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000007', TO_DATE('2023-11-13', 'YYYY-MM-DD'), 0, '005', '7890123456', '007');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000007', '789012345678', 4);

-- Factura 8
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000008', TO_DATE('2023-11-14', 'YYYY-MM-DD'), 0, '006', '8901234567', '008');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000008', '890123456789', 2);

-- Factura 9
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000009', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 0, '007', '9012345678', '009');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000009', '901234567890', 5);

-- Factura 10
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000010', TO_DATE('2023-11-16', 'YYYY-MM-DD'), 0, '008', '0123456789', '010');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000010', '012345678901', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000010', '123456789012', 2);

-- Factura 11
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000011', TO_DATE('2023-11-17', 'YYYY-MM-DD'), 0, '001', '1234567890', '001');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000011', '123456789012', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000011', '234567890123', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000011', '345678901234', 1);

-- Factura 12
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000012', TO_DATE('2023-11-18', 'YYYY-MM-DD'), 0, '002', '2345678901', '002');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000012', '234567890123', 4);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000012', '345678901234', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000012', '456789012345', 3);

-- Factura 13
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000013', TO_DATE('2023-11-19', 'YYYY-MM-DD'), 0, '003', '3456789012', '003');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000013', '345678901234', 2);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000013', '456789012345', 3);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000013', '567890123456', 2);

-- Factura 14
INSERT INTO factura (idfactura, fechacompra, monto, medio_de_pago_idmediopago, persona_cedula, empleado_idempleado)
VALUES ('0000000014', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 0, '004', '4567890123', '004');

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000014', '456789012345', 5);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000014', '567890123456', 4);

INSERT INTO detalle_compra (factura_idfactura, producto_codigobarras, cantidad)
VALUES ('0000000014', '678901234567', 2);

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
