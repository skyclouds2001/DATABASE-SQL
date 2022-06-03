SELECT device_id, gender,
  CASE
    WHEN age IS NULL THEN '其他'
    WHEN age < 20 THEN '20岁以下'
    WHEN age >= 20 AND age <= 24 THEN '20-24岁'
    WHEN age >= 25 THEN '25岁及以上'
  END AS age_cut
FROM user_profile;
