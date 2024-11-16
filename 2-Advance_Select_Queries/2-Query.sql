SELECT 
    CASE
        WHEN A <= 0 OR B <= 0 OR C <= 0 OR (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        WHEN A != B AND B != C AND A != C THEN 'Scalene'
    END AS triangle_type
FROM TRIANGLES;
