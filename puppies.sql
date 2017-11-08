DROP DATABASE IF EXISTS puppies;
        CREATE DATABASE puppies;

\c puppies;

CREATE TABLE pups (
          ID SERIAL PRIMARY KEY,
        name VARCHAR,
    breed_ID VARCHAR,
         age INTEGER,
         sex VARCHAR
);

CREATE TABLE breeds (
    breed_ID SERIAL PRIMARY KEY,
  breed_name VARCHAR
);

INSERT INTO pups (name, breed_ID, age, sex)
     VALUES ('Tyler', 'Retriever', 3, 'M');

INSERT INTO breeds (breed_name)
     VALUES ('Mutt'),
            ('Shih-tzu'),
            ('Pit Bull'),
            ('Retriever'),
            ('annoying')
;
