USE optica;

SELECT
    COUNT(*) AS total_invoices
FROM
    sales
WHERE
    customer_id = 1
    AND sale_date BETWEEN '2025-01-01' AND '2025-12-31';

SELECT
    s.sale_id,
    b.brand_name,
    g.frame_type,
    g.price,
    s.sale_date
FROM
    sales s
    JOIN glasses g ON g.glass_id = s.glass_id
    JOIN brands b ON g.brand_id = b.brand_id
WHERE
    sale_id = 3
    AND YEAR (s.sale_date) = 2025;

SELECT DISTINCT
    sup.supplier_name
FROM
    suppliers AS sup
    JOIN brands AS b ON sup.supplier_id = b.supplier_id
    JOIN glasses AS g ON b.brand_id = g.brand_id
    JOIN sales AS s ON g.glass_id = s.glass_id;
