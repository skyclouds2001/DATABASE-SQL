SELECT COUNT(DISTINCT device_id), COUNT(*)
FROM question_practice_detail
WHERE date LIKE '2021-08-__';