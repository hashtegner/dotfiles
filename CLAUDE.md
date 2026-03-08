# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository managed with [chezmoi](https://www.chezmoi.io/). Files prefixed with `dot_` map to dotfiles in `$HOME` (e.g., `dot_aliases.zsh` → `~/.aliases.zsh`). Files prefixed with `run_once_` are scripts chezmoi runs once on initial setup. Files with `.tmpl` extension are Go templates processed by chezmoi.

## Applying Changes

```sh
# Apply dotfiles to the system
chezmoi apply

# Apply and reload the shell
dot!  # alias for: chezmoi apply && . ~/.zshrc
```

## File Naming Conventions

| Repo filename | Installed as |
|---|---|
| `dot_zshrc` | `~/.zshrc` |
| `dot_aliases.zsh` | `~/.aliases.zsh` |
| `dot_gitconfig` | `~/.gitconfig` |
| `run_once_install-packages.sh` | Runs once by chezmoi |
| `run_once_*.sh.tmpl` | Runs once; `.tmpl` files are Go templates with access to chezmoi template functions |

## Architecture

- **`dot_zshrc`** — entry point, sources all other zsh files in order: `zsh_config.zsh`, `env.zsh`, optionally `env.local.zsh` (machine-local overrides, not in repo), then `aliases.zsh`, `asdf.zsh`, `autojump.zsh`, `fzf.zsh`, `prompt.zsh`.
- **`dot_env.zsh`** — exports `EDITOR` (VS Code), sets `PATH` for mysql-client@5.7 and openssl@3.
- **`dot_aliases.zsh`** — shell aliases; uses `bat`, `exa`, `chezmoi`.
- **`dot_asdf.zsh`** — initializes asdf and sets up completions; sources the Java home plugin if present.
- **`dot_prompt.zsh`** — custom zsh prompt showing path, git branch, dirty/clean state, and unpushed commit count.
- **`dot_config/nvim/`** — Neovim config that delegates to `~/.vimrc` via `dot_vimrc`.
- **`dot_gitconfig`** — git config with aliases, GPG commit signing (key `8817893C8F08F446`), pull-rebase enabled, push.default=current. Includes `~/.gitconfig.local` for private settings.
- **`run_once_install-packages.sh`** — installs Homebrew, all brew formulae and casks, Mac App Store apps via `mas`.
- **`run_once_install-asdf-packages.sh.tmpl`** — clones asdf and adds plugins (go, java, maven, node, ruby, scala). Re-runs if `run_once_install-packages.sh` changes (tracked via sha256 hash in a comment).
- **`run_once_post_install.sh.tmpl`** — sets zsh as default shell, installs fzf keybindings, applies macOS Finder defaults.

## Local Overrides

Machine-specific environment variables and secrets go in `~/.env.local.zsh` (sourced by `dot_zshrc` if it exists, not tracked in this repo). Git-specific local settings go in `~/.gitconfig.local` (included by `dot_gitconfig`).
