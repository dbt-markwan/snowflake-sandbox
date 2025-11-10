{% macro weekend_offset_loaded_at(loaded_at_field) %}
  DATEADD(
        DAY,
        (
            DATEDIFF(WEEK, DATE_TRUNC('DAY', MAX({{loaded_at_field}})), DATEADD(DAY, 1, CURRENT_DATE())) * 2
            + (CASE WHEN DAYNAME(DATE_TRUNC('DAY', MAX({{loaded_at_field}}))) != 'Sunday' THEN 1 ELSE 0 END)
            - (CASE WHEN DAYNAME(CURRENT_DATE()) != 'Saturday' THEN 1 ELSE 0 END)
        ),
        max({{loaded_at_field}})
    )
{% endmacro %}