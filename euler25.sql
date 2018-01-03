WITH RECURSIVE t(n, prev) AS (
    VALUES (1::numeric, 0::numeric)
    UNION ALL
    SELECT (n + prev), n FROM t WHERE n + prev <= 1e999
)
SELECT count(*) + 1 FROM t;
