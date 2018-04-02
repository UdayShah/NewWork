CREATE TABLE locations (
    id int NOT NULL,
    province VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    address1 VARCHAR(30) NOT NULL,
    address2 VARCHAR(30),
    building_num VARCHAR(7),
    apt_num VARCHAR(7),
    postal_code VARCHAR(7),
    PRIMARY KEY(id)
);

CREATE TABLE users (
    id int NOT NULL,
    first_name varchar(50),
    last_name varchar(50),
    password VARCHAR(25) NOT NULL,
    email VARCHAR(30) NOT NULL,
    location_id int,
    profile_pic VARCHAR(50),
    resume VARCHAR (50),
    user_type CHAR NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (location_id) REFERENCES location(id)
);

CREATE TABLE employers (
    id int NOT NULL,
    user_id int,
    approved boolean,
    PRIMARY KEY(employer_Id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE skills (
    id int NOT NULL,
    skill_name VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE skillsets (
    user_id int,
    skill_id int,
    skill_level int,
    FOREIGN KEY (user_Id) REFERENCES users(id),
    FOREIGN KEY (skill_Id) REFERENCES skills(id)
);

CREATE TABLE postings (
    posting_id int,
    employer_id int,
    location_Id int,
    job_name VARCHAR(20) NOT NULL,
    job_description VARCHAR(300) NOT NULL,
    num_of_pos int NOT NULL,
    PRIMARY KEY (posting_id),
    FOREIGN KEY (employer_Id) REFERENCES employer(id),
    FOREIGN KEY (location_Id) REFERENCES location(id)
);

CREATE TABLE required_kills (
    posting_id int,
    skill_id int,
    skill_level int,
    FOREIGN KEY (posting_id) REFERENCES job_posting(id),
    FOREIGN KEY (skill_Id) REFERENCES skills(id)
);

CREATE TABLE posting_response (
    user_id int,
    posting_id int,
    choice int,
    FOREIGN KEY (user_Id) REFERENCES users(id),
    FOREIGN (posting_id) REFERENCES job_posting(id)
);
