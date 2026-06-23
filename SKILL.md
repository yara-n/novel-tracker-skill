---
name: novel-tracker
description: Install, update, or customize a privacy-first Chinese novel tracker delivered as a single offline HTML file. Use when the user wants a personal reading log, novel library, localStorage-based tracker, JSON backup/import workflow, or a no-AI/no-API version of the bundled novel-recording tool.
---

# Offline Novel Tracker

Install and maintain the bundled single-file Chinese novel tracker. Keep it fully offline and usable without a server.

## Install Or Update

Run:

```bash
bash <skill-dir>/scripts/install_or_update.sh [target-html]
```

If `target-html` is omitted, install to `./novel-tracker.html`.

The script backs up an existing target before replacing it. Open the resulting HTML directly in a browser.

## Preserve Data

- Keep these localStorage keys stable across compatible releases:
  - `offline.novelTracker.v1`
  - `offline.novelTracker.safetySnapshot.v1`
  - `offline.novelTracker.lastExportAt.v1`
  - `offline.novelTracker.theme.v1`
- Recommend JSON export before moving the HTML to a different path, changing browsers, clearing browser data, or applying a major migration.
- Never place a user's exported JSON, localStorage contents, notes, or reading history inside this Skill.

## Privacy Rules

- Do not add AI features, API keys, analytics, remote fonts, CDNs, external images, network requests, or cloud sync.
- Keep all normal operation inside the HTML and browser localStorage.
- Leave the bundled asset empty of personal records.

## Customize

For user-specific visual or field changes, edit the installed copy unless the user explicitly wants to update the reusable Skill asset.

When updating the reusable asset:

1. Modify `assets/novel-tracker.html`.
2. Preserve storage compatibility or add an explicit migration.
3. Check that no private records or network behavior entered the asset.
4. Parse the inline script with Node.
5. Run `scripts/install_or_update.sh` into a temporary directory and test the installed copy.

## GitHub Updates

Installing this Skill creates a local copy; existing installations do not update automatically.

To receive a newer release:

1. Pull or reinstall the Skill from GitHub.
2. Run `scripts/install_or_update.sh` again against the same HTML path.
3. Refresh the browser.

Replacing the HTML code at the same location normally preserves localStorage. Keep JSON export as the portable backup mechanism.
