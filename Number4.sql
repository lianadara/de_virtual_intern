-- Create a database with ‘KALBE’ as the name. Inside the database, create a table with the name ‘Inventory’, with columns Item_code, Item_name, Item_price, and Item_total. 
-- Choose its own best data type and the length of it according to best practice.
CREATE TABLE KALBE.inventory (
  Item_code INT64,
  Item_name STRING,
  Item_price INT64,
  Item_total INT64
)
INSERT INTO KALBE.inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
  (2341, "Promag Tablet", 3000, 100),
  (2342, "Hydro Coco 250ML", 7000, 20),
  (2343, "Nutrive Benecol 100ML", 20000, 30),
  (2344, "Blackmores Vit C 500Mg", 95000, 45),
  (2345, "Entrasol Gold 370G", 90000, 120);


-- Show Item_name that has the highest number in Item_total
SELECT Item_name, Item_total from `KALBE.inventory`
ORDER BY 2 DESC
LIMIT 1


-- Delete the Item_name that has the lowest number of Item_total
DELETE FROM KALBE.inventory
WHERE Item_total = (
  SELECT MIN(Item_total) 
  FROM KALBE.inventory
)
