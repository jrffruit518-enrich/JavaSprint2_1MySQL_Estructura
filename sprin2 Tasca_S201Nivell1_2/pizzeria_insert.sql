USE pizzeria;

INSERT INTO
  provinces (province_name)
VALUES
  ('Barcelona'),
  ('Tarragona'),
  ('Girona');

INSERT INTO
  cities (city_name, province_id)
VALUES
  ('Barcelona', 1),
  ('Sabadell', 1),
  ('Tarragona', 2),
  ('Reus', 2),
  ('Girona', 3),
  ('Figueres', 3);

INSERT INTO
  clients (
    first_name,
    last_name,
    address,
    postcode,
    city_id,
    province_id,
    phone
  )
VALUES
  (
    'Pablo',
    'Ruiz',
    'Carrer de Sants, 98, 5º 1ª, Barcelona',
    '08028',
    1,
    1,
    '601 234 567'
  ),
  (
    'Sofía',
    'Gómez',
    'Paseo de Gracia, 120, Ático, Barcelona',
    '08008',
    1,
    1,
    '655 987 654'
  ),
  (
    'Javier',
    'Torres',
    'Carrer de Sant Joan, 44, Principal B, Sabadell',
    '08202',
    2,
    1,
    '711 505 404'
  ),
  (
    'Carmen',
    'López',
    'Via Massagué, 29, 3º C, Sabadell',
    '08201',
    2,
    1,
    '639 112 233'
  ),
  (
    'Alejandro',
    'Vargas',
    'Rambla Nova, 61, 4º A, Tarragona',
    '43003',
    3,
    2,
    '670 770 880'
  ),
  (
    'Lucía',
    'Sánchez',
    'Tarragona: Carrer Major, 11, Baix, Tarragona',
    '43001',
    3,
    2,
    '722 001 002'
  ),
  (
    'Miguel',
    'Fernández',
    'Plaça Mercadal, 17, Entresòl, Reus',
    '43201',
    4,
    2,
    '699 333 444'
  ),
  (
    'Elena',
    'Martínez',
    'Pujada de Sant Feliu, 3, 2º Esquerra, Girona',
    '17004',
    5,
    3,
    '744 556 677'
  ),
  (
    'David',
    'Pérez',
    'Avinguda de Lluís Pericot, 88, 6º 2ª, Girona',
    '17003',
    5,
    3,
    '688 101 202'
  ),
  (
    'Isabel',
    'García',
    'Carrer de la Jonquera, 5, 1º Dreta, Figueres',
    '17600',
    6,
    3,
    '733 998 877'
  );

INSERT INTO
  products (
    product_name,
    `description`,
    image_url,
    price,
    product_type
  )
VALUES
  (
    'Margarita',
    'Tomate, mozzarella y albahaca.',
    'https://fakeimg.com/pizza/margarita.jpg',
    12.5,
    'Pizza'
  ),
  (
    'Pepperoni',
    'Con salchicha picante.',
    'https://fakeimg.com/pizza/pepperoni_spicy.png',
    13.5,
    'Pizza'
  ),
  (
    'Cuatro Estaciones',
    'Dividida en cuatro sabores.',
    'https://fakeimg.com/pizza/4estaciones.webp',
    15.5,
    'Pizza'
  ),
  (
    'Barbacoa',
    'Carne, bacon y salsa BBQ',
    'https://fakeimg.com/pizza/barbacoa_bbq.jpeg',
    14.5,
    'Pizza'
  ),
  (
    'Hawaiana',
    'Piña y jamón cocido.',
    'https://fakeimg.com/pizza/hawaiiana_ham.gif',
    13.5,
    'Pizza'
  ),
  (
    'Hamburguesa Clásica',
    'Carne, lechuga y tomate.',
    'https://fakeimg.com/burger/clasica_simple.jpg',
    8.5,
    'Hamburger'
  ),
  (
    'Hamburguesa con Queso',
    'Carne con queso fundido.',
    'https://fakeimg.com/burger/queso_cheddar.png',
    8.9,
    'Hamburger'
  ),
  (
    'Hamburguesa Vegetariana',
    'Base de verduras o legumbres.',
    'https://fakeimg.com/burger/vegetariana_verde.webp',
    9.5,
    'Hamburger'
  ),
  ('Agua Mineral', NULL, NULL, 1.5, 'Beverage'),
  ('Refresco de Cola', NULL, NULL, 1.5, 'Beverage'),
  ('Zumo de Naranja', NULL, NULL, 1.5, 'Beverage');

