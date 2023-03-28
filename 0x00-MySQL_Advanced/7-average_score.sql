-- 7-average_score.sql

DELIMITER $$

DROP procedure IF EXISTS ComputeAverageScoreForUser;
CREATE PROCEDURE ComputeAverageScoreForUser(user_id INT);
BEGIN
    UPDATE users 
    SET 
    average_score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id) 
    WHERE id = user_id;
END $$
DELIMITER ;
