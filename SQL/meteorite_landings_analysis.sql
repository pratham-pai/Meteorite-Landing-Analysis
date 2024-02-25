-- Select all records from the table:
SELECT * FROM meteoritelandings;


-- Select the first 100 records:
SELECT * FROM meteoritelandings
LIMIT 100;


-- Insert a new record into the meteoritelandings table:
INSERT INTO meteoritelandings (name, id, nametype, recclass, mass, fall, year, reclat, reclong)
VALUES ('Sample Meteorite', 9999, 'Valid', 'Sample Class', 100, 'Fell', 2022, 0.0, 0.0);

-- Verify that the update was successful:
SELECT * FROM meteoritelandings WHERE name = 'Sample Meteorite';

-- Update the mass of a specific meteorite:
UPDATE meteoritelandings
SET mass = 200
WHERE name = 'Sample Meteorite';

-- Verify that the update was successful:
SELECT * FROM meteoritelandings WHERE name = 'Sample Meteorite';

-- Delete a record from the meteoritelandings table:
DELETE FROM meteoritelandings
WHERE id = 9999;

-- Verify that the update was successful:
SELECT * FROM meteoritelandings WHERE name = 'Sample Meteorite';


-- Show first 10 records ordered by id:
SELECT * FROM meteoritelandings
ORDER BY id
LIMIT 10;


-- Calculate the total mass of all meteorites:
SELECT SUM(mass) AS total_mass
FROM meteoritelandings;


-- Calculate the total mass of meteorites for each fall type:
SELECT fall, SUM(mass) AS total_mass
FROM meteoritelandings
GROUP BY fall;


-- Find meteorites with a mass greater than the average mass of all meteorites:
SELECT name, mass
FROM meteoritelandings
WHERE mass > (SELECT AVG(mass) FROM meteoritelandings);


-- Retrieve the top 10 heaviest meteorites by mass:
SELECT name, mass
FROM meteoritelandings
ORDER BY mass DESC
LIMIT 10;


-- Find meteorites that fell after the year 2000 and have a mass greater than 1000 grams:
SELECT name, year, mass
FROM meteoritelandings
WHERE year > 2000 AND mass > 1000;


-- Calculate the total mass of meteorites fallen each year:
SELECT year, SUM(mass) AS total_mass
FROM meteoritelandings
WHERE year IS NOT NULL AND mass IS NOT NULL
GROUP BY year
ORDER BY year;


-- Select the latest meteorite landings available:
SELECT *
FROM meteoritelandings
WHERE year = (SELECT MAX(year) FROM meteoritelandings);


-- Find the top 10 heaviest meteorites along with their names and masses:
WITH ranked_meteorites AS (
    SELECT name, mass, ROW_NUMBER() OVER (ORDER BY mass DESC) AS rn
    FROM meteoritelandings
)
SELECT name, mass
FROM ranked_meteorites
WHERE rn <= 10;


-- Calculate the average mass of meteorites fallen each year, along with the total mass of meteorites for each year excluding missing values:
SELECT year,
       AVG(mass) OVER (PARTITION BY year) AS avg_mass,
       SUM(mass) OVER (PARTITION BY year) AS total_mass
FROM meteoritelandings
WHERE year IS NOT NULL AND mass IS NOT NULL
ORDER BY year;


-- Temporal Analysis:
-- Calculate the moving average of meteorite landings over a specific time window. This can help identify long-term trends and fluctuations in meteorite landings:
SELECT
    year,
    COUNT(*) AS num_landings,
    AVG(COUNT(*)) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND CURRENT ROW) AS moving_avg
FROM
    meteoritelandings
WHERE
    year IS NOT NULL
GROUP BY
    year
ORDER BY
    year;


-- Meteorite Classification Analysis:
-- Identify the Most Common Meteorite Classes:
SELECT recclass, COUNT(*) AS num_landings
FROM meteoritelandings
GROUP BY recclass
ORDER BY num_landings DESC;


-- Geospatial Analysis:
-- Find Meteorites Fallen in a Specific Latitude-Longitude Range (India as an example):
SELECT name, mass, reclat, reclong
FROM meteoritelandings
WHERE reclat BETWEEN 8 AND 37
AND reclong BETWEEN 68 AND 97;


-- Count the Number of Meteorites Fallen vs. Found:
SELECT fall, COUNT(*) AS num_events
FROM meteoritelandings
GROUP BY fall;


-- Geospatial Analysis:
-- analyze the distances between the top 10 largest meteorite landings and order them by the closest distance
SELECT a.name AS meteorite1, b.name AS meteorite2, 
       SQRT(POW(a.reclat - b.reclat, 2) + POW(a.reclong - b.reclong, 2)) AS distance
FROM (
    SELECT *
    FROM meteoritelandings
    ORDER BY mass DESC
    LIMIT 10
) a
CROSS JOIN (
    SELECT *
    FROM meteoritelandings
    ORDER BY mass DESC
    LIMIT 10
) b
WHERE a.name < b.name  -- Ensure that each pair is considered only once
ORDER BY distance;


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
-- Results can be visualized using Python's Matplotlib library included as meteorite_class_distribution_visualization.py


-- Latitude and longitude coordinates for the top 80 meteorites by mass
SELECT reclat, reclong
FROM meteoritelandings
ORDER BY mass DESC
LIMIT 80;
-- Heatmap and Cluster Analysis visualized in meteorite_heatmap_visualization.py and meteorite_cluster_analysis.py in repository