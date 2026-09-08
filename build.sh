#!/usr/bin/env bash
# Extracts the Artifact-ready fragment (no doctype/html/head/body) from index.html.
set -euo pipefail
mkdir -p dist
{
  awk '/<!--HEAD:START-->/{f=1;next} /<!--HEAD:END-->/{f=0} f' index.html
  awk '/<!--BODY:START-->/{f=1;next} /<!--BODY:END-->/{f=0} f' index.html
} > dist/artifact.html
echo "dist/artifact.html — $(wc -l < dist/artifact.html) lines"
