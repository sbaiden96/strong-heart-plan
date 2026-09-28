# Strong Heart Plan app

The tracker runs as a private claude.ai artifact. `index.html` is the whole app: markup, styles and script in one file.

## Tabs

Today · Plan · Market · Workouts · Heart · Avoid · Progress

## Where data lives

- Saved to the owner's Claude account through the artifact `db` capability (document `data/users/<id>/tracker`), with a copy in the browser's `localStorage` under `strongHeartPlan.v1`.
- On load the two copies are merged (`merge()` in the script), so every new field must be added to `EMPTY()` and to `merge()`. Never rename or reshape existing fields without a migration.
- **Backup** on the Progress tab saves everything as `strong-heart-backup-<date>.json`; **Restore** merges a backup back in without deleting anything.

## Artifact capabilities

`db`, `user` (cloud sync), `sample` (screenshot reading and Insights through Claude), `downloads` (backup and doctor summary files).

## Screenshot scanning

1. If the viewer can send images to Claude, the screenshots go straight to Claude.
2. Otherwise the phone reads the text itself with tesseract.js, then Claude sorts that text into the workout form.
3. If Claude can't be reached, simple text rules pick out time, calories, journey and personal best.

The OCR files are published alongside the page under `ocr/`. Rebuild them with `./build-ocr.sh`, then publish `index.html` with these supporting files:

- `ocr/worker.min.js`
- `ocr/core/tesseract-core-lstm.wasm.js`
- `ocr/core/tesseract-core-simd-lstm.wasm.js`
- `ocr/lang/eng.b64.txt`

The main `tesseract.min.js` loads from jsDelivr, pinned to 5.1.1 to match the worker.

## Things the artifact viewer blocks

`alert()`, `confirm()` and `prompt()` do nothing, so the app uses in-page messages and confirmations. Page-started downloads are blocked, so files are saved through the `downloads` capability.
