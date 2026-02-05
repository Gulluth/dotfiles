base:
  '*':
    - absent
    - salt-minion
  'nulldevice':
    - development
    - flatpak
    - fsearch
    - go
    - multimedia
    - pdf
    - pip
    - python
    - utilities
    - yt-dlp
  'satellite*':
    - utilities
  'disabled':
    - mise
    - zed
