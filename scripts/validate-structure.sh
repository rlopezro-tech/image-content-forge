#!/usr/bin/env bash
set -euo pipefail

required_dirs=(
  "docs"
  "shared/assets"
  "shared/rules"
  "shared/templates"
  "series"
  "skills"
)

for dir in "${required_dirs[@]}"; do
  test -d "$dir" || {
    echo "Missing required directory: $dir"
    exit 1
  }
done

for series_dir in series/*; do
  test -d "$series_dir" || continue

  for path in README.md rules.md index.yml prompts templates images posts; do
    test -e "$series_dir/$path" || {
      echo "Missing $path in $series_dir"
      exit 1
    }
  done
done

echo "Structure OK"
