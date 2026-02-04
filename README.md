# Company Database Management System

## Overview
This academic project presents the design and implementation of a relational database
system for a private company. The system is built using MySQL and models real-world
organizational data such as employees, departments, projects, and dependents.

The database was fully implemented and tested locally using XAMPP and phpMyAdmin.

---

## Technologies
- MySQL
- SQL
- XAMPP
- phpMyAdmin
- ERDPlus

---

## Database Design
The database consists of the following main entities:
- **Employees**
- **Departments**
- **Projects**
- **Dependents**

### Relationships
- One-to-many relationship between **Departments** and **Employees**
- Many-to-many relationship between **Employees** and **Projects**
- One-to-many relationship between **Employees** and **Dependents**
- Department management relationship (manager assignment)

Primary and foreign keys are implemented to ensure data integrity.

---

## ER Diagram
The ER diagram below represents the conceptual design of the database,
including entities, attributes, and relationships.

![ER Diagram](diagrams/er-diagram.png)

---

## Features
- ER diagram and relational schema design
- SQL scripts for creating tables with primary and foreign keys
- Sample data insertion
- SQL queries using `JOIN` and `WHERE` clauses
- Advanced queries based on real business requirements
- Fully implemented and tested MySQL database

---

## Project Structure
```text
company-database-management/
├── sql/
│   └── queries.sql
├── diagrams/
│   └── er-diagram.png
├── screenshots/
│   ├── database-structure.png
│   ├── select-join.png
│   └── advanced-query.png
└── README.md
