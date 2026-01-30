base:
  '*':
    - absent
    - salt-minion
  'nulldevice':
    - development
    - flatpak
    - multimedia
    - utilities
    - yt-dlp
  'satellite*':
    - utilities
  'disabled':
    - mise
    - zed
