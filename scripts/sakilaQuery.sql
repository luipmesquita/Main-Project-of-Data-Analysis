SELECT 
	film.title, film.rental_rate, film.rental_duration, film.replacement_cost, film.rating, 
    store.store_id,
    address.district, city.city, country.country,
    rental.rental_id, DATE(rental.rental_date) AS rental_date, DATE(rental.return_date) AS return_date,
    customer.first_name, customer.last_name, customer.email
FROM 
	inventory
		INNER JOIN
    film ON inventory.film_id = film.film_id
		INNER JOIN
	store ON inventory.store_id = store.store_id
		INNER JOIN
	rental ON inventory.inventory_id = rental.inventory_id
		INNER JOIN
	address ON store.address_id = address.address_id
		INNER JOIN
	city ON address.city_id = city.city_id
		INNER JOIN
	country ON city.country_id = country.country_id
		INNER JOIN
	customer ON rental.customer_id = customer.customer_id;
    
    
    