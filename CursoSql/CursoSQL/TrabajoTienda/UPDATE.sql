USE Facturas 
SELECT * FROM Cliente

INSERT INTO Cliente (
dni,nombre,email,direccion)
values(
'B123','GOT SL','Suministros@got.com','El muro°5')

select * from Pedido where dni = 'B123'
update Pedido set dni = 'B123' where dni = '111111111B'