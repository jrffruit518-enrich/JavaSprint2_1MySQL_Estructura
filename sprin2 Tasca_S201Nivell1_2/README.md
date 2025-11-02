# Sprint1Tasca_S107Nivell1_2 - Pizzería Online - Nivel 1
## Descripción - Enunciado del ejercicio
Este proyecto implementa un sistema de gestión para una pizzería con pedidos a domicilio y recogida en tienda, permitiendo gestionar clientes, productos (pizzas, hamburguesas, bebidas), tiendas, empleados y pedidos.
El sistema permite:

Almacenar clientes con nombre, apellidos, dirección completa, código postal, localidad y provincia (con tablas separadas para cities y provinces).
Gestionar productos genéricos (nombre, descripción, imagen, precio) y diferenciar por tipo: Pizza, Hamburguesa, Bebida.
Asignar pizzas a una única categoría (Clásicas, Gourmet, Vegetales), permitiendo cambios anuales.
Registrar tiendas con dirección, código postal, localidad y provincia.
Gestionar empleados (cocinero o repartidor) vinculados a una única tienda.
Controlar pedidos con:

Fecha/hora del pedido.
Tipo: reparto a domicilio o recogida en tienda.
Cantidad de cada producto.
Precio total (calculado automáticamente).
Repartidor y hora de entrega (solo si es a domicilio).
Tienda que gestiona el pedido.



Se ha diseñado una base de datos relacional en MySQL completamente normalizada, con relaciones claras, claves foráneas, restricciones y datos de ejemplo realistas. Incluye dos consultas SQL avanzadas:

Cantidad total de bebidas vendidas en Barcelona.
Número de pedidos entregados por un repartidor específico.


## Tecnologías Utilizadas

MySQL (v8.0 o superior)
Workbench, DBeaver, phpMyAdmin o cualquier cliente SQL
UTF8MB4 para soporte completo de caracteres


## Requisitos

Tener instalado MySQL Server
Un cliente SQL para ejecutar los scripts
Privilegios de creación de bases de datos


## Instalación

Clona este repositorio (reemplaza con tu URL real):

```
git clone https://github.com/jrffruit518-enrich/JavaSprint2_1MySQL_Estructura.git
```

Accede al directorio del proyecto:

```
cd pizzeria-online
```

Abre el archivo pizzeria.sql o copia su contenido.


## Ejecución

Abre tu cliente MySQL y conéctate al servidor.
Ejecuta el script completo (creación de BD, tablas, datos y actualización de totales):

```
sqlSOURCE /ruta/absoluta/pizzeria.sql;
```
También puedes copiar y pegar todo el contenido del archivo en tu cliente SQL.


Verifica que la base de datos pizzeria se haya creado:
```
sqlUSE pizzeria;
SHOW TABLES;
```
## Despliegue
Este proyecto es un ejercicio educativo y no requiere despliegue en producción.
Opcionalmente, puedes exportar la base de datos:
```
sqlmysqldump -u root -p pizzeria > pizzeria_backup.sql
```
## Contribuciones
¡Las contribuciones son bienvenidas! Sigue estos pasos:

Haz un fork del repositorio.
Crea una nueva rama:

```
git checkout -b feature/nueva-funcionalidad
```
Realiza tus cambios y haz commit:

```
git commit -m "Agrega nueva consulta o mejora en el modelo"
```
Sube los cambios:

```
git push origin feature/nueva-funcionalidad
```
Abre un Pull Request para revisión.