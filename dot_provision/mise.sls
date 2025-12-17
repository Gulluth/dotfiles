mise_repo:
  pkgrepo.managed:
    - humanname: mise
    - name: deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.pub arch=amd64] https://mise.jdx.dev/deb stable main
    - file: /etc/apt/sources.list.d/mise.list
    - gpgcheck: 1
    - key_url: https://mise.jdx.dev/gpg-key.pub
    - aptkey: False

mise_pkg:
  pkg.installed:
    - name: mise
    - refresh: True
