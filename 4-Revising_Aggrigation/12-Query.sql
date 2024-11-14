SELECT
      CAST(ROUND(LONG_W,4) AS DECIMAL(10, 4)) AS long
      FROM STATION
      WHERE LAT_N IN (SELECT MAX(LAT_N) AS lat
                      FROM STATION
                      WHERE LAT_N < 137.2345)
                      