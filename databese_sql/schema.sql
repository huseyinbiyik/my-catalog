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
    author VARCHAR(255) NOT NULL,
    source VARCHAR(255) NOT NULL,
    label VARCHAR(255) NOT NULL,
    publish_date DATE NOT NULL,
    publisher VARCHAR(255) NOT NULL,
    cover VARCHAR(255) NOT NULL,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (author, source, label, publish_date) REFERENCES item (author, source, label, publish_date)
);
