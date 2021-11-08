CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER NOT NULL,
    height FLOAT, 
    city VARCHAR(100),
    favorite_color VARCHAR(40)

);

INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Harry Potter', 11, 125.27, 'Godrics Hallow', 'orange'),
           ('Hermoine Granger', 12, 152.4, 'Riverdale', 'blue'),
           ('Ron Weasley', 11, 158.5, 'Devon', 'red'),
           ('Draco Malfoy', 12, 125.58, 'Wiltshire', 'green'),
           ('Tom Riddle', 44, 198.12, 'Edinborough', 'purple');

SELECT * FROM person
    ORDER BY height DESC;

SELECT * FROM person
    ORDER BY height ASC;

SELECT * FROM person
    ORDER BY age DESC;

SELECT * FROM person
    WHERE age > 20;

SELECT * FROM person
    WHERE age = 18;

SELECT * FROM person
    WHERE age < 20 OR age >30;

SELECT * FROM person
    WHERE age != 27;

SELECT * FROM person
    WHERE favorite_color != 'red';

SELECT * FROM person
    WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
    WHERE favorite_color = 'orange' OR 'green';

SELECT * FROM person
    WHERE favorite_color IN ('orange','green','blue');

SELECT * FROM person
    WHERE favorite_color IN ('yellow','purple');
