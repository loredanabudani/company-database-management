-- ===============================
-- COMPANY DATABASE PROJECT
-- ===============================

-- ===============================
-- CREATE TABLE STATEMENTS
-- ===============================
-- (këtu vendoset kodi CREATE TABLE që kemi ndërtuar më parë)

-- ===============================
-- INSERT SAMPLE DATA
-- ===============================
-- (këtu vendosen INSERT INTO ...)

-- ===============================
-- BASIC SELECT QUERIES
-- ===============================

-- Employees and their departments
SELECT p.emri, d.departemri
FROM Punonjes p
JOIN Departament d ON p.numri = d.numri;

-- Projects and their departments
SELECT pr.projektemri, d.departemri
FROM Projekt pr
JOIN Departament d ON pr.numri = d.numri;

-- Employees working on projects with hours
SELECT p.emri, pr.projektemri, pn.ore_pune
FROM Punon_Ne pn
JOIN Punonjes p ON pn.SSN = p.SSN
JOIN Projekt pr ON pn.projektnumri = pr.projektnumri;

-- ===============================
-- ADVANCED QUERIES
-- ===============================

-- Female employees working in departments located in Fier
SELECT p.emri
FROM Punonjes p
JOIN Departament_Lokacion dl ON p.numri = dl.numri
WHERE p.gjinia = 'F'
AND dl.departlokacion = 'Fier';

-- Employees working 21 hours per week
SELECT SSN
FROM Punon_Ne
WHERE ore_pune = 21;

-- Employees and projects with 11 working hours
SELECT projektnumri, SSN
FROM Punon_Ne
WHERE ore_pune = 11;
