{{ config(materialized='table') }}
select town,
    flat_type,
    flat_model,
    avg(floor_area_sqm) as avg_floor_area_sqm,
    avg(cast(resale_price as numeric)) as avg_resale_price,
    avg(price_per_sqm) as avg_price_per_sqm
from {{ ref('prices') }}
group by town,
    flat_type,
    flat_model
order by town,
    flat_type,
    flat_model