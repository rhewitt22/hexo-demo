<!DOCTYPE html>
<html lang="en">

  <head>
    <title>{% if page.title %}{{ page.title|title }}{% else %}{{ config.title }}{% endif %}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {% include "../_partial/open-graph.swig" %}
    {{ css('southeast/css/styles') }}
  </head>