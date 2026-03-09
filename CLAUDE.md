# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository managed with [chezmoi](https://www.chezmoi.io/). Files prefixed with `dot_` map to dotfiles in `$HOME` (e.g., `dot_zshrc` → `~/.zshrc`). Files prefixed with `run_once_` are scripts chezmoi runs once on initial setup. Files with `.tmpl` extension are Go templates processed by chezmoi.

## Applying Changes

```sh
# Apply dotfiles to the system (prompts for a commit message — chezmoi auto-commits)
chezmoi apply

# Apply and reload the shell
dot!  # alias for: chezmoi apply && reload!
```

## File Naming Conventions

| Repo filename | Installed as |
|---|---|
| `dot_zshrc` | `~/.zshrc` |
| `dot_zsh/aliases.zsh` | `~/.zsh/aliases.zsh` |
| `dot_gitconfig.tmpl` | `~/.gitconfig` |
| `run_once_install-packages.sh.tmpl` | Runs once by chezmoi |

## Architecture

- **`dot_zshrc`** — entry point, sources `~/.zsh/{path,env,aliases,completion,tools,prompt}.zsh` in order, then platform-specific aliases (`aliases.macos.zsh` or `aliases.linux.zsh`), then `~/.env.local.zsh` if present.
- **`dot_zsh/path.zsh`** — sets `PATH` (`~/.local/bin`, macOS: openssl@3).
- **`dot_zsh/env.zsh`** — exports `EDITOR`/`VISUAL`/`GIT_EDITOR` (VS Code).
- **`dot_zsh/aliases.zsh`** — shell aliases; uses `bat`, `eza`, `chezmoi` (`dot` / `dot!`).
- **`dot_zsh/tools.zsh`** — initializes `mise` (version manager), `fzf`, and `zoxide`.
- **`dot_zsh/prompt.zsh`** — zsh prompt showing path and git branch via `vcs_info`.
- **`dot_zsh/completion.zsh`** — zsh completion setup.
- **`dot_gitconfig.tmpl`** — git config with SSH commit signing via 1Password (path differs by OS), pull-rebase, push.default=current, HTTPS→SSH rewrite for github.com.
- **`run_once_install-packages.sh.tmpl`** — delegates to `scripts/install-macos.sh` or `scripts/install-linux.sh` based on OS. Re-runs if the referenced script's sha256 changes.
- **`dot_config/chezmoi/chezmoi.toml`** — chezmoi config; `autoCommit = true` prompts for a commit message on every `chezmoi apply`.

## Local Overrides

Machine-specific environment variables and secrets go in `~/.env.local.zsh` (sourced by `dot_zshrc` if it exists, not tracked in this repo). Git-specific local settings go in `~/.gitconfig.local` (included by `dot_gitconfig.tmpl` if present).
