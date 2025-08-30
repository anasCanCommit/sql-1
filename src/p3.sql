SELECT 
    SUM(quantity) AS total_quantity_sold,
    AVG(quantity) AS avg_quantity_per_order
FROM sales;
