use Facturas
goto inicio
alter table Seg_Cliente
add id int identity (1,1) not null
constraint PK_Seg_cliente primary key(
	id)
inicio:
Insert into Seg_Cliente
select * from Cliente
where nombre like 'Noelia'
	union all
select * from Cliente
where nombre like 'Julio'
	union all
select * from Cliente
where nombre like 'Mar'

select * from Seg_Cliente

delete from Seg_Cliente