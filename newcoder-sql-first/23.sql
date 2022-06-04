SELECT university, difficult_level,
    ROUND(COUNT(question_practice_detail.question_id) / COUNT(DISTINCT user_profile.device_id), 4)
    AS avg_answer_cnt
FROM question_practice_detail
    JOIN user_profile
    ON user_profile.device_id = question_practice_detail.device_id
    JOIN question_detail
    ON question_detail.question_id = question_practice_detail.question_id
GROUP BY university, difficult_level;
