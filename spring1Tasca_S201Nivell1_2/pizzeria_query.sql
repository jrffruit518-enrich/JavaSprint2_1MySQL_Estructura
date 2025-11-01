USE pizzeria;

SELECT
    c.city_name,
    p.product_name,
    SUM(quantity) AS total_beverage_sold
FROM
    cities AS c
    JOIN stores AS s ON c.city_id = s.city_id
    JOIN orders AS o ON s.store_id = o.store_id
    JOIN order_details AS od ON o.order_id = od.order_id
    JOIN products AS p ON od.product_id = p.product_id
WHERE
    city_name = 'Barcelona'
    AND product_type = 'Beverage'
GROUP BY
    c.city_name,
    p.product_name;

SELECT
    CONCAT (emp.first_name, ' ', emp.last_name) AS employee_name,
    COUNT(od.order_id) AS total_order_number
FROM
    employees AS emp
    LEFT JOIN orders AS od ON emp.employee_id = od.delivery_employee_id
WHERE
    emp.employee_id = 2
GROUP BY
    emp.employee_id;
