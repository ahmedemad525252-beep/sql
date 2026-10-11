use BikeStores ;
select * from emad5252 ;
select * from emad5252 where first_name like ('s%') ;
select * from income ;
select sum(i.net_income ) as total , i.city from income i
group by city having sum( i.net_income) > 85000 
order by city desc
 ;
 select *from income ;
 create Procedure inf_customer 
 @inf_customer int 
 as 
 begin 
 select * from sales.customers where customer_id = @inf_customer 
 end ;
 exec inf_customer  @inf_customer = 5;
 select * from sales.order_items ;

 create procedure net_pric 
 @net_pric int
 as
 begin 
 select * from income
 where @net_pric = store_id
 end
 exec net_pric @net_pric = 1
;
create procedure yousif
@store_id int
as 
begin 
select sum(net_income) from income
where store_id = @store_id
end
exec yousif @store_id = 4 ;
