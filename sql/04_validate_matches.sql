WITH selected_pairs AS (
    SELECT 101 AS left_shoe_id, 109 AS right_shoe_id
    UNION ALL
    SELECT 103, 108
    UNION ALL
    SELECT 105, 106
),
used_shoes AS (
    SELECT left_shoe_id AS shoe_id FROM selected_pairs
    UNION ALL
    SELECT right_shoe_id AS shoe_id FROM selected_pairs
)
SELECT
    shoe_id,
    COUNT(*) AS times_used
FROM used_shoes
GROUP BY shoe_id
HAVING COUNT(*) > 1;