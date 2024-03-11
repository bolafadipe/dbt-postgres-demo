with base as (
    select * from {{ ref('base_public_customer') }}
),

cleaned as (
    select
        customer_id,
        store_id,
        address_id,
        concat(first_name, ' ', last_name) as customer_name,
        active as is_active,
        create_date as customer_created_at,
        last_update as customer_last_updated_at
    from base

),

final as (
    select * from cleaned
)

select * from final