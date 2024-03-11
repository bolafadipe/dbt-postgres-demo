with int as (

    select * from {{ ref('int_location') }}
)

select * from int