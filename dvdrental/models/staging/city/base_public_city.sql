with source as (
      select * from {{ source('public', 'city') }}
),
renamed as (
    select
        {{ adapter.quote("city_id") }},
        {{ adapter.quote("city") }},
        {{ adapter.quote("country_id") }},
        {{ adapter.quote("last_update") }}

    from source
)
select * from renamed
  