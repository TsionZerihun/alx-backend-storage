SELECT AVG(score) as avg FROM corrections WHERE user_id = 2;
UPDATE users SET users.average_score = avg WHERE id = 2;
SELECT * FROM users;