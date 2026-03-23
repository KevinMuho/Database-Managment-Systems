# Student Management System Database

A university-focused **Student Management System** built in **MySQL** for a Database Management Systems course project.  
The repository currently includes a MySQL dump file for the database and a project report document. :contentReference[oaicite:0]{index=0}

## Overview

This project models a student information system that stores and manages:

- student personal data
- course information
- enrollments
- grades
- semester records
- class schedules

The goal is to demonstrate how a properly designed relational database can reduce redundancy, improve data integrity, and support useful academic and managerial queries. :contentReference[oaicite:1]{index=1}

## Features

- Relational database design for student management
- Primary key and foreign key constraints for integrity
- Course enrollment tracking by semester
- Grade storage linked to enrollments
- Schedule management by classroom, day, and time
- Sample data included for testing and query practice :contentReference[oaicite:2]{index=2}

## Database Schema

The database is centered around these main tables:

- `student` – stores student personal and academic details
- `course` – stores course and department/program information
- `semester` – defines semester periods
- `enrollment` – links students, courses, and semesters
- `grade` – stores grade/evaluation data for enrollments
- `schedule` – stores course timetable details
- `chooses` – maps students to selected courses :contentReference[oaicite:3]{index=3}

## Normalization

According to the project report, the design was improved through normalization:

- **1NF** considerations for the `grade` relation
- **3NF** improvements for the `course` relation by separating program/department-related dependencies

This was done to reduce redundancy and improve consistency in the schema. :contentReference[oaicite:4]{index=4}

## Technologies Used

- **MySQL Server**
- **MySQL Workbench**
- SQL DDL/DML for schema creation and sample data insertion :contentReference[oaicite:5]{index=5}

## Repository Contents

- `student_management.sql` – MySQL dump containing schema and sample records
- `DBMS PROJECT.docx` – project documentation/report :contentReference[oaicite:6]{index=6}

## How to Run

1. Create a new MySQL database.
2. Import the `student_management.sql` file.
3. Open MySQL Workbench or your preferred SQL client.
4. Run queries on the imported schema.

Example:

```sql
CREATE DATABASE student_management;
USE student_management;
SOURCE student_management.sql;
