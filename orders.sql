CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_price FLOAT,
    qty INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, qty)
    VALUES (1001, 'book', 12.50, 1),
           (1001, 'magazine', 5.00, 3),
           (2001, 'book', 21.75, 1),
           (2001, 'book', 17.80, 1),
           (2001, 'toy', 15.99, 2);

SELECT * FROM orders;

SELECT SUM(qty) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(product_price) FROM orders WHERE person_id = 2001;