CREATE OR REPLACE TRIGGER book_issuance_trigger
AFTER INSERT ON issue
FOR EACH ROW
    VALUES (:NEW.pkb, :NEW.pkr, :NEW.pkb, :NEW.issue_date, (SELECT Staff_id FROM track WHERE User_id = :NEW.pkr));
CREATE OR REPLACE TRIGGER book_return_trigger
BEFORE UPDATE OF return_date ON issue
FOR EACH ROW
    IF :NEW.return_date IS NOT NULL THEN
        :NEW.return_date := SYSDATE;