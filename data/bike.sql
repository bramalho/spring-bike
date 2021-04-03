CREATE TABLE
    bike
    (
        id BIGINT NOT NULL,
        email VARCHAR,
        model VARCHAR,
        name VARCHAR,
        phone VARCHAR,
        purchase_date DATETIME,
        purchase_price NUMERIC,
        serial_number VARCHAR,
        contact BOOLEAN NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    hibernate_sequence(
        next_val BIGINT
    );

INSERT INTO bike (id, email, model, name, phone, purchase_date, purchase_price, serial_number, contact)
  VALUES (1, 'bike1@bikes.com', 'My Bike One', 'Bike One', '123 123 123', 1609455600, '1000', '11111', 1);
INSERT INTO bike (id, email, model, name, phone, purchase_date, purchase_price, serial_number, contact)
  VALUES (2, 'bike2@bikes.com', 'My Bike Two', 'Bike Two', '123 123 123', 1612134000, '2000', '22222', 0);
INSERT INTO bike (id, email, model, name, phone, purchase_date, purchase_price, serial_number, contact)
  VALUES (3, 'bike3@bikes.com', 'My Bike Three', 'Bike Three', '123 123 123', 1614553200, '3000', '33333', 1);

INSERT INTO hibernate_sequence (next_val) VALUES (4);
