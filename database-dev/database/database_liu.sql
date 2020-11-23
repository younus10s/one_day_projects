/*
ALTER TABLE Eat_place DROP FOREIGN KEY fk_res_eat;
ALTER TABLE Study_place DROP FOREIGN KEY fk_res_stu;
ALTER TABLE Eat_place DROP FOREIGN KEY fk_inheritance_1;
ALTER TABLE Study_place DROP FOREIGN KEY fk_inheritance_2;
DROP TABLE IF EXISTS Resturant_at_Liu;
DROP TABLE IF EXISTS Strudent_setting_place_at_liu;
DROP TABLE IF EXISTS Eat_place;
DROP TABLE IF EXISTS Study_place; 
*/

CREATE TABLE Resturant_at_Liu (
	name VARCHAR(20) NOT NULL,
	location_in_liu INT NOT NULL,
	opining_hours VARCHAR(5),
    CONSTRAINT pk_resturant PRIMARY KEY(name)
) ENGINE = InnoDB;

CREATE TABLE Student_setting_place_at_liu (
	id INT,
	location_in_liu INT NOT NULL,
	vacancy BINARY(1),
    number_of_chairs INT DEFAULT 0,
    number_of_tables INT DEFAULT 0,
    CONSTRAINT pk_Student PRIMARY KEY(id)
)ENGINE = InnoDB;

CREATE TABLE Eat_place (
	id INT,
	r_name VARCHAR(20),
    CONSTRAINT pk_eat PRIMARY KEY(id)
)ENGINE = InnoDB;

CREATE TABLE Study_place (
	id INT,
	r_name VARCHAR(20),
    CONSTRAINT pk_study PRIMARY KEY(id)
)ENGINE = InnoDB;

-- Add FK
ALTER TABLE Eat_place ADD CONSTRAINT fk_inheritance_1 FOREIGN KEY (id) REFERENCES Student_setting_place_at_liu(id);
ALTER TABLE Study_place ADD CONSTRAINT fk_inheritance_2 FOREIGN KEY (id) REFERENCES Student_setting_place_at_liu(id);
ALTER TABLE Eat_place ADD CONSTRAINT fk_res_eat FOREIGN KEY (r_name) REFERENCES Resturant_at_Liu(name);
ALTER TABLE Study_place ADD CONSTRAINT fk_res_stu FOREIGN KEY (r_name) REFERENCES Resturant_at_Liu(name);

