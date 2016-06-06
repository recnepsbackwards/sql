SELECT  code, name, population, surfacearea, gnp, population / gnp AS pop_gnp_ratio, surfacearea / gnp AS area_gnp_ratio
FROM countries
WHERE gnp > 0 
--ORDER BY area_gnp_ratio ASC 
--LIMIT 10

--INTERSECT

--SELECT  code, name, population, surfacearea, gnp, population / gnp AS pop_gnp_ratio, surfacearea / gnp AS area_gnp_ratio 
--FROM countries

ORDER BY pop_gnp_ratio ASC 
LIMIT 10