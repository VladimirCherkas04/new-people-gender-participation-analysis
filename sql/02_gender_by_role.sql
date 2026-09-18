SELECT
    role,
    gender,
    COUNT(*) AS participation_records
FROM gender_participation_raw
GROUP BY role, gender
ORDER BY role, participation_records DESC;