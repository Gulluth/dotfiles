griffo_io_repo:
  pkgrepo.managed:
    - humanname: griffo.io
    - name: deb https://debian.griffo.io/apt trixie main
    - file: /etc/apt/sources.list.d/griffo.io.list
    - gpgcheck: 1
    - key_url: https://debian.griffo.io/apt/dists/trixie/Release.gpg

zed:
  pkg.installed:
    - refresh: True
