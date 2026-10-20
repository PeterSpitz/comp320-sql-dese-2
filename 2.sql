SELECT a.name, b.per_pupil_expenditure FROM districts AS a
JOIN expenditures AS b ON a.id=b.district_id
ORDER BY b.per_pupil_expenditure DESC
LIMIT 10