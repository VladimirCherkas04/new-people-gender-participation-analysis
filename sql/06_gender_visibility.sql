SELECT
    gender,
    COUNT(*) AS participation_records,
    SUM(CASE WHEN event_speaker = 'Yes' THEN 1 ELSE 0 END) AS speaker_records,
    ROUND(
        SUM(CASE WHEN event_speaker = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS speaker_share_percent,
    SUM(CASE WHEN coordination_role = 'Yes' THEN 1 ELSE 0 END) AS coordination_records,
    ROUND(
        SUM(CASE WHEN coordination_role = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS coordination_share_percent
FROM gender_participation_raw
GROUP BY gender
ORDER BY gender;