#!/bin/bash
sudo rclone mount MediaServer: /home --allow-other --daemon --allow-non-empty --cache-db-purge --buffer-size 32M --use-mmap --dir-cache-time 4h --drive-chunk-size 16M --timeout 1h --vfs-cache-mode minimal --vfs-read-chunk-size 128M --vfs-read-chunk-size-limit 1G --fast-list &
npx localtunnel --port 8096 &
