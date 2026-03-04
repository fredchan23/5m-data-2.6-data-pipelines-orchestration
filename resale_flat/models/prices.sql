{ { config(materialized = 'table') } }
select month,
    town,
    flat_type,
    block,
    street_name,
    storey_range,
    cast(floor_area_sqm as numeric) as floor_area_sqm,
    flat_model,
    lease_commence_date,
    remaining_lease,
    resale_price,
    cast(resale_price as numeric) / nullif(cast(floor_area_sqm as numeric), 0) as price_per_sqm
    # The nullif function is used to avoid division by zero in case floor_area_sqm is zero.
from { { source(
        'ingestion',
        'public_resale_flat_prices_from_jan_2017'
    ) } }