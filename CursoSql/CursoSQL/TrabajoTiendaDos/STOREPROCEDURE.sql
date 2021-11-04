/*Video 57*/
create procedure sp_select_prod(
	@w_marca varchar(25) 
)as
select * from Producto 
where marca like @w_marca
order by precio

/*Ejecutar el SP*/
execute sp_select_prod 'intel'
execute sp_select_prod 'AMD'