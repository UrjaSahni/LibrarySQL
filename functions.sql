1️⃣ Function: get_book_title
CREATE OR REPLACE FUNCTION get_book_title (
    p_auth_no IN INT
)
RETURN VARCHAR2
IS
    v_title VARCHAR2(100);

2️⃣ Function: calculate_late_fee
CREATE OR REPLACE FUNCTION calculate_late_fee (
    p_due_date IN DATE,
    p_return_date IN DATE
)
RETURN NUMBER
IS
    v_late_fee NUMBER;
