# dotfiles

## zsh

```
source ${ZDOTDIR:-$HOME}/.zshrc_my
```

## vim, nvim

```bash
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/nvim $HOME/.config/nvim
ln -s $PWD/.ideavimrc $HOME/.ideavimrc
```

## git

```bash
cp $PWD/.gitconfig.example $HOME/.gitconfig
cp $PWD/.gitconfig.user.example $HOME/.gitconfig.user
```

## tmux

```bash
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
```

## latex

```bash
ln -s $PWD/.latexmkrc $HOME/.latexmkrc
```

## marp

```bash
ln -s $PWD/.marprc.yml $HOME/.marprc.yml
```
