-- =====================================================
-- FILE: 01_create_tables.sql
-- PURPOSE: Create pharmacy database tables
-- =====================================================

-- Customers table
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    region VARCHAR2(50)
);

-- Branches table
CREATE TABLE branches (
    branch_id NUMBER PRIMARY KEY,
    branch_name VARCHAR2(100),
    region VARCHAR2(50)
);

-- Medicines table
CREATE TABLE medicines (
    medicine_id NUMBER PRIMARY KEY,
    medicine_name VARCHAR2(100),
    category VARCHAR2(50),
    unit_price NUMBER
);

-- Sales transactions table
CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    branch_id NUMBER,
    medicine_id NUMBER,
    sale_date DATE,
    quantity NUMBER,
    total_amount NUMBER,

    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_branch FOREIGN KEY (branch_id) REFERENCES branches(branch_id),
    CONSTRAINT fk_medicine FOREIGN KEY (medicine_id) REFERENCES medicines(medicine_id)
);
