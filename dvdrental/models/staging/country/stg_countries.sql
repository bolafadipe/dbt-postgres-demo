with base as (
    select * from {{ ref('base_public_country') }}
),

cleaned as (
    select * from base
),

final as (
    select * from cleaned
)

select * from final