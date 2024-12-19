-- Calculate the percentage contribution of each pizza 
-- type to total revenue.

select pizza_types.category,
round(sum(pizzas.price * order_details.quantity) / (SELECT 
    (ROUND(SUM(order_details.quantity * pizzas.price),
            2)) AS total_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id)* 100,2) as revenue
    
from pizza_types join pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizza_types.category
order by revenue desc 
limit 3;