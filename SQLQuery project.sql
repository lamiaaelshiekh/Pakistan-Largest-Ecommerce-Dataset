1-- Retrieve all orders with a status of "completed".
select *
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where status = 'complete'

2--Calculate the total number of orders for each order status.
select status, COUNT (*) as 'total_orders'
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by status

3--Show the top 5 products by total quantity sold (qty_ordered).
select category_name_1, sum (qty_ordered) as 'total quantity sold'
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by category_name_1 
order by 'total quantity sold' desc

4--What is the average price for each product category (category_name_1)?
select category_name_1 , avg (price) as 'Average Price'
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by category_name_1

7--Show the number of orders made using the payment method "cash on delivery".
select count (*) as 'cash on delivery'
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where payment_method = 'cod'

10--What is the total quantity sold (qty_ordered) for each SKU?
select sku, SUM(qty_ordered) as 'total_quantity_sold'
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by sku
order by total_quantity_sold DESC;

11--Extract orders where the discount amount (discount_amount) is greater than 100 EGP.
select *
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where discount_amount >100;

12--How many cancelled orders (status = 'cancelled') are there in each month?
select 
    format(try_cast(created_at as date), 'yyyy-MM') as Month,
    count(*) as Canceled_Orders
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where    status = 'canceled'
    and try_cast(created_at as date) is not null
group by format(try_cast(created_at as date), 'yyyy-MM')
order by Month;

13--Count the number of orders for each payment method and compare them.
select payment_method, count (*) as number_of_orders
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by payment_method
order by number_of_orders desc;

14--Extract the total Market Value (MV) for each Fiscal Year (FY).
select FY, sum (MV) as total_market_value
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
group by FY
order by FY;

16--What is the highest order number (increment_id) for each month?
select 
    format(try_cast(created_at as date), 'yyyy-MM') AS Month,
    max(increment_id) as Highest_Order_Number
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where try_cast(created_at as date) is not null
group by format(try_cast(created_at as date), 'yyyy-MM')
order by Month;

18--Extract orders where the grand_total is greater than the average grand_total of all orders.
select *
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where grand_total > ( 
	select avg (grand_total)
	from Cleaned_Pakistan_Largest_Ecommerce_Dataset);

19--Calculate the order refund rate (status = 'refunded') as a percentage of all orders for each month.
select 
    format(try_cast(created_at as date), 'yyyy-MM') as Month,
    count(case when status in ('refund', 'order_refunded') then 1 end) * 100.0 / count(*) as Refund_Rate_Percentage
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where try_cast(created_at as date) is not null
group by format(try_cast(created_at as date), 'yyyy-MM')
order by Month;

20--Display the count of orders distributed by month and year in a table format.
select 
    year(try_cast(created_at as date)) as Order_Year,
    month(try_cast(created_at as date)) as Order_Month,
    count(*) as Order_Count
from Cleaned_Pakistan_Largest_Ecommerce_Dataset
where try_cast(created_at as date) is not null
group by 
    year(try_cast(created_at as date)), 
    month(try_cast(created_at as date))
order by 
    Order_Year, 
    Order_Month;
