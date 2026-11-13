
-- Find potential matching shoes
-- Prioritize matches within the same store

SELECT
    L.shoe_id AS left_shoe_id,
    R.shoe_id AS right_shoe_id,
    L.sku,
    L.size,
    L.store_id AS left_store,
    R.store_id AS right_store,
    CASE
        WHEN L.store_id = R.store_id THEN 'Internal'
        ELSE 'Cross-store'
    END AS recovery_type,
    CASE
        WHEN L.store_id = R.store_id THEN 1
        ELSE 2
    END AS priority
FROM unpaired_shoes AS L
JOIN unpaired_shoes AS R
    ON L.sku = R.sku
    AND L.size = R.size
    AND L.side = 'Left'
    AND R.side = 'Right'
ORDER BY priority ASC;