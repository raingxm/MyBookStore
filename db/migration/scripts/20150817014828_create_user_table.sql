-- // create user table
-- Migration SQL that makes the change goes here.

CREATE TABLE USER (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(255) NOT NULL UNIQUE,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE USER;

