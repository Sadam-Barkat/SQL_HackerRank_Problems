WITH cte AS (
      SELECT
      *,
      LAT_N AS lat
      FROM STATION
      WHERE LAT_N > 38.7780
      )

SELECT
      CAST(ROUND(LONG_W,4) AS DECIMAL(10,4)) AS long
      FROM cte
      WHERE lat in (SELECT MIN(lat) FROM cte);