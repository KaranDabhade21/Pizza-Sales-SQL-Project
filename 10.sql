-- Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name,
round(sum(pizzas.price * order_details.quantity), 0) as revenue
from pizza_types join pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizza_types.name
order by revenue desc 
limit 3;