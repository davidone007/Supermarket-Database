### Cliente
| Name      | Definition                                      | Domain                                        | is primary? | is unique? | is mandatory? |
|-----------|------------------------------------------------|-----------------------------------------------|------------|------------|---------------|
| cedula | Identificador de un cliente en la base de datos | Un valor único para cada persona que tiene 10 digitos |      X     |      X     |      X        |
| nombreCompleto   | Nombre completo del cliente                   | Un valor que puede poseer dos nombres y apellidos                        |            |            |      X        |
| telefono   | Telefono del cliente que permita contactarlo     | Un valor que tiene 10 digitos                   |            |           |      X        |
| correoElectronico       | Correo Electronico del cliente que permita contactarlo  | Una dirección de correo electronico    |            |            |               |
| direccion   | Dirección del hogar del cliente     | Un valor que puede tener hasta 30 caracteres             |            |           |      X        |
| puntos   | Puntos acumulados por compras del cliente     | Un valor que puede tener hasta 5 digitos             |            |           |      X        |

### Proveedor
|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|cedula|Identificador del proveedor en la base de datos|Un valor único para cada proveedor que tiene 10 dígitos|X|X|X|
|nombreCompleto|Nombre completo del proveedor|Un valor que puede contener dos nombres y apellidos|||X|
|telefono|Número de teléfono del proveedor|Un valor que tiene 10 dígitos|||X|
|correoElectronico|Correo electrónico del proveedor|Una dirección de correo electrónico||||
|nombreEmpresa|Nombre de la empresa o entidad del proveedor|Un valor que representa el nombre de la empresa|||X|

### Factura

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|idFactura|Identificador único de la factura en la base de datos|Número entero positivo|X|X|X|
|fechaCompra|Fecha en que se realizó la compra|Fecha y hora|||X|
|monto|Monto total de la compra|Número decimal positivo|||X|

### Detalle_Compra

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|cantidad|cantidad que se compraran o venderan de aquel producto|Número entero positivo > 0|||X|
|idProduct|Codigo de barras del producto que se llevará|Número único asociado al producto|X|X|X|
|idFactura|Identificador único de la factura en la base de datos|Número entero positivo|X|X|X|


### Empleado

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|idEmpleado|Identificador único del empleado en la base de datos|Número entero positivo|X|X|X|

### Medio_de_Pago

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|idMedioPago|Identificador único del método de pago en la base de datos|Número entero positivo|X|X|X|
|nombre|Nombre del método de pago|Texto (por ejemplo, "Tarjeta de Crédito", "Efectivo")||X|X|

### Producto

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|codigoBarras|Código de barras del producto|Número único asociado al producto|X|X|X|
|nombreProducto|Nombre del producto|Texto que representa el nombre del producto||X|X|
|precio|Precio unitario del producto|Número decimal positivo|||X|

### Detalle_Producto

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|descripcion|Descripción detallada del producto|Texto que describe el producto|||X|
|iva|Impuesto sobre el Valor Agregado del producto|Valor booleano representado con un char S en caso de que tenga y N en caso contrario|||X|
|cantidadStock|Cantidad del producto en stock|Número entero no negativo|||X|
|fechaCaducidad|Fecha de caducidad del producto|Fecha y hora||||

### Tipo_Producto

|Name|Definition|Domain|is primary?|is unique?|is mandatory?|
|---|---|---|---|---|---|
|idTipoProducto|Identificador único del tipo de producto|Número entero positivo|X|X|X|
|nombreTipoProducto|Nombre del tipo de producto|Texto que representa el nombre del tipo de producto||X|X|
|descripcion|Descripción del tipo de producto|Texto que describe el tipo de producto|||X|

# [Pagina principal (Descripción de caso de estudio)](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/PaginaPrincipal%20(DescripcionCaso).md)
