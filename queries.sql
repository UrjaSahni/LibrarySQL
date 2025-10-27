-- 📘 View all records from the main tables
SELECT * FROM Readers;                -- Displays all library readers
SELECT * FROM Phone_number;           -- Displays readers’ contact numbers
SELECT * FROM Authentication_System;  -- Displays login credentials or user access info
SELECT * FROM Staff;                  -- Displays staff members managing the library
SELECT * FROM Track;                  -- Tracks book movements or transactions
SELECT * FROM Publisher;              -- Displays publisher information
SELECT * FROM Books;                  -- Displays all book details
SELECT * FROM Issue;                  -- Displays issue and return records of books
SELECT * FROM Report;                 -- Displays generated reports or analytics

---------------------------------------------------
-- 🎯 Useful Queries and Reports
---------------------------------------------------

-- 1️⃣ View unique readers with their contact details
SELECT DISTINCT R.First_name, R.Last_name, R.Email
FROM Readers R;

-- 2️⃣ Count how many books each reader has issued
SELECT R.User_id, R.First_name, R.Last_name, COUNT(I.pkb) AS Num_of_Books_Issued
FROM Readers R
JOIN Issue I ON R.User_id = I.pkr   -- pkr = foreign key linking Reader to Issue
GROUP BY R.User_id, R.First_name, R.Last_name;

-- 3️⃣ Display book titles with their issue, due, and return dates
SELECT B.Title, I.issue_date, I.due_date, I.return_date
FROM Books B
JOIN Issue I ON B.Book_id = I.pkb;

-- 4️⃣ List books and their due dates (for pending returns)
SELECT B.Title, I.due_date
FROM Books B
JOIN Issue I ON B.Book_id = I.pkb
WHERE I.return_date IS NULL;  -- Optional filter for books not yet returned

-- 5️⃣ List all unique readers who have borrowed at least one book
SELECT DISTINCT R.First_name, R.Last_name
FROM Readers R
JOIN Issue I ON R.User_id = I.pkr;

-- 6️⃣ Show which reader borrowed which book
SELECT R.First_name, R.Last_name, B.Title
FROM Readers R
JOIN Issue I ON R.User_id = I.pkr
JOIN Books B ON B.Book_id = I.pkb;

-- 7️⃣ Show how many books each staff member has issued
SELECT S.First_name, S.Last_name, COUNT(I.pkb) AS Num_of_Books_Issued
FROM Staff S
JOIN Issue I ON S.Staff_id = I.staff_id
GROUP BY S.First_name, S.Last_name;

-- 8️⃣ Show number of books issued by category
SELECT B.Category, COUNT(I.pkb) AS Num_of_Books_Issued
FROM Books B
JOIN Issue I ON B.Book_id = I.pkb
GROUP BY B.Category;

-- 9️⃣ Get average book price per publisher
SELECT P.Name AS Publisher_Name, AVG(B.Price) AS Average_Price
FROM Publisher P
JOIN Books B ON P.Publisher_id = B.Publisher_id
GROUP BY P.Name;

---------------------------------------------------
-- ⚙️ Stored Procedure / Cursor Example (if applicable)
---------------------------------------------------

-- Example of selecting a book title into a variable (inside procedure)
SELECT Title INTO v_title
FROM Books
WHERE Book_id = @book_id;   -- Example variable use

-- Example of detailed issue report (inside a procedure)
SELECT I.issue_date, I.due_date, I.return_date, 
       B.Auth_No, B.Title, 
       R.User_id, R.First_name, R.Last_name
FROM Issue I
JOIN Books B ON B.Book_id = I.pkb
JOIN Readers R ON R.User_id = I.pkr;

-- Show staff contact details
SELECT Staff_id, First_name, Last_name, Email, Phone_no
FROM Staff;
