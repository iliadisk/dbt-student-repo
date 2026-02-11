{{
    config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    )
}}
WITH src_Reviews AS 
(
    SELECT * FROM {{ ref('src_reviews') }}
)
    SELECT
        *    
    FROM 
        src_Reviews
    WHERE review_text IS NOT NULL
{% if is_incremental() %}
    AND review_date > (SELECT MAX(review_date) FROM {{ this }})
{% endif %}