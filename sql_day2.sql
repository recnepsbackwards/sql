select
	cl.language,
	co.name,
	co.population,
	cl.isofficial,
	cl.percentage
from
	countrylanguages cl join
	countries co on(co.code = cl.countrycode)
where
	percentage = 0 