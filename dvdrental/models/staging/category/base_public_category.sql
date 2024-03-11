with source as (
      select * from {{ source('public', 'category') }}
),
renamed as (
    select
        {{ adapter.quote("category_id") }},
        {{ adapter.quote("name") }},
        {{ adapter.quote("last_update") }}

    from source
)
select * from renamed
  