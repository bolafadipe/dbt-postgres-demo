with source as (
      select * from {{ source('public', 'rental') }}
),
renamed as (
    select
        {{ adapter.quote("rental_id") }},
        {{ adapter.quote("rental_date") }},
        {{ adapter.quote("inventory_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("return_date") }},
        {{ adapter.quote("staff_id") }},
        {{ adapter.quote("last_update") }}

    from source
)
select * from renamed
  