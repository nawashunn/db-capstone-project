USE littlelemondb;

PREPARE GetOrderDetail FROM 'SELECT order_id, quantity, total_cost FROM orders WHERE order_id = ?;';

SET @id = 	1;
EXECUTE GetOrderDetail USING @id;