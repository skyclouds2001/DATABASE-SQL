SELECT
  university,
  ROUND(AVG(question_cnt), 4) AS avg_question_cnt
FROM user_profile
GROUP BY university
ORDER BY avg_question_cnt;
