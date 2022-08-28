create database purchase;
#Local instance MySQL database is connected at port 3300;
use purchase;

#using table data import wizard tables are imported
show tables;

select * from productCatalogue;

select * from purchasehistory;

select purchasehistory.Sale_Qty,
productCatalogue.Product_Id, Cat_Id
from purchasehistory
join productCatalogue on purchasehistory.Product_Id=productCatalogue.Product_Id;



#answer for question_1:
SELECT Product_Id, Cat_Id, Sale_Qty as Trending
FROM (
  SELECT o.Product_Id, 
         p.Cat_Id, 
         MAX(o.Sale_Qty) Sale_Qty,
         ROW_NUMBER() OVER (PARTITION BY MAX(o.Sale_Qty) ORDER BY (Product_Id) DESC) rn
  FROM purchasehistory o INNER JOIN productCatalogue p
  ON o.Product_ID = p.Product_ID
  GROUP BY p.Product_ID
) t
WHERE rn <= 2
ORDER BY Product_ID;
