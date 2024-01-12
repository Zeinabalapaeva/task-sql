Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (16.1)
WARNING: Console code page (866) differs from Windows code page (1251)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# CREATE TABLE categories (
                                              postgres(#     category_id SERIAL PRIMARY KEY,
                                                  postgres(#     category_name VARCHAR(100)
                                                  postgres(# );
CREATE TABLE
    postgres=# CREATE TABLE products (
                                         postgres(#     product_id SERIAL PRIMARY KEY,
                                         postgres(#     product_name VARCHAR(200),
    postgres(#     category_id INT REFERENCES categories(category_id),
    postgres(#     UNIQUE (product_id, category_id)
    postgres(# );
    CREATE TABLE
    postgres=# CREATE TABLE departments (
                                            postgres(#     department_id SERIAL PRIMARY KEY,
                                            postgres(#     department_name VARCHAR(100)
    postgres(# );
    ОШИБКА:  отношение "departments" уже существует
    postgres=#
    postgres=# CREATE TABLE movies (
                                       postgres(#     movie_id SERIAL PRIMARY KEY,
                                       postgres(#     title VARCHAR(200),
    postgres(#     release_year INT,
             postgres(#     cast JSON
             postgres(# );
    ОШИБКА:  ошибка синтаксиса (примерное положение: "cast")
    LINE 5:     cast JSON
    ^
    postgres=# CREATE TABLE movies (
                                       postgres(#     movie_id SERIAL PRIMARY KEY,
                                       postgres(#     title VARCHAR(200),
    postgres(#     release_year INT
             postgres(#
             postgres(# );
    CREATE TABLE
    postgres=# CREATE TABLE actors (
                                       postgres(#     actor_id SERIAL PRIMARY KEY,
                                       postgres(#     actor_name VARCHAR(100)
    postgres(# );
    CREATE TABLE
    postgres=#
    postgres=# CREATE TYPE event_type AS ENUM ('Meeting', 'Conference', 'Workshop');
    CREATE TYPE
    postgres=#
    postgres=# CREATE TABLE events (
                                       postgres(#     event_id SERIAL PRIMARY KEY,
                                       postgres(#     event_name VARCHAR(200),
    postgres(#     event_type event_type
             postgres(# );
    CREATE TABLE
        postgres=#