---
name: gui-design
description: Design, implement, and verify coherent graphical user interfaces for desktop applications, web apps, Obsidian plugins, and local tools. Use for UI/UX, component layouts, interaction flows, themes, and visual refactors.
version: 1.0.0
status: operational-guidance
---

# GUI Design — agent skill

## Scope
Use this skill for GUI design and implementation, including desktop tools, responsive web apps, Obsidian plugins, dashboards, and embedded panels. This is original project guidance informed by public frontend-design practices, not a copy of another publisher's skill.

## Operating contract
1. **Inspect before changing.** Read the existing interface, framework, design tokens, screenshots (if provided), and user constraints. Do not replace an existing visual identity without approval.
2. **Define the job.** Record users, tasks, platform, device sizes, input modes, constraints, and what success looks like. Identify primary, secondary, empty, loading, error, and disabled states.
3. **Choose a visual direction.** State one clear aesthetic concept, color system, type scale, spacing scale, density, radii, borders, elevation, and motion rules. Prefer reusable tokens over arbitrary values.
4. **Map the interaction.** Sketch information architecture, navigation, focus order, primary actions, feedback, validation, destructive-action confirmation, and keyboard shortcuts. Keep controls functional.
5. **Implement in the native stack.** Respect project conventions, semantic elements, platform components, and separation of UI/state/storage. Avoid unnecessary dependencies.
6. **Verify accessibility.** Check keyboard navigation, visible focus, contrast, labels, reduced motion, touch targets, zoom/text scaling, and screen-reader names where applicable.
7. **Test real states.** Check narrow/wide screens, light/dark themes, long strings, missing data, errors, slow operations, and non-pointer input. Verify no overflow or clipped controls.
8. **Critique and refine.** Compare implementation to the brief, inspect actual rendered output where tooling permits, record deviations, and fix highest-impact problems first.
9. **Report honestly.** State what changed, how it was tested, what remains unverified, and any known limitations.

## GUI acceptance criteria
- Primary task can be completed without hidden steps.
- Every visible control has a meaningful action or is clearly disabled.
- Layout and typography follow a coherent token system.
- No accidental destructive actions, silent file changes, or unapproved branding/license changes.
- Keyboard and focus behavior are usable.
- Error and empty states are understandable.
- Theme works in supported light/dark modes.
- Any claim of visual verification is backed by an actual render or application test.

## Obsidian-specific constraints
- Prefer Obsidian CSS variables and API conventions; scope selectors to the plugin view.
- Respect source-note authority and never silently edit protected notes.
- Preserve the vault's selected theme and plugin configuration unless asked to change them.
- Do not confuse CSS-only callouts with a fully functioning Chat View plugin.
- Never disable Obsidian's community-plugin trust prompt.

## Code governance
For substantive source changes, maintain a concise module header with purpose, version, owner/maintainer if known, inputs/outputs, and compatibility notes. Update changelog and signatures only where the repository already defines those conventions. No invented authors, licenses, or version claims.

## Output
Provide a short design brief, token definitions, component/state map, implementation, and a test report. If execution or rendering is unavailable, explicitly label the design untested.

## Research reference (not vendored)
Anthropic's public `frontend-design` skill informed the emphasis on deliberate visual direction and avoiding generic templates:
https://github.com/anthropics/skills/tree/main/skills/frontend-design

This file is independently authored for this repository. It does not import or redistribute the upstream skill or its license.
