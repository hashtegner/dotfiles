# hashtegner does dotfiles

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
  chezmoi init https://github.com/username/dotfiles.git
```


3. Apply configs

```sh
chezmoi apply -v
```