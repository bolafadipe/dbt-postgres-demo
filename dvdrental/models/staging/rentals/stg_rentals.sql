with base as (
    select * from {{ ref('base_public_rental') }}
),

cleaned as (
    select
        {{ adapter.quote("rental_id") }},    
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("staff_id") }},
        {{ adapter.quote("rental_date") }},
        {{ adapter.quote("return_date") }} as rental_return_date,  
        {{ adapter.quote("last_update") }} as last_updated_at
    from base
),

final as (
    select * from cleaned
)

select * from final
