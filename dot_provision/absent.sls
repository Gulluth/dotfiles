{% set items = [
  "fcitx5",
  "libreoffice",
] %}


{% for i in items %}
{{ i }}:
  pkg.purged
{% endfor %}