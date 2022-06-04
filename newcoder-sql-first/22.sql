SELECT university,
    COUNT(question_id) / COUNT(DISTINCT question_practice_detail.device_id)
    AS avg_answer_cnt
FROM question_practice_detail
INNER JOIN user_profile
ON user_profile.device_id = question_practice_detail.device_id
    GROUP BY university;
