BEGIN
END insert_reader;
BEGIN
END issue_book;
BEGIN
END update_staff_info;
BEGIN
END generate_report;
BEGIN
    FROM Books
    WHERE Auth_No = p_auth_no;
BEGIN
    v_late_fee := CASE
                      WHEN p_return_date > p_due_date THEN 
                          (p_return_date - p_due_date) * 0.1  -- Example calculation for late fee
                      ELSE 
                          0
                  END;
BEGIN
END;
BEGIN
    END IF;
BEGIN
    FOR issued_book IN issued_books_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Issue Date: ' || issued_book.issue_date || ', Due Date: ' || issued_book.due_date || ', Return Date: ' || issued_book.return_date || ', Auth_No: ' || issued_book.Auth_No || ', Title: ' || issued_book.Title || ', User ID: ' || issued_book.User_id || ', First Name: ' || issued_book.First_name || ', Last Name: ' || issued_book.Last_name);
BEGIN
    FOR staff_rec IN staff_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Staff ID: ' || staff_rec.Staff_id || ', First Name: ' || staff_rec.First_name || ', Last Name: ' || staff_rec.Last_name || ', Email: ' || staff_rec.Email || ', Phone Number: ' || staff_rec.Phone_no);
BEGIN
    insert_reader(100, 'John', 'Doe', 'john@example.com', '123 Main Street');
BEGIN
    issue_book(SYSDATE, SYSDATE + 7, 23, 1);
BEGIN
    update_staff_info(188, 'Jane', 'Smith', 'jane@example.com', '555-1234', 123);
BEGIN
    generate_report(10, 1, 24, SYSDATE, 1);
DECLARE
    book_title VARCHAR2(100);
BEGIN
    book_title := get_book_title(10);
DECLARE
    late_fee NUMBER;
BEGIN
    late_fee := calculate_late_fee(SYSDATE, SYSDATE + 5);
BEGIN
    fetch_issued_books_cursor;
BEGIN
    fetch_staff_details_cursor;