{% set items = [
  "bat",
  "btop",
  "lsd",
  "tree",
  "tmux",
  "vim"
] %}


{% for i in items %}
{{ i }}:
  pkg.installed
{% endfor %}
