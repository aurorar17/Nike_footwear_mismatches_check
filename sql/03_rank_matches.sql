WITH ranked_matches AS (
    SELECT
        L.shoe_id AS left_shoe_id,
        R.shoe_id AS right_shoe_id,
        L.store_id AS left_store,
        R.store_id AS right_store,
        CASE
            WHEN L.store_id = R.store_id THEN 1
            ELSE 2
        END AS priority,
        ROW_NUMBER() OVER (
            PARTITION BY L.shoe_id
            ORDER BY
                CASE
                    WHEN L.store_id = R.store_id THEN 1
                    ELSE 2
                END,
                R.shoe_id
        ) AS row_num
    FROM unpaired_shoes AS L
    JOIN unpaired_shoes AS R
        ON L.sku = R.sku
        AND L.size = R.size
        AND L.side = 'Left'
        AND R.side = 'Right'
)
SELECT *
FROM ranked_matches
WHERE row_num = 1
ORDER BY left_shoe_id;