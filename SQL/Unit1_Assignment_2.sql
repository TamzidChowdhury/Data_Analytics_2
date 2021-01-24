--Join the film to the film_actor table. Joining two table together 

select *from film
full outer join film_actor
on film.film_id = film_actor.film_id

-- Join the actor table to the film_actor table. 
 
select *from actor
full outer join film_actor
on actor.actor_id = film_actor.actor_id

-- Try to join the actor, film_actor, and film table together (3 joins!)

SELECT actor.actor_id, actor.first_name,actor.last_name, actor.last_update, film_actor.film_id, film_actor.actor_id, film_actor.last_update, film.film_id
FROM actor
INNER JOIN film_actor ON film_actor.film_id = actor.actor_id
INNER JOIN film ON film.film_id = film.film_id

SELECT *from actor
JOIN film_actor ON actor.last_update = film_actor.last_update
JOIN film ON actor.last_update = film.last_update
