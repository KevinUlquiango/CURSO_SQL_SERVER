use Facturas
/*INNER JOIN*/
select EN.*,PR.nombre,PR.modelo,PR.valoracion from Encargo as EN
inner join
Producto as PR
on EN.prodID = PR.proID
where EN.pedID = 51
order by EN.prodID
/*FORMA TRADICIONAL*/
select en.*,pr.nombre,pr.modelo,pr.valoracion from Encargo en,
Producto pr
where en.prodID = pr.proID 
and en.pedID = 51
order by en.prodID