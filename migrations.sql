CREATE DATABASE todo_list;
\c todo_list;

CREATE TABLE todos (id SERIAL PRIMARY KEY, task VARCHAR(255), complete BOOLEAN, due_date TIMESTAMP);
