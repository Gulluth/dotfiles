base:
  '*':
    - absent
    - salt-minion
  'nulldevice':
    - development
    - flatpak
    - utilities
    - yt-dlp
  'satellite*':
    - utilities
  'disabled':
    - zed
    - mise
    - multimedia
