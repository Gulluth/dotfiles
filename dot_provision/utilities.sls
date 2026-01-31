{% set items = [
  "bat",
  "btop",
  "dconf-cli",
  "kitty",
  "lsd",
  "tree",
  "tmux",
  "uuid-runtime",
  "vim"
] %}


{% for i in items %}
{{ i }}:
  pkg.installed
{% endfor %}
