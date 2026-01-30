{% set items = [
  "aisleriot",
  "brasero",
  "fcitx5",
  "gnome-games",
  "gnote",
  "hexchat",
  "libreoffice-calc",
  "libreoffice-impress",
  "libreoffice-math",
  "libreoffice-writer",
  "libreoffice-common",
  "libreoffice-style-sifr",
  "pidgin",
  "remmina",
  "simple-scan",
  "sound-juicer",
  "thunderbird",
  "yelp"
] %}


{% for i in items %}
{{ i }}:
  pkg.purged
{% endfor %}

auto-remove:
  cmd.run:
    - name: apt autoremove -y
