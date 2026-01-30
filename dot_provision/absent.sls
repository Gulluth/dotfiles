{% set items = [
  "aisleriot",
  "brasero",
  "fcitx5",
  "five-or-more",
  "four-in-a-row",
  "gnome-2048",
  "gnome-chess",
  "gnome-games",
  "gnome-klotski",
  "gnome-mahjongg",
  "gnome-mines",
  "gnome-nibbles",
  "gnome-robots",
  "gnome-sudoku",
  "gnome-taquin",
  "gnome-tetravex",
  "gnote",
  "hexchat",
  "hitori",
  "iagno",
  "libreoffice-calc",
  "libreoffice-impress",
  "libreoffice-math",
  "libreoffice-writer",
  "libreoffice-common",
  "libreoffice-style-sifr",
  "pidgin",
  "quadrapassel",
  "remmina",
  "simple-scan",
  "sound-juicer",
  "swell-foop",
  "tali",
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
