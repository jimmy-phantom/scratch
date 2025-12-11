# Scratch Workspace

A persistent shell for ephemeral work—ideal for experiments, prototyping, and LLM-assisted tasks.

## Quick Start

1. Open this workspace in Cursor
2. Generate files, experiment, prototype — everything lands in `work/`
3. When done: `./tools/cleanup.sh`

Everything in `work/` is disposable. Everything else persists.

---

## Directory Structure

```
scratch/
├── work/           ← Your ephemeral workspace (do anything here)
├── tools/          ← Persistent utility scripts
├── templates/      ← Reusable scaffolds and examples
├── .cursorrules    ← Instructions for AI assistants (auto-loaded by Cursor)
├── README.md       ← You are here
└── .gitignore      ← Tracks only persistent files
```

### `work/`
The scratch pad. All generated files, experiments, and temporary output go here. Delete contents freely—the cleanup script does exactly this.

### `tools/`
Helper scripts that support the workspace. Currently includes:
- **`cleanup.sh`** — Clears `work/` contents (preserves `.keep`)

### `templates/`
Reference files and scaffolds. Copy from here into `work/` when starting from a template.

---

## Using with Cursor

The `.cursorrules` file is automatically loaded by Cursor for every conversation. It instructs AI assistants to:
- Generate files in `work/` by default
- Not modify persistent files without permission
- Not delete files without permission

No need to `@mention` it—Cursor reads it automatically.

---

## Maintenance

Reset the workspace:
```bash
./tools/cleanup.sh
```

This clears everything in `work/` except the `.keep` marker file.

---

## Why This Exists

- **Predictable environment** for AI assistants—clear rules, stable structure
- **Rapid iteration** without polluting real projects
- **Clean separation** between persistent config and throwaway work
- **Version controlled structure** with untracked scratch content

If you modify the persistent structure, update `.cursorrules` to match.
