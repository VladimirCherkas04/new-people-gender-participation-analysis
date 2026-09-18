SELECT
    activity_type,
    gender,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY activity_type),
        2
    ) AS gender_share_percent
FROM gender_participation_raw
GROUP BY activity_type, gender
ORDER BY activity_type, gender_share_percent DESC;