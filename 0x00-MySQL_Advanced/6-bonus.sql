-- AddBonus that adds a new correction for a student.
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus(user_id INT, project_name VARCHAR(255), score FLOAT)
BEGIN
    DECLARE count INT DEFAULT 10;
    DECLARE procduce_id INT DEFAULT 0;

    SELECT COUNT(id) 
        INTO count 
        FROM projects 
        WHERE name = project_name;
    IF count = 0 THEN 
        INSERT INTO projects(name) 
            VALUE(project_name);
    END IF;
    SELECT id 
        INTO procduce_id 
        FROM projects 
        WHERE name = procduce_id;
    INSERT INTO corrections(user_id,project_id,score)
        VALUES (user_id,project_id,score);
END $$
DELIMITER ;
