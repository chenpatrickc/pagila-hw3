/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT
    *
FROM
    (
    SELECT
        title
    FROM
        (
        SELECT
            DISTINCT title,
            unnest(special_features)
        FROM
            film
        ) AS t
    WHERE
        unnest = 'Behind the Scenes'
    ) AS t2

INNER JOIN
    (
    
    SELECT
        title
    FROM
        (
        SELECT
            DISTINCT title,
            unnest(special_features)
        FROM
            film
        ) AS t3
    WHERE
        unnest = 'Trailers'
    ) as t4 USING (title)
ORDER BY
    title;
