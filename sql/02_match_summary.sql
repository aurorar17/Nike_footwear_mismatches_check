WITH potential_matches AS (
    SELECT
        L.shoe_id AS left_shoe_id,
        R.shoe_id AS right_shoe_id,
        CASE
            WHEN L.store_id = R.store_id THEN 'Internal'
            ELSE 'Cross-store'
        END AS recovery_type
    FROM unpaired_shoes AS L
    JOIN unpaired_shoes AS R
        ON L.sku = R.sku
        AND L.size = R.size
        AND L.side = 'Left'
        AND R.side = 'Right'
)
SELECT
    recovery_type,
    COUNT(*) AS potential_matches
FROM potential_matches
GROUP BY recovery_type;