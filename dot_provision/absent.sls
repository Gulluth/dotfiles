{% set items = [
  "fcitx5",
  "libreoffice-calc",
  "libreoffice-impress",
  "libreoffice-math",
  "libreoffice-writer",
  "libreoffice-common",
  "libreoffice-style-sifr"
] %}


{% for i in items %}
{{ i }}:
  pkg.purged
{% endfor %}

auto-remove:
  cmd.run:
    - name: apt autoremove -y
