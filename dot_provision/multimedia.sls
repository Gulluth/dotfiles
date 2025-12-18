{% set items = [
  "ffmpeg"
] %}


{% for i in items %}
{{ i }}:
  pkg.installed
{% endfor %}
