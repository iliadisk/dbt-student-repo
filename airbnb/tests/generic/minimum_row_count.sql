{% test minimum_row_count(model, min_rows_count) %}
SELECT 
    COUNT(*) AS cnt
FROM 
    {{ model }}
HAVING
    COUNT(*) < {{ min_rows_count }}
{% endtest %}   