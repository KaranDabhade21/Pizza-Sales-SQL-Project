-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS most_ordered_pizza
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY most_ordered_pizza DESC
LIMIT 5;