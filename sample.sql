-- sample_data.sql
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(100),
    amount DECIMAL,
    sale_date DATE
);

INSERT INTO sales (product, amount, sale_date) VALUES
('Laptop', 1200, '2023-05-01'),
('Monitor', 300, '2023-05-10'),
('Keyboard', 80, '2023-06-01');
