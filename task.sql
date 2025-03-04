WITH corrected_data AS (
    SELECT 
        COALESCE(a.dimension_1, b.dimension_1) AS dimension_1,
        COALESCE(m.correct_dimension_2, COALESCE(a.dimension_2, b.dimension_2)) AS dimension_2,
        a.measure_1,
        b.measure_2
    FROM 
        A a
    FULL OUTER JOIN 
        B b
        ON a.dimension_1 = b.dimension_1 AND a.dimension_2 = b.dimension_2
    LEFT JOIN 
        MAP m
        ON COALESCE(a.dimension_1, b.dimension_1) = m.dimension_1
)
SELECT 
    dimension_1,
    dimension_2,
    SUM(COALESCE(measure_1, 0)) AS measure_1,
    SUM(COALESCE(measure_2, 0)) AS measure_2
FROM 
    corrected_data
GROUP BY 
    dimension_1, dimension_2
ORDER BY 
    dimension_1, dimension_2;