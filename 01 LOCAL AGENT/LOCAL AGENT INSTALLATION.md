# Local Agent Installation

## Goal
Allow an authorized AI agent to read and write Markdown files on Windows.

## Options

| Option | Local write | Notes |
|---|---|---|
| Microsoft 365 Copilot + Power Automate File System connector | Yes, through gateway | Requires suitable tenant licensing and on-premises gateway |
| Copilot Studio + agent flow | Through supported connector | Check available tools and permissions |
| Power Automate Desktop | Yes | Desktop flow triggering depends on licensing and configuration |
| GitHub Copilot in VS Code | Yes | Workspace file access with user-approved operations |
| Local API or MCP server | Yes | Requires implementation and explicit client integration |
| OneDrive sync | Indirect | Files sync to disk; not direct local execution |

## Safe test
1. Create `C:\GASPAR_TEST`.
2. Restrict connector or agent access to that directory.
3. Create `GASPAR_TEST.md` with UTF-8 content.
4. Read it back and verify the exact bytes.
5. Test append and update, retaining a backup.
6. Record the outcome and revoke unnecessary permissions.

Do not claim Microsoft 365 Copilot chat itself has direct filesystem access without an installed tool.
