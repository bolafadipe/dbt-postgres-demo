with base as (
    select * from {{ ref('base_public_staff') }}
),

cleaned as (
    select 
        staff_id,
        store_id,
        address_id, 
        concat(first_name, ' ', last_name) as staff_name,
        active as staff_is_active,
        last_update as staff_last_updated_at
    from base
),

final as (
    select * from cleaned
)

select * from final

