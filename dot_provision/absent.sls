{% set items = [
  "aisleriot",
  "anthy",
  "brasero",
  "deja-dup",
  "evince",
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
  "gnome-sound-recorder",
  "gnome-sudoku",
  "gnome-taquin",
  "gnome-tetravex",
  "gnote",
  "hexchat",
  "hitori",
  "iagno",
  "kasumi",
  "libreoffice-calc",
  "libreoffice-impress",
  "libreoffice-math",
  "libreoffice-writer",
  "libreoffice-common",
  "libreoffice-style-sifr",
  "lightsoff",
  "mozc-utils-gui",
  "pidgin",
  "quadrapassel",
  "remmina",
  "shotwell",
  "simple-scan",
  "sound-juicer",
  "swell-foop",
  "tali",
  "thunderbird",
  "x11vnc",
  "xiterm+thai",
  "xterm",
  "yelp"
] %}


cleanup_packages:
  pkg.purged:
    - pkgs: {{ items }}

auto-remove:
  cmd.run:
    - name: apt autoremove -y
    - onchanges:
      - pkg: cleanup_packages
