Use Facturas

/* Venta n� 1 */
exec sp_insert_pedidos '12/02/2020','B123'
exec sp_insert_encargos 581, 8, 5
exec sp_insert_encargos 582, 7, 0
select * from Encargo
/* Venta n� 2 */
--exec sp_insert_pedidos '12/02/2020','B1234'
--exec sp_insert_encargos 30, 1, 5

/* Venta n� 3 */
exec sp_insert_pedidos '23/01/2020','666667777J'
exec sp_insert_encargos 10, 1, 0

/* Venta n� 4 */
exec sp_insert_pedidos '05/03/2020', '888888888E'
exec sp_insert_encargos 10, 1, 0

/* Venta n� 5 */
exec sp_insert_pedidos '15/03/2020', '444444444C'
exec sp_insert_encargos 42, 1, 0
exec sp_insert_encargos 32, 2, 0
exec sp_insert_encargos 18, 1, 2

/* Venta n� 6 */
exec sp_insert_pedidos '19/03/2020', '222223333H'
exec sp_insert_encargos 11, 2, 0
exec sp_insert_encargos 19, 1, 0
exec sp_insert_encargos 30, 1, 1
