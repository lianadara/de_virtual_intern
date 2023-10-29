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
