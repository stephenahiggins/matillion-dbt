SELECT
    *
FROM {{ source('mtln', 'airports') }}
WHERE (NOT(("iata" IS NULL
    OR "iata" = ''))
    AND NOT(("airport" IS NULL
        OR "airport" = {{ env_var('test') }}))
    AND NOT(("state" IS NULL
        OR "state" = '')))