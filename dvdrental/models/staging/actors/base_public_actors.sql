with source as (
      select * from {{ source('public', 'actor') }}
),
renamed as (
    select
       actor_id,
       concat(first_name, ' ', last_name) as actor_name,
       last_update as actor_last_updated_at 

    from source
)
select * from renamed
  