SELECT
    *
FROM {{ source('mtln', 'COVID_flattened') }}
WHERE NOT "date" = {{ env_var('search-date') }}