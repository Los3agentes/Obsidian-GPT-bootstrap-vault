# FIRST LAUNCH

1. Download the repository ZIP from GitHub and extract it, or clone the repository if you want Git history. No PowerShell bootstrap script is required.
2. In Obsidian, choose **Open folder as vault** and select the extracted repository root (not its parent).
3. Confirm the eight numbered GASPAR folders exist: `00_START HERE`, `01_WIKI`, `02_USER`, `03_SYSTEM`, `04_PLAYGROUND-OUTPUTS`, `05_CAPTURE`, `06_RESOURCES`, `07_ARCHIVE`.
4. Read `AGENTS.md` and `01_WIKI/README.md` before granting write access. `.obsidian/` is technical configuration, not a ninth knowledge folder.
5. Inspect the bundled community plugin source and manifest before enabling it; the plugin is not certified merely because its files are present. Verify its actual plugin ID and installation path against `.obsidian/community-plugins.json`.
6. Enable the bundled theme or CSS snippet in Obsidian settings as appropriate. Verify appearance in both light and dark mode.
7. Test agent write permissions only in a disposable note under `04_PLAYGROUND-OUTPUTS/`; never use production notes for initial testing.
8. Verify that the chat view writes to the intended note and that comment bubbles do not alter the original note. If either test fails, stop and preserve the original files.
9. Legacy bootstrap folders are noncanonical; do not create new root-level categories, rename roots, or move legacy data without verifying links and getting approval for destructive operations.

## Scope and authority

Google Drive's GASPAR directory is the architecture authority. This GitHub repository is a sanitized bootstrap, not a live mirror of Drive. Do not copy private Drive data or assume a path found in one surface exists in the other.

The plugin, theme, and end-to-end chat/comment workflow remain **unverified until tested in Obsidian**.
