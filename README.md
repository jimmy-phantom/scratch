# Scratch Workspace

A persistent shell for ad-hoc projects—ideal for experiments, prototyping, and LLM-assisted tasks. Uses git branches to isolate projects while keeping a clean context for AI assistants.

## Quick Start

1. Open this workspace in Cursor
2. Create a branch for your project: `git checkout -b project-name`
3. Generate files, experiment, prototype — everything lands in `work/`
4. Commit your work: `git add -A && git commit -m "checkpoint"`
5. Done? Return to clean slate: `git checkout main`

Need to reference old work? `git checkout project-name` or `git show project-name:work/file.py`

---

## Branch Workflow

```
main              ← Clean slate (empty work/, always ready)
├── project-foo   ← work/ contains foo project
├── project-bar   ← work/ contains bar project
└── ...
```

**Why branches?**
- **Clean AI context** — Only current project files are visible to the model
- **Lightweight archival** — Reference old work without separate repos
- **Instant reset** — `git checkout main` clears the workspace
- **Low overhead** — No subdirectories cluttering `work/`

---

## Directory Structure

```
scratch/
├── work/           ← Your project workspace (tracked per-branch)
├── tools/          ← Persistent utility scripts
├── templates/      ← Reusable scaffolds and examples
├── .cursorrules    ← Instructions for AI assistants (auto-loaded by Cursor)
├── README.md       ← You are here
└── .gitignore      ← Tracks work/ contents for branch-based archival
```

### `work/`
Your active workspace. All generated files go here. Contents are tracked by git and isolated per-branch.

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

## Common Operations

**Start a new project:**
```bash
git checkout main
git checkout -b project-name
```

**Save progress:**
```bash
git add -A && git commit -m "description"
```

**Switch projects:**
```bash
git checkout project-other
```

**Return to clean slate:**
```bash
git checkout main
```

**Reference old code without switching:**
```bash
git show project-name:work/script.py
```

**Clean up current branch's work/ (keep branch):**
```bash
./tools/cleanup.sh
```

---

## Why This Exists

- **Predictable environment** for AI assistants—clear rules, stable structure
- **Rapid iteration** without polluting real projects
- **Clean AI context** — no stale files confusing the model
- **Lightweight archival** — reference past work without repo sprawl

If you modify the persistent structure, update `.cursorrules` to match.
