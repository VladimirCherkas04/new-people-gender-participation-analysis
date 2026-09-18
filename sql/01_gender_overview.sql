SELECT
    gender,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS share_percent
FROM gender_participation_raw
GROUP BY gender
ORDER BY participation_records DESC;