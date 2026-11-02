---
name: bubble-comments
version: 1.2.0
status: specification-only
---
# Bubble Comments — sanitized specification

This is a **specification**, not a claim that the bundled experimental plugin implements the complete workflow.

- A source note remains unchanged unless a user explicitly authorizes a transclusion.
- Comments are kept in sidecar Markdown under `05_CAPTURE/Agent Comments/`.
- Never create comments for `02_USER`; treat it as protected.
- A sidecar identifies the exact source path and a stable source key.
- Threads use stable `BUB-####` IDs, messages stable `gaspar-message-id` identifiers, and chat targets explicit `gaspar-chat-target` markers.
- Chat View 2.0 message format is `{{author|message|subtext}}` inside a fenced `chat` block; escape literal pipes.
- Raw conversations and derived interpretations must never be conflated.
- No fabricated message text, identity, timestamp, or source ID.
- Existing messages without IDs must not be silently rewritten.

## Missing implementation

The full Chat View renderer, Messenger composer, anchored sidecar UI, ID persistence, and GASPAR Chat Merge integration are **not bundled** because their executable source files were not available in the connected Drive directories. The bundled `local-agent-chatview` is an experimental callout-insertion helper, not the full plugin.
