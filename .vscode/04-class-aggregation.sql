-- CREATE TABLE smart_watch_sales (
--     sales_id SERIAL PRIMARY KEY,
--     brand VARCHAR(50),
--     model VARCHAR(100),
--     city VARCHAR(50),
--     units_sold INT,
--     price_per_unit DECIMAL(10, 2),
--     sale_date DATE
-- );

INSERT INTO smart_watch_sales
(brand, model, city, units_sold, price_per_unit, sale_date)
VALUES
('Apple', 'Watch Series 9', 'Mumbai', 15, 42999.00, '2026-01-10'),
('Samsung', 'Galaxy Watch 7', 'Delhi', 10, 28999.00, '2026-01-12'),
('Noise', 'ColorFit Pro', 'Jaipur', 25, 3999.00, '2026-01-15'),
('Boat', 'Wave Call', 'Mumbai', 30, 2499.00, '2026-01-18'),
('Fire-Boltt', 'Ninja', 'Mumbai', 22, 1999.00, '2026-01-20'),
('Apple', 'Watch Ultra', 'Bangalore', 8, 79999.00, '2026-01-22'),
('Samsung', 'Galaxy Watch 6', 'Hyderabad', 12, 25999.00, '2026-01-25'),
('Amazfit', 'GTR 4', 'Hyderabad', 18, 14999.00, '2026-01-28'),
('Noise', 'Fit Twist', 'Delhi', 20, 2999.00, '2026-02-01'),
('Boat', 'Xtend', 'Delhi', 28, 3499.00, '2026-02-03');

SELECT COUNT(*)as total_rows FROM smart_watch_sales;

SELECT SUM(units_sold * price_per_unit)as total_revenue FROM smart_watch_sales;

SELECT AVG(price_per_unit) AS avg_price_per_unit FROM smart_watch_sales;

SELECT  MIN(price_per_unit) as cheapest FROM smart_watch_sales;

SELECT  MAX(price_per_unit) as mehenaga FROM smart_watch_sales;

-- group by


SELECT brand , SUM(units_sold) AS total_units_sold
FROM smart_watch_sales
GROUP BY brand;

SELECT brand , MIN(units_sold) AS max_units_sold
FROM smart_watch_sales
GROUP BY brand;

SELECT city, SUM(units_sold * price_per_unit) AS city_revenue
FROM smart_watch_sales
GROUP BY city
ORDER BY city_revenue DESC;


SELECT city, brand, SUM(units_sold * price_per_unit) AS city_revenue
FROM smart_watch_sales
GROUP BY city , brand;





---! LEARN HAVING KEYWORD

SELECT brand,
SUM(units_sold)
FROM smart_watch_sales
GROUP BY brand
HAVING SUM(units_sold) > 30;

-- it is a where key word for  having



--order of wrirting
-- SELECT
-- FROM
-- JOIN
-- WHERE
-- GROUP BY 
-- HAVING
-- ORDER BY
-- LIMIT
