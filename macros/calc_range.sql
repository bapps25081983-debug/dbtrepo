{% macro calc_range(column_name, low=50, medium=200, high=1000) %}
    CASE
        WHEN {{ column_name }} < {{ low }}    THEN 'low'
        WHEN {{ column_name }} < {{ medium }} THEN 'medium'
        WHEN {{ column_name }} < {{ high }}   THEN 'high'
        ELSE 'enterprise'
    END
{% endmacro %}