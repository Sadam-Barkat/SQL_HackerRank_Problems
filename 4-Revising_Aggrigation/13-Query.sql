WITH cte AS (
      SELECT
      LAT_N 
      FROM STATION 
      WHERE LAT_N > 38.7780
      )

SELECT 
      CAST(ROUND(MIN(LAT_N),4) AS DECIMAL(10,4)) AS lat1
      FROM cte;
