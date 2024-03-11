with base as (
    select * from {{ ref('base_public_city') }}
),

cleaned as (
    select 
        city_id,
        city as city_name,
        country_id,
        last_update as city_last_updated_at
    from base
),

final as (
    select * from cleaned
)

select * from final