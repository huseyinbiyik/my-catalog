/* Database schema to keep the structure of entire database. */

CREATE DATABASE my_catalog;

CREATE TABLE item (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    author VARCHAR(255) NOT NULL,
    source VARCHAR(255) NOT NULL,
    label VARCHAR(255) NOT NULL,
    publish_date DATE NOT NULL,
)

CREATE TABLE book (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publisher VARCHAR(255) NOT NULL,
    cover_state VARCHAR(255) NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item (id)
);

CREATE TABLE label (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL
    item_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item (id)
);