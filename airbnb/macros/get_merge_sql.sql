{% macro get_merge_sql(target, source, unique_key, dest_columns, incremental_predicates=None) %}
{% set incremental_predicates = kwargs.get('predicates', incremental_predicates) %}
{{ adapter.dispatch('get_merge_sql', 'dbt')(target, source, unique_key, dest_columns, incremental_predicates) }}
{% endmacro %}
