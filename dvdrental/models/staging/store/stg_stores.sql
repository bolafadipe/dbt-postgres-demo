with base as (
    select * from {{ ref('base_public_store') }}
),

cleaned as (
    select
        {{ adapter.quote("store_id") }},
        {{ adapter.quote("address_id") }},
        {{ adapter.quote("last_update") }} as last_updated_at
    from base
),

final as (
    select * from cleaned
)

select * from final
