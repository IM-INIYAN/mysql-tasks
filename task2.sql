create database task1;
use task1;
create table vegetables(
veg_name varchar(30),
price decimal(10,2),
location varchar(30));
insert into vegetables values('onion',40,'chennai'),('tomato',50,'tambaram'),('betroot',20,'vilupuram');
select * from vegetables;
alter table vegetables add kg varchar(20);
update vegetables set kg='1kg';
update vegetables set kg='1kg' where veg_name='betroot';
select * from vegetables;

create table grocy(name varchar(20),price decimal(10,2),contact bigint,quantity int);
insert into grocy values ('tomato',40.0,9894970956,2),('beans',20.6,8925103399,1),('onion',40.5,7895645634,2),('ginger',25.7,96776003456,1);
select * from grocy;

select v.veg_name,v.price,v.location,g.name,g.contact,g.quantity
from vegetables v inner join grocy g 
on v.veg_name=g.name;

select v.veg_name,v.price,v.location,g.name,g.contact,g.quantity
from vegetables v left join grocy g 
on v.veg_name=g.name
union
select v.veg_name,v.price,v.location,g.name,g.contact,g.quantity
from vegetables v right join grocy g  
on v.veg_name=g.name;