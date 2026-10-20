SELECT c.name, b.per_pupil_expenditure, d.graduated FROM districts AS a
JOIN expenditures AS b ON a.id=b.district_id
JOIN schools AS c ON a.id=c.district_id
JOIN graduation_rates AS d ON d.school_id=c.id
ORDER BY b.per_pupil_expenditure DESC, c.name