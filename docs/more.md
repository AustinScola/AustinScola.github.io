---
layout: page
title: More
permalink: /more/
---
{% for collection in site.collections %}
  {% if collection.label != "posts" %}
<h3>
  <a href="/more/{{ collection.label }}">
    {{ collection.label }}
  </a>
</h3>
  {% endif %}
{% endfor %}
