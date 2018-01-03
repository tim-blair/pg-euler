WITH RECURSIVE t(n) AS (
    VALUES (1)
    UNION ALL
    SELECT (n + 1) FROM t WHERE n < 999
)
SELECT sum(n) FROM t WHERE mod(n, 3) = 0 OR mod(n, 5) = 0;
