SELECT
    topic,
    gender,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY topic),
        2
    ) AS gender_share_percent
FROM gender_participation_raw
GROUP BY topic, gender
ORDER BY topic, gender_share_percent DESC;