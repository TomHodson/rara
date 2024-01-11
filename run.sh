#!/usr/bin/env bash
# sleep 8 && open http://0.0.0.0:4001 &
cd -- "$(dirname "$0")"
bundle exec jekyll serve --port 4002 --host 0.0.0.0 --livereload --livereload_port 10002