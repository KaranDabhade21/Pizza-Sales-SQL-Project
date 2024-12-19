-- Analyze the cumulative revenue generated over time.
--  cumulative means 
-- day1     day2
-- 200	  
-- 300      =   500
-- 100       = 600

select date, 
round(sum(revenue) over(order by date),0) as cumulative
from
(select orders.date,
sum(order_details.quantity * pizzas.price) as revenue
from order_details join pizzas 
on order_details.pizza_id = pizzas.pizza_id
join orders
on order_details.order_id = orders.order_id
group by orders.date) as sales;