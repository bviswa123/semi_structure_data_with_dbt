--{{config(database = "wine_map", schema = "wine_map_schema", materialized="table")}}

{{config(database = "wine_map_test", schema = "wine_map_test_schema", materialized="table")}}

with wine_map as 
(
    select src:points:: string as points
,src:title::string as title
,src:taster_name::string as taster_name
,src:taster_twitter_handle::string as tastertwitter_handle
,src:price:: float as price
,src:designation::string as designation
,src:variety::string as variety
,src:region_1:: string as region_1
,src:region_2:: string as region_2
,src:provience:: string as provience
,src:country:: string as country
,src:winery:: string as winery

from "WINE_MAP"."WINE_MAP_SCHEMA"."WINE_MAP_TABLE" 

)

select * from Wine_map