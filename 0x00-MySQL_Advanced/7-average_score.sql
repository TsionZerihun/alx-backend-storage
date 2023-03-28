-- 7-average_score.sql
DROP procedure if EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(user_id INT);
BEGIN
    UPDATE users SET average_score = (SELECT AVG(score) as avg FROM corrections WHERE user_id = user_id) WHERE id = user_id;
    SELECT * FROM users;

END$$
DELIMITER;