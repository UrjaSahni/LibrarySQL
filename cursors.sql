5️⃣ fetch_issued_books_cursor
CREATE OR REPLACE PROCEDURE fetch_issued_books_cursor
IS
    CURSOR issued_books_cursor IS
        FROM issue i
        INNER JOIN Books b ON i.pkb = b.Auth_No
        INNER JOIN Readers r ON i.pkr = r.User_id;

6️⃣ fetch_staff_details_cursor
CREATE OR REPLACE PROCEDURE fetch_staff_details_cursor
IS
    CURSOR staff_cursor IS
        FROM Staff;
