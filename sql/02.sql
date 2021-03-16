/*
 * Count the number of movies that contain each type of special feature.
 */


SELECT
    DISTINCT unnest as "special_features",
    COUNT(title)
FROM
    (
    SELECT
        title,
        unnest(special_features)
    FROM
        film
    ) as t
GROUP BY
    unnest
ORDER BY
    unnest;
