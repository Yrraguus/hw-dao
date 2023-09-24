select product_name
from example.ORDERS
         join example.CUSTOMERS on ORDERS.customer_id = CUSTOMERS.id
where lower(name) = lower(:name);