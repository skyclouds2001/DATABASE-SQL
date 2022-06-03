SELECT
  gender,
  university,
  COUNT(device_id) AS user_num,
  ROUND(AVG(active_days_within_30), 1) AS avg_active_day,
  ROUND(AVG(question_cnt), 1) AS avg_question_cnt
FROM user_profile
GROUP BY gender, university;
