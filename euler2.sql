WITH RECURSIVE t(n, prev) AS (
    VALUES (1, 0)
    UNION ALL
    SELECT (n + prev), n FROM t WHERE n + prev < 4000000
)
SELECT sum(n) FROM t WHERE mod(n, 2) = 0;
