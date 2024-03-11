with stg_address as (
    select
        *
    from {{ ref('stg_address') }}
),

stg_city as (
    select * from {{ ref('stg_city') }}
),

stg_countries as (
    select * from {{ ref('stg_countries') }}
),

final as (

    select  
        a.address_id,
        c.city_id,
        co.country_id,
        a.address,
        a.district,
        c.city_name as city,
        co.country,
        a.postal_code,
        a.address_last_updated_at,
        c.city_last_updated_at,
        co.last_update as country_last_updated_at

    from stg_address as a
    join stg_city as c
    on a.city_id = c.city_id
    join stg_countries as co
    on c.country_id = co.country_id

)

select * from final