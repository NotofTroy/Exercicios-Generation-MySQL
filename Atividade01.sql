CREATE DATABASE db_humanresources;

USE db_humanresources;

CREATE TABLE employee (
	id BIGINT AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL,
    employee_position VARCHAR(255) NOT NULL,
    wage DECIMAL(8,2) NOT NULL,
    employee_email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO employee (employee_name, employee_position, wage, employee_email)
	VALUES ("Elyse Hrist", "Captain", 10000.50, "elysehrist@lanormandie.com" ),
    ("Jeff Moreau", "First Mate", 8650.00, "jeffmoreau@lanormandie.com"),
    ("Kaidan Alenko", "Second Mate", 6800.90, "kaidanalenko@lanormandie.com"),
    ("Velkhana Alborg", "Deckhand", 1900.91, "velkhanaalborg@lanormandie.com"),
    ("Gudrun Vitnoshkorn", "Cook", 1700.00, "gudrunvitnoshkorn@lanormandie.com");
    
SELECT * FROM employee WHERE wage > 2000.00 ;

SELECT * FROM employee WHERE wage < 2000.00 ;

UPDATE employee SET wage = 1800.25 WHERE Id = 5;
