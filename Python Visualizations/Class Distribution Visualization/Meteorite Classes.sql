-- Retrieve the top 10 meteorite classes based on the count of meteorites, include total mass of each class
SELECT 
    recclass, 
    COUNT(*) AS meteorite_count,
    SUM(mass) AS total_mass
FROM 
    meteoritelandings
WHERE 
    mass IS NOT NULL
GROUP BY 
    recclass
ORDER BY 
    meteorite_count DESC
LIMIT 10;