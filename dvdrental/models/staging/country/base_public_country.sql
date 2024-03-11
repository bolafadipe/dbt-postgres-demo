with source as (
      select * from {{ source('public', 'country') }}
),
renamed as (
    select
        *

    from source
)
select * from renamed
  