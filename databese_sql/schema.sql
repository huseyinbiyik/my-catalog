/* Database schema to keep the structure of entire database. */

CREATE DATABASE my_catalog;

CREATE TABLE label (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL
);

CREATE TABLE genre (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,
);

CREATE TABLE source (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,
);

CREATE TABLE item (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    author_id INTEGER NOT NULL,
    source_id INTEGER NOT NULL,
    label_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    publish_date DATE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author (id)
    FOREIGN KEY (source_id) REFERENCES source (id)
    FOREIGN KEY (label_id) REFERENCES label (id)
    FOREIGN KEY (genre_id) REFERENCES genre (id)
)

CREATE TABLE book (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publisher VARCHAR(255) NOT NULL,
    cover_state VARCHAR(255) NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item (id)
);

CREATE TABLE music_album (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    on_spotify BOOLEAN,
    item_id INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item (id)
);