CREATE DATABASE reviewsDatabase;

Use reviewsDatabase;

CREATE TABLE reviews (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    course_rating INT,
    lecture_rating INT,
    comment TEXT,
    submission_date DATE,
    PRIMARY KEY (id)
);

# Create the user which the web app will use to access the database
DROP USER IF EXISTS 'forumapp'@'localhost';
CREATE USER 'forumapp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'qwerty';
GRANT ALL PRIVILEGES ON reviewsDatabase.* TO 'forumapp'@'localhost'; 



