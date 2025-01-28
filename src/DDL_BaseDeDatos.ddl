-- Creación de la tabla "cliente" para almacenar información sobre los clientes.
CREATE TABLE cliente (
    cedula    VARCHAR2(10) NOT NULL,  -- Número de identificación único del cliente
    direccion VARCHAR2(30) NOT NULL,  -- Dirección del cliente
    puntos    NUMBER(5) NOT NULL       -- Puntos acumulados por el cliente
);

-- Creación de la tabla "detalle_compra" para almacenar detalles de las compras.
CREATE TABLE detalle_compra (
    factura_idfactura     CHAR(10) NOT NULL,       -- Identificador de la factura a la que pertenece el detalle
    producto_codigobarras CHAR(12) NOT NULL,       -- Código de barras único del producto
    cantidad              NUMBER(5) NOT NULL       -- Cantidad del producto comprado
);

-- Definición de la clave primaria para la tabla "detalle_compra" que consta de dos columnas: factura_idfactura y producto_codigobarras
ALTER TABLE detalle_compra ADD CONSTRAINT detalle_compra_pk PRIMARY KEY (factura_idfactura, producto_codigobarras);

-- Creación de la tabla "detalle_producto" para almacenar detalles específicos de los productos.
CREATE TABLE detalle_producto (
    producto_codigobarras CHAR(12) NOT NULL,      -- Código de barras único del producto
    descripcion           VARCHAR2(50) NOT NULL,  -- Descripción del producto
    iva                   CHAR(1) NOT NULL,       -- Impuesto sobre el Valor Agregado del producto
    cantidadstock         NUMBER(5) NOT NULL,     -- Cantidad del producto en stock
    fechacaducidad        DATE                    -- Fecha de caducidad del producto
);

-- Definición de la clave primaria para la tabla "detalle_producto" en la columna producto_codigobarras
ALTER TABLE detalle_producto ADD CONSTRAINT detalle_producto_pk PRIMARY KEY (producto_codigobarras);

-- Creación de la tabla "empleado" para almacenar información sobre los empleados.
CREATE TABLE empleado (
    idempleado CHAR(3) NOT NULL                    -- Identificador único del empleado
);

-- Definición de la clave primaria para la tabla "empleado" en la columna idempleado
ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY (idempleado);

-- Creación de la tabla "factura" para almacenar detalles de las facturas generadas por las compras.
CREATE TABLE factura (
    idfactura                 CHAR(10) NOT NULL,                       -- Identificador único de la factura
    fechacompra               DATE NOT NULL,                           -- Fecha de la compra
    monto                     NUMBER(8) NOT NULL,                     -- Monto total de la compra
    medio_de_pago_idmediopago CHAR(3) NOT NULL,                       -- Identificador del medio de pago utilizado
    persona_cedula            VARCHAR2(10) NOT NULL,                   -- Número de identificación del cliente
    empleado_idempleado       CHAR(3) NOT NULL                         -- Identificador del empleado que procesó la compra
);

-- Definición de la clave primaria para la tabla "factura" en la columna idfactura
ALTER TABLE factura ADD CONSTRAINT factura_pk PRIMARY KEY (idfactura);

-- Creación de la tabla "medio_de_pago" para almacenar información sobre los métodos de pago.
CREATE TABLE medio_de_pago (
    idmediopago CHAR(3) NOT NULL,                   -- Identificador único del medio de pago
    nombre      VARCHAR2(30) NOT NULL              -- Nombre del medio de pago
);

-- Definición de la clave primaria para la tabla "medio_de_pago" en la columna idmediopago
ALTER TABLE medio_de_pago ADD CONSTRAINT medio_de_pago_pk PRIMARY KEY (idmediopago);

-- Creación de la tabla "persona" para almacenar información sobre las personas (clientes y empleados).
CREATE TABLE persona (
    cedula            VARCHAR2(10) NOT NULL,       -- Número de identificación único de la persona
    nombrecompleto    VARCHAR2(30) NOT NULL,       -- Nombre completo de la persona
    telefono          CHAR(10) NOT NULL,           -- Número de teléfono de la persona
    correoelectronico VARCHAR2(30)                  -- Dirección de correo electrónico de la persona
);

-- Definición de la clave primaria para la tabla "persona" en la columna cedula
ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY (cedula);

-- Creación de la tabla "producto" para almacenar información sobre los productos en venta.
CREATE TABLE producto (
    codigobarras                 CHAR(12) NOT NULL,                 -- Código de barras único del producto
    nombreproducto               VARCHAR2(30) NOT NULL,             -- Nombre del producto
    precio                       NUMBER(8) NOT NULL,                -- Precio unitario del producto
    tipo_producto_idtipoproducto CHAR(3) NOT NULL                   -- Identificador del tipo de producto al que pertenece
);

-- Definición de la clave primaria para la tabla "producto" en la columna codigobarras
ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY (codigobarras);

-- Creación de la tabla "proveedor" para almacenar información sobre los proveedores de productos.
CREATE TABLE proveedor (
    cedula        VARCHAR2(10) NOT NULL,            -- Número de identificación único del proveedor
    nombreempresa VARCHAR2(30) NOT NULL             -- Nombre de la empresa del proveedor
);

-- Creación de la tabla "tipo_producto" para clasificar los productos en diferentes categorías.
CREATE TABLE tipo_producto (
    idtipoproducto     CHAR(3) NOT NULL,            -- Identificador único del tipo de producto
    nombretipoproducto VARCHAR2(30) NOT NULL,        -- Nombre del tipo de producto
    descripcion        VARCHAR2(50) NOT NULL         -- Descripción del tipo de producto
);

-- Definición de la clave primaria para la tabla "tipo_producto" en la columna idtipoproducto
ALTER TABLE tipo_producto ADD CONSTRAINT tipo_producto_pk PRIMARY KEY (idtipoproducto);

-- Definición de las restricciones de clave foránea para mantener la integridad referencial en la base de datos.
ALTER TABLE cliente
    ADD CONSTRAINT cliente_persona_fk FOREIGN KEY (cedula)
        REFERENCES persona (cedula);

ALTER TABLE detalle_producto
    ADD CONSTRAINT detalle_producto_producto_fk FOREIGN KEY (producto_codigobarras)
        REFERENCES producto (codigobarras);

ALTER TABLE factura
    ADD CONSTRAINT factura_empleado_fk FOREIGN KEY (empleado_idempleado)
        REFERENCES empleado (idempleado);

ALTER TABLE factura
    ADD CONSTRAINT factura_medio_de_pago_fk FOREIGN KEY (medio_de_pago_idmediopago)
        REFERENCES medio_de_pago (idmediopago);

ALTER TABLE factura
    ADD CONSTRAINT factura_persona_fk FOREIGN KEY (persona_cedula)
        REFERENCES persona (cedula);

ALTER TABLE producto
    ADD CONSTRAINT producto_tipo_producto_fk FOREIGN KEY (tipo_producto_idtipoproducto)
        REFERENCES tipo_producto (idtipoproducto);

ALTER TABLE proveedor
    ADD CONSTRAINT proveedor_persona_fk FOREIGN KEY (cedula)
        REFERENCES persona (cedula);

ALTER TABLE detalle_compra
    ADD CONSTRAINT detalle_compra_factura_fk FOREIGN KEY (factura_idfactura)
        REFERENCES factura (idfactura);

ALTER TABLE detalle_compra
    ADD CONSTRAINT detalle_compra_producto_fk FOREIGN KEY (producto_codigobarras)
        REFERENCES producto (codigobarras);
