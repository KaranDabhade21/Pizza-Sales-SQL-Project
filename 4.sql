-- Identify the most common pizza size ordered.

-- select quantity, count(order_details_id) as most_common_pizza
-- from order_details
-- group by quantity;

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS most_common_pizza_size
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY most_common_pizza_size DESC;