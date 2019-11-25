SELECT * FROM stock
SELECT avg(Quantity) FROM Stock;
SELECT SUM(Quantity), idShop From Stock group by idShop;
SELECT COUNT(Quantity), idShop From Stock group by idShop;

SELECT SUM(Quantity), idShop From Stock group by idShop HAVING SUM(Quantity) >11
