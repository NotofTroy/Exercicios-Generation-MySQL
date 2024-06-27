CREATE DATABASE db_school;

USE db_school;

CREATE TABLE student (
	id BIGINT AUTO_INCREMENT,
    student_document_number INTEGER NOT NULL,
    student_name VARCHAR(255) NOT NULL,
    student_age INTEGER NOT NULL,
    student_grade DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO student (student_document_number, student_name, student_age, student_grade)
	VALUES ("123456789", "Elyse Hrist", 331, 10),
    ("987654321", "Jeff Moreau", 34, 6.5),
    ("456789123", "Kaidan Alenko", 32, 9.2),
    ("456123789", "Velkhana Alborg", 170, 8),
    ("123789456", "Gudrun Vitnoshkorn", 22, 4.2);
    
SELECT * FROM student WHERE student_grade > 7 ;

SELECT * FROM student WHERE student_grade < 7 ;

UPDATE student SET student_grade = 7 WHERE Id = 2;
