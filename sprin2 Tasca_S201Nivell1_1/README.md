# Sprint2Tasca_S201Nivell1_1 - Óptica "Cul d'Ampolla" - Nivel 1

## Descripción - Enunciado del ejercicio
Este proyecto implementa un sistema de gestión para una óptica llamada "Cul d'Ampolla", enfocado en la informatización de la gestión de proveedores, gafas, clientes, empleados y ventas.

El sistema permite:

- Almacenar información completa de los proveedores (nombre, dirección detallada, teléfono, fax, NIF).
- Gestionar marcas de gafas asociadas a un único proveedor (política de compras).
- Registrar gafas con sus características técnicas: graduación (izquierda/derecha), tipo de montura, colores y precio.
- Gestionar clientes con datos de contacto, dirección y fecha de registro, incluyendo la referencia al cliente que lo recomendó (si aplica).
- Registrar empleados que realizan las ventas.
- Controlar las ventas con número de factura, fecha, gafas vendidas, cliente y empleado responsable.

Se ha diseñado una base de datos relacional en MySQL con tablas normalizadas, claves foráneas y restricciones de integridad. Incluye datos de ejemplo y consultas SQL para:

- Contar las facturas de un cliente en un año.
- Mostrar detalles de una venta específica.
- Listar proveedores que han suministrado gafas vendidas.

---

## Tecnologías Utilizadas

- MySQL (v8.0 o superior)
- Docker y Docker Compose
- Adminer (interfaz web para consultar la base de datos)
- UTF8MB4 para soporte completo de caracteres

---

## Requisitos

- Tener instalado Docker Desktop en Windows, Linux o macOS.
- Docker Compose disponible.
- Navegador web para acceder a Adminer.

---

## Instalación y Ejecución con Docker

1. Abre una terminal en Windows (CMD o PowerShell) y navega al directorio del proyecto:

```
cd "sprin2 Tasca_S201Nivell1_1"
```
Verifica que estén presentes los archivos:
```
docker-compose.yml
optica_table.sql
optica_insert.sql
optica_query.sql
optica_modle.png
```
Ejecuta Docker Compose para levantar los contenedores:


Copiar código
```
docker-compose up -d
```
Verifica que los contenedores estén corriendo:

```
docker ps
```
Deberías ver:
```
optica_mysql → MySQL corriendo y saludable.

optica_adminer → Adminer iniciado.
```
Abre un navegador y accede a Adminer:

```
http://localhost:8080
```
Login recomendado:
```
System: MySQL

Server: optica_mysql

Port: 3307 (si modificaste el puerto en docker-compose)

User: optica_user

Password: optica123

Database: optica
```
Consultas SQL
Nota: Los archivos de consultas (optica_query.sql) no se ejecutan automáticamente al levantar el contenedor, debes ejecutarlos manualmente en Adminer o cualquier cliente SQL.

Ejemplo:

sql
-- Contar facturas de un cliente
```
SELECT COUNT(*) AS total_invoices
FROM sales
WHERE customer_id = 1
  AND sale_date BETWEEN '2025-01-01' AND '2025-12-31';
```
-- Mostrar detalles de venta específica
```
SELECT s.sale_id, b.brand_name, g.frame_type, g.price, s.sale_date
FROM sales s
JOIN glasses g ON g.glass_id = s.glass_id
JOIN brands b ON g.brand_id = b.brand_id
WHERE sale_id = 3
  AND YEAR(s.sale_date) = 2025;
```
-- Listar proveedores que han suministrado gafas vendidas
```
SELECT DISTINCT sup.supplier_name
FROM suppliers sup
JOIN brands b ON sup.supplier_id = b.supplier_id
JOIN glasses g ON b.brand_id = g.brand_id
JOIN sales s ON g.glass_id = s.glass_id;
```
Visualización del Modelo de Datos
Se incluye un diagrama del modelo de la base de datos:

optica_modle.png
## Despliegue
Este proyecto es un ejercicio educativo y no requiere despliegue en producción.
Opcionalmente, puedes exportar la base de datos desde el contenedor MySQL:
```
docker exec -i optica_mysql mysqldump -u root -p optica > optica_backup.sql
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