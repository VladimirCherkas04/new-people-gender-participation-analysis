SELECT
    age_group,
    responsibility_level,
    gender,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (
            PARTITION BY age_group, responsibility_level
        ),
        2
    ) AS gender_share_percent
FROM gender_participation_raw
GROUP BY age_group, responsibility_level, gender
ORDER BY age_group, responsibility_level, gender_share_percent DESC;