SELECT
  university,
  ROUND(AVG(question_cnt), 3) AS avg_question_cnt,
  ROUND(AVG(answer_cnt), 3) AS avg_answer_cnt
FROM user_profile
GROUP BY university
  HAVING avg_question_cnt < 5 OR avg_answer_cnt < 20;
