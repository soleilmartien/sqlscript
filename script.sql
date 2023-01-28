--Question 1: 2 actors
select count(last_name)
from actor 
where last_name = 'Wahlberg';

--Question 2: 3230 purchases
select count(amount) from payment where 3.99  < amount and amount < 5.99;

--Question 3: Crossroad Casualties, Shock Cabin, Ridgemont Submarine, Greatest North, Moon Bunch, Storm Happiness, Dinausaur Secretary, 
--Mockingbird Hollywood, Beverly Outlaw, Saturday Lambs, Roses Treasure, Academy Dinosaur, Scalawag Duck, Goodfellas Salute, Rocketeer Mother, 
--Operation Operation, Apache Divine, Giant Troopers, Cupboard Sinners, Pity Bound, Cat Coneheads, Muscle Bright, Harry Idaho, Confidential Interview, 
--Dynamite Tarzan, Butterfly Chocolat, Horror Reign, Deer Virginian, Dogma Family, Sweethearts Suspects, Titans Jerk, Invasion Cyclone, Loathing Legally,
--Torque Bound, Primary Glass, Spy Mile, Seabiscuit Punk, Virginian Pluto, Hustler Party, Heavyweights Beast, telemark Heartbreakers, Sting Personal, Forward Temple, 
--Trip Newton, Network Peak, Family Sweet, Zorro Ark, Gleaming Jawbreaker, Bound Cheaper, Curtain Videotape, Gilmore Boiled, Wife Turn, Garden Island, Married Go
--Boogie Amelie, Juggler Hardly, Grit Clockwork, Pulp Beverly, Lose Inch, Streetcar Intentions, Swarm Gold, Expendable Stallion, Dancing Fever, Bingo Talented, Hobbit Alien, 
--Innocent Usual, Bucket Brotherhood, Frost Head, Rugrats Sheakpeare, Kiss Glory, Rush Goodfellas, Metropolis Coma
--
--This database appears to differ from the one shown in class, which may be why there are so many movies 
select count(film_id), film_id from inventory group by film_id order by count desc;

--Question 4: none of them do
select last_name from customer where last_name like 'William';

--Question 5: Jon, he has 12 smore sales than Mike
select count(payment_id), staff_id from payment group by staff_id order by count desc;

--Question 6: Scrolling down, we can see there are 378 distinct entries 
select count(district),district from address group by district order by count desc;

--Question 7: Lambs Cincinatti
select count(actor_id), film_id from film_actor group by film_id order by count desc;

--Question 8: Scrolling down, we can see there are 21 entries
select last_name from customer where last_name like '%es';

--Question 9: 3 payment amounts: 4.99, 6.99, 2.99
select count(amount),amount from payment where customer_id > 380 and customer_id  < 430 group by amount order by count desc;

--Question 10: 5 rating categories, most movies are PG-13
select count(film_id), rating from film group by rating order by count desc;


