WITH RECURSIVE t(n) AS (
    VALUES (200)
    UNION ALL
    SELECT n+1 FROM t WHERE n < 400
)
SELECT a, b, c, a*b*c as prod from (
	SELECT low.n as a, high.n as b, sqrt((low.n*low.n) + (high.n*high.n)) as c FROM t as low CROSS JOIN t as high WHERE low.n < high.n
) as results
WHERE a + b + c = 1000;

