/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */


SELECT
    DISTINCT "Actor Name"
FROM
    (
    SELECT
        title,
        unnest(special_features),
        actor.first_name || ' ' || actor.last_name as "Actor Name"
    FROM
        film
    INNER JOIN
        film_actor USING (film_id)
    INNER JOIN
        actor USING (actor_id)
    ) as t
WHERE
    unnest = 'Behind the Scenes'
ORDER BY
    "Actor Name";
