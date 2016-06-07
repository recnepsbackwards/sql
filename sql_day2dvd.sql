WITH firstcustomer AS
(SELECT
	first_name, last_name,
	rental_date, rental_id
FROM	rentals r JOIN 
	customers c ON 
	(c.customer_id = r.customer_id)
ORDER BY rental_date	
	LIMIT 1)

SELECT 
  first_name, last_name, rental_date, title
FROM 
  public.customers, 
  public.films, 
  public.inventory, 
  public.rentals
WHERE 
  customers.customer_id = rentals.customer_id AND
  films.film_id = inventory.film_id AND
  inventory.inventory_id = rentals.inventory_id AND
  firstcustomer.rental_id;
 