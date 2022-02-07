# dotfiles

## vim, nvim

```bash
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/nvim $HOME/.config/nvim

# install vim-plug
# https://github.com/junegunn/vim-plug#unix-linux
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install vim-plug plugins  
# https://github.com/junegunn/vim-plug/wiki/tips#install-plugins-on-the-command-line
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
```

## git

```bash
ln -s $PWD/.gitconfig $HOME/.gitconfig
```

## tmux

```bash
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
```
