SELECT user_profile.device_id, question_id, result
FROM question_practice_detail, user_profile
WHERE question_practice_detail.device_id = user_profile.device_id
    AND university = '浙江大学'
    ORDER BY question_id;
