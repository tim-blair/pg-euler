-- 20 x 20 grid means 40 'decisions' (right or down), so 40! possibilities, divided by 20! twice to account for duplicates (all 20 'rights' are the same)
SELECT 40! / ((20!) * (20!));

