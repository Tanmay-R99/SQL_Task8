

select * from customer where age::varchar ~ '^[2-3]0$'

select * from customer where age::varchar ~ '^[0-6](2|3|5)$'

select order_id,sales::varchar from sales
where sales::varchar ~ '^[0-9][0-9](5|4|1).[0-9]{3}$'

select order_id from sales 
	where order_id ~* '^us-201(5|7)-[0-9]{6}$'
	
select order_id from sales where order_id ~* '^us-201(5|7)-[0-9]{4}[4-8](7|8|1)$'

select * from customer where customer_name ~* '^[a-z](e|t|r)[a-z][a-z] [a-z]{3}$'

select * from sales where product_id ~* '^(f|o)[a-z](r|t|a)-[a-z]{2}-[0-9]{6}[0-7](5|2|6)$'

-- last digit (0,5,9)
select customer_id,postal_code from customer 
	where postal_code::varchar ~*'^[0-9][1-7][0-5]{2}(0|5|9)$'

--- first letter H or E 
	
	select city from customer where city ~* '^(h|e)'



