DELIMITER //

CREATE PROCEDURE sp_insert_post(
    IN p_username VARCHAR(50),
    IN p_course_rating INT,
    IN p_lecture_rating INT,
    IN p_comment TEXT,
    IN p_submission_date DATE
)
BEGIN
    INSERT INTO reviews (
        username,
        course_rating,
        lecture_rating,
        comment,
        submission_date
    ) VALUES (
        p_username,
        p_course_rating,
        p_lecture_rating,
        p_comment,
        p_submission_date
    );
END //

DELIMITER ;
