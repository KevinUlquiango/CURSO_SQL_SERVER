USE RALLY

insert into [RALLY].[dbo].[Piloto]
values
(101,'Carlos Sainz','1962-12-04','España'),
(102,'Sebastien Loeb','1974-02-26','Francia'),
(103,'Sebastien Ogier','1983-12-17','Francia')

insert into [RALLY].[dbo].[Copiloto]
values
(201,'Luis Moya','1960-09-23','España'),
(202,'Marc Martí','1966-01-10','España'),
(203,'Daniel Elena','1972-10-26','Mónaco'),
(204,'Julien Ingrassia','1979-11-26','Francia'),
(205,'Felipe Fast Furious','1972-01-01','España')

insert into [RALLY].[dbo].[Marca]
values
('Toyota','Aichi','Japón','www.toyota.com'), 
('Citroën','Paris','Francia','www.citroen.com'), 
('Audi','Ingolstadt','Alemania','www.audi.com'),
('Renault','Boulogne-Billancourt','Francia','www.renault.com'),
('Ford','Dearborn Michigan','EEUU','www.ford.com')


insert into [RALLY].[dbo].[Coche]
values
('000AAAA','Celica 4WD',290,1),
('111AAAA','Focus WRC',305,5),
('222AAAA','Yaris WRC',295,1),
('999AAAA','Yaris WRC',295,1),
('333BBBB','C3 WRC',280,2),
('A-12345','Quattro GB',315,3),
('444CCCC','Clio Diesel',70,4)

insert into [RALLY].[dbo].[Equipo]
values
(101,201,'000AAAA'),
(101,201,'111AAAA'),
(101,202,'222AAAA'),
(102,203,'333BBBB'),
(103,204,'999AAAA')








