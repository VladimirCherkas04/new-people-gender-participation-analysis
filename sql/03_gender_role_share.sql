SELECT
    role,
    gender,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY role),
        2
    ) AS gender_share_percent
FROM gender_participation_raw
GROUP BY role, gender
ORDER BY role, gender_share_percent DESC;