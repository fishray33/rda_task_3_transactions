USE ShopDB; 

INSERT INTO Orders (ID, CustomerID, Date) VALUES (1, 1, '2024-07-09');
INSERT OrderItems (ID, OrderID, ProductID, Count) VALUES (1, 1, 1, 0);

START TRANSACTION; 

UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE Name = "AwersomeProduct";

UPDATE OrderItems SET Count = 1 WHERE ID = 1;

COMMIT; 
