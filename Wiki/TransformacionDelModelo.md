# Transformación del Modelo

## Paso 1:
En el paso 1 lo que debemos hacer es convertir las entidades simples a tablas en el modelo relacional, es por ello que comenzamos con las tablas y unicamente su nombre. Tal y como se muestra en la imagen a continuación

![Paso 1](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/Images/ModeloRelational_PASO-1.png)

## Paso 2:
En el paso 2 lo que se debe de hacer es convertir los atributos de las entidades a columnas de las tablas, es por ello que agregamos todos los atributos que tienen cada una de las entidades, pero sin diferenciar el tipo de atributo que son. Tal y como se muestra en la siguiente imagen.

![Paso 2](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/Images/ModeloRelational_PASO-2.png)

## Paso 3: 
En el paso 3 lo que se debe hacer es convertir los identificadores unicos a claves primarias, es por ello que ahora si podemos agregar los atributos identificadores o claves primarias del modelo logico en el modelo relacional. Tal y como se muestra en la siguiente imagen.

![Paso 3](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/Images/ModeloRelational_PASO-3.png)

## Paso 4:
En el paso 4 lo que se debe hacer es hacer las asociaciones y convertirlas en claves foraneas, es por ello que al hacer todas las asociaciones del modelo logico a relacional se tuvo que crear una tabla pivote que permita escribir la relacion muchos a muchos de factura y producto, la cual contiene un atributo cantidad vendidad de un producto. Tal y como se muestra en la siguiente imagen.

![Paso 4](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/Images/ModeloRelational_PASO-4.png)

## Paso 5: 
En el paso 5 lo que se debe hacer es escoger una opción de arco. (NO APLICA)

## Paso 6:
En el paso 6 lo que debemos hacer es elegir opciones de subtipo y supertipo, es por ello que elegimos la opción 3 donde tenemos dos asociones y tres tablas entre persona, cliente y proveedor tal y como se ve en la siguiente imagen.

![Paso 6](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/Images/ModeloRelational_PASO-6.png)
  
# [Pagina principal (Descripción de caso de estudio)](https://github.com/Bloque-SID/problema-de-modelado-e7/blob/main/Wiki/PaginaPrincipal%20(DescripcionCaso).md)
