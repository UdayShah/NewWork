CREATE TABLE users (
    user_Id int NOT NULL AUTO_INCREMENT,
    location_Id int,
    employer_Id int,
    password VARCHAR NOT NULL (25),
    Resume VARCHAR (50),
    email VARCHAR NOT NULL(30),
    user_type CHAR NOT NULL,
    PRIMARY KEY (user_Id),
    FOREIGN KEY (location_Id) REFERENCES location(location_Id),
    FOREIGN KEY (employer_Id) REFERENCES employer(employer_Id)
);

CREATE TABLE skills (
    skill_Id int NOT NULL AUTO_INCREMENT,
    skill_name VARCHAR(15) NOT NULL
    PRIMARY KEY (skill_Id)
);

CREATE TABLE skillset (
    user_id int,
    skill_id int,
    skill_level int,
    FOREIGN KEY (user_Id) REFERENCES users(user_Id),
    FOREIGN KEY (skill_Id) REFERENCES skills(skill_Id)
);

CREATE TABLE job_posting (
    employer_id int,
    skill_id int,
    location_Id int,
    job_name VARCHAR(20) NOT NULL,
    job_description VARCHAR(300) NOT NULL,
    num_of_pos int NOT NULL,
    FOREIGN KEY (employer_Id) REFERENCES employer(employer_Id),
    FOREIGN KEY (skill_Id) REFERENCES skills(skill_Id),
    FOREIGN KEY (location_Id) REFERENCES location(location_Id)
);

CREATE TABLE employer (
    employer_Id int NOT NULL AUTO_INCREMENT,
    location_Id int,
    PRIMARY KEY(employer_Id)
    FOREIGN KEY (location_Id) REFERENCES location(location_Id)
);

CREATE TABLE location (
    location_Id int NOT NULL AUTO_INCREMENT,
    province VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    address1 VARCHAR(30) NOT NULL,
    address2 VARCHAR(30),
    building_num VARCHAR(7),
    postal_code VARCHAR(7),
    PRIMARY KEY(location_Id)
);
