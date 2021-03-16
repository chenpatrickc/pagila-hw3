/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 */

SELECT
    title
FROM
    (
    SELECT
        title,
        rating,
        unnest(special_features)
    FROM
        film
    ) AS t
WHERE
    rating = 'G' AND
    unnest = 'Trailers'
ORDER BY
    title DESC;
