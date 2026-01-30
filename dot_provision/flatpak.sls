{% set flatpak_packages = [
    "com.bitwarden.desktop"
] %}

flatpak:
  pkg.installed

flatpak_gnome_plugin:
  pkg.installed:
    - name: gnome-software-plugin-flatpak

flathub_repo:
  cmd.run:
    - name: flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak_install:
  cmd.run:
    - name: flatpak install -y --noninteractive flathub {{ ' '.join(flatpak_packages) }}
