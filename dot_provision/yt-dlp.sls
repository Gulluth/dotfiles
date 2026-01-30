yt-dlp:
  file.managed:
    - source: https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
    - source_hash: https://github.com/yt-dlp/yt-dlp/releases/latest/download/SHA2-256SUMS
    - name: /usr/local/bin/yt-dlp
    - user: root
    - group: root
    - mode: '0755'
