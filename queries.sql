select * from Readers;
select * from Phone_number;
select * from Authentication_System;
select * from Staff;
select * from Track;
select * from Publisher;
select * from Books;
select * from Issue;
select * from  Report;
SELECT distinct R.First_name, R.Last_name, R.Email
SELECT R.User_id, R.First_name, R.Last_name, COUNT(I.pkb) AS Num_of_Books_Issued
SELECT B.Title, I.issue_date, I.due_date, I.return_date
SELECT
SELECT B.Title, I.due_date
SELECT distinct R.First_name, R.Last_name
SELECT R.First_name, R.Last_name, B.Title
SELECT S.First_name, S.Last_name, COUNT(I.pkb) AS Num_of_Books_Issued
SELECT B.Category, COUNT(I.pkb) AS Num_of_Books_Issued
SELECT R.First_name, R.Last_name
SELECT B.Title
SELECT P.Name, AVG(B.Price) AS Average_Price
SELECT R.First_name, R.Last_name
SELECT B.Title
SELECT Title
    SELECT Title INTO v_title
        SELECT i.issue_date, i.due_date, i.return_date, b.Auth_No, b.Title, r.User_id, r.First_name, r.Last_name
        SELECT Staff_id, First_name, Last_name, Email, Phone_no