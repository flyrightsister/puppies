DROP DATABASE IF EXISTS puppies;
        CREATE DATABASE puppies;

\c puppies;

CREATE TABLE breeds (
    breed_ID SERIAL PRIMARY KEY,
  breed_name VARCHAR
);

CREATE TABLE pups (
          ID SERIAL PRIMARY KEY,
        name VARCHAR,
    breed_ID INTEGER REFERENCES breeds,
         age INTEGER,
         sex VARCHAR
);

INSERT INTO breeds (breed_name)
     VALUES ('Mutt'),
            ('Shih-tzu'),
            ('Pit Bull'),
            ('Retriever'),
            ('annoying')
;

INSERT INTO pups (name, breed_ID, age, sex)
     VALUES ('Tyler', 4, 3, 'M');
