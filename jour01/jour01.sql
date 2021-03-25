CREATE TABLE students (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR (20), city VARCHAR (20));
INSERT INTO students (name, city) VALUES 
("Véronique", "Paris"),
("Steeven", "Lyon"),
("Marc", "Marseille"),
("Nour", "Lyon"),
("Sophie", "Paris"),
("Romain", "Paris")

CREATE TABLE languages (id INT AUTO_INCREMENT, name VARCHAR (30), PRIMARY KEY (id));
INSERT INTO languages (name) VALUES 
("French"), ("English"), ("German"), ("Spanish"), ("Mandarin")

CREATE TABLE favourites (id INT AUTO_INCREMENT PRIMARY KEY, class VARCHAR(30), sport VARCHAR(30), student_id INT, CONSTRAINT FOREIGN KEY (student_id) REFERENCES students(id));
INSERT INTO favourites (class, sport, student_id) VALUES

("Maths", "Cricket", 2),
("Music", "Hip-hop", 6),
("Arts", "Boxing", 1),
("Literature", "Tennis", 3),
("Computer science", "Tennis", 5),
("Arts", "Baseball", 4);

CREATE TABLE students_languages (id INT AUTO_INCREMENT PRIMARY KEY, student_id INT, language_id INT);
INSERT INTO students_languages (student_id, language_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(5, 1),
(5, 5),
(6, 1),
(6, 2),
(6, 3);







("Minahil", "Rodgers")
("Khadija", "Howarth")
("Micheal", "Beltran")
("King", "Cohen")
("Zakariah", "Barr")
("Willem", "Cornish")
("Kiaan", "Cooke")
("Alessia", "Corrigan")
("Jon-Paul", "Powers")
("Jago", "Mclean")




CREATE TABLE candidates (id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(30), last_name VARCHAR(30), birthday DATE, salary INT, portfolio TEXT, github TEXT);
INSERT INTO candidates (first_name, last_name, birthday, salary, portfolio, github) VALUES
("Minahil", "Rodgers", "1998-10-01", 126915, "online", "github account"),
("Khadija", "Howarth", "1990-01-02", 10576, "print", "no account"),
("Micheal", "Beltran", "2000-12-01", 24000, "print", "github account"),
("King", "Cohen", "2010-10-11", 350000, "online", "github account"),
("Zakariah", "Barr", "1998-04-16", 62400, "online", "no account"),
("Willem", "Cornish", "1988-02-06", 56400, "online", "github account"),
("Kiaan", "Cooke", "1980-12-17", 14100, "print", "no account"),
("Alessia", "Corrigan", "1991-01-17", 140100, "print", "github account"),
("Jon-Paul", "Powers", "1992-9-01", 10000, "print", "no account"),
("Jago", "Mclean", "1989-01-01", 40000, "online", "github account");



CREATE TABLE languages (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), candidate_id INT, CONSTRAINT FOREIGN KEY (candidate_id) REFERENCES candidates(id))
INSERT INTO languages (name, candidate_id) VALUES
("French", 3), 
("English", 1),
("German", 5),
("Spanish", 9),
("Mandarin", 2),
("Italian", 10),
("Spanish", 4),
("Arabic", 6),
("English", 8),
("English", 7);



CREATE TABLE programming (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), candidate_id INT, CONSTRAINT FOREIGN KEY (candidate_id) REFERENCES candidates(id))
INSERT INTO programming (name, candidate_id) VALUES
("React", 6),
("Express", 2),
("PHP", 1),
("Python", 10),
("JavaScript", 5),
("Node.js", 7),
("Vue", 9),
("Angular", 8),
("PHP", 3),
("React", 4);



SELECT first_name, last_name FROM candidates;


SELECT COUNT (*) from candidates;

SELECT COUNT (*) as nbCandidate from candidates;

SELECT * 

