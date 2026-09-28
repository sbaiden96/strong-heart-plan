#!/usr/bin/env bash
# Rebuilds the on-phone text reader (OCR) files the app publishes next to index.html.
# Output goes to app/ocr/, which is git-ignored; publish those four files with the page.
set -euo pipefail
cd "$(dirname "$0")"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
(cd "$tmp" && npm init -y >/dev/null && npm i --silent tesseract.js@5.1.1 @tesseract.js-data/eng >/dev/null)
m="$tmp/node_modules"
rm -rf ocr && mkdir -p ocr/core ocr/lang
cp "$m/tesseract.js/dist/worker.min.js" ocr/
cp "$m/tesseract.js-core/tesseract-core-lstm.wasm.js" "$m/tesseract.js-core/tesseract-core-simd-lstm.wasm.js" ocr/core/
# The artifact host doesn't serve .gz files, so the English model ships as base64 text
base64 -w0 "$m/@tesseract.js-data/eng/4.0.0_best_int/eng.traineddata.gz" > ocr/lang/eng.b64.txt
echo "Built app/ocr/"
