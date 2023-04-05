# Make sure the databese is created before you run this script
CREATE DATABASE forumDatabase;

# Select the database
USE forumDatabase;

# Create the user which the web app will use to access the database
DROP USER IF EXISTS 'forumDatabase'@'localhost';
CREATE USER 'forumDatabase'@'localhost' IDENTIFIED WITH mysql_native_password BY 'qwerty';
GRANT ALL PRIVILEGES ON forumDatabase.* TO 'forumDatabase'@'localhost';      

# Remove the tables if they already exist
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS topics;

# Create some users table to store user details
CREATE TABLE users (
  user_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  username VARCHAR(15) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(20) NOT NULL,
  university VARCHAR(255),
  degree VARCHAR(255),
  subject VARCHAR(255),
  year_of_study INT,
  PRIMARY KEY(user_id)
);

# Create the topics table to store the list of available topics
CREATE TABLE topics (
   topic_id INT NOT NULL UNIQUE AUTO_INCREMENT,
   topic_title VARCHAR(20),
   PRIMARY KEY(topic_id)
);

# Create the link table to say which users are members of which topics
CREATE TABLE link (
	user_id INT,
    topic_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);

# Create the posts table to store the user posts
CREATE TABLE posts (
	post_id INT NOT NULL UNIQUE AUTO_INCREMENT,
    post_date DATETIME,
    post_content MEDIUMTEXT,
    user_id INT,
    topic_id INT,
    PRIMARY KEY(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);





