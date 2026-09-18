SELECT
    gender,
    COUNT(*) AS participation_records,
    SUM(CASE WHEN leadership_role = 'Yes' THEN 1 ELSE 0 END) AS leadership_records,
    ROUND(
        SUM(CASE WHEN leadership_role = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS leadership_share_percent,
    SUM(CASE WHEN decision_making_role = 'Yes' THEN 1 ELSE 0 END) AS decision_making_records,
    ROUND(
        SUM(CASE WHEN decision_making_role = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS decision_making_share_percent
FROM gender_participation_raw
GROUP BY gender
ORDER BY gender;