--Which customer placed the orders on the earliest date? What did they order?

--First customer
-- SELECT
-- 	first_name, last_name,
-- 	rental_date, rental_id
-- FROM
-- 	rentals r JOIN
-- 	customers c ON
-- 	(c.customer_id = r.customer_id)
-- ORDER BY
-- 	rental_date
-- 	LIMIT 1

-- continue with sadness :'( scratch pad is useless
-- TODO try with WITH clause; no human intervention

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
  rental_id = 1;
