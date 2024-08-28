# 1. csv 파일 확인
select *
from customers c;

select *
from orders o;

select *
from products;

select *
from sales;


# 2. 고객id별 주문횟수 파악
# customer 1000명
select customer_id, count(customer_id)
from orders
group by customer_id;


# 3. 배달소요기간 컬럼 생성
select order_id, customer_id, payment, order_date, delivery_date, datediff(delivery_date, order_date) as "배송기간"
from orders;


# 4. customers & orders inner join
select c.customer_id, c.gender, c.age, o.payment, (select datediff(delivery_date, order_date)) as delivery_period
from customers c inner join orders o on c.customer_id = o.customer_id;

