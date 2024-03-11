with source as (
      select * from {{ source('public', 'staff') }}
),
renamed as (
    select
        {{ adapter.quote("staff_id") }},
        {{ adapter.quote("first_name") }},
        {{ adapter.quote("last_name") }},
        {{ adapter.quote("address_id") }},
        {{ adapter.quote("email") }},
        {{ adapter.quote("store_id") }},
        {{ adapter.quote("active") }},
        {{ adapter.quote("username") }},
        {{ adapter.quote("password") }},
        {{ adapter.quote("last_update") }},
        {{ adapter.quote("picture") }}

    from source
)
select * from renamed
  