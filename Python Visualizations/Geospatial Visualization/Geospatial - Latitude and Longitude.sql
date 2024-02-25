-- Latitude and longitude coordinates for the top 80 meteorites by mass
SELECT reclat, reclong
FROM meteoritelandings
ORDER BY mass DESC
LIMIT 80;