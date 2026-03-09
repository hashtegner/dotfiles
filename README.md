# my dotfiles

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read Zach Holman's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)

## install

1. Install [chezmoi](https://www.chezmoi.io/install/)

```sh
sh -c "$(curl -fsLS chezmoi.io/get)"
```

2. Setup dotfiles using chezmoi

```sh
  chezmoi init https://github.com/hashtegner/dotfiles.git
```


3. Apply configs

```sh
chezmoi apply -v
```

## credits

- [`dot_claude/CLAUDE.md`](dot_claude/CLAUDE.md) is based on [`memory-personal.md`](https://github.com/pcasaretto/nix-home/blob/main/home-manager/modules/common/claude-code/memory-personal.md) from [@pcasaretto](https://github.com/pcasaretto)'s nix-home.
