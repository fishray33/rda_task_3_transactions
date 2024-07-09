USE ShopDB; 

INSERT INTO Orders (ID, CustomerID, Date) VALUES (1, 1, '2024-07-09');

START TRANSACTION; 

UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE Name = "AwersomeProduct";

INSERT OrderItems (OrderID, ProductID, Count) VALUES (1, 1, 1);

COMMIT; 
