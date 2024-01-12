CREATE TABLE person(
                       id serial primary key ,
                       last_name varchar(65),
                       ferst_name varchar(65)
);

CREATE TABLE wumen(
                      id serial primary key ,
                      last_name varchar(65),
                      first_name varchar(65)
);

CREATE TABLE mans(
                     id serial primary key ,
                     last_name varchar(65),
                     first_name varchar(65)
);

CREATE TABLE animals(
                        id serial primary key ,
                        Parody varchar (65),
                        ege integer
);

CREATE TABLE universutii(
                            adres varchar(65),
                            profeshnal varchar(65)

);

ALTER TABLE person
    ADD COLUMN wumen_id INT,
    ADD COLUMN mans_id INT,
    ADD FOREIGN KEY (wumen_id) REFERENCES wumen(id),
    ADD FOREIGN KEY (mans_id) REFERENCES mans(id);



CREATE TABLE shop(
                     id serial primary key ,
                     prise  integer,
                     produkt varchar(65)

);
CREATE TABLE library(
                        id serial primary key ,
                        prise integer ,
                        books varchar(65)

);
CREATE TABLE school (
                        id serial primary key ,
                        adres varchar(65),
                        groups integer
);
ALTER TABLE school
    ADD COLUMN library_id INT,

    ADD FOREIGN KEY (library_id) REFERENCES wumen(id);




CREATE TABLE peaksoft(
                         id serial primary key ,
                         groups varchar(65)
);

CREATE TABLE Course (
                        course_id INT PRIMARY KEY,
                        title VARCHAR(50)
);
ALTER TABLE peaksoft
    ADD COLUMN course_id INT,

    ADD FOREIGN KEY (course_id) REFERENCES wumen(id);


INSERT INTO Course (course_id, title) VALUES
                                          (2, 'Advanced Database Design'),
                                          (3, 'Web Development Basics'),
                                          (4, 'Data Analysis with SQL');

INSERT INTO peaksoft(id,groups) VALUES
                                    (1,'JAVA'),
                                    (2,('JS'),
                                     (3,'DEVOLOP'));