with source as (
        select * from {{ source('btc', 'btc') }}
  ),
  renamed as (
      select
          {{ adapter.quote("HASH_KEY") }},
        {{ adapter.quote("BLOCK_HASH") }},
        {{ adapter.quote("BLOCK_NUMBER") }},
        {{ adapter.quote("BLOCK_TIMESTAMP") }},
        {{ adapter.quote("FEE") }},
        {{ adapter.quote("INPUT_VALUE") }},
        {{ adapter.quote("OUTPUT_VALUE") }},
        {{ adapter.quote("FEE_PER_BYTE") }},
        {{ adapter.quote("IS_COINBASE") }},
        {{ adapter.quote("OUTPUTS") }}

      from source
  )
  select * from renamed
    