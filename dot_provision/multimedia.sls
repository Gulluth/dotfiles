{% set items = [
  "ffmpeg",
  "mpv"
] %}


{% for i in items %}
{{ i }}:
  pkg.installed
{% endfor %}
