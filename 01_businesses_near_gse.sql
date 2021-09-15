/*
  What are the 5 closest business to the Graduate School of Education building
  (3700 Walnut St) that aren't owned by the Trustees of UPenn? Try using
  https://geojson.io/ to get the coordinates of GSE.

39.9556 -75.1925

  Hint: There are two ways to get the distance from one geometry to another in
  PostgresSQL:
  1. ST_Distance (https://postgis.net/docs/ST_Distance.html)
  2. The distance operator (https://postgis.net/docs/geometry_distance_knn.html)

  The latter should be used if getting distances for ORDER BY.
*/

select ...
SELECT ST_Distance(the_geom, 'SRID=4326 ;POINT(39.9556 -75.1925)'::geometry) as d,edabbr, vaabbr
FROM business_licenses
WHERE 
limit 10