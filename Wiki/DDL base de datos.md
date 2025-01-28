# Documentación del Esquema de Base de Datos

# [Archivo DDL](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/src/DDL_BaseDeDatos.ddl)

## Introducción

Este documento proporciona una descripción y documentación del esquema de base de datos utilizado en el proyecto del Supermercado Cuéllar. El esquema incluye tablas que representan diversas entidades y sus relaciones, diseñadas para gestionar la información relacionada con las ventas, el inventario y otros aspectos clave del supermercado. A continuación, se presentan las tablas principales y sus relaciones, junto con las restricciones y claves primarias y externas que garantizan la integridad de los datos.

## Tablas y Descripciones

### Tabla: Cliente
- **Atributos:**
  - cedula (VARCHAR2, 10): Número de cédula del cliente (clave primaria).
  - direccion (VARCHAR2, 30): Dirección del cliente.
  - puntos (NUMBER, 5): Puntos acumulados por el cliente.

### Tabla: Detalle Compra
- **Atributos:**
  - factura_idfactura (CHAR, 10): ID de factura (clave externa).
  - producto_codigobarras (CHAR, 12): Código de barras del producto (clave externa).
  - cantidad (NUMBER, 5): Cantidad de productos comprados.

### Tabla: Detalle Producto
- **Atributos:**
  - producto_codigobarras (CHAR, 12): Código de barras del producto (clave primaria).
  - descripcion (VARCHAR2, 50): Descripción del producto.
  - iva (CHAR, 1): Impuesto al valor agregado.
  - cantidadstock (NUMBER, 5): Cantidad en stock del producto.
  - fechacaducidad (DATE): Fecha de caducidad del producto.

### Tabla: Empleado
- **Atributos:**
  - idempleado (CHAR, 3): ID del empleado (clave primaria).

### Tabla: Factura
- **Atributos:**
  - idfactura (CHAR, 10): ID de factura (clave primaria).
  - fechacompra (DATE): Fecha de compra.
  - monto (NUMBER, 8): Monto total de la compra.
  - medio_de_pago_idmediopago (CHAR, 3): ID del medio de pago (clave externa).
  - persona_cedula (VARCHAR2, 10): Cédula de la persona (clave externa).
  - empleado_idempleado (CHAR, 3): ID del empleado (clave externa).

### Tabla: Medio de Pago
- **Atributos:**
  - idmediopago (CHAR, 3): ID del medio de pago (clave primaria).
  - nombre (VARCHAR2, 30): Nombre del medio de pago.

### Tabla: Persona
- **Atributos:**
  - cedula (VARCHAR2, 10): Número de cédula de la persona (clave primaria).
  - nombrecompleto (VARCHAR2, 30): Nombre completo de la persona.
  - telefono (CHAR, 10): Número de teléfono de la persona.
  - correoelectronico (VARCHAR2, 30): Correo electrónico de la persona.

### Tabla: Producto
- **Atributos:**
  - codigobarras (CHAR, 12): Código de barras del producto (clave primaria).
  - nombreproducto (VARCHAR2, 30): Nombre del producto.
  - precio (NUMBER, 8): Precio del producto.
  - tipo_producto_idtipoproducto (CHAR, 3): ID del tipo de producto (clave externa).

### Tabla: Proveedor
- **Atributos:**
  - cedula (VARCHAR2, 10): Número de cédula del proveedor.
  - nombreempresa (VARCHAR2, 30): Nombre de la empresa proveedora.

### Tabla: Tipo Producto
- **Atributos:**
  - idtipoproducto (CHAR, 3): ID del tipo de producto (clave primaria).
  - nombretipoproducto (VARCHAR2, 30): Nombre del tipo de producto.
  - descripcion (VARCHAR2, 50): Descripción del tipo de producto.

## Restricciones y Claves

Se han establecido varias restricciones y claves para mantener la integridad de los datos en este esquema de base de datos:

- Claves primarias: Cada tabla tiene una clave primaria que garantiza la unicidad de las filas.
- Claves externas: Se han definido claves externas para establecer relaciones entre tablas.
- Restricciones de integridad: Las restricciones de integridad se utilizan para garantizar que los datos cumplan con reglas específicas.

# [Pagina principal (Descripción de caso de estudio)](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/PaginaPrincipal%20(DescripcionCaso).md)
