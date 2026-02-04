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

