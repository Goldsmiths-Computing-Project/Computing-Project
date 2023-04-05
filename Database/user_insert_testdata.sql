# Select the database
USE forumDatabase;

# Insert a user
INSERT INTO users (username, email, password, name, surname, university, degree, subject, year_of_study)
VALUES  ('Gvidas123', 'gleks001@gold.ac.uk', 'qwerty', 'Gvidas','Lekstutis', 'Goldsmiths', 'Ba', 'Business Computing', '2'),
         ('user2', 'user2@example.com', 'password123',
         'John', 'Doe', 'University of Example', 'BSc', 'Computer Science', '1'),
        ('user3', 'user3@example.com', 'password123',
         'Jane', 'Doe', 'University of Example', 'MSc', 'Business Administration', '2'),
        ('user4', 'user4@example.com', 'password123',
         'Bob', 'Smith', 'University of Example', 'BSc', 'Psychology', '3'),
        ('user5', 'user5@example.com', 'password123',
         'Alice', 'Johnson', 'University of Example', 'PhD', 'Chemistry', '4'),
        ('user6', 'user6@example.com', 'password123',
         'David', 'Lee', 'University of Example', 'BEng', 'Mechanical Engineering', '2');
        
