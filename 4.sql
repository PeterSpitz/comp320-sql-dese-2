SELECT a.name, b.per_pupil_expenditure, c.exemplary FROM districts AS a
JOIN expenditures AS b ON a.id=b.district_id
JOIN staff_evaluations AS c ON a.id=c.district_id
WHERE b.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures)
AND c.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY c.exemplary DESC, b.per_pupil_expenditure DESC