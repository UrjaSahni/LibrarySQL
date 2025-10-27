# 📚 Library Management System – SQL Project

## 📌 Overview
This project is a relational database system for a library, designed using SQL. It covers key aspects such as:
- Reader and Staff management
- Book inventory tracking
- Issuing and returning books
- Reporting and analytics

This system uses SQL DDL, DML, queries, procedures, functions, triggers, and cursors to ensure a fully functional backend for library operations.

---

## 🏗️ Database Schema

The project defines the following core tables:

| Table Name            | Purpose                                  |
|-----------------------|------------------------------------------|
| `Readers`             | Stores information about library members |
| `Phone_number`        | Stores multiple contact numbers          |
| `Authentication_system` | Stores login credentials for staff     |
| `Staff`               | Details of staff handling library tasks  |
| `Track`               | Mapping between staff and readers        |
| `Publisher`           | Information about book publishers        |
| `Books`               | Book details including price, edition    |
| `Issue`               | Book issue/return tracking               |
| `Report`              | Log of issued books for audit/reporting  |

---

## 🧾 Features Implemented

### 🔄 Data Manipulation (DML)
- Insertion of sample data for Readers, Staff, Books, and Issues
- Populating linked records with `FOREIGN KEY` constraints

### 🧮 SQL Queries
- List of readers who have issued books
- Book issuance count per reader
- Current issued books with due/return dates
- Total books issued vs returned
- Staff-wise and category-wise analytics
- Readers with multiple issued books
- Filter by publisher, name pattern, and address
- Average book price per publisher

### ⚙️ Procedures
- `insert_reader`: Adds a new reader
- `issue_book`: Issues a book to a reader
- `update_staff_info`: Updates staff details
- `generate_report`: Logs a book issue in the report

### 🧠 Functions
- `get_book_title`: Fetches book title by book ID
- `calculate_late_fee`: Computes late fee based on return date

### ⚡ Triggers
- `book_issuance_trigger`: Logs issuance automatically in `Report`
- `book_return_trigger`: Automatically sets return date on update

### 🔁 Cursors
- `fetch_issued_books_cursor`: Displays all issued book details
- `fetch_staff_details_cursor`: Lists all staff member data

---

## ▶️ Sample PL/SQL Calls

```sql
-- Insert a new reader
BEGIN
    insert_reader(100, 'John', 'Doe', 'john@example.com', '123 Main Street');
END;

-- Issue a book
BEGIN
    issue_book(SYSDATE, SYSDATE + 7, 23, 1);
END;

-- Update staff info
BEGIN
    update_staff_info(188, 'Jane', 'Smith', 'jane@example.com', '555-1234', 123);
END;

-- Generate report
BEGIN
    generate_report(10, 1, 24, SYSDATE, 1);
END;
```

---

## 🛠️ Technologies Used

- **SQL (Oracle syntax)**
- PL/SQL (for procedures, functions, triggers)
- **ER Model Concepts** for relational design

---

## 📈 Future Enhancements

- Add login authentication via stored procedures
- Auto-renewal or fine notifications via triggers
- Integration with front-end for real-time management

---

## 🙌 Contributors

- **Urja Sahni** – Database design, SQL scripting, testing

---

## 📂 SQL File Structure

| File Name         | Description                                         |
|-------------------|-----------------------------------------------------|
| `create_tables.sql` | Contains all table creation statements (DDL)     |
| `insert_data.sql`   | Sample data insertions into all tables (DML)     |
| `procedures.sql`    | Stored procedures for reusable operations        |
| `functions.sql`     | User-defined functions including late fee calc   |
| `triggers.sql`      | Triggers to automate logging and return actions  |
| `cursors.sql`       | Cursor-based procedures for bulk output          |
| `pl_calls.sql`      | Sample anonymous PL/SQL blocks to run features   |

Use this modular structure to understand, modify, or deploy each component of the system easily.
