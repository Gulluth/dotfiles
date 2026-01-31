base:
  '*':
    - absent
    - salt-minion
  'nulldevice':
    - development
    - flatpak
    - fsearch
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
