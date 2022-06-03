SELECT
CASE
  WHEN age < 25 OR age IS NULL THEN '25岁以下'
  WHEN age >= 25  THEN '25岁及以上'
  END AS age_cut,
COUNT(device_id) AS number
FROM user_profile
GROUP BY age_cut;
