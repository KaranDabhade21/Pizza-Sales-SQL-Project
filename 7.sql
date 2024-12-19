-- Determine the distribution of orders by hour 
-- of the day.

SELECT 
    HOUR(time) AS Hour_timne, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY HOUR(time);