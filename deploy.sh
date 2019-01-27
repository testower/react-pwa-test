#!/bin/bash

aws s3 sync --profile bma \
  build s3://test-react-pwa \
  --acl public-read \
  --metadata-directive REPLACE \
  --expires 2034-01-01T00:00:00Z \
  --cache-control max-age=2592000,public \
  --exclude index.html \
  --exclude service-worker.js \
  --exclude manifest.json \
  --exclude asset-manifest.json

aws s3 sync --profile bma \
  build s3://test-react-pwa \
  --acl public-read \
  --metadata-directive REPLACE \
  --cache-control max-age=0,public \
  --exclude "*" \
  --include index.html \
  --include service-worker.js \
  --include manifest.json \
  --include asset-manifest.json
