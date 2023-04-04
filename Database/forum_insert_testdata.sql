# Select the database
USE myforum;

# Insert a few initial users
INSERT INTO users (firstname, surname, username)
VALUES  ('Shad','Travis','shaddy'),
		('Bernadette','Bagley','baggy'),
		('Rolo','Vicario','roly'),
		('Sophie','Panza','panny'),
		('Miriana','Vitali','vit');
        
# Insert a few initial topics
INSERT INTO topics (topic_title)
VALUES ('Campus Accessibility'),
       ('Facilities'),
       ('Faculty'),
       ('Graduate prospects'),
       ('Student satisfaction'),
       ('Course content');
       
# Insert some user membership to topics
INSERT INTO membership (user_id, topic_id)
VALUES (1,1),(1,4),
       (2,2),
       (3,3),
       (4,5),
       (5,6);
       
# Insert some test posts
INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-01 12:53', 'THIS IS NOT ACCESSIBLE FOR DISABLE PEOPLE AT ALL!!!' , 1, 1);

INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-03 10:34', 'I did not get a job after university…', 1, 4);

INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-07 16:26', 'They have really intriguing buildings..', 2, 2);

INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-13 17:01', 'The professor teaching software project is awesome!', 3,3);

INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-13 19:45', 'I really recommend people to study here! Good vibe and I love the campus', 4,5);

INSERT INTO posts (post_date, post_content, user_id, topic_id)
VALUES ('2021-11-15 13:32', 'I am doing second year Computer Science course and I found the course really ideal as what I want to do as a job in the future',  5,6);
