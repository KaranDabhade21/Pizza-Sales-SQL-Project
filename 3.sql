-- Identify the highest-priced pizza.  
-- (we use join to add data from two table pizzas, pizza_type for( name, price )

-- select * from pizzas;
-- select max(price) from pizzas;

SELECT 
    pizza_types.name, pizzas.price AS max_price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;