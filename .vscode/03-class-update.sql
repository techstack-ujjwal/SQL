-- CREATE TABLE canteen_menu (
--     item_id SERIAL PRIMARY KEY,
--     item_name VARCHAR(100),
--     category VARCHAR(50),
--     price INT,
--     is_availble BOOLEAN DEFAULT TRUE
-- );


INSERT INTO canteen_menu
(item_name,category,price)
VALUES
('chai','Beverages',10),

('Coffee', 'Beverages', 15),
('Samosa', 'Snacks', 20),
('Burger', 'Fast Food', 50),
('Pizza', 'Fast Food', 120),
('French Fries', 'Snacks', 60),
('Sandwich', 'Snacks', 40),
('Cold Drink', 'Beverages', 30),
('Momos', 'Street Food', 70),
('Popcorn', 'Snacks', 45);

SELECT * FROM canteen_menu;


UPDATE canteen_menu
SET price = 20
WHERE item_name = 'Pizza';


SELECT * FROM canteen_menu;

UPDATE canteen_menu
SET price = price - 5


-- always do DRY RUN BEFORE UPDATE AN DELETE QUER
-- SELECT * FROM canteen_menu
WHERE category = 'Beverages';




--!delete



DELETE FROM canteen_menu
WHERE item_name = 'Pizza';



--- DML - Data manipulation language


--DELETE FROM canteen_menu = TRUNQUET TABLE


-- these thing cant change structure even delte only alter can 






