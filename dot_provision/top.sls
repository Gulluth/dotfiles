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
    - pip
    - python
    - utilities
    - yt-dlp
  'satellite*':
    - utilities
  'disabled':
    - mise
    - zed
