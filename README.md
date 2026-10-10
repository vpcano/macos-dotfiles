# dotfiles

My dotfiles, managed with a bare git repo at `~/.dotfiles` with `$HOME` as the
work tree.

```sh
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

- `.zshrc`, `.gitmux.conf` — shell and git prompt config
- `.config/kitty` — [kitty-dotfiles](https://github.com/vpcano/kitty-dotfiles) (submodule)
- `.config/tmux` — [tmux-dotfiles](https://github.com/vpcano/tmux-dotfiles) (submodule)
- `.pi/agent` — [pi-dotfiles](https://github.com/vpcano/pi-dotfiles) (submodule)

## macOS

Tiling window manager stack under `.config/`:

- [yabai](https://github.com/koekeishiya/yabai) — tiling window manager (`yabai/`), also launches JankyBorders
- [skhd](https://github.com/koekeishiya/skhd) — hotkey daemon driving yabai (`skhd/`)
- [sketchybar](https://github.com/FelixKratz/SketchyBar) — scriptable status bar (`sketchybar/`)
- [JankyBorders](https://github.com/FelixKratz/JankyBorders) — focused-window borders (no config file)
- [svim](https://github.com/FelixKratz/Svim) — system-wide vim mode (`svim/`)

## Setup on a new machine

```sh
git clone --bare <repo> $HOME/.dotfiles
dotfiles checkout
dotfiles config status.showUntrackedFiles no
dotfiles submodule update --init
```
