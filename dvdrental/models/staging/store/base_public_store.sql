with source as (
      select * from {{ source('public', 'store') }}
),
renamed as (
    select
        {{ adapter.quote("store_id") }},
        {{ adapter.quote("manager_staff_id") }},
        {{ adapter.quote("address_id") }},
        {{ adapter.quote("last_update") }}

    from source
)
select * from renamed
  