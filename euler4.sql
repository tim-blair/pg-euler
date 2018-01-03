WITH RECURSIVE t(n) AS (
    VALUES (100)
    UNION ALL
    SELECT n+1 FROM t WHERE n < 999
)
SELECT max(prod) from (
	SELECT l.n as left, r.n as right, l.n * r.n as prod FROM t as l CROSS JOIN t as r
) as results
WHERE to_char(prod, 'FM999999') = reverse(to_char(prod, 'FM999999'));

