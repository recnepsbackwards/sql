with 
	indep_year as 
(SELECT name, indepyear, governmentform
From countries
where indepyear > 1910 AND governmentform = 'Republic')

SELECT count(name) from indep_year;

