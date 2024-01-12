CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,
                       username VARCHAR(50) NOT NULL,
                       email VARCHAR(100) UNIQUE,
                       birthdate DATE,
                       is_active BOOLEAN DEFAULT true
);

CREATE TABLE orders (
                        order_id SERIAL PRIMARY KEY,
                        user_id INT REFERENCES users(user_id),
                        order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE employee_projects (
                                   employee_id INT,
                                   project_id INT,
                                   role VARCHAR(50),
                                   PRIMARY KEY (employee_id, project_id)
);
CREATE TYPE gender AS ENUM ('Male', 'Female', 'Other');

CREATE TABLE personss (
                          personss_id SERIAL PRIMARY KEY,
                          name VARCHAR(50),
                          gender gender
);


CREATE TABLE documents (
                           document_id SERIAL PRIMARY KEY,
                           title VARCHAR(100),
                           content BYTEA
);

CREATE TABLE departments (
                             department_id SERIAL PRIMARY KEY,
                             name VARCHAR(100)
);

CREATE TABLE employees (
                           employee_id SERIAL PRIMARY KEY,
                           name VARCHAR(50),
                           department_id INT REFERENCES departments(department_id)
);



CREATE TABLE patientss (
                           patientss_id serial primary key,
                           name varchar(50)

);

CREATE TABLE hospital (
                          hospital_id SERIAL PRIMARY KEY,
                          address VARCHAR(50),
                          patientss_id INT REFERENCES patientss(patientss_id)
);