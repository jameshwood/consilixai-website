#!/usr/bin/env bash
# Deploy consilix.ai to the Consilix VPS (host alias consilix-vps in ~/.ssh/config).
# Syncs the working tree, rebuilds the image and restarts the web container.
set -euo pipefail
cd "$(dirname "$0")"
rsync -az --delete --exclude .git --exclude node_modules --exclude tmp --exclude log \
  --exclude storage --exclude .env --exclude design-research --exclude public/assets \
  ./ consilix-vps:/opt/consilix-website/
ssh consilix-vps 'cd /opt/consilix-website && docker compose build web && docker compose up -d web && sleep 8 && curl -s -o /dev/null -w "web -> %{http_code}\n" http://127.0.0.1:3031/'
