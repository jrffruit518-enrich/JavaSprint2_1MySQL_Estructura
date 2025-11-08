# Sprint1Tasca_S107Nivell1_2 - Pizzería Online - Nivel 1

## Descripción - Enunciado del ejercicio
Este proyecto implementa un sistema de gestión para una pizzería con pedidos a domicilio y recogida en tienda, permitiendo gestionar clientes, productos (pizzas, hamburguesas, bebidas), tiendas, empleados y pedidos.

El sistema permite:

- Almacenar clientes con nombre, apellidos, dirección completa, código postal, localidad y provincia (con tablas separadas para `cities` y `provinces`).
- Gestionar productos genéricos (nombre, descripción, imagen, precio) y diferenciar por tipo: Pizza, Hamburguesa, Bebida.
- Asignar pizzas a una única categoría (Clásicas, Gourmet, Vegetales), permitiendo cambios anuales.
- Registrar tiendas con dirección, código postal, localidad y provincia.
- Gestionar empleados (cocinero o repartidor) vinculados a una única tienda.
- Controlar pedidos con:
  - Fecha/hora del pedido.
  - Tipo: reparto a domicilio o recogida en tienda.
  - Cantidad de cada producto.
  - Precio total (calculado automáticamente).
  - Repartidor y hora de entrega (solo si es a domicilio).
  - Tienda que gestiona el pedido.

Se ha diseñado una base de datos relacional en MySQL completamente normalizada, con relaciones claras, claves foráneas, restricciones y datos de ejemplo realistas. Incluye dos consultas SQL avanzadas:

- Cantidad total de bebidas vendidas en Barcelona.
- Número de pedidos entregados por un repartidor específico.

## Tecnologías Utilizadas

- MySQL (v8.0 o superior)
- Adminer (cliente web para MySQL)
- UTF8MB4 para soporte completo de caracteres

## Requisitos

- Tener Docker y Docker Compose instalados
- Conexión a Internet para descargar imágenes de Docker

## Instalación y Ejecución con Docker

1. Clona este repositorio:

```
git clone https://github.com/jrffruit518-enrich/JavaSprint2_1MySQL_Estructura.git
```
Accede al directorio del proyecto y al subdirectorio del ejercicio:

```
cd JavaSprint2_1MySQL_Estructura/sprin2\ Tasca_S201Nivell1_2
```
Asegúrate de tener los archivos siguientes en el mismo directorio:
```
docker-compose.yml

pizzeria_table.sql

pizzeria_insert.sql
```
Levanta los contenedores de MySQL y Adminer:

```
docker-compose up -d
```

MySQL se expondrá en el puerto 3306 del contenedor (puerto local según tu docker-compose.yml, por ejemplo 3307).

Adminer estará disponible en http://localhost:8080.

Accede a Adminer desde el navegador:
```
Sistema: MySQL

Servidor:pizzeria_mysql

Usuario: pizzeria_user

Contraseña: pizzeria123

Base de datos: pizzeria
```
Adminer cargará automáticamente las tablas y los datos definidos en pizzeria_table.sql y pizzeria_insert.sql.

Para ejecutar tus consultas (como las de pizzeria_query.sql) simplemente cópialas en Adminer o tu cliente SQL.

Parar y eliminar contenedores
Cuando termines:

bash
Copiar código
docker-compose down
Esto liberará los puertos y eliminará los contenedores, pero mantendrá los datos en el volumen mysql-data.

## Despliegue
Este proyecto es educativo y no requiere despliegue en producción.
Opcionalmente, puedes exportar la base de datos:

```
docker exec -i pizzeria_mysql mysqldump -u root -p pizzeria > pizzeria_backup.sql
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