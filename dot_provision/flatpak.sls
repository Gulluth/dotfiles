{% set flatpak_packages = [
    "com.bitwarden.desktop",
    "io.github.ungoogled_software.ungoogled_chromium"
] %}

flatpak:
  pkg.installed

flathub_repo:
  cmd.run:
    - name: flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    - onchanges:
      - flatpak

flatpak_install:
  cmd.run:
    - name: flatpak install -y --noninteractive flathub {{ ' '.join(flatpak_packages) }}
