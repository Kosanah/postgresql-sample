-- PostgreSQL sample: table, index, and a parameterized query pattern.
CREATE TABLE orders (id SERIAL PRIMARY KEY, customer TEXT NOT NULL, total NUMERIC(10,2) NOT NULL, paid BOOLEAN NOT NULL DEFAULT FALSE);
CREATE INDEX ix_orders_customer ON orders (customer);
-- SELECT id, customer, total FROM orders WHERE paid = $1;
