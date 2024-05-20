-- product table

CREATE TABLE PRODUCT (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(50) NOT NULL,
    Price NUMBER(6,2) NOT NULL,
    CONSTRAINT check_price CHECK (Price >= 0)
);

-- customer table

CREATE TABLE CUSTOMER (
    Customer_id NUMBER PRIMARY KEY,
    First_name VARCHAR2(50) NOT NULL,
    Last_name VARCHAR2(50) NOT NULL,
    Address VARCHAR2(100),
    Tel VARCHAR2(20) UNIQUE
);

-- order table
CREATE TABLE ORDERS (
    Order_id NUMBER PRIMARY KEY,
    Order_date DATE DEFAULT SYSDATE,
    Customer_id NUMBER,
    CONSTRAINT fk_orders_customer FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id)
);


ALTER TABLE PRODUCT ADD Category VARCHAR2(20);
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