INSERT INTO
  pizza_categories (category_name)
VALUES
  ('Clásicas'),
  ('Gourmet'),
  ('Vegetales');

INSERT INTO
  pizzas (product_id, category_id)
VALUES
  (1, 1),
  (2, 3),
  (3, 1),
  (4, 2),
  (5, 2);

INSERT INTO
  stores (address, postal_code, city_id, province_id)
VALUES
  (
    'Avinguda del Portal de Àngel, 3, Bajo, Barcelona',
    '08002',
    1,
    1
  ),
  (
    'Rambla Vella, 50, Principal A,Tarragona',
    '43003',
    3,
    2
  ),
  (
    'Plaça de la Independència, 12, Local 3, Girona',
    '17001',
    5,
    3
  );

INSERT INTO
  employees (
    first_name,
    last_name,
    dni,
    telephone,
    `role`,
    store_id
  )
VALUES
  (
    'Antonio',
    'Pérez López',
    '50478912-F',
    '698 123 456',
    'COOK',
    1
  ),
  (
    'Marta Ruiz',
    'Giménez',
    '48102934-C',
    '711 908 765',
    'DELIVERY',
    1
  ),
  (
    'Carlos',
    'Sanz Vidal',
    '52365478-Z',
    '630 555 444',
    'COOK',
    2
  ),
  (
    'Laura Vega',
    'Iglesias',
    '49781230-M',
    '935 210 987',
    'DELIVERY',
    2
  ),
  (
    'Francisco',
    'Gil Torres',
    '51090876-H',
    '722 345 678',
    'COOK',
    3
  ),
  (
    'Elena Díaz',
    'Moreno',
    '47654321-B',
    '609 876 543',
    'DELIVERY',
    3
  );

INSERT INTO
  orders (
    client_id,
    order_datetime,
    is_delivery,
    store_id,
    delivery_employee_id,
    delivery_datetime
  )
VALUES
  (
    1,
    '2025-01-08 10:30:00',
    1,
    1,
    2,
    '2025-01-08 10:55:00'
  ),
  (2, '2025-02-14 14:00:00', 0, 1, NULL, NULL),
  (
    3,
    '2025-03-20 09:15:00',
    1,
    1,
    2,
    '2025-03-20 09:45:00'
  ),
  (4, '2025-04-01 17:45:00', 0, 1, NULL, NULL),
  (
    5,
    '2025-05-25 11:00:00',
    1,
    2,
    4,
    '2025-05-25 11:22:00'
  ),
  (6, '2025-06-16 20:20:00', 0, 2, NULL, NULL),
  (7, '2025-07-04 08:00:00', 0, 2, NULL, NULL),
  (
    8,
    '2025-08-15 12:00:00',
    1,
    3,
    6,
    '2025-08-15 12:20:00'
  ),
  (9, '2025-09-30 22:50:00', 0, 3, NULL, NULL),
  (10, '2025-10-30 16:35:00', 0, 3, NULL, NULL);

INSERT INTO
  order_details (order_id, product_id, quantity, unit_price)
VALUES
  (1, 2, 2, 13.5),
  (1, 9, 2, 1.5),
  (2, 1, 1, 12.5),
  (2, 10, 1, 1.5),
  (3, 4, 2, 14.5),
  (4, 5, 3, 13.5),
  (4, 11, 3, 1.5),
  (5, 7, 1, 8.9),
  (6, 3, 2, 15.5),
  (6, 7, 1, 8.9),
  (6, 10, 3, 1.5),
  (7, 5, 3, 13.5),
  (8, 4, 3, 14.5),
  (9, 1, 3, 12.5),
  (10, 6, 3, 8.5),
  (10, 2, 2, 13.5);

UPDATE orders o
SET
  total_price = (
    SELECT
      COALESCE(SUM(quantity * unit_price), 0)
    FROM
      order_details od
    WHERE
      od.order_id = o.order_id
  );
