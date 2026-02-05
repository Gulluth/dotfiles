{% set items = [
  "ffmpeg",
  "mpv",
  "sox"
] %}


{% for i in items %}
{{ i }}:
  pkg.installed
{% endfor %}
