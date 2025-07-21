CREATE OR REPLACE PROCEDURE insert_reader (
    p_user_id IN INT,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_address IN VARCHAR2
)
IS
    VALUES (p_user_id, p_first_name, p_last_name, p_email, p_address);
CREATE OR REPLACE PROCEDURE issue_book (
    p_issue_date IN DATE,
    p_due_date IN DATE,
    p_pkb IN INT,
    p_pkr IN INT
)
IS
    VALUES (p_issue_date, p_due_date, p_pkb, p_pkr);
CREATE OR REPLACE PROCEDURE update_staff_info (
    p_staff_id IN INT,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_no IN VARCHAR2,
    p_login_id IN INT
)
IS
    UPDATE Staff
    SET First_name = p_first_name,
        Last_name = p_last_name,
        Email = p_email,
        Phone_no = p_phone_no,
        Login_id = p_login_id
    WHERE Staff_id = p_staff_id;
CREATE OR REPLACE PROCEDURE generate_report (
    p_reg_id IN INT,
    p_user_id IN INT,
    p_book_no IN INT,
    p_issue_date IN DATE,
    p_staff_id IN INT
)
IS
    VALUES (p_reg_id, p_user_id, p_book_no, p_issue_date, p_staff_id);
CREATE OR REPLACE PROCEDURE fetch_issued_books_cursor
IS
    CURSOR issued_books_cursor IS
        FROM issue i
        INNER JOIN Books b ON i.pkb = b.Auth_No
        INNER JOIN Readers r ON i.pkr = r.User_id;
CREATE OR REPLACE PROCEDURE fetch_staff_details_cursor
IS
    CURSOR staff_cursor IS
        FROM Staff;