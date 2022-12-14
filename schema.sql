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

CREATE TABLE books (
    id           INT GENERATED ALWAYS AS IDENTITY,
    publisher    VARCHAR(255),
    cover_sate   VARCHAR(255),
    publish_date DATE,
    archived     BOOLEAN,
    label_id     INT 
    PRIMARY KEY(id)
);

CREATE TABLE labels (
    id           INT GENERATED ALWAYS AS IDENTITY,
    title    VARCHAR(255),
    color   VARCHAR(255), 
    PRIMARY KEY(id)
);

ALTER TABLE books ADD FOREIGN KEY (label_id) REFERENCES labels(id) ON DELETE CASCADE;

CREATE INDEX index_label_id ON books (label_id);

CREATE TABLE authors (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
);

CREATE TABLE games (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    author_id int,
    multiplayer VARCHAR(100),
    last_played_at DATE,
    FOREIGN KEY(author_id) REFERENCES authors(id)
);
