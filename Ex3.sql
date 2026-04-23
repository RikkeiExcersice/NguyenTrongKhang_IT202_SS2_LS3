create table customers (
	customer_id INT primary key,
    fullname varchar(100) not null,
    email varchar(100) not null ,
    age int check (age > 0 and age < 150)
);
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(12,2) NOT NULL,
    customer_id INT NOT NULL,

    CONSTRAINT fk_orders_customers
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);