# 🏥 Day 1: SQL Coding Challenge – Hospital Database

---

## 📝 Question 1: CREATE Table

### 📌 Scenario

Create a table named `Patients` with the following fields:

- `PatientID`
- `PatientName`
- `Age`
- `Gender`
- `AdmissionDate`

### ✅ Expected Output

A new table named `Patients` is created successfully.

---
## 📝 Question 2: ALTER – Add Column

### 📌 Scenario

Add a new column `DoctorAssigned VARCHAR(50)` to the `Patients` table.

### ✅ Expected Output

The `Patients` table now has an additional column named `DoctorAssigned`.

---

## 📝 Question 3: ALTER – Modify Column

### 📌 Scenario

Increase the length of `PatientName` from `VARCHAR(50)` to `VARCHAR(100)`.

### ✅ Expected Output

The `PatientName` column now allows up to 100 characters.

---

## 📝 Question 4: RENAME Table

### 📌 Scenario

Rename the table `Patients` to `Patient_Info`.

### ✅ Expected Output

The table name is successfully changed to `Patient_Info`.

---

## 📝 Question 5: TRUNCATE vs DROP

### 📌 Scenario

At year-end:

1. Delete all patient records but keep the table.
2. Later, remove the table permanently.

### ✅ Expected Output

- **TRUNCATE** keeps the table structure but clears all data.
- **DROP** removes the table completely.

---

## 🧠 SQL Concepts Covered

- `CREATE TABLE`
- `ALTER TABLE`
- `ADD COLUMN`
- `MODIFY COLUMN`
- `RENAME TABLE`
- `TRUNCATE TABLE`
- `DROP TABLE`

---

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL

---

