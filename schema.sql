CREATE DATABASE my_catalog;

CREATE TABLE Album(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN
);

CREATE TABLE Genre(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250)
);
