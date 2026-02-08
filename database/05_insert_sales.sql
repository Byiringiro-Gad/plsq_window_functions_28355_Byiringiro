-- =====================================================
-- FILE: 05_insert_sales.sql
-- PURPOSE: Insert sales transactions
-- =====================================================

INSERT INTO sales VALUES (1, 1, 1, 101, DATE '2024-01-10', 10, 5000);
INSERT INTO sales VALUES (2, 2, 1, 102, DATE '2024-01-15', 5, 6000);
INSERT INTO sales VALUES (3, 3, 2, 103, DATE '2024-02-05', 8, 6400);
INSERT INTO sales VALUES (4, 4, 3, 104, DATE '2024-02-20', 4, 6000);
INSERT INTO sales VALUES (5, 5, 4, 105, DATE '2024-03-12', 2, 14000);
INSERT INTO sales VALUES (6, 6, 2, 106, DATE '2024-03-18', 6, 5400);
INSERT INTO sales VALUES (7, 7, 1, 107, DATE '2024-04-08', 12, 7200);
INSERT INTO sales VALUES (8, 8, 3, 108, DATE '2024-04-25', 7, 7000);
INSERT INTO sales VALUES (9, 9, 4, 101, DATE '2024-05-14', 15, 7500);
INSERT INTO sales VALUES (10, 10, 1, 102, DATE '2024-05-30', 6, 7200);
INSERT INTO sales VALUES (11, 1, 1, 103, DATE '2024-06-10', 9, 7200);
INSERT INTO sales VALUES (12, 2, 2, 104, DATE '2024-06-22', 5, 7500);

COMMIT;
