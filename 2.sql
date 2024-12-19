-- Calculate the total revenue generated from pizza sales.  (find by quantity and price )
use pizzahut;

select * from order_details;
select * from pizzas;

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
