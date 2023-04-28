
CREATE TABLE student (
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    surname    VARCHAR(255) NOT NULL,
    n_group    INTEGER NOT NULL,
    city       VARCHAR(3000),
    birth_date DATE,
    email      VARCHAR(255) UNIQUE
);

ALTER TABLE student ADD COLUMN IF NOT EXISTS score NUMERIC(3,2);


CREATE TABLE hobby (
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    risk  INTEGER NOT NULL CHECK (risk >= 1 AND risk <=10)
);

CREATE TABLE student_hobby (
    id          SERIAL PRIMARY KEY,
    student_id  INTEGER NOT NULL REFERENCES student(id),
    hobby_id    INTEGER NOT NULL REFERENCES hobby(id),
    start_date  DATE NOT NULL,
    finish_date DATE
);
