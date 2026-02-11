WITH src_Reviews AS 
(
    SELECT * FROM {{ source('airbnb', 'reviews') }}
)
    SELECT
        comments as review_text,
        date as review_date,
        listing_id,
        reviewer_name,        
        sentiment as review_sentiment
    FROM 
        src_Reviews