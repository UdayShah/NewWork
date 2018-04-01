CREATE TABLE location (
    location_Id int NOT NULL,
    province VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    address1 VARCHAR(30) NOT NULL,
    address2 VARCHAR(30),
    building_num VARCHAR(7),
    apt_num VARCHAR(7),
    postal_code VARCHAR(7),
    PRIMARY KEY(location_Id)
);

CREATE TABLE users (
    user_Id int NOT NULL,
    first_name varchar(50),
    last_name varchar(50),
    password VARCHAR(25) NOT NULL,
    email VARCHAR(30) NOT NULL,
    location_Id int,
    profile_pic VARCHAR(50),
    resume VARCHAR (50),
    user_type CHAR NOT NULL,
    PRIMARY KEY (user_Id),
    FOREIGN KEY (location_Id) REFERENCES location(location_Id)
);

CREATE TABLE employer (
    employer_Id int NOT NULL,
    user_id int,
    approved boolean,
    PRIMARY KEY(employer_Id),
    FOREIGN KEY (user_id) REFERENCES users(user_Id)
);

CREATE TABLE skills (
    skill_Id int NOT NULL,
    skill_name VARCHAR(15) NOT NULL,
    PRIMARY KEY (skill_Id)
);

CREATE TABLE skillset (
    user_id int,
    skill_id int,
    skill_level int,
    FOREIGN KEY (user_Id) REFERENCES users(user_Id),
    FOREIGN KEY (skill_Id) REFERENCES skills(skill_Id)
);

CREATE TABLE postings (
    posting_id int,
    employer_id int,
    location_Id int,
    job_name VARCHAR(20) NOT NULL,
    job_description VARCHAR(300) NOT NULL,
    num_of_pos int NOT NULL,
    PRIMARY KEY (posting_id),
    FOREIGN KEY (employer_Id) REFERENCES employer(employer_Id),
    FOREIGN KEY (location_Id) REFERENCES location(location_Id)
);

CREATE TABLE requiredSkills (
    posting_id int,
    skill_id int,
    skill_level int,
    FOREIGN KEY (posting_id) REFERENCES job_posting(posting_id),
    FOREIGN KEY (skill_Id) REFERENCES skills(skill_Id)
);

CREATE TABLE posting_response (
    user_id int,
    posting_id int,
    choice int,
    FOREIGN KEY (user_Id) REFERENCES users(user_Id),
    FOREIGN (posting_id) REFERENCES job_posting(posting_id)
);
