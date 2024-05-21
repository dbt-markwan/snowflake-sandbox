{% macro create_table_with_custom_id(model, id_column) %}
  {% set sql_create_table %}
    create or replace table {{ model }} (
      {{ id_column }} int not null identity(1, 1),
      y float,
      ds date
    );
  {% endset %}
  {{ return(sql_create_table) }}

{% endmacro %}
