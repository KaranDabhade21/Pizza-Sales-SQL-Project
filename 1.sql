use pizzahut;
select * FROM pizzahut.orders;

-- 1) Retrieve the total number of orders placed.

select count(order_id) as Total_order from pizzahut.orders;



