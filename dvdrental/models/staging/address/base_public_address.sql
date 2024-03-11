with source as (
      select * from {{ source('public', 'address') }}
),
renamed as (
    select
        *

    from source
)
select * from renamed
  