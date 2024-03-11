with base_address as (

    select * from {{ ref('base_public_address') }}
),

cleaned as (
    select 
        address_id,
        address,
        district,
        city_id,
        cast(postal_code as varchar(20)) as postal_code,
        last_update as address_last_updated_at
    from base_address
),

final as (
    select * from cleaned
)

select * from final