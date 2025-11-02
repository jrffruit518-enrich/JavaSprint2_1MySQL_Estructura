# Sprint1Tasca_S107Nivell1_1 - Óptica "Cul d'Ampolla" - Nivel 1
## Descripción - Enunciado del ejercicio
Este proyecto implementa un sistema de gestión para una óptica llamada "Cul d'Ampolla", enfocado en la informatización de la gestión de proveedores, gafas, clientes, empleados y ventas.
El sistema permite:

Almacenar información completa de los proveedores (nombre, dirección detallada, teléfono, fax, NIF).
Gestionar marcas de gafas asociadas a un único proveedor (política de compras).
Registrar gafas con sus características técnicas: graduación (izquierda/derecha), tipo de montura, colores y precio.
Gestionar clientes con datos de contacto, dirección y fecha de registro, incluyendo la referencia al cliente que lo recomendó (si aplica).
Registrar empleados que realizan las ventas.
Controlar las ventas con número de factura, fecha, gafas vendidas, cliente y empleado responsable.

Se ha diseñado una base de datos relacional en MySQL con tablas normalizadas, claves foráneas y restricciones de integridad. Incluye datos de ejemplo y consultas SQL para:

Contar las facturas de un cliente en un año.
Mostrar detalles de una venta específica.
Listar proveedores que han suministrado gafas vendidas.

## Tecnologías Utilizadas

MySQL (v8.0 o superior)
Workbench o cualquier cliente SQL (DBeaver, phpMyAdmin, etc.)
UTF8MB4 para soporte completo de caracteres

## Requisitos

Tener instalado MySQL Server.
Un cliente SQL para ejecutar los scripts.
Privilegios de creación de bases de datos.

## Instalación

Clona este repositorio (reemplaza con la URL real si aplica):

```
git clone https://github.com/jrffruit518-enrich/JavaSprint2_1MySQL_Estructura.git
```
Accede al directorio del proyecto:

```
cd optica-cul-dampolla
```
Abre el archivo optica.sql o copia su contenido.

## Ejecución

Abre tu cliente MySQL y conéctate al servidor.
Ejecuta el script completo (incluye creación de BD, tablas e inserts):
```
sqlSOURCE /ruta/absoluta/optica.sql;
```
También puedes copiar y pegar todo el contenido del archivo en tu cliente SQL.


Verifica que la base de datos optica se haya creado correctamente:
```
sqlUSE optica;
SHOW TABLES;
```
## Despliegue
Este proyecto es un ejercicio educativo y no requiere despliegue en producción.
Opcionalmente, puedes exportar la base de datos:
sqlmysqldump -u root -p optica > optica_backup.sql
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