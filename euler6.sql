WITH RECURSIVE t(n, sq) AS (
    VALUES (1, 1)
    UNION ALL
    SELECT n+1, (n + 1) * (n + 1) FROM t WHERE n < 100
)
select (s*s) - sumsq from (
SELECT sum(n) as s, sum(sq) as sumsq FROM t
) as res;

