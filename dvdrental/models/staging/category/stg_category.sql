with base as (
    select * from {{ ref('base_public_category') }}
),

cleaned as (
    select 
        category_id,
        name as category_name,
        last_update as category_last_updated_at
    from base
),

final as (
    select * from cleaned
)

select * from final