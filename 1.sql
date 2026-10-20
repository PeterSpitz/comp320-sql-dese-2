SELECT a.name, b.pupils FROM districts AS a
JOIN expenditures AS b ON a.id=b.district_id
GROUP BY a.name
ORDER BY a.name ASC