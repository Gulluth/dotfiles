base:
  '*':
    - absent
    - salt-minion
  'nulldevice':
    - development
    - flatpak
    - fsearch
    - multimedia
    - utilities
    - yt-dlp
  'satellite*':
    - utilities
  'disabled':
    - mise
    - zed
