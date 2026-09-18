SELECT
    gender,
    leadership_role,
    decision_making_role,
    COUNT(*) AS participation_records,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY gender, leadership_role),
        2
    ) AS share_percent
FROM gender_participation_raw
GROUP BY
    gender,
    leadership_role,
    decision_making_role
ORDER BY
    gender,
    leadership_role,
    decision_making_role;