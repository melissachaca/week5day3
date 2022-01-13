-- 1. list all customers who live in Texas? (use JOINS)--

select customer.first_name, customer.last_name, 
from customer 
join address a
on customer.customer_id = address_id 
where district = Texas
group by customer.first_name, customer.last_name 
having district = Texas
order by customer.last_name desc; 


--2. Get all payments above $6.99 with the Customer’s full name --

select * from payment;
select * from customer; 

select *
from customer 
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 6.99
	order by sum(amount) desc
);


-- 3. Show all customer names who have made payments over $175 (use subqueries)-- 
select *
from customer 
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
	order by sum(amount) desc
);

--4. List all customers that live in Nepal (use the city table) --

select * from country c 


select *
from customer 
where customer_id IN (
	SELECT country_id
	FROM city
	GROUP BY city_id
	HAVING country_id = 66 
	ORDER BY customer_id 
);



--5. Which staff member had the most transactions? --



--6. What film had the most actors in it? --

select *
from film_actor fa 
where actor_id in (
	select film_id 
	from film f 
	group by film_id 
	having count() (*) > 60
	order by count() (*) desc 
	
);




--7. Which actor has been in the least movies? ---
select * from film_actor fa 

select * from film f 


select *
from film_actor fa 
where actor_id in (
	select film_id 
	from film f 
	group by film_id 
	having count() (*) < 2
	order by count() (*) desc 
	
);




--8. How many districts have more than 5 customers in it?--
select 





