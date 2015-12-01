CREATE DATABASE chicago_recs;
\c chicago_recs;
CREATE TABLE class_recs (id SERIAL PRIMARY KEY, contributor TEXT, place TEXT, notes TEXT, typeOfPlace TEXT);
