USE optica;
INSERT INTO suppliers (
        supplier_name,
        nif,
        street,
        `number`,
        `floor`,
        door,
        city,
        postcode,
        country,
        telephone,
        fax
    )
VALUES (
        'GoodOptica',
        '456215398',
        'alonzo',
        '18',
        NULL,
        'A',
        'Barcelona',
        '08154',
        DEFAULT,
        '693518664',
        '950012564'
    ),
    (
        'NiceGlasses',
        '367815398',
        'sant juan',
        '373',
        '2',
        NULL,
        'Valencia',
        '08393',
        DEFAULT,
        '693658636',
        '986520134'
    ),
    (
        'SuperLens',
        '415645398',
        'aragon',
        '189',
        NULL,
        '1503',
        'Barcelona',
        '08274',
        DEFAULT,
        '612368657',
        '950375812'
    );
INSERT INTO brands (brand_name, supplier_id)
VALUES ('Rapid', 1),
    ('Fast', 2),
    ('Great', 3),
    ('Wonder', 1),
    ('Miracle', 1),
    ('Glad', 3);
INSERT INTO glasses (
        brand_id,
        left_graduation,
        right_graduation,
        left_colour,
        right_colour,
        frame_type,
        frame_colour,
        price
    )
VALUES (
        1,
        2.75,
        3.65,
        'blue',
        'red',
        'rimless',
        'yellow',
        158.00
    ),
    (
        2,
        1.45,
        2.68,
        'grey',
        'purple',
        'plastic',
        'golden',
        98.00
    ),
    (
        3,
        4.25,
        2.65,
        'green',
        'black',
        'metal',
        'silver',
        108.00
    ),
    (
        4,
        2.35,
        1.55,
        'blue',
        'red',
        'rimless',
        'yellow',
        78.00
    ),
    (
        5,
        2.75,
        2.15,
        'blue',
        'red',
        'plastic',
        'white',
        88.00
    ),
    (
        6,
        3.84,
        4.15,
        'black',
        'red',
        'metal',
        'green',
        99.00
    );
INSERT INTO customers(
        customer_name,
        street,
        `number`,
        `floor`,
        door,
        city,
        postcode,
        country,
        telephone,
        email,
        registration_date,
        recommended_by
    )
VALUES (
        'Luis',
        'santos',
        '79',
        '23',
        'A',
        'Barcelona',
        '08237',
        DEFAULT,
        '693258664',
        'luis@sant.com',
        '2012-05-13',
        NULL
    ),
    (
        'Jorge',
        'via julia',
        '233',
        '15',
        'C',
        'Valencia',
        '46125',
        DEFAULT,
        '63858636',
        'jorge@gmail.com',
        '2013-08-19',
        NULL
    ),
    (
        'Maira',
        'gracia',
        '325',
        NULL,
        '3',
        'Madrid',
        '28273',
        DEFAULT,
        '612368621',
        'maria@gmail.com',
        '2013-10-19',
        NULL
    ),
    (
        'Ana',
        'rambla',
        '15',
        NULL,
        '1203',
        'Barcelona',
        '08273',
        DEFAULT,
        '612368621',
        'ann@gmail.com',
        '2014-07-12',
        1
    ),
    (
        'Pedro',
        'font',
        '117',
        NULL,
        NULL,
        'Barcelona',
        '08273',
        DEFAULT,
        '612368621',
        'pedro@gmail.com',
        '2014-09-07',
        2
    );
INSERT INTO employees(employee_name, dni, telephone, hire_date)
VALUES ('Jordi', '15008127L', '638001474', '2007-01-14'),
    ('Sandra', '36218003A', '670234144', '2008-11-05'),
    ('Carmen', '48251396B', '683521469', '2009-08-11');
INSERT INTO sales(glass_id, customer_id, employee_id)
VALUES (1, 1, 2),
    (2, 2, 1),
    (3, 3, 3),
    (4, 2, 3),
    (5, 4, 1),
    (6, 5, 2);
SHOW TABLES;
SELECT *
FROM sales;