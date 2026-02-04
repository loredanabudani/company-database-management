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



-- CREATE TABLE statements
-- (këtu vjen kodi i tabelave)

-- INSERT sample data
-- (këtu vjen INSERT)

-- SELECT queries
SELECT p.emri, d.departemri
FROM Punonjes p
JOIN Departament d ON p.numri = d.numri;

SELECT pr.projektemri, d.departemri
FROM Projekt pr
JOIN Departament d ON pr.numri = d.numri;

SELECT p.emri, pr.projektemri, pn.ore_pune
FROM Punon_Ne pn
JOIN Punonjes p ON pn.SSN = p.SSN
JOIN Projekt pr ON pn.projektnumri = pr.projektnumri;
