# Inserts

Los siguientes inserts se encargan de agregar información relevante a la base de datos y, al mismo tiempo, garantizar que el monto total de cada factura se mantenga actualizado. Para ello, se ha desarrollado una instrucción `UPDATE` específica que calcula y establece el monto total de cada factura basándose en los productos adquiridos. Al final de este proceso, el campo `monto` en la tabla `Factura` reflejará el monto total de la compra en cada factura.

Los inserts se dividieron en dos partes para asegurarse de que se puedan ejecutar sin errores y para evitar superar el límite de caracteres permitido en SQLWorksheet. Ambas partes de los inserts, cuando se ejecutan secuencialmente, completarán la inserción de los datos en la base de datos de manera exitosa.

**Recordar primero se debe ejercutar el Insert Parte 1 y luego el Insert Parte 2 para obtener los resultados esperados.**

# [Archivo Inserts Parte 1](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/src/insertsParte1.sql)

# [Archivo Inserts Parte 2](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/src/insertsParte2.sql)


## **Tabla: Persona**
Se han insertado datos de ejemplo para 29 personas en esta tabla. Cada inserción incluye:

- `cedula`: Un número de cédula único para cada persona.
- `nombrecompleto`: El nombre completo de la persona.
- `telefono`: El número de teléfono de la persona.
- `correoelectronico`: La dirección de correo electrónico de la persona.

## **Tabla: Cliente**
Se han insertado datos de ejemplo para 15 clientes en esta tabla. Cada inserción incluye:

- `cedula`: El número de cédula de la persona, que actúa como clave externa relacionando al cliente con una persona en la tabla Persona.
- `direccion`: La dirección del cliente.
- `puntos`: La cantidad de puntos acumulados por el cliente.

## **Tabla: Proveedor**
Se han insertado datos de ejemplo para 14 proveedores en esta tabla. Cada inserción incluye:

- `cedula`: El número de cédula de la persona, que actúa como clave externa relacionando al proveedor con una persona en la tabla Persona.
- `nombreempresa`: El nombre de la empresa proveedora.

## **Tabla: Empleado**
Se han insertado datos de ejemplo para 20 empleados en esta tabla. Cada inserción incluye:

- `idempleado`: Un identificador único para cada empleado.

## **Tabla: Producto**
Se han insertado datos de ejemplo para 31 productos en esta tabla. Cada inserción incluye:

- `codigobarras`: El código de barras único del producto.
- `nombreproducto`: El nombre del producto.
- `precio`: El precio del producto.
- `tipo_producto_idtipoproducto`: La clave foránea que relaciona el producto con su tipo de producto.

## **Tabla: DetalleProducto**
Se han insertado datos detallados de ejemplo para los 31 productos en esta tabla. Cada inserción incluye:

- `producto_codigobarras`: La clave foránea que relaciona el detalle del producto con un producto específico en la tabla Producto.
- `descripcion`: La descripción del producto.
- `iva`: Una indicación de si el producto tiene IVA (S) o no (N).
- `cantidadstock`: La cantidad en stock del producto.
- `fechacaducidad`: La fecha de caducidad del producto (si aplica).

## **Tabla: TipoProductos**
Se han insertado datos de ejemplo para 9 tipos de productos en esta tabla. Cada inserción incluye:

- `idtipoproducto`: Un identificador único para cada tipo de producto.
- `nombretipoproducto`: El nombre del tipo de producto.
- `descripcion`: Una descripción del tipo de producto.

**Los tipos de producto son:** 


1. `idtipoproducto`: 001, `nombretipoproducto`: Productos de Limpieza, `descripcion`: Productos de limpieza y cuidado.
2. `idtipoproducto`: 002, `nombretipoproducto`: Cuidado Personal, `descripcion`: Cuidado personal y belleza.
3. `idtipoproducto`: 003, `nombretipoproducto`: Productos de higiene personal, `descripcion`: Higiene personal y artículos de papel.
4. `idtipoproducto`: 004, `nombretipoproducto`: Electrónica y Electrodomésticos, `descripcion`: Dispositivos electrónicos.
5. `idtipoproducto`: 005, `nombretipoproducto`: Hogar y Decoración, `descripcion`: Hogar y decoración.
6. `idtipoproducto`: 007, `nombretipoproducto`: Alimentos Congelados, `descripcion`: Alimentos congelados.
7. `idtipoproducto`: 008, `nombretipoproducto`: Bebidas Alcohólicas, `descripcion`: Bebidas alcohólicas.
8. `idtipoproducto`: 009, `nombretipoproducto`: Snacks y Dulces, `descripcion`: Snacks y dulces.
9. `idtipoproducto`: 010, `nombretipoproducto`: Productos para Mascotas, `descripcion`: Productos para mascotas.
10. `idtipoproducto`: 011, `nombretipoproducto`: Frutas y Verduras, `descripcion`: Frutas y verduras frescas.

## **Tabla: MedioDePago**
Se han insertado datos de ejemplo para 10 medios de pago diferentes en esta tabla. Cada inserción incluye:

- `idmediopago`: Un identificador único para cada medio de pago.
- `nombre`: El nombre del medio de pago.

**Los medios de pago son:**

1. `idmediopago`: 001, `nombre`: Tarjeta de Crédito
2. `idmediopago`: 002, `nombre`: Tarjeta de Débito
3. `idmediopago`: 003, `nombre`: Efectivo
4. `idmediopago`: 004, `nombre`: Nequi
5. `idmediopago`: 005, `nombre`: PayPal
6. `idmediopago`: 006, `nombre`: DaviPlata
7. `idmediopago`: 007, `nombre`: PSE
8. `idmediopago`: 008, `nombre`: Apple Pay
9. `idmediopago`: 009, `nombre`: Google Pay
10. `idmediopago`: 010, `nombre`: Bitcoin


## **Tablas: Factura y DetalleCompra**
Se han insertado datos de ejemplo para 27 facturas en la tabla Factura, cada una relacionada con una persona (cliente o proveedor). Además, se han insertado detalles de compra para cada factura en la tabla DetalleCompra. Cada inserción en la tabla Factura incluye:

- `idfactura`: Un identificador único para cada factura.
- `fechacompra`: La fecha de compra de la factura.
- `montototal`: El monto total de la factura.
- `mediopago_idmediopago`: La clave foránea que relaciona la factura con el medio de pago utilizado.
- `cliente_cedula`: La clave foránea que relaciona la factura con el cliente.
- `empleado_idempleado`: La clave foránea que relaciona la factura con el empleado que realizó la venta.

En la tabla DetalleCompra, se han insertado detalles de compra para cada factura, incluyendo el producto, la cantidad comprada y el precio.

# [Pagina principal (Descripción de caso de estudio)](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/PaginaPrincipal%20(DescripcionCaso).md)


